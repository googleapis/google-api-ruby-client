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
      
      # The API layer server
      class ApiLayerServer
        include Google::Apis::Core::Hashable
      
        # Output only. The api layer name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. OS information
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # Output only. resources in the component
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WorkloadmanagerV1::CloudResource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @os_version = args[:os_version] if args.key?(:os_version)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # * An AgentCommand specifies a one-time executable program for the agent to run.
      class AgentCommand
        include Google::Apis::Core::Hashable
      
        # command is the name of the agent one-time executable that will be invoked.
        # Corresponds to the JSON property `command`
        # @return [String]
        attr_accessor :command
      
        # parameters is a map of key/value pairs that can be used to specify additional
        # one-time executable settings.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command = args[:command] if args.key?(:command)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # The availability groups for sqlserver
      class AvailabilityGroup
        include Google::Apis::Core::Hashable
      
        # Output only. The databases
        # Corresponds to the JSON property `databases`
        # @return [Array<String>]
        attr_accessor :databases
      
        # Output only. The availability group name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The primary server
        # Corresponds to the JSON property `primaryServer`
        # @return [String]
        attr_accessor :primary_server
      
        # Output only. The secondary servers
        # Corresponds to the JSON property `secondaryServers`
        # @return [Array<String>]
        attr_accessor :secondary_servers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @databases = args[:databases] if args.key?(:databases)
          @name = args[:name] if args.key?(:name)
          @primary_server = args[:primary_server] if args.key?(:primary_server)
          @secondary_servers = args[:secondary_servers] if args.key?(:secondary_servers)
        end
      end
      
      # The backend server
      class BackendServer
        include Google::Apis::Core::Hashable
      
        # Output only. The backup file
        # Corresponds to the JSON property `backupFile`
        # @return [String]
        attr_accessor :backup_file
      
        # Output only. The backup schedule
        # Corresponds to the JSON property `backupSchedule`
        # @return [String]
        attr_accessor :backup_schedule
      
        # Output only. The backend name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. OS information
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # Output only. resources in the component
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WorkloadmanagerV1::CloudResource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_file = args[:backup_file] if args.key?(:backup_file)
          @backup_schedule = args[:backup_schedule] if args.key?(:backup_schedule)
          @name = args[:name] if args.key?(:name)
          @os_version = args[:os_version] if args.key?(:os_version)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Backup properties.
      class BackupProperties
        include Google::Apis::Core::Hashable
      
        # Output only. The state of the latest backup.
        # Corresponds to the JSON property `latestBackupStatus`
        # @return [String]
        attr_accessor :latest_backup_status
      
        # The time when the latest backup was performed.
        # Corresponds to the JSON property `latestBackupTime`
        # @return [String]
        attr_accessor :latest_backup_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latest_backup_status = args[:latest_backup_status] if args.key?(:latest_backup_status)
          @latest_backup_time = args[:latest_backup_time] if args.key?(:latest_backup_time)
        end
      end
      
      # Message describing big query destination
      class BigQueryDestination
        include Google::Apis::Core::Hashable
      
        # Optional. determine if results will be saved in a new table
        # Corresponds to the JSON property `createNewResultsTable`
        # @return [Boolean]
        attr_accessor :create_new_results_table
        alias_method :create_new_results_table?, :create_new_results_table
      
        # Optional. destination dataset to save evaluation results
        # Corresponds to the JSON property `destinationDataset`
        # @return [String]
        attr_accessor :destination_dataset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_new_results_table = args[:create_new_results_table] if args.key?(:create_new_results_table)
          @destination_dataset = args[:destination_dataset] if args.key?(:destination_dataset)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The resource on GCP
      class CloudResource
        include Google::Apis::Core::Hashable
      
        # Instance Properties.
        # Corresponds to the JSON property `instanceProperties`
        # @return [Google::Apis::WorkloadmanagerV1::InstanceProperties]
        attr_accessor :instance_properties
      
        # Output only. ComputeInstance, ComputeDisk, VPC, Bare Metal server, etc.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. resource name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_properties = args[:instance_properties] if args.key?(:instance_properties)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The cluster for sqlserver
      class Cluster
        include Google::Apis::Core::Hashable
      
        # Output only. The nodes
        # Corresponds to the JSON property `nodes`
        # @return [Array<String>]
        attr_accessor :nodes
      
        # Output only. The witness server
        # Corresponds to the JSON property `witnessServer`
        # @return [String]
        attr_accessor :witness_server
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodes = args[:nodes] if args.key?(:nodes)
          @witness_server = args[:witness_server] if args.key?(:witness_server)
        end
      end
      
      # * Command specifies the type of command to execute.
      class Command
        include Google::Apis::Core::Hashable
      
        # * An AgentCommand specifies a one-time executable program for the agent to run.
        # Corresponds to the JSON property `agentCommand`
        # @return [Google::Apis::WorkloadmanagerV1::AgentCommand]
        attr_accessor :agent_command
      
        # * A ShellCommand is invoked via the agent's command line executor
        # Corresponds to the JSON property `shellCommand`
        # @return [Google::Apis::WorkloadmanagerV1::ShellCommand]
        attr_accessor :shell_command
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_command = args[:agent_command] if args.key?(:agent_command)
          @shell_command = args[:shell_command] if args.key?(:shell_command)
        end
      end
      
      # HealthCondition contains the detailed health check of each component.
      class ComponentHealth
        include Google::Apis::Core::Hashable
      
        # The component of a workload.
        # Corresponds to the JSON property `component`
        # @return [String]
        attr_accessor :component
      
        # The detailed health checks of the component.
        # Corresponds to the JSON property `componentHealthChecks`
        # @return [Array<Google::Apis::WorkloadmanagerV1::HealthCheck>]
        attr_accessor :component_health_checks
      
        # Output only. The type of the component health.
        # Corresponds to the JSON property `componentHealthType`
        # @return [String]
        attr_accessor :component_health_type
      
        # Output only. The requirement of the component.
        # Corresponds to the JSON property `isRequired`
        # @return [Boolean]
        attr_accessor :is_required
        alias_method :is_required?, :is_required
      
        # Output only. The health state of the component.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Sub component health.
        # Corresponds to the JSON property `subComponentHealthes`
        # @return [Array<Google::Apis::WorkloadmanagerV1::ComponentHealth>]
        attr_accessor :sub_component_healthes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @component = args[:component] if args.key?(:component)
          @component_health_checks = args[:component_health_checks] if args.key?(:component_health_checks)
          @component_health_type = args[:component_health_type] if args.key?(:component_health_type)
          @is_required = args[:is_required] if args.key?(:is_required)
          @state = args[:state] if args.key?(:state)
          @sub_component_healthes = args[:sub_component_healthes] if args.key?(:sub_component_healthes)
        end
      end
      
      # The database for sqlserver
      class Database
        include Google::Apis::Core::Hashable
      
        # Output only. The backup file
        # Corresponds to the JSON property `backupFile`
        # @return [String]
        attr_accessor :backup_file
      
        # Output only. The backup schedule
        # Corresponds to the JSON property `backupSchedule`
        # @return [String]
        attr_accessor :backup_schedule
      
        # Output only. The host VM
        # Corresponds to the JSON property `hostVm`
        # @return [String]
        attr_accessor :host_vm
      
        # Output only. The database name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_file = args[:backup_file] if args.key?(:backup_file)
          @backup_schedule = args[:backup_schedule] if args.key?(:backup_schedule)
          @host_vm = args[:host_vm] if args.key?(:host_vm)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Database Properties.
      class DatabaseProperties
        include Google::Apis::Core::Hashable
      
        # Backup properties.
        # Corresponds to the JSON property `backupProperties`
        # @return [Google::Apis::WorkloadmanagerV1::BackupProperties]
        attr_accessor :backup_properties
      
        # Output only. Type of the database. HANA, DB2, etc.
        # Corresponds to the JSON property `databaseType`
        # @return [String]
        attr_accessor :database_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_properties = args[:backup_properties] if args.key?(:backup_properties)
          @database_type = args[:database_type] if args.key?(:database_type)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # LINT.IfChange Message describing Evaluation object
      class Evaluation
        include Google::Apis::Core::Hashable
      
        # Message describing big query destination
        # Corresponds to the JSON property `bigQueryDestination`
        # @return [Google::Apis::WorkloadmanagerV1::BigQueryDestination]
        attr_accessor :big_query_destination
      
        # Output only. [Output only] Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The Cloud Storage bucket name for custom rules.
        # Corresponds to the JSON property `customRulesBucket`
        # @return [String]
        attr_accessor :custom_rules_bucket
      
        # Description of the Evaluation
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Evaluation type
        # Corresponds to the JSON property `evaluationType`
        # @return [String]
        attr_accessor :evaluation_type
      
        # Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # name of resource names have the form 'projects/`project_id`/locations/`
        # location_id`/evaluations/`evaluation_id`'
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Message describing resource filters
        # Corresponds to the JSON property `resourceFilter`
        # @return [Google::Apis::WorkloadmanagerV1::ResourceFilter]
        attr_accessor :resource_filter
      
        # Message describing resource status
        # Corresponds to the JSON property `resourceStatus`
        # @return [Google::Apis::WorkloadmanagerV1::ResourceStatus]
        attr_accessor :resource_status
      
        # the name of the rule
        # Corresponds to the JSON property `ruleNames`
        # @return [Array<String>]
        attr_accessor :rule_names
      
        # Output only. [Output only] The updated rule ids if exist.
        # Corresponds to the JSON property `ruleVersions`
        # @return [Array<String>]
        attr_accessor :rule_versions
      
        # crontab format schedule for scheduled evaluation, currently only support the
        # following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *"
        # , "0 0 */7 * *",
        # Corresponds to the JSON property `schedule`
        # @return [String]
        attr_accessor :schedule
      
        # Output only. [Output only] Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_destination = args[:big_query_destination] if args.key?(:big_query_destination)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_rules_bucket = args[:custom_rules_bucket] if args.key?(:custom_rules_bucket)
          @description = args[:description] if args.key?(:description)
          @evaluation_type = args[:evaluation_type] if args.key?(:evaluation_type)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @resource_filter = args[:resource_filter] if args.key?(:resource_filter)
          @resource_status = args[:resource_status] if args.key?(:resource_status)
          @rule_names = args[:rule_names] if args.key?(:rule_names)
          @rule_versions = args[:rule_versions] if args.key?(:rule_versions)
          @schedule = args[:schedule] if args.key?(:schedule)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message describing Execution object
      class Execution
        include Google::Apis::Core::Hashable
      
        # Output only. [Output only] End time stamp
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. [Output only] Evaluation ID
        # Corresponds to the JSON property `evaluationId`
        # @return [String]
        attr_accessor :evaluation_id
      
        # Optional. External data sources
        # Corresponds to the JSON property `externalDataSources`
        # @return [Array<Google::Apis::WorkloadmanagerV1::ExternalDataSources>]
        attr_accessor :external_data_sources
      
        # Output only. [Output only] Inventory time stamp
        # Corresponds to the JSON property `inventoryTime`
        # @return [String]
        attr_accessor :inventory_time
      
        # Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The name of execution resource. The format is projects/`project`/locations/`
        # location`/evaluations/`evaluation`/executions/`execution`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Additional information generated by the execution
        # Corresponds to the JSON property `notices`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Notice>]
        attr_accessor :notices
      
        # Message for execution summary
        # Corresponds to the JSON property `resultSummary`
        # @return [Google::Apis::WorkloadmanagerV1::Summary]
        attr_accessor :result_summary
      
        # Output only. execution result summary per rule
        # Corresponds to the JSON property `ruleResults`
        # @return [Array<Google::Apis::WorkloadmanagerV1::RuleExecutionResult>]
        attr_accessor :rule_results
      
        # type represent whether the execution executed directly by user or scheduled
        # according evaluation.schedule field.
        # Corresponds to the JSON property `runType`
        # @return [String]
        attr_accessor :run_type
      
        # Output only. [Output only] Start time stamp
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. [Output only] State
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @evaluation_id = args[:evaluation_id] if args.key?(:evaluation_id)
          @external_data_sources = args[:external_data_sources] if args.key?(:external_data_sources)
          @inventory_time = args[:inventory_time] if args.key?(:inventory_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @notices = args[:notices] if args.key?(:notices)
          @result_summary = args[:result_summary] if args.key?(:result_summary)
          @rule_results = args[:rule_results] if args.key?(:rule_results)
          @run_type = args[:run_type] if args.key?(:run_type)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Message describing the result of an execution
      class ExecutionResult
        include Google::Apis::Core::Hashable
      
        # The commands to remediate the violation.
        # Corresponds to the JSON property `commands`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Command>]
        attr_accessor :commands
      
        # The URL for the documentation of the rule.
        # Corresponds to the JSON property `documentationUrl`
        # @return [String]
        attr_accessor :documentation_url
      
        # Message represent resource in execution result
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WorkloadmanagerV1::Resource]
        attr_accessor :resource
      
        # The rule that is violated in an evaluation.
        # Corresponds to the JSON property `rule`
        # @return [String]
        attr_accessor :rule
      
        # The severity of violation.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Execution result type of the scanned resource
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Message describing the violation in an evaluation result.
        # Corresponds to the JSON property `violationDetails`
        # @return [Google::Apis::WorkloadmanagerV1::ViolationDetails]
        attr_accessor :violation_details
      
        # The violation message of an execution.
        # Corresponds to the JSON property `violationMessage`
        # @return [String]
        attr_accessor :violation_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commands = args[:commands] if args.key?(:commands)
          @documentation_url = args[:documentation_url] if args.key?(:documentation_url)
          @resource = args[:resource] if args.key?(:resource)
          @rule = args[:rule] if args.key?(:rule)
          @severity = args[:severity] if args.key?(:severity)
          @type = args[:type] if args.key?(:type)
          @violation_details = args[:violation_details] if args.key?(:violation_details)
          @violation_message = args[:violation_message] if args.key?(:violation_message)
        end
      end
      
      # Message for external data sources
      class ExternalDataSources
        include Google::Apis::Core::Hashable
      
        # Required. The asset type of the external data source this can be one of go/cai-
        # asset-types to override the default asset type or it can be a custom type
        # defined by the user custom type must match the asset type in the rule
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        # Optional. Name of external data source. The name will be used inside the rego/
        # sql to refer the external data
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Type of external data source
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Required. URI of external data source. example of bq table `project_ID`.`
        # dataset_ID`.`table_ID`
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The front end server
      class FrontEndServer
        include Google::Apis::Core::Hashable
      
        # Output only. The frontend name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. OS information
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # Output only. resources in the component
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WorkloadmanagerV1::CloudResource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @os_version = args[:os_version] if args.key?(:os_version)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Message describing compute engine instance filter
      class GceInstanceFilter
        include Google::Apis::Core::Hashable
      
        # Service account of compute engine
        # Corresponds to the JSON property `serviceAccounts`
        # @return [Array<String>]
        attr_accessor :service_accounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_accounts = args[:service_accounts] if args.key?(:service_accounts)
        end
      end
      
      # HealthCheck contains the detailed health check of a component based on asource.
      class HealthCheck
        include Google::Apis::Core::Hashable
      
        # Output only. The message of the health check.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. The health check source metric name.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # The resource on GCP
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WorkloadmanagerV1::CloudResource]
        attr_accessor :resource
      
        # Output only. The source of the health check.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Output only. The state of the health check.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @metric = args[:metric] if args.key?(:metric)
          @resource = args[:resource] if args.key?(:resource)
          @source = args[:source] if args.key?(:source)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A presentation of host resource usage where the workload runs.
      class Insight
        include Google::Apis::Core::Hashable
      
        # Required. The instance id where the insight is generated from
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # The schema of SAP system discovery data.
        # Corresponds to the JSON property `sapDiscovery`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscovery]
        attr_accessor :sap_discovery
      
        # A presentation of SAP workload insight. The schema of SAP workloads validation
        # related data.
        # Corresponds to the JSON property `sapValidation`
        # @return [Google::Apis::WorkloadmanagerV1::SapValidation]
        attr_accessor :sap_validation
      
        # Output only. [Output only] Create time stamp
        # Corresponds to the JSON property `sentTime`
        # @return [String]
        attr_accessor :sent_time
      
        # A presentation of SQLServer workload insight. The schema of SqlServer
        # workloads validation related data.
        # Corresponds to the JSON property `sqlserverValidation`
        # @return [Google::Apis::WorkloadmanagerV1::SqlserverValidation]
        attr_accessor :sqlserver_validation
      
        # The schema of torso workload validation data.
        # Corresponds to the JSON property `torsoValidation`
        # @return [Google::Apis::WorkloadmanagerV1::TorsoValidation]
        attr_accessor :torso_validation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @sap_discovery = args[:sap_discovery] if args.key?(:sap_discovery)
          @sap_validation = args[:sap_validation] if args.key?(:sap_validation)
          @sent_time = args[:sent_time] if args.key?(:sent_time)
          @sqlserver_validation = args[:sqlserver_validation] if args.key?(:sqlserver_validation)
          @torso_validation = args[:torso_validation] if args.key?(:torso_validation)
        end
      end
      
      # a vm instance
      class Instance
        include Google::Apis::Core::Hashable
      
        # Output only. name of the VM
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The location of the VM
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Output only. The state of the VM
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @region = args[:region] if args.key?(:region)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Instance Properties.
      class InstanceProperties
        include Google::Apis::Core::Hashable
      
        # Optional. Instance number.
        # Corresponds to the JSON property `instanceNumber`
        # @return [String]
        attr_accessor :instance_number
      
        # Optional. Instance machine type.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Optional. Instance role.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Optional. Instance roles.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        # SAP instance properties.
        # Corresponds to the JSON property `sapInstanceProperties`
        # @return [Google::Apis::WorkloadmanagerV1::SapInstanceProperties]
        attr_accessor :sap_instance_properties
      
        # Optional. Instance status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Maintenance Event
        # Corresponds to the JSON property `upcomingMaintenanceEvent`
        # @return [Google::Apis::WorkloadmanagerV1::UpcomingMaintenanceEvent]
        attr_accessor :upcoming_maintenance_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_number = args[:instance_number] if args.key?(:instance_number)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @role = args[:role] if args.key?(:role)
          @roles = args[:roles] if args.key?(:roles)
          @sap_instance_properties = args[:sap_instance_properties] if args.key?(:sap_instance_properties)
          @status = args[:status] if args.key?(:status)
          @upcoming_maintenance_event = args[:upcoming_maintenance_event] if args.key?(:upcoming_maintenance_event)
        end
      end
      
      # The database layer
      class Layer
        include Google::Apis::Core::Hashable
      
        # the application layer
        # Corresponds to the JSON property `applicationType`
        # @return [String]
        attr_accessor :application_type
      
        # Optional. the database layer
        # Corresponds to the JSON property `databaseType`
        # @return [String]
        attr_accessor :database_type
      
        # Optional. instances in a layer
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Instance>]
        attr_accessor :instances
      
        # Output only. system identification of a layer
        # Corresponds to the JSON property `sid`
        # @return [String]
        attr_accessor :sid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_type = args[:application_type] if args.key?(:application_type)
          @database_type = args[:database_type] if args.key?(:database_type)
          @instances = args[:instances] if args.key?(:instances)
          @sid = args[:sid] if args.key?(:sid)
        end
      end
      
      # List discovered profile Response returns discovered profiles from agents
      class ListDiscoveredProfilesResponse
        include Google::Apis::Core::Hashable
      
        # Output only. A token identifying a page of results the server should return
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # Output only. The list of workload profiles
        # Corresponds to the JSON property `workloadProfiles`
        # @return [Array<Google::Apis::WorkloadmanagerV1::WorkloadProfile>]
        attr_accessor :workload_profiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @workload_profiles = args[:workload_profiles] if args.key?(:workload_profiles)
        end
      end
      
      # Message for response to listing Evaluations
      class ListEvaluationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Evaluation
        # Corresponds to the JSON property `evaluations`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Evaluation>]
        attr_accessor :evaluations
      
        # A token identifying a page of results the server should return.
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
          @evaluations = args[:evaluations] if args.key?(:evaluations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response of list execution results
      class ListExecutionResultsResponse
        include Google::Apis::Core::Hashable
      
        # The versions from the specified publisher.
        # Corresponds to the JSON property `executionResults`
        # @return [Array<Google::Apis::WorkloadmanagerV1::ExecutionResult>]
        attr_accessor :execution_results
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_results = args[:execution_results] if args.key?(:execution_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to listing Executions
      class ListExecutionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Execution
        # Corresponds to the JSON property `executions`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Execution>]
        attr_accessor :executions
      
        # A token identifying a page of results the server should return.
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
          @executions = args[:executions] if args.key?(:executions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # Mesesage of response of list rules
      class ListRulesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # all rules in response
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Rule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Message for response to list scanned resources
      class ListScannedResourcesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # All scanned resources in response
        # Corresponds to the JSON property `scannedResources`
        # @return [Array<Google::Apis::WorkloadmanagerV1::ScannedResource>]
        attr_accessor :scanned_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @scanned_resources = args[:scanned_resources] if args.key?(:scanned_resources)
        end
      end
      
      # The load balancer for sqlserver
      class LoadBalancerServer
        include Google::Apis::Core::Hashable
      
        # Output only. The IP address
        # Corresponds to the JSON property `ip`
        # @return [String]
        attr_accessor :ip
      
        # Output only. The VM name
        # Corresponds to the JSON property `vm`
        # @return [String]
        attr_accessor :vm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip = args[:ip] if args.key?(:ip)
          @vm = args[:vm] if args.key?(:vm)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Message for additional information generated by the execution
      class Notice
        include Google::Apis::Core::Hashable
      
        # Output only. Message of the notice
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::WorkloadmanagerV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
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
      
      # Product contains the details of a product.
      class Product
        include Google::Apis::Core::Hashable
      
        # Optional. Name of the product.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Version of the product.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Message represent resource in execution result
      class Resource
        include Google::Apis::Core::Hashable
      
        # The name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The service account associated with the resource.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The type of resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @service_account = args[:service_account] if args.key?(:service_account)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Message describing resource filters
      class ResourceFilter
        include Google::Apis::Core::Hashable
      
        # Message describing compute engine instance filter
        # Corresponds to the JSON property `gceInstanceFilter`
        # @return [Google::Apis::WorkloadmanagerV1::GceInstanceFilter]
        attr_accessor :gce_instance_filter
      
        # The label used for filter resource
        # Corresponds to the JSON property `inclusionLabels`
        # @return [Hash<String,String>]
        attr_accessor :inclusion_labels
      
        # The id pattern for filter resource
        # Corresponds to the JSON property `resourceIdPatterns`
        # @return [Array<String>]
        attr_accessor :resource_id_patterns
      
        # The scopes of evaluation resource
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gce_instance_filter = args[:gce_instance_filter] if args.key?(:gce_instance_filter)
          @inclusion_labels = args[:inclusion_labels] if args.key?(:inclusion_labels)
          @resource_id_patterns = args[:resource_id_patterns] if args.key?(:resource_id_patterns)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # Message describing resource status
      class ResourceStatus
        include Google::Apis::Core::Hashable
      
        # Historical: Used before 2023-05-22 the new version of rule id if exists
        # Corresponds to the JSON property `rulesNewerVersions`
        # @return [Array<String>]
        attr_accessor :rules_newer_versions
      
        # State of the resource
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rules_newer_versions = args[:rules_newer_versions] if args.key?(:rules_newer_versions)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Message represent a rule
      class Rule
        include Google::Apis::Core::Hashable
      
        # descrite rule in plain language
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # the name display in UI
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # the message template for rule
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # rule name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # the primary category
        # Corresponds to the JSON property `primaryCategory`
        # @return [String]
        attr_accessor :primary_category
      
        # the remediation for the rule
        # Corresponds to the JSON property `remediation`
        # @return [String]
        attr_accessor :remediation
      
        # Output only. the version of the rule
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # the secondary category
        # Corresponds to the JSON property `secondaryCategory`
        # @return [String]
        attr_accessor :secondary_category
      
        # the severity of the rule
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # List of user-defined tags
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # the docuement url for the rule
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error_message = args[:error_message] if args.key?(:error_message)
          @name = args[:name] if args.key?(:name)
          @primary_category = args[:primary_category] if args.key?(:primary_category)
          @remediation = args[:remediation] if args.key?(:remediation)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @secondary_category = args[:secondary_category] if args.key?(:secondary_category)
          @severity = args[:severity] if args.key?(:severity)
          @tags = args[:tags] if args.key?(:tags)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Message for execution result summary per rule
      class RuleExecutionResult
        include Google::Apis::Core::Hashable
      
        # Execution message, if any
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Number of violations
        # Corresponds to the JSON property `resultCount`
        # @return [Fixnum]
        attr_accessor :result_count
      
        # rule name
        # Corresponds to the JSON property `rule`
        # @return [String]
        attr_accessor :rule
      
        # Number of total scanned resources
        # Corresponds to the JSON property `scannedResourceCount`
        # @return [Fixnum]
        attr_accessor :scanned_resource_count
      
        # Output only. The execution status
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @result_count = args[:result_count] if args.key?(:result_count)
          @rule = args[:rule] if args.key?(:rule)
          @scanned_resource_count = args[:scanned_resource_count] if args.key?(:scanned_resource_count)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Message for creating a Execution
      class RunEvaluationRequest
        include Google::Apis::Core::Hashable
      
        # Message describing Execution object
        # Corresponds to the JSON property `execution`
        # @return [Google::Apis::WorkloadmanagerV1::Execution]
        attr_accessor :execution
      
        # Required. Id of the requesting object If auto-generating Id server-side,
        # remove this field and execution_id from the method_signature of Create RPC
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes since the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution = args[:execution] if args.key?(:execution)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # The component of sap workload
      class SapComponent
        include Google::Apis::Core::Hashable
      
        # Database Properties.
        # Corresponds to the JSON property `databaseProperties`
        # @return [Google::Apis::WorkloadmanagerV1::DatabaseProperties]
        attr_accessor :database_properties
      
        # A list of host URIs that are part of the HA configuration if present. An empty
        # list indicates the component is not configured for HA.
        # Corresponds to the JSON property `haHosts`
        # @return [Array<String>]
        attr_accessor :ha_hosts
      
        # Output only. resources in the component
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WorkloadmanagerV1::CloudResource>]
        attr_accessor :resources
      
        # Output only. sid is the sap component identificator
        # Corresponds to the JSON property `sid`
        # @return [String]
        attr_accessor :sid
      
        # The detected topology of the component.
        # Corresponds to the JSON property `topologyType`
        # @return [String]
        attr_accessor :topology_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_properties = args[:database_properties] if args.key?(:database_properties)
          @ha_hosts = args[:ha_hosts] if args.key?(:ha_hosts)
          @resources = args[:resources] if args.key?(:resources)
          @sid = args[:sid] if args.key?(:sid)
          @topology_type = args[:topology_type] if args.key?(:topology_type)
        end
      end
      
      # The schema of SAP system discovery data.
      class SapDiscovery
        include Google::Apis::Core::Hashable
      
        # Message describing the system component.
        # Corresponds to the JSON property `applicationLayer`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent]
        attr_accessor :application_layer
      
        # Message describing the system component.
        # Corresponds to the JSON property `databaseLayer`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent]
        attr_accessor :database_layer
      
        # Message describing SAP discovery system metadata
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryMetadata]
        attr_accessor :metadata
      
        # Optional. The GCP project number that this SapSystem belongs to.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        # Output only. A combination of database SID, database instance URI and tenant
        # DB name to make a unique identifier per-system.
        # Corresponds to the JSON property `systemId`
        # @return [String]
        attr_accessor :system_id
      
        # Required. Unix timestamp this system has been updated last.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. Whether to use DR reconciliation or not.
        # Corresponds to the JSON property `useDrReconciliation`
        # @return [Boolean]
        attr_accessor :use_dr_reconciliation
        alias_method :use_dr_reconciliation?, :use_dr_reconciliation
      
        # A set of properties describing an SAP workload.
        # Corresponds to the JSON property `workloadProperties`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryWorkloadProperties]
        attr_accessor :workload_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_layer = args[:application_layer] if args.key?(:application_layer)
          @database_layer = args[:database_layer] if args.key?(:database_layer)
          @metadata = args[:metadata] if args.key?(:metadata)
          @project_number = args[:project_number] if args.key?(:project_number)
          @system_id = args[:system_id] if args.key?(:system_id)
          @update_time = args[:update_time] if args.key?(:update_time)
          @use_dr_reconciliation = args[:use_dr_reconciliation] if args.key?(:use_dr_reconciliation)
          @workload_properties = args[:workload_properties] if args.key?(:workload_properties)
        end
      end
      
      # Message describing the system component.
      class SapDiscoveryComponent
        include Google::Apis::Core::Hashable
      
        # A set of properties describing an SAP Application layer.
        # Corresponds to the JSON property `applicationProperties`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryComponentApplicationProperties]
        attr_accessor :application_properties
      
        # A set of properties describing an SAP Database layer.
        # Corresponds to the JSON property `databaseProperties`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryComponentDatabaseProperties]
        attr_accessor :database_properties
      
        # Optional. A list of host URIs that are part of the HA configuration if present.
        # An empty list indicates the component is not configured for HA.
        # Corresponds to the JSON property `haHosts`
        # @return [Array<String>]
        attr_accessor :ha_hosts
      
        # Required. Pantheon Project in which the resources reside.
        # Corresponds to the JSON property `hostProject`
        # @return [String]
        attr_accessor :host_project
      
        # Optional. The region this component's resources are primarily located in.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Optional. A list of replication sites used in Disaster Recovery (DR)
        # configurations.
        # Corresponds to the JSON property `replicationSites`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SapDiscoveryComponentReplicationSite>]
        attr_accessor :replication_sites
      
        # Optional. The resources in a component.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SapDiscoveryResource>]
        attr_accessor :resources
      
        # Optional. The SAP identifier, used by the SAP software and helps differentiate
        # systems for customers.
        # Corresponds to the JSON property `sid`
        # @return [String]
        attr_accessor :sid
      
        # Optional. The detected topology of the component.
        # Corresponds to the JSON property `topologyType`
        # @return [String]
        attr_accessor :topology_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_properties = args[:application_properties] if args.key?(:application_properties)
          @database_properties = args[:database_properties] if args.key?(:database_properties)
          @ha_hosts = args[:ha_hosts] if args.key?(:ha_hosts)
          @host_project = args[:host_project] if args.key?(:host_project)
          @region = args[:region] if args.key?(:region)
          @replication_sites = args[:replication_sites] if args.key?(:replication_sites)
          @resources = args[:resources] if args.key?(:resources)
          @sid = args[:sid] if args.key?(:sid)
          @topology_type = args[:topology_type] if args.key?(:topology_type)
        end
      end
      
      # A set of properties describing an SAP Application layer.
      class SapDiscoveryComponentApplicationProperties
        include Google::Apis::Core::Hashable
      
        # Optional. Deprecated: ApplicationType now tells you whether this is ABAP or
        # Java.
        # Corresponds to the JSON property `abap`
        # @return [Boolean]
        attr_accessor :abap
        alias_method :abap?, :abap
      
        # Optional. Instance number of the SAP application instance.
        # Corresponds to the JSON property `appInstanceNumber`
        # @return [String]
        attr_accessor :app_instance_number
      
        # Required. Type of the application. Netweaver, etc.
        # Corresponds to the JSON property `applicationType`
        # @return [String]
        attr_accessor :application_type
      
        # Optional. Instance number of the ASCS instance.
        # Corresponds to the JSON property `ascsInstanceNumber`
        # @return [String]
        attr_accessor :ascs_instance_number
      
        # Optional. Resource URI of the recognized ASCS host of the application.
        # Corresponds to the JSON property `ascsUri`
        # @return [String]
        attr_accessor :ascs_uri
      
        # Optional. Instance number of the ERS instance.
        # Corresponds to the JSON property `ersInstanceNumber`
        # @return [String]
        attr_accessor :ers_instance_number
      
        # Optional. Kernel version for Netweaver running in the system.
        # Corresponds to the JSON property `kernelVersion`
        # @return [String]
        attr_accessor :kernel_version
      
        # Optional. Resource URI of the recognized shared NFS of the application. May be
        # empty if the application server has only a single node.
        # Corresponds to the JSON property `nfsUri`
        # @return [String]
        attr_accessor :nfs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abap = args[:abap] if args.key?(:abap)
          @app_instance_number = args[:app_instance_number] if args.key?(:app_instance_number)
          @application_type = args[:application_type] if args.key?(:application_type)
          @ascs_instance_number = args[:ascs_instance_number] if args.key?(:ascs_instance_number)
          @ascs_uri = args[:ascs_uri] if args.key?(:ascs_uri)
          @ers_instance_number = args[:ers_instance_number] if args.key?(:ers_instance_number)
          @kernel_version = args[:kernel_version] if args.key?(:kernel_version)
          @nfs_uri = args[:nfs_uri] if args.key?(:nfs_uri)
        end
      end
      
      # A set of properties describing an SAP Database layer.
      class SapDiscoveryComponentDatabaseProperties
        include Google::Apis::Core::Hashable
      
        # Optional. SID of the system database.
        # Corresponds to the JSON property `databaseSid`
        # @return [String]
        attr_accessor :database_sid
      
        # Required. Type of the database. HANA, DB2, etc.
        # Corresponds to the JSON property `databaseType`
        # @return [String]
        attr_accessor :database_type
      
        # Optional. The version of the database software running in the system.
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # Optional. Instance number of the SAP instance.
        # Corresponds to the JSON property `instanceNumber`
        # @return [String]
        attr_accessor :instance_number
      
        # Optional. Landscape ID from the HANA nameserver.
        # Corresponds to the JSON property `landscapeId`
        # @return [String]
        attr_accessor :landscape_id
      
        # Required. URI of the recognized primary instance of the database.
        # Corresponds to the JSON property `primaryInstanceUri`
        # @return [String]
        attr_accessor :primary_instance_uri
      
        # Optional. URI of the recognized shared NFS of the database. May be empty if
        # the database has only a single node.
        # Corresponds to the JSON property `sharedNfsUri`
        # @return [String]
        attr_accessor :shared_nfs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_sid = args[:database_sid] if args.key?(:database_sid)
          @database_type = args[:database_type] if args.key?(:database_type)
          @database_version = args[:database_version] if args.key?(:database_version)
          @instance_number = args[:instance_number] if args.key?(:instance_number)
          @landscape_id = args[:landscape_id] if args.key?(:landscape_id)
          @primary_instance_uri = args[:primary_instance_uri] if args.key?(:primary_instance_uri)
          @shared_nfs_uri = args[:shared_nfs_uri] if args.key?(:shared_nfs_uri)
        end
      end
      
      # A replication site used in Disaster Recovery (DR) configurations.
      class SapDiscoveryComponentReplicationSite
        include Google::Apis::Core::Hashable
      
        # Message describing the system component.
        # Corresponds to the JSON property `component`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent]
        attr_accessor :component
      
        # Optional. The name of the source site from which this one replicates.
        # Corresponds to the JSON property `sourceSite`
        # @return [String]
        attr_accessor :source_site
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @component = args[:component] if args.key?(:component)
          @source_site = args[:source_site] if args.key?(:source_site)
        end
      end
      
      # Message describing SAP discovery system metadata
      class SapDiscoveryMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Customer region string for customer's use. Does not represent GCP
        # region.
        # Corresponds to the JSON property `customerRegion`
        # @return [String]
        attr_accessor :customer_region
      
        # Optional. Customer defined, something like "E-commerce pre prod"
        # Corresponds to the JSON property `definedSystem`
        # @return [String]
        attr_accessor :defined_system
      
        # Optional. Should be "prod", "QA", "dev", "staging", etc.
        # Corresponds to the JSON property `environmentType`
        # @return [String]
        attr_accessor :environment_type
      
        # Optional. This SAP product name
        # Corresponds to the JSON property `sapProduct`
        # @return [String]
        attr_accessor :sap_product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_region = args[:customer_region] if args.key?(:customer_region)
          @defined_system = args[:defined_system] if args.key?(:defined_system)
          @environment_type = args[:environment_type] if args.key?(:environment_type)
          @sap_product = args[:sap_product] if args.key?(:sap_product)
        end
      end
      
      # Message describing a resource.
      class SapDiscoveryResource
        include Google::Apis::Core::Hashable
      
        # A set of properties only present for an instance type resource
        # Corresponds to the JSON property `instanceProperties`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstanceProperties]
        attr_accessor :instance_properties
      
        # Optional. A list of resource URIs related to this resource.
        # Corresponds to the JSON property `relatedResources`
        # @return [Array<String>]
        attr_accessor :related_resources
      
        # Required. ComputeInstance, ComputeDisk, VPC, Bare Metal server, etc.
        # Corresponds to the JSON property `resourceKind`
        # @return [String]
        attr_accessor :resource_kind
      
        # Required. The type of this resource.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Required. URI of the resource, includes project, location, and name.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # Required. Unix timestamp of when this resource last had its discovery data
        # updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_properties = args[:instance_properties] if args.key?(:instance_properties)
          @related_resources = args[:related_resources] if args.key?(:related_resources)
          @resource_kind = args[:resource_kind] if args.key?(:resource_kind)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A set of properties only present for an instance type resource
      class SapDiscoveryResourceInstanceProperties
        include Google::Apis::Core::Hashable
      
        # Optional. App server instances on the host
        # Corresponds to the JSON property `appInstances`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesAppInstance>]
        attr_accessor :app_instances
      
        # Optional. A list of instance URIs that are part of a cluster with this one.
        # Corresponds to the JSON property `clusterInstances`
        # @return [Array<String>]
        attr_accessor :cluster_instances
      
        # Optional. Disk mounts on the instance.
        # Corresponds to the JSON property `diskMounts`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstancePropertiesDiskMount>]
        attr_accessor :disk_mounts
      
        # Optional. The VM's instance number.
        # Corresponds to the JSON property `instanceNumber`
        # @return [Fixnum]
        attr_accessor :instance_number
      
        # Optional. Bitmask of instance role, a resource may have multiple roles at once.
        # Corresponds to the JSON property `instanceRole`
        # @return [String]
        attr_accessor :instance_role
      
        # Optional. Instance is part of a DR site.
        # Corresponds to the JSON property `isDrSite`
        # @return [Boolean]
        attr_accessor :is_dr_site
        alias_method :is_dr_site?, :is_dr_site
      
        # Optional. A virtual hostname of the instance if it has one.
        # Corresponds to the JSON property `virtualHostname`
        # @return [String]
        attr_accessor :virtual_hostname
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_instances = args[:app_instances] if args.key?(:app_instances)
          @cluster_instances = args[:cluster_instances] if args.key?(:cluster_instances)
          @disk_mounts = args[:disk_mounts] if args.key?(:disk_mounts)
          @instance_number = args[:instance_number] if args.key?(:instance_number)
          @instance_role = args[:instance_role] if args.key?(:instance_role)
          @is_dr_site = args[:is_dr_site] if args.key?(:is_dr_site)
          @virtual_hostname = args[:virtual_hostname] if args.key?(:virtual_hostname)
        end
      end
      
      # Fields to describe an SAP application server instance.
      class SapDiscoveryResourceInstancePropertiesAppInstance
        include Google::Apis::Core::Hashable
      
        # Optional. Instance name of the SAP application instance.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Instance number of the SAP application instance.
        # Corresponds to the JSON property `number`
        # @return [String]
        attr_accessor :number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @number = args[:number] if args.key?(:number)
        end
      end
      
      # Disk mount on the instance.
      class SapDiscoveryResourceInstancePropertiesDiskMount
        include Google::Apis::Core::Hashable
      
        # Optional. Filesystem mount point.
        # Corresponds to the JSON property `mountPoint`
        # @return [String]
        attr_accessor :mount_point
      
        # Optional. Name of the disk.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mount_point = args[:mount_point] if args.key?(:mount_point)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A set of properties describing an SAP workload.
      class SapDiscoveryWorkloadProperties
        include Google::Apis::Core::Hashable
      
        # Optional. List of SAP Products and their versions running on the system.
        # Corresponds to the JSON property `productVersions`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SapDiscoveryWorkloadPropertiesProductVersion>]
        attr_accessor :product_versions
      
        # Optional. A list of SAP software components and their versions running on the
        # system.
        # Corresponds to the JSON property `softwareComponentVersions`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SapDiscoveryWorkloadPropertiesSoftwareComponentProperties>]
        attr_accessor :software_component_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product_versions = args[:product_versions] if args.key?(:product_versions)
          @software_component_versions = args[:software_component_versions] if args.key?(:software_component_versions)
        end
      end
      
      # A product name and version.
      class SapDiscoveryWorkloadPropertiesProductVersion
        include Google::Apis::Core::Hashable
      
        # Optional. Name of the product.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Version of the product.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A SAP software component name, version, and type.
      class SapDiscoveryWorkloadPropertiesSoftwareComponentProperties
        include Google::Apis::Core::Hashable
      
        # Optional. The component's minor version.
        # Corresponds to the JSON property `extVersion`
        # @return [String]
        attr_accessor :ext_version
      
        # Optional. Name of the component.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The component's type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Optional. The component's major version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ext_version = args[:ext_version] if args.key?(:ext_version)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # SAP instance properties.
      class SapInstanceProperties
        include Google::Apis::Core::Hashable
      
        # Optional. SAP Instance numbers. They are from '00' to '99'.
        # Corresponds to the JSON property `numbers`
        # @return [Array<String>]
        attr_accessor :numbers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @numbers = args[:numbers] if args.key?(:numbers)
        end
      end
      
      # A presentation of SAP workload insight. The schema of SAP workloads validation
      # related data.
      class SapValidation
        include Google::Apis::Core::Hashable
      
        # Required. The project_id of the cloud project that the Insight data comes from.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Optional. A list of SAP validation metrics data.
        # Corresponds to the JSON property `validationDetails`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SapValidationValidationDetail>]
        attr_accessor :validation_details
      
        # Optional. The zone of the instance that the Insight data comes from.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @validation_details = args[:validation_details] if args.key?(:validation_details)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Message describing the SAP validation metrics.
      class SapValidationValidationDetail
        include Google::Apis::Core::Hashable
      
        # Optional. The pairs of metrics data: field name & field value.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,String>]
        attr_accessor :details
      
        # Optional. Was there a SAP system detected for this validation type.
        # Corresponds to the JSON property `isPresent`
        # @return [Boolean]
        attr_accessor :is_present
        alias_method :is_present?, :is_present
      
        # Optional. The SAP system that the validation data is from.
        # Corresponds to the JSON property `sapValidationType`
        # @return [String]
        attr_accessor :sap_validation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @is_present = args[:is_present] if args.key?(:is_present)
          @sap_validation_type = args[:sap_validation_type] if args.key?(:sap_validation_type)
        end
      end
      
      # The body of sap workload
      class SapWorkload
        include Google::Apis::Core::Hashable
      
        # The component of sap workload
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::WorkloadmanagerV1::SapComponent]
        attr_accessor :application
      
        # Output only. the architecture
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # The component of sap workload
        # Corresponds to the JSON property `database`
        # @return [Google::Apis::WorkloadmanagerV1::SapComponent]
        attr_accessor :database
      
        # Output only. The metadata for SAP workload.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Output only. the products on this workload.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Product>]
        attr_accessor :products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application = args[:application] if args.key?(:application)
          @architecture = args[:architecture] if args.key?(:architecture)
          @database = args[:database] if args.key?(:database)
          @metadata = args[:metadata] if args.key?(:metadata)
          @products = args[:products] if args.key?(:products)
        end
      end
      
      # Message of scanned resource
      class ScannedResource
        include Google::Apis::Core::Hashable
      
        # resource name
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # resource type
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # * A ShellCommand is invoked via the agent's command line executor
      class ShellCommand
        include Google::Apis::Core::Hashable
      
        # args is a string of arguments to be passed to the command.
        # Corresponds to the JSON property `args`
        # @return [String]
        attr_accessor :args
      
        # command is the name of the command to be executed.
        # Corresponds to the JSON property `command`
        # @return [String]
        attr_accessor :command
      
        # Optional. If not specified, the default timeout is 60 seconds.
        # Corresponds to the JSON property `timeoutSeconds`
        # @return [Fixnum]
        attr_accessor :timeout_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @command = args[:command] if args.key?(:command)
          @timeout_seconds = args[:timeout_seconds] if args.key?(:timeout_seconds)
        end
      end
      
      # A presentation of SQLServer workload insight. The schema of SqlServer
      # workloads validation related data.
      class SqlserverValidation
        include Google::Apis::Core::Hashable
      
        # Optional. The agent version collected this data point
        # Corresponds to the JSON property `agentVersion`
        # @return [String]
        attr_accessor :agent_version
      
        # Required. The instance_name of the instance that the Insight data comes from.
        # According to https://linter.aip.dev/122/name-suffix: field names should not
        # use the _name suffix unless the field would be ambiguous without it.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # Required. The project_id of the cloud project that the Insight data comes from.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Optional. A list of SqlServer validation metrics data.
        # Corresponds to the JSON property `validationDetails`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SqlserverValidationValidationDetail>]
        attr_accessor :validation_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_version = args[:agent_version] if args.key?(:agent_version)
          @instance = args[:instance] if args.key?(:instance)
          @project_id = args[:project_id] if args.key?(:project_id)
          @validation_details = args[:validation_details] if args.key?(:validation_details)
        end
      end
      
      # Message containing collected data names and values.
      class SqlserverValidationDetails
        include Google::Apis::Core::Hashable
      
        # Required. Collected data is in format.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,String>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # Message describing the Sqlserver validation metrics.
      class SqlserverValidationValidationDetail
        include Google::Apis::Core::Hashable
      
        # Required. Details wraps map that represents collected data names and values.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SqlserverValidationDetails>]
        attr_accessor :details
      
        # Optional. The Sqlserver system that the validation data is from.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The body of sqlserver workload
      class SqlserverWorkload
        include Google::Apis::Core::Hashable
      
        # Output only. The availability groups for sqlserver
        # Corresponds to the JSON property `ags`
        # @return [Array<Google::Apis::WorkloadmanagerV1::AvailabilityGroup>]
        attr_accessor :ags
      
        # The cluster for sqlserver
        # Corresponds to the JSON property `cluster`
        # @return [Google::Apis::WorkloadmanagerV1::Cluster]
        attr_accessor :cluster
      
        # Output only. The databases for sqlserver
        # Corresponds to the JSON property `databases`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Database>]
        attr_accessor :databases
      
        # The load balancer for sqlserver
        # Corresponds to the JSON property `loadBalancerServer`
        # @return [Google::Apis::WorkloadmanagerV1::LoadBalancerServer]
        attr_accessor :load_balancer_server
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ags = args[:ags] if args.key?(:ags)
          @cluster = args[:cluster] if args.key?(:cluster)
          @databases = args[:databases] if args.key?(:databases)
          @load_balancer_server = args[:load_balancer_server] if args.key?(:load_balancer_server)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Message for execution summary
      class Summary
        include Google::Apis::Core::Hashable
      
        # Output only. Number of failures
        # Corresponds to the JSON property `failures`
        # @return [Fixnum]
        attr_accessor :failures
      
        # Output only. Number of new failures compared to the previous execution
        # Corresponds to the JSON property `newFailures`
        # @return [Fixnum]
        attr_accessor :new_failures
      
        # Output only. Number of new fixes compared to the previous execution
        # Corresponds to the JSON property `newFixes`
        # @return [Fixnum]
        attr_accessor :new_fixes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failures = args[:failures] if args.key?(:failures)
          @new_failures = args[:new_failures] if args.key?(:new_failures)
          @new_fixes = args[:new_fixes] if args.key?(:new_fixes)
        end
      end
      
      # The body of three tier workload
      class ThreeTierWorkload
        include Google::Apis::Core::Hashable
      
        # The API layer server
        # Corresponds to the JSON property `apiLayer`
        # @return [Google::Apis::WorkloadmanagerV1::ApiLayerServer]
        attr_accessor :api_layer
      
        # The backend server
        # Corresponds to the JSON property `backend`
        # @return [Google::Apis::WorkloadmanagerV1::BackendServer]
        attr_accessor :backend
      
        # Output only. the workload endpoint
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # The front end server
        # Corresponds to the JSON property `frontend`
        # @return [Google::Apis::WorkloadmanagerV1::FrontEndServer]
        attr_accessor :frontend
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_layer = args[:api_layer] if args.key?(:api_layer)
          @backend = args[:backend] if args.key?(:backend)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @frontend = args[:frontend] if args.key?(:frontend)
        end
      end
      
      # The schema of torso workload validation data.
      class TorsoValidation
        include Google::Apis::Core::Hashable
      
        # Required. agent_version lists the version of the agent that collected this
        # data.
        # Corresponds to the JSON property `agentVersion`
        # @return [String]
        attr_accessor :agent_version
      
        # Required. instance_name lists the human readable name of the instance that the
        # data comes from.
        # Corresponds to the JSON property `instanceName`
        # @return [String]
        attr_accessor :instance_name
      
        # Required. project_id lists the human readable cloud project that the data
        # comes from.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. validation_details contains the pairs of validation data: field name
        # & field value.
        # Corresponds to the JSON property `validationDetails`
        # @return [Hash<String,String>]
        attr_accessor :validation_details
      
        # Required. workload_type specifies the type of torso workload.
        # Corresponds to the JSON property `workloadType`
        # @return [String]
        attr_accessor :workload_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_version = args[:agent_version] if args.key?(:agent_version)
          @instance_name = args[:instance_name] if args.key?(:instance_name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @validation_details = args[:validation_details] if args.key?(:validation_details)
          @workload_type = args[:workload_type] if args.key?(:workload_type)
        end
      end
      
      # Maintenance Event
      class UpcomingMaintenanceEvent
        include Google::Apis::Core::Hashable
      
        # Optional. End time
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Maintenance status
        # Corresponds to the JSON property `maintenanceStatus`
        # @return [String]
        attr_accessor :maintenance_status
      
        # Optional. Start time
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Optional. Type
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @maintenance_status = args[:maintenance_status] if args.key?(:maintenance_status)
          @start_time = args[:start_time] if args.key?(:start_time)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Message describing the violation in an evaluation result.
      class ViolationDetails
        include Google::Apis::Core::Hashable
      
        # The name of the asset.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # Details of the violation.
        # Corresponds to the JSON property `observed`
        # @return [Hash<String,String>]
        attr_accessor :observed
      
        # The service account associated with the resource.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @observed = args[:observed] if args.key?(:observed)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # workload resource
      class WorkloadProfile
        include Google::Apis::Core::Hashable
      
        # The database layer
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::WorkloadmanagerV1::Layer]
        attr_accessor :application
      
        # The database layer
        # Corresponds to the JSON property `ascs`
        # @return [Google::Apis::WorkloadmanagerV1::Layer]
        attr_accessor :ascs
      
        # The database layer
        # Corresponds to the JSON property `database`
        # @return [Google::Apis::WorkloadmanagerV1::Layer]
        attr_accessor :database
      
        # Optional. such as name, description, version. More example can be found in
        # deployment
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. name of resource names have the form 'projects/`project_id`/
        # workloads/`workload_id`'
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. time when the workload data was refreshed
        # Corresponds to the JSON property `refreshedTime`
        # @return [String]
        attr_accessor :refreshed_time
      
        # The body of sap workload
        # Corresponds to the JSON property `sapWorkload`
        # @return [Google::Apis::WorkloadmanagerV1::SapWorkload]
        attr_accessor :sap_workload
      
        # The body of sqlserver workload
        # Corresponds to the JSON property `sqlserverWorkload`
        # @return [Google::Apis::WorkloadmanagerV1::SqlserverWorkload]
        attr_accessor :sqlserver_workload
      
        # Output only. [output only] the current state if a a workload
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The body of three tier workload
        # Corresponds to the JSON property `threeTierWorkload`
        # @return [Google::Apis::WorkloadmanagerV1::ThreeTierWorkload]
        attr_accessor :three_tier_workload
      
        # Required. The type of the workload
        # Corresponds to the JSON property `workloadType`
        # @return [String]
        attr_accessor :workload_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application = args[:application] if args.key?(:application)
          @ascs = args[:ascs] if args.key?(:ascs)
          @database = args[:database] if args.key?(:database)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @refreshed_time = args[:refreshed_time] if args.key?(:refreshed_time)
          @sap_workload = args[:sap_workload] if args.key?(:sap_workload)
          @sqlserver_workload = args[:sqlserver_workload] if args.key?(:sqlserver_workload)
          @state = args[:state] if args.key?(:state)
          @three_tier_workload = args[:three_tier_workload] if args.key?(:three_tier_workload)
          @workload_type = args[:workload_type] if args.key?(:workload_type)
        end
      end
      
      # WorkloadProfileHealth contains the detailed health check of workload.
      class WorkloadProfileHealth
        include Google::Apis::Core::Hashable
      
        # The time when the health check was performed.
        # Corresponds to the JSON property `checkTime`
        # @return [String]
        attr_accessor :check_time
      
        # The detailed condition reports of each component.
        # Corresponds to the JSON property `componentHealthes`
        # @return [Array<Google::Apis::WorkloadmanagerV1::ComponentHealth>]
        attr_accessor :component_healthes
      
        # Output only. The health state of the workload.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_time = args[:check_time] if args.key?(:check_time)
          @component_healthes = args[:component_healthes] if args.key?(:component_healthes)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Request for sending the data insights.
      class WriteInsightRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The agent version collected this data point.
        # Corresponds to the JSON property `agentVersion`
        # @return [String]
        attr_accessor :agent_version
      
        # A presentation of host resource usage where the workload runs.
        # Corresponds to the JSON property `insight`
        # @return [Google::Apis::WorkloadmanagerV1::Insight]
        attr_accessor :insight
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes since the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_version = args[:agent_version] if args.key?(:agent_version)
          @insight = args[:insight] if args.key?(:insight)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # The response for write insights request.
      class WriteInsightResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
