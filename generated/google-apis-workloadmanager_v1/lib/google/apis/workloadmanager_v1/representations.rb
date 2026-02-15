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
      
      class ActiveDirectory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Actuation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActuationOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentCommand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentStates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentStatusConfigValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentStatusIamPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentStatusReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentStatusServiceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppDetails
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
      
      class DatabaseDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentOutput
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
      
      class GceInstanceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Insight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InvalidRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InvalidRulesWrapper
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListActuationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDeploymentsResponse
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
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Notice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenShiftValidation
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
      
      class Pacemaker
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
      
      class RuleOutput
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
      
      class SapDiscoveryResourceInstancePropertiesKernelVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SapDiscoveryResourceInstancePropertiesKernelVersionVersion
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
      
      class SapSystemS4Config
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
      
      class ServiceStates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShellCommand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlLocationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerWorkload
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
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Summary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TerraformVariable
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
      
      class ActiveDirectory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_address, as: 'dnsAddress'
          property :domain, as: 'domain'
          property :domain_username, as: 'domainUsername'
          property :secret_manager_secret, as: 'secretManagerSecret'
          property :type, as: 'type'
        end
      end
      
      class Actuation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actuation_output, as: 'actuationOutput', class: Google::Apis::WorkloadmanagerV1::ActuationOutput, decorator: Google::Apis::WorkloadmanagerV1::ActuationOutput::Representation
      
          collection :deployment_output, as: 'deploymentOutput', class: Google::Apis::WorkloadmanagerV1::DeploymentOutput, decorator: Google::Apis::WorkloadmanagerV1::DeploymentOutput::Representation
      
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class ActuationOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actuate_logs, as: 'actuateLogs'
          property :ansible_error, as: 'ansibleError'
          collection :ansible_failed_task, as: 'ansibleFailedTask'
          property :blueprint_id, as: 'blueprintId'
          property :cloudbuild_id, as: 'cloudbuildId'
          property :error_code, as: 'errorCode'
          property :error_logs, as: 'errorLogs'
          property :has_user_facing_error_msg, as: 'hasUserFacingErrorMsg'
          property :terraform_error, as: 'terraformError'
          property :terraform_template, as: 'terraformTemplate'
        end
      end
      
      class AgentCommand
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :command, as: 'command'
          hash :parameters, as: 'parameters'
        end
      end
      
      class AgentStates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_version, as: 'availableVersion'
          property :hana_monitoring, as: 'hanaMonitoring', class: Google::Apis::WorkloadmanagerV1::ServiceStates, decorator: Google::Apis::WorkloadmanagerV1::ServiceStates::Representation
      
          property :installed_version, as: 'installedVersion'
          property :is_fully_enabled, as: 'isFullyEnabled'
          property :process_metrics, as: 'processMetrics', class: Google::Apis::WorkloadmanagerV1::ServiceStates, decorator: Google::Apis::WorkloadmanagerV1::ServiceStates::Representation
      
          property :system_discovery, as: 'systemDiscovery', class: Google::Apis::WorkloadmanagerV1::ServiceStates, decorator: Google::Apis::WorkloadmanagerV1::ServiceStates::Representation
      
        end
      end
      
      class AgentStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_name, as: 'agentName'
          property :available_version, as: 'availableVersion'
          property :cloud_api_access_full_scopes_granted, as: 'cloudApiAccessFullScopesGranted'
          property :configuration_error_message, as: 'configurationErrorMessage'
          property :configuration_file_path, as: 'configurationFilePath'
          property :configuration_valid, as: 'configurationValid'
          property :installed_version, as: 'installedVersion'
          property :instance_uri, as: 'instanceUri'
          property :kernel_version, as: 'kernelVersion', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesKernelVersion, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesKernelVersion::Representation
      
          collection :references, as: 'references', class: Google::Apis::WorkloadmanagerV1::AgentStatusReference, decorator: Google::Apis::WorkloadmanagerV1::AgentStatusReference::Representation
      
          collection :services, as: 'services', class: Google::Apis::WorkloadmanagerV1::AgentStatusServiceStatus, decorator: Google::Apis::WorkloadmanagerV1::AgentStatusServiceStatus::Representation
      
          property :systemd_service_enabled, as: 'systemdServiceEnabled'
          property :systemd_service_running, as: 'systemdServiceRunning'
        end
      end
      
      class AgentStatusConfigValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default, as: 'isDefault'
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class AgentStatusIamPermission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :granted, as: 'granted'
          property :name, as: 'name'
        end
      end
      
      class AgentStatusReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :url, as: 'url'
        end
      end
      
      class AgentStatusServiceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :config_values, as: 'configValues', class: Google::Apis::WorkloadmanagerV1::AgentStatusConfigValue, decorator: Google::Apis::WorkloadmanagerV1::AgentStatusConfigValue::Representation
      
          property :error_message, as: 'errorMessage'
          property :fully_functional, as: 'fullyFunctional'
          collection :iam_permissions, as: 'iamPermissions', class: Google::Apis::WorkloadmanagerV1::AgentStatusIamPermission, decorator: Google::Apis::WorkloadmanagerV1::AgentStatusIamPermission::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
          property :unspecified_state_message, as: 'unspecifiedStateMessage'
        end
      end
      
      class AppDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_instance_id, as: 'appInstanceId'
          property :app_service_account, as: 'appServiceAccount'
          collection :app_vm_names, as: 'appVmNames'
          property :ascs_image, as: 'ascsImage'
          property :ascs_instance_id, as: 'ascsInstanceId'
          property :ascs_machine_type, as: 'ascsMachineType'
          property :ascs_service_account, as: 'ascsServiceAccount'
          property :ascs_vm, as: 'ascsVm'
          property :ers_instance_id, as: 'ersInstanceId'
          property :ers_vm, as: 'ersVm'
          property :image, as: 'image'
          property :machine_type, as: 'machineType'
          property :secret_manager_secret, as: 'secretManagerSecret'
          property :shared_storage, as: 'sharedStorage'
          property :sid, as: 'sid'
          property :vms_multiplier, as: 'vmsMultiplier'
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
          property :state, as: 'state'
          collection :sub_components_health, as: 'subComponentsHealth', class: Google::Apis::WorkloadmanagerV1::ComponentHealth, decorator: Google::Apis::WorkloadmanagerV1::ComponentHealth::Representation
      
        end
      end
      
      class Database
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_type, as: 'diskType'
          property :floating_ip_address, as: 'floatingIpAddress'
          property :machine_type, as: 'machineType'
          property :secondary_sole_tenant_node, as: 'secondarySoleTenantNode'
          property :secondary_sole_tenant_node_type, as: 'secondarySoleTenantNodeType'
          property :secret_manager_secret, as: 'secretManagerSecret'
          property :smt, as: 'smt'
          property :sole_tenant_node, as: 'soleTenantNode'
          property :sole_tenant_node_type, as: 'soleTenantNodeType'
          property :tempdb_on_ssd, as: 'tempdbOnSsd'
          property :tenancy_model, as: 'tenancyModel'
        end
      end
      
      class DatabaseDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_service_account, as: 'databaseServiceAccount'
          property :disk_type, as: 'diskType'
          property :image, as: 'image'
          property :instance_id, as: 'instanceId'
          property :machine_type, as: 'machineType'
          property :primary_db_vm, as: 'primaryDbVm'
          property :secondary_db_vm, as: 'secondaryDbVm'
          property :secret_manager_secret, as: 'secretManagerSecret'
          property :sid, as: 'sid'
        end
      end
      
      class DatabaseProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_properties, as: 'backupProperties', class: Google::Apis::WorkloadmanagerV1::BackupProperties, decorator: Google::Apis::WorkloadmanagerV1::BackupProperties::Representation
      
          property :database_type, as: 'databaseType'
        end
      end
      
      class Deployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          property :sap_system_s4_config, as: 'sapSystemS4Config', class: Google::Apis::WorkloadmanagerV1::SapSystemS4Config, decorator: Google::Apis::WorkloadmanagerV1::SapSystemS4Config::Representation
      
          property :service_account, as: 'serviceAccount'
          property :sql_server_workload, as: 'sqlServerWorkload', class: Google::Apis::WorkloadmanagerV1::SqlServerWorkload, decorator: Google::Apis::WorkloadmanagerV1::SqlServerWorkload::Representation
      
          property :state, as: 'state'
          hash :terraform_variables, as: 'terraformVariables', class: Google::Apis::WorkloadmanagerV1::TerraformVariable, decorator: Google::Apis::WorkloadmanagerV1::TerraformVariable::Representation
      
          property :update_time, as: 'updateTime'
          property :worker_pool, as: 'workerPool'
          property :workload_type, as: 'workloadType'
        end
      end
      
      class DeploymentOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
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
          property :kms_key, as: 'kmsKey'
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
          property :engine, as: 'engine'
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
      
      class IamPermission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :granted, as: 'granted'
          property :name, as: 'name'
        end
      end
      
      class Insight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_status, as: 'agentStatus', class: Google::Apis::WorkloadmanagerV1::AgentStatus, decorator: Google::Apis::WorkloadmanagerV1::AgentStatus::Representation
      
          property :instance_id, as: 'instanceId'
          property :open_shift_validation, as: 'openShiftValidation', class: Google::Apis::WorkloadmanagerV1::OpenShiftValidation, decorator: Google::Apis::WorkloadmanagerV1::OpenShiftValidation::Representation
      
          property :sap_discovery, as: 'sapDiscovery', class: Google::Apis::WorkloadmanagerV1::SapDiscovery, decorator: Google::Apis::WorkloadmanagerV1::SapDiscovery::Representation
      
          property :sap_validation, as: 'sapValidation', class: Google::Apis::WorkloadmanagerV1::SapValidation, decorator: Google::Apis::WorkloadmanagerV1::SapValidation::Representation
      
          property :sent_time, as: 'sentTime'
          property :sqlserver_validation, as: 'sqlserverValidation', class: Google::Apis::WorkloadmanagerV1::SqlserverValidation, decorator: Google::Apis::WorkloadmanagerV1::SqlserverValidation::Representation
      
          property :torso_validation, as: 'torsoValidation', class: Google::Apis::WorkloadmanagerV1::TorsoValidation, decorator: Google::Apis::WorkloadmanagerV1::TorsoValidation::Representation
      
        end
      end
      
      class InstanceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_number, as: 'instanceNumber'
          property :machine_type, as: 'machineType'
          collection :roles, as: 'roles'
          property :sap_instance_properties, as: 'sapInstanceProperties', class: Google::Apis::WorkloadmanagerV1::SapInstanceProperties, decorator: Google::Apis::WorkloadmanagerV1::SapInstanceProperties::Representation
      
          property :status, as: 'status'
          property :upcoming_maintenance_event, as: 'upcomingMaintenanceEvent', class: Google::Apis::WorkloadmanagerV1::UpcomingMaintenanceEvent, decorator: Google::Apis::WorkloadmanagerV1::UpcomingMaintenanceEvent::Representation
      
        end
      end
      
      class InvalidRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :gcs_uri, as: 'gcsUri'
          property :name, as: 'name'
          property :valiadtion_error, as: 'valiadtionError'
        end
      end
      
      class InvalidRulesWrapper
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :invalid_rules, as: 'invalidRules', class: Google::Apis::WorkloadmanagerV1::InvalidRule, decorator: Google::Apis::WorkloadmanagerV1::InvalidRule::Representation
      
        end
      end
      
      class ListActuationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actuations, as: 'actuations', class: Google::Apis::WorkloadmanagerV1::Actuation, decorator: Google::Apis::WorkloadmanagerV1::Actuation::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployments, as: 'deployments', class: Google::Apis::WorkloadmanagerV1::Deployment, decorator: Google::Apis::WorkloadmanagerV1::Deployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
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
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :invalid_rules_wrapper, as: 'invalidRulesWrapper', class: Google::Apis::WorkloadmanagerV1::InvalidRulesWrapper, decorator: Google::Apis::WorkloadmanagerV1::InvalidRulesWrapper::Representation
      
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
      
      class LocationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_comms_firewall, as: 'createCommsFirewall'
          collection :custom_tags, as: 'customTags'
          property :deployment_dns_enabled, as: 'deploymentDnsEnabled'
          property :dns_zone, as: 'dnsZone'
          property :dns_zone_name_suffix, as: 'dnsZoneNameSuffix'
          property :internet_access, as: 'internetAccess'
          property :network_project, as: 'networkProject'
          property :region_name, as: 'regionName'
          property :subnet_name, as: 'subnetName'
          property :vpc_name, as: 'vpcName'
          property :zone1_name, as: 'zone1Name'
          property :zone2_name, as: 'zone2Name'
        end
      end
      
      class Notice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
        end
      end
      
      class OpenShiftValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          hash :validation_details, as: 'validationDetails'
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
      
      class Pacemaker
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name_node_certificates, as: 'bucketNameNodeCertificates'
          property :pacemaker_cluster, as: 'pacemakerCluster'
          property :pacemaker_cluster_secret, as: 'pacemakerClusterSecret'
          property :pacemaker_cluster_username, as: 'pacemakerClusterUsername'
          property :sql_pacemaker_secret, as: 'sqlPacemakerSecret'
          property :sql_pacemaker_username, as: 'sqlPacemakerUsername'
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
          property :asset_type, as: 'assetType'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :error_message, as: 'errorMessage'
          property :name, as: 'name'
          property :primary_category, as: 'primaryCategory'
          property :remediation, as: 'remediation'
          property :revision_id, as: 'revisionId'
          property :rule_type, as: 'ruleType'
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
      
      class RuleOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :details, as: 'details'
          property :message, as: 'message'
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
          property :os_kernel_version, as: 'osKernelVersion', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesKernelVersion, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesKernelVersion::Representation
      
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
          collection :disk_names, as: 'diskNames'
          property :mount_point, as: 'mountPoint'
          property :name, as: 'name'
        end
      end
      
      class SapDiscoveryResourceInstancePropertiesKernelVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distro_kernel, as: 'distroKernel', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesKernelVersionVersion, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesKernelVersionVersion::Representation
      
          property :os_kernel, as: 'osKernel', class: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesKernelVersionVersion, decorator: Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesKernelVersionVersion::Representation
      
          property :raw_string, as: 'rawString'
        end
      end
      
      class SapDiscoveryResourceInstancePropertiesKernelVersionVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build, as: 'build'
          property :major, as: 'major'
          property :minor, as: 'minor'
          property :patch, as: 'patch'
          property :remainder, as: 'remainder'
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
          property :agent_states, as: 'agentStates', class: Google::Apis::WorkloadmanagerV1::AgentStates, decorator: Google::Apis::WorkloadmanagerV1::AgentStates::Representation
      
          collection :numbers, as: 'numbers'
        end
      end
      
      class SapSystemS4Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_stopping_for_update, as: 'allowStoppingForUpdate'
          property :ansible_runner_service_account, as: 'ansibleRunnerServiceAccount'
          property :app, as: 'app', class: Google::Apis::WorkloadmanagerV1::AppDetails, decorator: Google::Apis::WorkloadmanagerV1::AppDetails::Representation
      
          property :database, as: 'database', class: Google::Apis::WorkloadmanagerV1::DatabaseDetails, decorator: Google::Apis::WorkloadmanagerV1::DatabaseDetails::Representation
      
          property :deployment_model, as: 'deploymentModel'
          property :environment_type, as: 'environmentType'
          property :gcp_project_id, as: 'gcpProjectId'
          property :location, as: 'location', class: Google::Apis::WorkloadmanagerV1::LocationDetails, decorator: Google::Apis::WorkloadmanagerV1::LocationDetails::Representation
      
          property :media_bucket_name, as: 'mediaBucketName'
          property :sap_boot_disk_image, as: 'sapBootDiskImage'
          property :scaling_method, as: 'scalingMethod'
          property :version, as: 'version'
          property :vm_prefix, as: 'vmPrefix'
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
      
      class ServiceStates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :iam_permissions, as: 'iamPermissions', class: Google::Apis::WorkloadmanagerV1::IamPermission, decorator: Google::Apis::WorkloadmanagerV1::IamPermission::Representation
      
          property :state, as: 'state'
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
      
      class SqlLocationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_zone, as: 'dnsZone'
          property :gcp_project_id, as: 'gcpProjectId'
          property :internet_access, as: 'internetAccess'
          property :network, as: 'network'
          property :primary_zone, as: 'primaryZone'
          property :region, as: 'region'
          property :secondary_zone, as: 'secondaryZone'
          property :subnetwork, as: 'subnetwork'
          property :tertiary_zone, as: 'tertiaryZone'
        end
      end
      
      class SqlServerWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_directory, as: 'activeDirectory', class: Google::Apis::WorkloadmanagerV1::ActiveDirectory, decorator: Google::Apis::WorkloadmanagerV1::ActiveDirectory::Representation
      
          property :compute_engine_service_account, as: 'computeEngineServiceAccount'
          property :database, as: 'database', class: Google::Apis::WorkloadmanagerV1::Database, decorator: Google::Apis::WorkloadmanagerV1::Database::Representation
      
          property :deployment_model, as: 'deploymentModel'
          property :environment_type, as: 'environmentType'
          property :fci_type, as: 'fciType'
          property :ha_type, as: 'haType'
          property :is_sql_payg, as: 'isSqlPayg'
          property :location, as: 'location', class: Google::Apis::WorkloadmanagerV1::SqlLocationDetails, decorator: Google::Apis::WorkloadmanagerV1::SqlLocationDetails::Representation
      
          property :media_bucket, as: 'mediaBucket'
          property :operating_system_type, as: 'operatingSystemType'
          property :os_image, as: 'osImage'
          property :os_image_type, as: 'osImageType'
          property :pacemaker, as: 'pacemaker', class: Google::Apis::WorkloadmanagerV1::Pacemaker, decorator: Google::Apis::WorkloadmanagerV1::Pacemaker::Representation
      
          property :sql_server_edition, as: 'sqlServerEdition'
          property :sql_server_version, as: 'sqlServerVersion'
          property :vm_prefix, as: 'vmPrefix'
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
      
      class TerraformVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_value, as: 'inputValue'
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
          property :on_host_maintenance, as: 'onHostMaintenance'
          property :start_time, as: 'startTime'
          property :type, as: 'type'
        end
      end
      
      class ViolationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset'
          hash :observed, as: 'observed'
          collection :rule_output, as: 'ruleOutput', class: Google::Apis::WorkloadmanagerV1::RuleOutput, decorator: Google::Apis::WorkloadmanagerV1::RuleOutput::Representation
      
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class WorkloadProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :refreshed_time, as: 'refreshedTime'
          property :sap_workload, as: 'sapWorkload', class: Google::Apis::WorkloadmanagerV1::SapWorkload, decorator: Google::Apis::WorkloadmanagerV1::SapWorkload::Representation
      
          property :workload_type, as: 'workloadType'
        end
      end
      
      class WorkloadProfileHealth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_time, as: 'checkTime'
          collection :components_health, as: 'componentsHealth', class: Google::Apis::WorkloadmanagerV1::ComponentHealth, decorator: Google::Apis::WorkloadmanagerV1::ComponentHealth::Representation
      
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
