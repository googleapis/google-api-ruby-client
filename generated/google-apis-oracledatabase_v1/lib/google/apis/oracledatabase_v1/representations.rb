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
    module OracledatabaseV1
      
      class AllConnectionStrings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseApex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseBackup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseBackupProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseCharacterSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseConnectionStrings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseConnectionUrls
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseStandbySummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDbVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAccountDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudExadataInfrastructure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudExadataInfrastructureProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudVmCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudVmClusterProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerContact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataCollectionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseConnectionStringProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbNodeProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbServerProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbSystemShape
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entitlement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateAutonomousDatabaseWalletRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateAutonomousDatabaseWalletResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GiVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAutonomousDatabaseBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAutonomousDatabaseCharacterSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAutonomousDatabasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAutonomousDbVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCloudExadataInfrastructuresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCloudVmClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDbNodesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDbServersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDbSystemShapesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEntitlementsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGiVersionsResponse
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
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
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
      
      class RestoreAutonomousDatabaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduledOperationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllConnectionStrings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high, as: 'high'
          property :low, as: 'low'
          property :medium, as: 'medium'
        end
      end
      
      class AutonomousDatabase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_password, as: 'adminPassword'
          property :cidr, as: 'cidr'
          property :create_time, as: 'createTime'
          property :database, as: 'database'
          property :display_name, as: 'displayName'
          property :entitlement_id, as: 'entitlementId'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseProperties, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseProperties::Representation
      
        end
      end
      
      class AutonomousDatabaseApex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apex_version, as: 'apexVersion'
          property :ords_version, as: 'ordsVersion'
        end
      end
      
      class AutonomousDatabaseBackup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autonomous_database, as: 'autonomousDatabase'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseBackupProperties, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseBackupProperties::Representation
      
        end
      end
      
      class AutonomousDatabaseBackupProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_till_time, as: 'availableTillTime'
          property :compartment_id, as: 'compartmentId'
          property :database_size_tb, as: 'databaseSizeTb'
          property :db_version, as: 'dbVersion'
          property :end_time, as: 'endTime'
          property :is_automatic_backup, as: 'isAutomaticBackup'
          property :is_long_term_backup, as: 'isLongTermBackup'
          property :is_restorable, as: 'isRestorable'
          property :key_store_id, as: 'keyStoreId'
          property :key_store_wallet, as: 'keyStoreWallet'
          property :kms_key_id, as: 'kmsKeyId'
          property :kms_key_version_id, as: 'kmsKeyVersionId'
          property :lifecycle_details, as: 'lifecycleDetails'
          property :lifecycle_state, as: 'lifecycleState'
          property :ocid, as: 'ocid'
          property :retention_period_days, as: 'retentionPeriodDays'
          property :size_tb, as: 'sizeTb'
          property :start_time, as: 'startTime'
          property :type, as: 'type'
          property :vault_id, as: 'vaultId'
        end
      end
      
      class AutonomousDatabaseCharacterSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :character_set, as: 'characterSet'
          property :character_set_type, as: 'characterSetType'
          property :name, as: 'name'
        end
      end
      
      class AutonomousDatabaseConnectionStrings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_connection_strings, as: 'allConnectionStrings', class: Google::Apis::OracledatabaseV1::AllConnectionStrings, decorator: Google::Apis::OracledatabaseV1::AllConnectionStrings::Representation
      
          property :dedicated, as: 'dedicated'
          property :high, as: 'high'
          property :low, as: 'low'
          property :medium, as: 'medium'
          collection :profiles, as: 'profiles', class: Google::Apis::OracledatabaseV1::DatabaseConnectionStringProfile, decorator: Google::Apis::OracledatabaseV1::DatabaseConnectionStringProfile::Representation
      
        end
      end
      
      class AutonomousDatabaseConnectionUrls
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apex_uri, as: 'apexUri'
          property :database_transforms_uri, as: 'databaseTransformsUri'
          property :graph_studio_uri, as: 'graphStudioUri'
          property :machine_learning_notebook_uri, as: 'machineLearningNotebookUri'
          property :machine_learning_user_management_uri, as: 'machineLearningUserManagementUri'
          property :mongo_db_uri, as: 'mongoDbUri'
          property :ords_uri, as: 'ordsUri'
          property :sql_dev_web_uri, as: 'sqlDevWebUri'
        end
      end
      
      class AutonomousDatabaseProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actual_used_data_storage_size_tb, as: 'actualUsedDataStorageSizeTb'
          property :allocated_storage_size_tb, as: 'allocatedStorageSizeTb'
          property :apex_details, as: 'apexDetails', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseApex, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseApex::Representation
      
          property :are_primary_allowlisted_ips_used, as: 'arePrimaryAllowlistedIpsUsed'
          property :autonomous_container_database_id, as: 'autonomousContainerDatabaseId'
          collection :available_upgrade_versions, as: 'availableUpgradeVersions'
          property :backup_retention_period_days, as: 'backupRetentionPeriodDays'
          property :character_set, as: 'characterSet'
          property :compute_count, as: 'computeCount'
          property :connection_strings, as: 'connectionStrings', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseConnectionStrings, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseConnectionStrings::Representation
      
          property :connection_urls, as: 'connectionUrls', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseConnectionUrls, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseConnectionUrls::Representation
      
          property :cpu_core_count, as: 'cpuCoreCount'
          collection :customer_contacts, as: 'customerContacts', class: Google::Apis::OracledatabaseV1::CustomerContact, decorator: Google::Apis::OracledatabaseV1::CustomerContact::Representation
      
          property :data_safe_state, as: 'dataSafeState'
          property :data_storage_size_gb, as: 'dataStorageSizeGb'
          property :data_storage_size_tb, as: 'dataStorageSizeTb'
          property :database_management_state, as: 'databaseManagementState'
          property :db_edition, as: 'dbEdition'
          property :db_version, as: 'dbVersion'
          property :db_workload, as: 'dbWorkload'
          property :failed_data_recovery_duration, as: 'failedDataRecoveryDuration'
          property :is_auto_scaling_enabled, as: 'isAutoScalingEnabled'
          property :is_local_data_guard_enabled, as: 'isLocalDataGuardEnabled'
          property :is_storage_auto_scaling_enabled, as: 'isStorageAutoScalingEnabled'
          property :license_type, as: 'licenseType'
          property :lifecycle_details, as: 'lifecycleDetails'
          property :local_adg_auto_failover_max_data_loss_limit, as: 'localAdgAutoFailoverMaxDataLossLimit'
          property :local_disaster_recovery_type, as: 'localDisasterRecoveryType'
          property :local_standby_db, as: 'localStandbyDb', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseStandbySummary, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseStandbySummary::Representation
      
          property :maintenance_begin_time, as: 'maintenanceBeginTime'
          property :maintenance_end_time, as: 'maintenanceEndTime'
          property :maintenance_schedule_type, as: 'maintenanceScheduleType'
          property :memory_per_oracle_compute_unit_gbs, as: 'memoryPerOracleComputeUnitGbs'
          property :memory_table_gbs, as: 'memoryTableGbs'
          property :mtls_connection_required, as: 'mtlsConnectionRequired'
          property :n_character_set, as: 'nCharacterSet'
          property :next_long_term_backup_time, as: 'nextLongTermBackupTime'
          property :oci_url, as: 'ociUrl'
          property :ocid, as: 'ocid'
          property :open_mode, as: 'openMode'
          property :operations_insights_state, as: 'operationsInsightsState'
          collection :peer_db_ids, as: 'peerDbIds'
          property :permission_level, as: 'permissionLevel'
          property :private_endpoint, as: 'privateEndpoint'
          property :private_endpoint_ip, as: 'privateEndpointIp'
          property :private_endpoint_label, as: 'privateEndpointLabel'
          property :refreshable_mode, as: 'refreshableMode'
          property :refreshable_state, as: 'refreshableState'
          property :role, as: 'role'
          collection :scheduled_operation_details, as: 'scheduledOperationDetails', class: Google::Apis::OracledatabaseV1::ScheduledOperationDetails, decorator: Google::Apis::OracledatabaseV1::ScheduledOperationDetails::Representation
      
          property :secret_id, as: 'secretId'
          property :sql_web_developer_url, as: 'sqlWebDeveloperUrl'
          property :state, as: 'state'
          collection :supported_clone_regions, as: 'supportedCloneRegions'
          property :total_auto_backup_storage_size_gbs, as: 'totalAutoBackupStorageSizeGbs'
          property :used_data_storage_size_tbs, as: 'usedDataStorageSizeTbs'
          property :vault_id, as: 'vaultId'
        end
      end
      
      class AutonomousDatabaseStandbySummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_guard_role_changed_time, as: 'dataGuardRoleChangedTime'
          property :disaster_recovery_role_changed_time, as: 'disasterRecoveryRoleChangedTime'
          property :lag_time_duration, as: 'lagTimeDuration'
          property :lifecycle_details, as: 'lifecycleDetails'
          property :state, as: 'state'
        end
      end
      
      class AutonomousDbVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :db_workload, as: 'dbWorkload'
          property :name, as: 'name'
          property :version, as: 'version'
          property :workload_uri, as: 'workloadUri'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudAccountDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_creation_uri, as: 'accountCreationUri'
          property :cloud_account, as: 'cloudAccount'
          property :cloud_account_home_region, as: 'cloudAccountHomeRegion'
          property :link_existing_account_uri, as: 'linkExistingAccountUri'
        end
      end
      
      class CloudExadataInfrastructure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :entitlement_id, as: 'entitlementId'
          property :gcp_oracle_zone, as: 'gcpOracleZone'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::CloudExadataInfrastructureProperties, decorator: Google::Apis::OracledatabaseV1::CloudExadataInfrastructureProperties::Representation
      
        end
      end
      
      class CloudExadataInfrastructureProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activated_storage_count, as: 'activatedStorageCount'
          property :additional_storage_count, as: 'additionalStorageCount'
          property :available_storage_size_gb, as: 'availableStorageSizeGb'
          property :compute_count, as: 'computeCount'
          property :cpu_count, as: 'cpuCount'
          collection :customer_contacts, as: 'customerContacts', class: Google::Apis::OracledatabaseV1::CustomerContact, decorator: Google::Apis::OracledatabaseV1::CustomerContact::Representation
      
          property :data_storage_size_tb, as: 'dataStorageSizeTb'
          property :db_node_storage_size_gb, as: 'dbNodeStorageSizeGb'
          property :db_server_version, as: 'dbServerVersion'
          property :maintenance_window, as: 'maintenanceWindow', class: Google::Apis::OracledatabaseV1::MaintenanceWindow, decorator: Google::Apis::OracledatabaseV1::MaintenanceWindow::Representation
      
          property :max_cpu_count, as: 'maxCpuCount'
          property :max_data_storage_tb, as: 'maxDataStorageTb'
          property :max_db_node_storage_size_gb, as: 'maxDbNodeStorageSizeGb'
          property :max_memory_gb, as: 'maxMemoryGb'
          property :memory_size_gb, as: 'memorySizeGb'
          property :monthly_db_server_version, as: 'monthlyDbServerVersion'
          property :monthly_storage_server_version, as: 'monthlyStorageServerVersion'
          property :next_maintenance_run_id, as: 'nextMaintenanceRunId'
          property :next_maintenance_run_time, as: 'nextMaintenanceRunTime'
          property :next_security_maintenance_run_time, as: 'nextSecurityMaintenanceRunTime'
          property :oci_url, as: 'ociUrl'
          property :ocid, as: 'ocid'
          property :shape, as: 'shape'
          property :state, as: 'state'
          property :storage_count, as: 'storageCount'
          property :storage_server_version, as: 'storageServerVersion'
          property :total_storage_size_gb, as: 'totalStorageSizeGb'
        end
      end
      
      class CloudVmCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_subnet_cidr, as: 'backupSubnetCidr'
          property :cidr, as: 'cidr'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :exadata_infrastructure, as: 'exadataInfrastructure'
          property :gcp_oracle_zone, as: 'gcpOracleZone'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::CloudVmClusterProperties, decorator: Google::Apis::OracledatabaseV1::CloudVmClusterProperties::Representation
      
        end
      end
      
      class CloudVmClusterProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_name, as: 'clusterName'
          property :compartment_id, as: 'compartmentId'
          property :cpu_core_count, as: 'cpuCoreCount'
          property :data_storage_size_tb, as: 'dataStorageSizeTb'
          property :db_node_storage_size_gb, as: 'dbNodeStorageSizeGb'
          collection :db_server_ocids, as: 'dbServerOcids'
          property :diagnostics_data_collection_options, as: 'diagnosticsDataCollectionOptions', class: Google::Apis::OracledatabaseV1::DataCollectionOptions, decorator: Google::Apis::OracledatabaseV1::DataCollectionOptions::Representation
      
          property :disk_redundancy, as: 'diskRedundancy'
          property :dns_listener_ip, as: 'dnsListenerIp'
          property :domain, as: 'domain'
          property :gi_version, as: 'giVersion'
          property :hostname, as: 'hostname'
          property :hostname_prefix, as: 'hostnamePrefix'
          property :license_type, as: 'licenseType'
          property :local_backup_enabled, as: 'localBackupEnabled'
          property :memory_size_gb, as: 'memorySizeGb'
          property :node_count, as: 'nodeCount'
          property :oci_url, as: 'ociUrl'
          property :ocid, as: 'ocid'
          property :ocpu_count, as: 'ocpuCount'
          property :scan_dns, as: 'scanDns'
          property :scan_dns_record_id, as: 'scanDnsRecordId'
          collection :scan_ip_ids, as: 'scanIpIds'
          property :scan_listener_port_tcp, as: 'scanListenerPortTcp'
          property :scan_listener_port_tcp_ssl, as: 'scanListenerPortTcpSsl'
          property :shape, as: 'shape'
          property :sparse_diskgroup_enabled, as: 'sparseDiskgroupEnabled'
          collection :ssh_public_keys, as: 'sshPublicKeys'
          property :state, as: 'state'
          property :storage_size_gb, as: 'storageSizeGb'
          property :system_version, as: 'systemVersion'
          property :time_zone, as: 'timeZone', class: Google::Apis::OracledatabaseV1::TimeZone, decorator: Google::Apis::OracledatabaseV1::TimeZone::Representation
      
        end
      end
      
      class CustomerContact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class DataCollectionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :diagnostics_events_enabled, as: 'diagnosticsEventsEnabled'
          property :health_monitoring_enabled, as: 'healthMonitoringEnabled'
          property :incident_logs_enabled, as: 'incidentLogsEnabled'
        end
      end
      
      class DatabaseConnectionStringProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_group, as: 'consumerGroup'
          property :display_name, as: 'displayName'
          property :host_format, as: 'hostFormat'
          property :is_regional, as: 'isRegional'
          property :protocol, as: 'protocol'
          property :session_mode, as: 'sessionMode'
          property :syntax_format, as: 'syntaxFormat'
          property :tls_authentication, as: 'tlsAuthentication'
          property :value, as: 'value'
        end
      end
      
      class DbNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::DbNodeProperties, decorator: Google::Apis::OracledatabaseV1::DbNodeProperties::Representation
      
        end
      end
      
      class DbNodeProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :db_node_storage_size_gb, as: 'dbNodeStorageSizeGb'
          property :db_server_ocid, as: 'dbServerOcid'
          property :hostname, as: 'hostname'
          property :memory_size_gb, as: 'memorySizeGb'
          property :ocid, as: 'ocid'
          property :ocpu_count, as: 'ocpuCount'
          property :state, as: 'state'
          property :total_cpu_core_count, as: 'totalCpuCoreCount'
        end
      end
      
      class DbServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::DbServerProperties, decorator: Google::Apis::OracledatabaseV1::DbServerProperties::Representation
      
        end
      end
      
      class DbServerProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_node_ids, as: 'dbNodeIds'
          property :db_node_storage_size_gb, as: 'dbNodeStorageSizeGb'
          property :max_db_node_storage_size_gb, as: 'maxDbNodeStorageSizeGb'
          property :max_memory_size_gb, as: 'maxMemorySizeGb'
          property :max_ocpu_count, as: 'maxOcpuCount'
          property :memory_size_gb, as: 'memorySizeGb'
          property :ocid, as: 'ocid'
          property :ocpu_count, as: 'ocpuCount'
          property :state, as: 'state'
          property :vm_count, as: 'vmCount'
        end
      end
      
      class DbSystemShape
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_core_count_per_node, as: 'availableCoreCountPerNode'
          property :available_data_storage_tb, as: 'availableDataStorageTb'
          property :available_memory_per_node_gb, as: 'availableMemoryPerNodeGb'
          property :max_node_count, as: 'maxNodeCount'
          property :max_storage_count, as: 'maxStorageCount'
          property :min_core_count_per_node, as: 'minCoreCountPerNode'
          property :min_db_node_storage_per_node_gb, as: 'minDbNodeStoragePerNodeGb'
          property :min_memory_per_node_gb, as: 'minMemoryPerNodeGb'
          property :min_node_count, as: 'minNodeCount'
          property :min_storage_count, as: 'minStorageCount'
          property :name, as: 'name'
          property :shape, as: 'shape'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Entitlement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_account_details, as: 'cloudAccountDetails', class: Google::Apis::OracledatabaseV1::CloudAccountDetails, decorator: Google::Apis::OracledatabaseV1::CloudAccountDetails::Representation
      
          property :entitlement_id, as: 'entitlementId'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class GenerateAutonomousDatabaseWalletRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_regional, as: 'isRegional'
          property :password, as: 'password'
          property :type, as: 'type'
        end
      end
      
      class GenerateAutonomousDatabaseWalletResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive_content, :base64 => true, as: 'archiveContent'
        end
      end
      
      class GiVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :version, as: 'version'
        end
      end
      
      class ListAutonomousDatabaseBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autonomous_database_backups, as: 'autonomousDatabaseBackups', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseBackup, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseBackup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAutonomousDatabaseCharacterSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autonomous_database_character_sets, as: 'autonomousDatabaseCharacterSets', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseCharacterSet, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseCharacterSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAutonomousDatabasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autonomous_databases, as: 'autonomousDatabases', class: Google::Apis::OracledatabaseV1::AutonomousDatabase, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabase::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAutonomousDbVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autonomous_db_versions, as: 'autonomousDbVersions', class: Google::Apis::OracledatabaseV1::AutonomousDbVersion, decorator: Google::Apis::OracledatabaseV1::AutonomousDbVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCloudExadataInfrastructuresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cloud_exadata_infrastructures, as: 'cloudExadataInfrastructures', class: Google::Apis::OracledatabaseV1::CloudExadataInfrastructure, decorator: Google::Apis::OracledatabaseV1::CloudExadataInfrastructure::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCloudVmClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cloud_vm_clusters, as: 'cloudVmClusters', class: Google::Apis::OracledatabaseV1::CloudVmCluster, decorator: Google::Apis::OracledatabaseV1::CloudVmCluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDbNodesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_nodes, as: 'dbNodes', class: Google::Apis::OracledatabaseV1::DbNode, decorator: Google::Apis::OracledatabaseV1::DbNode::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDbServersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_servers, as: 'dbServers', class: Google::Apis::OracledatabaseV1::DbServer, decorator: Google::Apis::OracledatabaseV1::DbServer::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDbSystemShapesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_system_shapes, as: 'dbSystemShapes', class: Google::Apis::OracledatabaseV1::DbSystemShape, decorator: Google::Apis::OracledatabaseV1::DbSystemShape::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListEntitlementsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entitlements, as: 'entitlements', class: Google::Apis::OracledatabaseV1::Entitlement, decorator: Google::Apis::OracledatabaseV1::Entitlement::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGiVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gi_versions, as: 'giVersions', class: Google::Apis::OracledatabaseV1::GiVersion, decorator: Google::Apis::OracledatabaseV1::GiVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::OracledatabaseV1::Location, decorator: Google::Apis::OracledatabaseV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::OracledatabaseV1::Operation, decorator: Google::Apis::OracledatabaseV1::Operation::Representation
      
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
      
      class LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gcp_oracle_zones, as: 'gcpOracleZones'
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_action_timeout_mins, as: 'customActionTimeoutMins'
          collection :days_of_week, as: 'daysOfWeek'
          collection :hours_of_day, as: 'hoursOfDay'
          property :is_custom_action_timeout_enabled, as: 'isCustomActionTimeoutEnabled'
          property :lead_time_week, as: 'leadTimeWeek'
          collection :months, as: 'months'
          property :patching_mode, as: 'patchingMode'
          property :preference, as: 'preference'
          collection :weeks_of_month, as: 'weeksOfMonth'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::OracledatabaseV1::Status, decorator: Google::Apis::OracledatabaseV1::Status::Representation
      
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
          property :percent_complete, as: 'percentComplete'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class RestoreAutonomousDatabaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :restore_time, as: 'restoreTime'
        end
      end
      
      class ScheduledOperationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
          property :start_time, as: 'startTime', class: Google::Apis::OracledatabaseV1::TimeOfDay, decorator: Google::Apis::OracledatabaseV1::TimeOfDay::Representation
      
          property :stop_time, as: 'stopTime', class: Google::Apis::OracledatabaseV1::TimeOfDay, decorator: Google::Apis::OracledatabaseV1::TimeOfDay::Representation
      
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
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
    end
  end
end
