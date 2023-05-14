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
    module WorkloadmanagerV1
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Evaluation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Execution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GceInstanceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Insight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEvaluationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExecutionResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExecutionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListScannedResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunEvaluationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapDiscovery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapDiscoveryComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapDiscoveryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapDiscoveryResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapValidation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapValidationValidationDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScannedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlserverValidation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlserverValidationValidationDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ViolationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteInsightRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteInsightResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Evaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :resource_filter, as: 'resourceFilter', class: Google::Apis::WorkloadmanagerV1::ResourceFilter, decorator: Google::Apis::WorkloadmanagerV1::ResourceFilter::Representation
      
          property :resource_status, as: 'resourceStatus', class: Google::Apis::WorkloadmanagerV1::ResourceStatus, decorator: Google::Apis::WorkloadmanagerV1::ResourceStatus::Representation
      
          collection :rule_names, as: 'ruleNames'
          collection :rule_versions, as: 'ruleVersions'
          property :schedule, as: 'schedule'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Execution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :evaluation_id, as: 'evaluationId'
          property :inventory_time, as: 'inventoryTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :run_type, as: 'runType'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class ExecutionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :documentation_url, as: 'documentationUrl'
          property :resource, as: 'resource', class: Google::Apis::WorkloadmanagerV1::Resource, decorator: Google::Apis::WorkloadmanagerV1::Resource::Representation
      
          property :rule, as: 'rule'
          property :severity, as: 'severity'
          property :violation_details, as: 'violationDetails', class: Google::Apis::WorkloadmanagerV1::ViolationDetails, decorator: Google::Apis::WorkloadmanagerV1::ViolationDetails::Representation
      
          property :violation_message, as: 'violationMessage'
        end
      end
      
      class GceInstanceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :service_accounts, as: 'serviceAccounts'
        end
      end
      
      class Insight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sap_discovery, as: 'sapDiscovery', class: Google::Apis::WorkloadmanagerV1::SapDiscovery, decorator: Google::Apis::WorkloadmanagerV1::SapDiscovery::Representation
      
          property :sap_validation, as: 'sapValidation', class: Google::Apis::WorkloadmanagerV1::SapValidation, decorator: Google::Apis::WorkloadmanagerV1::SapValidation::Representation
      
          property :sent_time, as: 'sentTime'
          property :sqlserver_validation, as: 'sqlserverValidation', class: Google::Apis::WorkloadmanagerV1::SqlserverValidation, decorator: Google::Apis::WorkloadmanagerV1::SqlserverValidation::Representation
      
        end
      end
      
      class ListEvaluationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :evaluations, as: 'evaluations', class: Google::Apis::WorkloadmanagerV1::Evaluation, decorator: Google::Apis::WorkloadmanagerV1::Evaluation::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListExecutionResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :execution_results, as: 'executionResults', class: Google::Apis::WorkloadmanagerV1::ExecutionResult, decorator: Google::Apis::WorkloadmanagerV1::ExecutionResult::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListExecutionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :executions, as: 'executions', class: Google::Apis::WorkloadmanagerV1::Execution, decorator: Google::Apis::WorkloadmanagerV1::Execution::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::WorkloadmanagerV1::Location, decorator: Google::Apis::WorkloadmanagerV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::WorkloadmanagerV1::Operation, decorator: Google::Apis::WorkloadmanagerV1::Operation::Representation
      
        end
      end
      
      class ListRulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rules, as: 'rules', class: Google::Apis::WorkloadmanagerV1::Rule, decorator: Google::Apis::WorkloadmanagerV1::Rule::Representation
      
        end
      end
      
      class ListScannedResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :scanned_resources, as: 'scannedResources', class: Google::Apis::WorkloadmanagerV1::ScannedResource, decorator: Google::Apis::WorkloadmanagerV1::ScannedResource::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::WorkloadmanagerV1::Status, decorator: Google::Apis::WorkloadmanagerV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
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
      
      class Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :service_account, as: 'serviceAccount'
          property :type, as: 'type'
        end
      end
      
      class ResourceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gce_instance_filter, as: 'gceInstanceFilter', class: Google::Apis::WorkloadmanagerV1::GceInstanceFilter, decorator: Google::Apis::WorkloadmanagerV1::GceInstanceFilter::Representation
      
          hash :inclusion_labels, as: 'inclusionLabels'
          collection :resource_id_patterns, as: 'resourceIdPatterns'
          collection :scopes, as: 'scopes'
        end
      end
      
      class ResourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules_newer_versions, as: 'rulesNewerVersions'
          property :state, as: 'state'
        end
      end
      
      class Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :error_message, as: 'errorMessage'
          property :name, as: 'name'
          property :primary_category, as: 'primaryCategory'
          property :remediation, as: 'remediation'
          property :revision_id, as: 'revisionId'
          property :secondary_category, as: 'secondaryCategory'
          property :severity, as: 'severity'
          property :uri, as: 'uri'
        end
      end
      
      class RunEvaluationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution, as: 'execution', class: Google::Apis::WorkloadmanagerV1::Execution, decorator: Google::Apis::WorkloadmanagerV1::Execution::Representation
      
          property :execution_id, as: 'executionId'
          property :request_id, as: 'requestId'
        end
      end
      
      class SapDiscovery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_layer, as: 'applicationLayer', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent::Representation
      
          property :database_layer, as: 'databaseLayer', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryMetadata, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryMetadata::Representation
      
          property :system_id, as: 'systemId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SapDiscoveryComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_type, as: 'applicationType'
          property :database_type, as: 'databaseType'
          property :host_project, as: 'hostProject'
          collection :resources, as: 'resources', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryResource, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryResource::Representation
      
          property :sid, as: 'sid'
        end
      end
      
      class SapDiscoveryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_region, as: 'customerRegion'
          property :defined_system, as: 'definedSystem'
          property :environment_type, as: 'environmentType'
          property :sap_product, as: 'sapProduct'
        end
      end
      
      class SapDiscoveryResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :related_resources, as: 'relatedResources'
          property :resource_kind, as: 'resourceKind'
          property :resource_type, as: 'resourceType'
          property :resource_uri, as: 'resourceUri'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SapValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :validation_details, as: 'validationDetails', class: Google::Apis::WorkloadmanagerV1::SapValidationValidationDetail, decorator: Google::Apis::WorkloadmanagerV1::SapValidationValidationDetail::Representation
      
        end
      end
      
      class SapValidationValidationDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :details, as: 'details'
          property :sap_validation_type, as: 'sapValidationType'
        end
      end
      
      class ScannedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource'
        end
      end
      
      class SqlserverValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_version, as: 'agentVersion'
          collection :validation_details, as: 'validationDetails', class: Google::Apis::WorkloadmanagerV1::SqlserverValidationValidationDetail, decorator: Google::Apis::WorkloadmanagerV1::SqlserverValidationValidationDetail::Representation
      
        end
      end
      
      class SqlserverValidationValidationDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :details, as: 'details'
          property :instance_id, as: 'instanceId'
          property :type, as: 'type'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class ViolationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset'
          hash :observed, as: 'observed'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class WriteInsightRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :insight, as: 'insight', class: Google::Apis::WorkloadmanagerV1::Insight, decorator: Google::Apis::WorkloadmanagerV1::Insight::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class WriteInsightResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
