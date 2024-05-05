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
      
      class AccessApprovalRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Console
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Customer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerOnboardingState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerOnboardingStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EkmConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EkmConnections
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EkmMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Gcloud
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instructions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccessApprovalRequestsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListViolationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkloadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Partner
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartnerPermissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Remediation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sku
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Violation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Workload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadOnboardingState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadOnboardingStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessApprovalRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :request_time, as: 'requestTime'
          property :requested_expiration_time, as: 'requestedExpirationTime'
          property :requested_reason, as: 'requestedReason', class: Google::Apis::CloudcontrolspartnerV1::AccessReason, decorator: Google::Apis::CloudcontrolspartnerV1::AccessReason::Representation
      
        end
      end
      
      class AccessReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          property :type, as: 'type'
        end
      end
      
      class ConnectionError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_domain, as: 'errorDomain'
          property :error_message, as: 'errorMessage'
        end
      end
      
      class Console
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_links, as: 'additionalLinks'
          collection :console_uris, as: 'consoleUris'
          collection :steps, as: 'steps'
        end
      end
      
      class Customer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_onboarding_state, as: 'customerOnboardingState', class: Google::Apis::CloudcontrolspartnerV1::CustomerOnboardingState, decorator: Google::Apis::CloudcontrolspartnerV1::CustomerOnboardingState::Representation
      
          property :display_name, as: 'displayName'
          property :is_onboarded, as: 'isOnboarded'
          property :name, as: 'name'
        end
      end
      
      class CustomerOnboardingState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :onboarding_steps, as: 'onboardingSteps', class: Google::Apis::CloudcontrolspartnerV1::CustomerOnboardingStep, decorator: Google::Apis::CloudcontrolspartnerV1::CustomerOnboardingStep::Representation
      
        end
      end
      
      class CustomerOnboardingStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_state, as: 'completionState'
          property :completion_time, as: 'completionTime'
          property :start_time, as: 'startTime'
          property :step, as: 'step'
        end
      end
      
      class EkmConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_error, as: 'connectionError', class: Google::Apis::CloudcontrolspartnerV1::ConnectionError, decorator: Google::Apis::CloudcontrolspartnerV1::ConnectionError::Representation
      
          property :connection_name, as: 'connectionName'
          property :connection_state, as: 'connectionState'
        end
      end
      
      class EkmConnections
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ekm_connections, as: 'ekmConnections', class: Google::Apis::CloudcontrolspartnerV1::EkmConnection, decorator: Google::Apis::CloudcontrolspartnerV1::EkmConnection::Representation
      
          property :name, as: 'name'
        end
      end
      
      class EkmMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ekm_endpoint_uri, as: 'ekmEndpointUri'
          property :ekm_solution, as: 'ekmSolution'
        end
      end
      
      class Gcloud
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_links, as: 'additionalLinks'
          collection :gcloud_commands, as: 'gcloudCommands'
          collection :steps, as: 'steps'
        end
      end
      
      class Instructions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :console_instructions, as: 'consoleInstructions', class: Google::Apis::CloudcontrolspartnerV1::Console, decorator: Google::Apis::CloudcontrolspartnerV1::Console::Representation
      
          property :gcloud_instructions, as: 'gcloudInstructions', class: Google::Apis::CloudcontrolspartnerV1::Gcloud, decorator: Google::Apis::CloudcontrolspartnerV1::Gcloud::Representation
      
        end
      end
      
      class ListAccessApprovalRequestsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_approval_requests, as: 'accessApprovalRequests', class: Google::Apis::CloudcontrolspartnerV1::AccessApprovalRequest, decorator: Google::Apis::CloudcontrolspartnerV1::AccessApprovalRequest::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCustomersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :customers, as: 'customers', class: Google::Apis::CloudcontrolspartnerV1::Customer, decorator: Google::Apis::CloudcontrolspartnerV1::Customer::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListViolationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :violations, as: 'violations', class: Google::Apis::CloudcontrolspartnerV1::Violation, decorator: Google::Apis::CloudcontrolspartnerV1::Violation::Representation
      
        end
      end
      
      class ListWorkloadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workloads, as: 'workloads', class: Google::Apis::CloudcontrolspartnerV1::Workload, decorator: Google::Apis::CloudcontrolspartnerV1::Workload::Representation
      
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Partner
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :ekm_solutions, as: 'ekmSolutions', class: Google::Apis::CloudcontrolspartnerV1::EkmMetadata, decorator: Google::Apis::CloudcontrolspartnerV1::EkmMetadata::Representation
      
          property :name, as: 'name'
          collection :operated_cloud_regions, as: 'operatedCloudRegions'
          property :partner_project_id, as: 'partnerProjectId'
          collection :skus, as: 'skus', class: Google::Apis::CloudcontrolspartnerV1::Sku, decorator: Google::Apis::CloudcontrolspartnerV1::Sku::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class PartnerPermissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :partner_permissions, as: 'partnerPermissions'
        end
      end
      
      class Remediation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compliant_values, as: 'compliantValues'
          property :instructions, as: 'instructions', class: Google::Apis::CloudcontrolspartnerV1::Instructions, decorator: Google::Apis::CloudcontrolspartnerV1::Instructions::Representation
      
          property :remediation_type, as: 'remediationType'
        end
      end
      
      class Sku
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class Violation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :begin_time, as: 'beginTime'
          property :category, as: 'category'
          property :description, as: 'description'
          property :folder_id, :numeric_string => true, as: 'folderId'
          property :name, as: 'name'
          property :non_compliant_org_policy, as: 'nonCompliantOrgPolicy'
          property :remediation, as: 'remediation', class: Google::Apis::CloudcontrolspartnerV1::Remediation, decorator: Google::Apis::CloudcontrolspartnerV1::Remediation::Representation
      
          property :resolve_time, as: 'resolveTime'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Workload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :folder, as: 'folder'
          property :folder_id, :numeric_string => true, as: 'folderId'
          property :is_onboarded, as: 'isOnboarded'
          property :key_management_project_id, as: 'keyManagementProjectId'
          property :location, as: 'location'
          property :name, as: 'name'
          property :partner, as: 'partner'
          property :workload_onboarding_state, as: 'workloadOnboardingState', class: Google::Apis::CloudcontrolspartnerV1::WorkloadOnboardingState, decorator: Google::Apis::CloudcontrolspartnerV1::WorkloadOnboardingState::Representation
      
        end
      end
      
      class WorkloadOnboardingState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :onboarding_steps, as: 'onboardingSteps', class: Google::Apis::CloudcontrolspartnerV1::WorkloadOnboardingStep, decorator: Google::Apis::CloudcontrolspartnerV1::WorkloadOnboardingStep::Representation
      
        end
      end
      
      class WorkloadOnboardingStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_state, as: 'completionState'
          property :completion_time, as: 'completionTime'
          property :start_time, as: 'startTime'
          property :step, as: 'step'
        end
      end
    end
  end
end
