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
      
      class ApiLayerServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentCommand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailabilityGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Command
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComponentHealth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Database
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseProperties
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
      
      class ExternalDataSources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FrontEndServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GceInstanceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Insight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Layer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDiscoveredProfilesResponse
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
      
      class LoadBalancerServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Notice
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
      
      class Product
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
      
      class RuleExecutionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunEvaluationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapComponent
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
      
      class SapDiscoveryComponentApplicationProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapDiscoveryComponentDatabaseProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapDiscoveryComponentReplicationSite
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
      
      class SapDiscoveryResourceInstanceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapDiscoveryResourceInstancePropertiesAppInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapDiscoveryResourceInstancePropertiesDiskMount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapDiscoveryWorkloadProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapDiscoveryWorkloadPropertiesProductVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapDiscoveryWorkloadPropertiesSoftwareComponentProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapInstanceProperties
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
      
      class SapWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScannedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShellCommand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlserverValidation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlserverValidationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlserverValidationValidationDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlserverWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Summary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ThreeTierWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TorsoValidation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpcomingMaintenanceEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ViolationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadProfileHealth
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
      
      class ApiLayerServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :os_version, as: 'osVersion'
          collection :resources, as: 'resources', class: Google::Apis::WorkloadmanagerV1::CloudResource, decorator: Google::Apis::WorkloadmanagerV1::CloudResource::Representation
      
        end
      end
      
      class AgentCommand
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :command, as: 'command'
          hash :parameters, as: 'parameters'
        end
      end
      
      class AvailabilityGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :databases, as: 'databases'
          property :name, as: 'name'
          property :primary_server, as: 'primaryServer'
          collection :secondary_servers, as: 'secondaryServers'
        end
      end
      
      class BackendServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_file, as: 'backupFile'
          property :backup_schedule, as: 'backupSchedule'
          property :name, as: 'name'
          property :os_version, as: 'osVersion'
          collection :resources, as: 'resources', class: Google::Apis::WorkloadmanagerV1::CloudResource, decorator: Google::Apis::WorkloadmanagerV1::CloudResource::Representation
      
        end
      end
      
      class BackupProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latest_backup_status, as: 'latestBackupStatus'
          property :latest_backup_time, as: 'latestBackupTime'
        end
      end
      
      class BigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_new_results_table, as: 'createNewResultsTable'
          property :destination_dataset, as: 'destinationDataset'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_properties, as: 'instanceProperties', class: Google::Apis::WorkloadmanagerV1::InstanceProperties, decorator: Google::Apis::WorkloadmanagerV1::InstanceProperties::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodes, as: 'nodes'
          property :witness_server, as: 'witnessServer'
        end
      end
      
      class Command
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_command, as: 'agentCommand', class: Google::Apis::WorkloadmanagerV1::AgentCommand, decorator: Google::Apis::WorkloadmanagerV1::AgentCommand::Representation
      
          property :shell_command, as: 'shellCommand', class: Google::Apis::WorkloadmanagerV1::ShellCommand, decorator: Google::Apis::WorkloadmanagerV1::ShellCommand::Representation
      
        end
      end
      
      class ComponentHealth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :component, as: 'component'
          collection :component_health_checks, as: 'componentHealthChecks', class: Google::Apis::WorkloadmanagerV1::HealthCheck, decorator: Google::Apis::WorkloadmanagerV1::HealthCheck::Representation
      
          property :component_health_type, as: 'componentHealthType'
          property :is_required, as: 'isRequired'
          property :state, as: 'state'
          collection :sub_component_healthes, as: 'subComponentHealthes', class: Google::Apis::WorkloadmanagerV1::ComponentHealth, decorator: Google::Apis::WorkloadmanagerV1::ComponentHealth::Representation
      
        end
      end
      
      class Database
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_file, as: 'backupFile'
          property :backup_schedule, as: 'backupSchedule'
          property :host_vm, as: 'hostVm'
          property :name, as: 'name'
        end
      end
      
      class DatabaseProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_properties, as: 'backupProperties', class: Google::Apis::WorkloadmanagerV1::BackupProperties, decorator: Google::Apis::WorkloadmanagerV1::BackupProperties::Representation
      
          property :database_type, as: 'databaseType'
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
          property :big_query_destination, as: 'bigQueryDestination', class: Google::Apis::WorkloadmanagerV1::BigQueryDestination, decorator: Google::Apis::WorkloadmanagerV1::BigQueryDestination::Representation
      
          property :create_time, as: 'createTime'
          property :custom_rules_bucket, as: 'customRulesBucket'
          property :description, as: 'description'
          property :evaluation_type, as: 'evaluationType'
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
          collection :external_data_sources, as: 'externalDataSources', class: Google::Apis::WorkloadmanagerV1::ExternalDataSources, decorator: Google::Apis::WorkloadmanagerV1::ExternalDataSources::Representation
      
          property :inventory_time, as: 'inventoryTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :notices, as: 'notices', class: Google::Apis::WorkloadmanagerV1::Notice, decorator: Google::Apis::WorkloadmanagerV1::Notice::Representation
      
          property :result_summary, as: 'resultSummary', class: Google::Apis::WorkloadmanagerV1::Summary, decorator: Google::Apis::WorkloadmanagerV1::Summary::Representation
      
          collection :rule_results, as: 'ruleResults', class: Google::Apis::WorkloadmanagerV1::RuleExecutionResult, decorator: Google::Apis::WorkloadmanagerV1::RuleExecutionResult::Representation
      
          property :run_type, as: 'runType'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class ExecutionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :commands, as: 'commands', class: Google::Apis::WorkloadmanagerV1::Command, decorator: Google::Apis::WorkloadmanagerV1::Command::Representation
      
          property :documentation_url, as: 'documentationUrl'
          property :resource, as: 'resource', class: Google::Apis::WorkloadmanagerV1::Resource, decorator: Google::Apis::WorkloadmanagerV1::Resource::Representation
      
          property :rule, as: 'rule'
          property :severity, as: 'severity'
          property :type, as: 'type'
          property :violation_details, as: 'violationDetails', class: Google::Apis::WorkloadmanagerV1::ViolationDetails, decorator: Google::Apis::WorkloadmanagerV1::ViolationDetails::Representation
      
          property :violation_message, as: 'violationMessage'
        end
      end
      
      class ExternalDataSources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_type, as: 'assetType'
          property :name, as: 'name'
          property :type, as: 'type'
          property :uri, as: 'uri'
        end
      end
      
      class FrontEndServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :os_version, as: 'osVersion'
          collection :resources, as: 'resources', class: Google::Apis::WorkloadmanagerV1::CloudResource, decorator: Google::Apis::WorkloadmanagerV1::CloudResource::Representation
      
        end
      end
      
      class GceInstanceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :service_accounts, as: 'serviceAccounts'
        end
      end
      
      class HealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :metric, as: 'metric'
          property :resource, as: 'resource', class: Google::Apis::WorkloadmanagerV1::CloudResource, decorator: Google::Apis::WorkloadmanagerV1::CloudResource::Representation
      
          property :source, as: 'source'
          property :state, as: 'state'
        end
      end
      
      class Insight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_id, as: 'instanceId'
          property :sap_discovery, as: 'sapDiscovery', class: Google::Apis::WorkloadmanagerV1::SapDiscovery, decorator: Google::Apis::WorkloadmanagerV1::SapDiscovery::Representation
      
          property :sap_validation, as: 'sapValidation', class: Google::Apis::WorkloadmanagerV1::SapValidation, decorator: Google::Apis::WorkloadmanagerV1::SapValidation::Representation
      
          property :sent_time, as: 'sentTime'
          property :sqlserver_validation, as: 'sqlserverValidation', class: Google::Apis::WorkloadmanagerV1::SqlserverValidation, decorator: Google::Apis::WorkloadmanagerV1::SqlserverValidation::Representation
      
          property :torso_validation, as: 'torsoValidation', class: Google::Apis::WorkloadmanagerV1::TorsoValidation, decorator: Google::Apis::WorkloadmanagerV1::TorsoValidation::Representation
      
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :region, as: 'region'
          property :status, as: 'status'
        end
      end
      
      class InstanceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_number, as: 'instanceNumber'
          property :machine_type, as: 'machineType'
          property :role, as: 'role'
          collection :roles, as: 'roles'
          property :sap_instance_properties, as: 'sapInstanceProperties', class: Google::Apis::WorkloadmanagerV1::SapInstanceProperties, decorator: Google::Apis::WorkloadmanagerV1::SapInstanceProperties::Representation
      
          property :status, as: 'status'
          property :upcoming_maintenance_event, as: 'upcomingMaintenanceEvent', class: Google::Apis::WorkloadmanagerV1::UpcomingMaintenanceEvent, decorator: Google::Apis::WorkloadmanagerV1::UpcomingMaintenanceEvent::Representation
      
        end
      end
      
      class Layer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_type, as: 'applicationType'
          property :database_type, as: 'databaseType'
          collection :instances, as: 'instances', class: Google::Apis::WorkloadmanagerV1::Instance, decorator: Google::Apis::WorkloadmanagerV1::Instance::Representation
      
          property :sid, as: 'sid'
        end
      end
      
      class ListDiscoveredProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :workload_profiles, as: 'workloadProfiles', class: Google::Apis::WorkloadmanagerV1::WorkloadProfile, decorator: Google::Apis::WorkloadmanagerV1::WorkloadProfile::Representation
      
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
      
      class LoadBalancerServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip, as: 'ip'
          property :vm, as: 'vm'
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
      
      class Notice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
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
      
      class Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :version, as: 'version'
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
          collection :tags, as: 'tags'
          property :uri, as: 'uri'
        end
      end
      
      class RuleExecutionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :result_count, :numeric_string => true, as: 'resultCount'
          property :rule, as: 'rule'
          property :scanned_resource_count, :numeric_string => true, as: 'scannedResourceCount'
          property :state, as: 'state'
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
      
      class SapComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_properties, as: 'databaseProperties', class: Google::Apis::WorkloadmanagerV1::DatabaseProperties, decorator: Google::Apis::WorkloadmanagerV1::DatabaseProperties::Representation
      
          collection :ha_hosts, as: 'haHosts'
          collection :resources, as: 'resources', class: Google::Apis::WorkloadmanagerV1::CloudResource, decorator: Google::Apis::WorkloadmanagerV1::CloudResource::Representation
      
          property :sid, as: 'sid'
          property :topology_type, as: 'topologyType'
        end
      end
      
      class SapDiscovery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_layer, as: 'applicationLayer', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent::Representation
      
          property :database_layer, as: 'databaseLayer', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryMetadata, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryMetadata::Representation
      
          property :project_number, as: 'projectNumber'
          property :system_id, as: 'systemId'
          property :update_time, as: 'updateTime'
          property :use_dr_reconciliation, as: 'useDrReconciliation'
          property :workload_properties, as: 'workloadProperties', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryWorkloadProperties, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryWorkloadProperties::Representation
      
        end
      end
      
      class SapDiscoveryComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_properties, as: 'applicationProperties', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponentApplicationProperties, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponentApplicationProperties::Representation
      
          property :database_properties, as: 'databaseProperties', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponentDatabaseProperties, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponentDatabaseProperties::Representation
      
          collection :ha_hosts, as: 'haHosts'
          property :host_project, as: 'hostProject'
          property :region, as: 'region'
          collection :replication_sites, as: 'replicationSites', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponentReplicationSite, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponentReplicationSite::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryResource, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryResource::Representation
      
          property :sid, as: 'sid'
          property :topology_type, as: 'topologyType'
        end
      end
      
      class SapDiscoveryComponentApplicationProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abap, as: 'abap'
          property :app_instance_number, as: 'appInstanceNumber'
          property :application_type, as: 'applicationType'
          property :ascs_instance_number, as: 'ascsInstanceNumber'
          property :ascs_uri, as: 'ascsUri'
          property :ers_instance_number, as: 'ersInstanceNumber'
          property :kernel_version, as: 'kernelVersion'
          property :nfs_uri, as: 'nfsUri'
        end
      end
      
      class SapDiscoveryComponentDatabaseProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_sid, as: 'databaseSid'
          property :database_type, as: 'databaseType'
          property :database_version, as: 'databaseVersion'
          property :instance_number, as: 'instanceNumber'
          property :landscape_id, as: 'landscapeId'
          property :primary_instance_uri, as: 'primaryInstanceUri'
          property :shared_nfs_uri, as: 'sharedNfsUri'
        end
      end
      
      class SapDiscoveryComponentReplicationSite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :component, as: 'component', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent::Representation
      
          property :source_site, as: 'sourceSite'
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
          property :instance_properties, as: 'instanceProperties', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstanceProperties, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstanceProperties::Representation
      
          collection :related_resources, as: 'relatedResources'
          property :resource_kind, as: 'resourceKind'
          property :resource_type, as: 'resourceType'
          property :resource_uri, as: 'resourceUri'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SapDiscoveryResourceInstanceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_instances, as: 'appInstances', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesAppInstance, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesAppInstance::Representation
      
          collection :cluster_instances, as: 'clusterInstances'
          collection :disk_mounts, as: 'diskMounts', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesDiskMount, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesDiskMount::Representation
      
          property :instance_number, :numeric_string => true, as: 'instanceNumber'
          property :instance_role, as: 'instanceRole'
          property :is_dr_site, as: 'isDrSite'
          property :virtual_hostname, as: 'virtualHostname'
        end
      end
      
      class SapDiscoveryResourceInstancePropertiesAppInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :number, as: 'number'
        end
      end
      
      class SapDiscoveryResourceInstancePropertiesDiskMount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mount_point, as: 'mountPoint'
          property :name, as: 'name'
        end
      end
      
      class SapDiscoveryWorkloadProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :product_versions, as: 'productVersions', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryWorkloadPropertiesProductVersion, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryWorkloadPropertiesProductVersion::Representation
      
          collection :software_component_versions, as: 'softwareComponentVersions', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryWorkloadPropertiesSoftwareComponentProperties, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryWorkloadPropertiesSoftwareComponentProperties::Representation
      
        end
      end
      
      class SapDiscoveryWorkloadPropertiesProductVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :version, as: 'version'
        end
      end
      
      class SapDiscoveryWorkloadPropertiesSoftwareComponentProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ext_version, as: 'extVersion'
          property :name, as: 'name'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class SapInstanceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :numbers, as: 'numbers'
        end
      end
      
      class SapValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          collection :validation_details, as: 'validationDetails', class: Google::Apis::WorkloadmanagerV1::SapValidationValidationDetail, decorator: Google::Apis::WorkloadmanagerV1::SapValidationValidationDetail::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class SapValidationValidationDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :details, as: 'details'
          property :is_present, as: 'isPresent'
          property :sap_validation_type, as: 'sapValidationType'
        end
      end
      
      class SapWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application, as: 'application', class: Google::Apis::WorkloadmanagerV1::SapComponent, decorator: Google::Apis::WorkloadmanagerV1::SapComponent::Representation
      
          property :architecture, as: 'architecture'
          property :database, as: 'database', class: Google::Apis::WorkloadmanagerV1::SapComponent, decorator: Google::Apis::WorkloadmanagerV1::SapComponent::Representation
      
          hash :metadata, as: 'metadata'
          collection :products, as: 'products', class: Google::Apis::WorkloadmanagerV1::Product, decorator: Google::Apis::WorkloadmanagerV1::Product::Representation
      
        end
      end
      
      class ScannedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource'
          property :type, as: 'type'
        end
      end
      
      class ShellCommand
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :args, as: 'args'
          property :command, as: 'command'
          property :timeout_seconds, as: 'timeoutSeconds'
        end
      end
      
      class SqlserverValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_version, as: 'agentVersion'
          property :instance, as: 'instance'
          property :project_id, as: 'projectId'
          collection :validation_details, as: 'validationDetails', class: Google::Apis::WorkloadmanagerV1::SqlserverValidationValidationDetail, decorator: Google::Apis::WorkloadmanagerV1::SqlserverValidationValidationDetail::Representation
      
        end
      end
      
      class SqlserverValidationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :fields, as: 'fields'
        end
      end
      
      class SqlserverValidationValidationDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details', class: Google::Apis::WorkloadmanagerV1::SqlserverValidationDetails, decorator: Google::Apis::WorkloadmanagerV1::SqlserverValidationDetails::Representation
      
          property :type, as: 'type'
        end
      end
      
      class SqlserverWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ags, as: 'ags', class: Google::Apis::WorkloadmanagerV1::AvailabilityGroup, decorator: Google::Apis::WorkloadmanagerV1::AvailabilityGroup::Representation
      
          property :cluster, as: 'cluster', class: Google::Apis::WorkloadmanagerV1::Cluster, decorator: Google::Apis::WorkloadmanagerV1::Cluster::Representation
      
          collection :databases, as: 'databases', class: Google::Apis::WorkloadmanagerV1::Database, decorator: Google::Apis::WorkloadmanagerV1::Database::Representation
      
          property :load_balancer_server, as: 'loadBalancerServer', class: Google::Apis::WorkloadmanagerV1::LoadBalancerServer, decorator: Google::Apis::WorkloadmanagerV1::LoadBalancerServer::Representation
      
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
      
      class Summary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failures, :numeric_string => true, as: 'failures'
          property :new_failures, :numeric_string => true, as: 'newFailures'
          property :new_fixes, :numeric_string => true, as: 'newFixes'
        end
      end
      
      class ThreeTierWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_layer, as: 'apiLayer', class: Google::Apis::WorkloadmanagerV1::ApiLayerServer, decorator: Google::Apis::WorkloadmanagerV1::ApiLayerServer::Representation
      
          property :backend, as: 'backend', class: Google::Apis::WorkloadmanagerV1::BackendServer, decorator: Google::Apis::WorkloadmanagerV1::BackendServer::Representation
      
          property :endpoint, as: 'endpoint'
          property :frontend, as: 'frontend', class: Google::Apis::WorkloadmanagerV1::FrontEndServer, decorator: Google::Apis::WorkloadmanagerV1::FrontEndServer::Representation
      
        end
      end
      
      class TorsoValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_version, as: 'agentVersion'
          property :instance_name, as: 'instanceName'
          property :project_id, as: 'projectId'
          hash :validation_details, as: 'validationDetails'
          property :workload_type, as: 'workloadType'
        end
      end
      
      class UpcomingMaintenanceEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :maintenance_status, as: 'maintenanceStatus'
          property :start_time, as: 'startTime'
          property :type, as: 'type'
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
      
      class WorkloadProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application, as: 'application', class: Google::Apis::WorkloadmanagerV1::Layer, decorator: Google::Apis::WorkloadmanagerV1::Layer::Representation
      
          property :ascs, as: 'ascs', class: Google::Apis::WorkloadmanagerV1::Layer, decorator: Google::Apis::WorkloadmanagerV1::Layer::Representation
      
          property :database, as: 'database', class: Google::Apis::WorkloadmanagerV1::Layer, decorator: Google::Apis::WorkloadmanagerV1::Layer::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :refreshed_time, as: 'refreshedTime'
          property :sap_workload, as: 'sapWorkload', class: Google::Apis::WorkloadmanagerV1::SapWorkload, decorator: Google::Apis::WorkloadmanagerV1::SapWorkload::Representation
      
          property :sqlserver_workload, as: 'sqlserverWorkload', class: Google::Apis::WorkloadmanagerV1::SqlserverWorkload, decorator: Google::Apis::WorkloadmanagerV1::SqlserverWorkload::Representation
      
          property :state, as: 'state'
          property :three_tier_workload, as: 'threeTierWorkload', class: Google::Apis::WorkloadmanagerV1::ThreeTierWorkload, decorator: Google::Apis::WorkloadmanagerV1::ThreeTierWorkload::Representation
      
          property :workload_type, as: 'workloadType'
        end
      end
      
      class WorkloadProfileHealth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_time, as: 'checkTime'
          collection :component_healthes, as: 'componentHealthes', class: Google::Apis::WorkloadmanagerV1::ComponentHealth, decorator: Google::Apis::WorkloadmanagerV1::ComponentHealth::Representation
      
          property :state, as: 'state'
        end
      end
      
      class WriteInsightRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_version, as: 'agentVersion'
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
