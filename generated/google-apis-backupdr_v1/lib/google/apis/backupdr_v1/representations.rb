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
    module BackupdrV1
      
      class AbandonBackupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceleratorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvancedMachineFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AliasIpRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlloyDbClusterBackupPlanAssociationProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlloyDbClusterDataSourceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlloyDbClusterBackupProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttachedDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupApplianceBackupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupApplianceBackupProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupApplianceLockInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupConfigDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupConfigInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupDrPlanConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupDrPlanRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupDrTemplateConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupGcpResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupLock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupPlan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupPlanAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupPlanRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupVault
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlInstanceBackupPlanAssociationProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlInstanceBackupProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlInstanceDataSourceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlInstanceDataSourceReferenceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlInstanceInitializationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeInstanceBackupProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeInstanceDataSourceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeInstanceRestoreProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeInstanceTargetEnvironment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfidentialInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerEncryptionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSourceBackupApplianceApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSourceBackupConfigInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSourceGcpResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSourceGcpResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSourceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskBackupProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskDataSourceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskRestoreProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskTargetEnvironment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisplayDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndTrialRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchAccessTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchAccessTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchBackupPlanAssociationsForResourceTypeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchBackupsForResourceTypeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchDataSourceReferencesForResourceTypeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchMsComplianceMetadataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchMsComplianceMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchUsableBackupVaultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilestoreInstanceBackupPlanAssociationProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FinalizeBackupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcpBackupPlanInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcpBackupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcpResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestOsFeature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitializeParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitializeServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitiateBackupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InitiateBackupResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupPlanAssociationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupPlanRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupPlansResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupVaultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDataSourceReferencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDataSourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListManagementServersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListResourceBackupConfigsResponse
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
      
      class ManagementServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagementUri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPerformanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeAffinity
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
      
      class PitrSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionDiskTargetEnvironment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveDataSourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceBackupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreBackupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreBackupResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuleConfigInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Scheduling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulingDuration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceLockInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetInternalStatusRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetInternalStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscribeTrialRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Trial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriggerBackupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeekDayOfMonth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkforceIdentityBasedManagementUri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkforceIdentityBasedOAuth2ClientId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AbandonBackupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class AcceleratorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_count, as: 'acceleratorCount'
          property :accelerator_type, as: 'acceleratorType'
        end
      end
      
      class AccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_ipv6, as: 'externalIpv6'
          property :external_ipv6_prefix_length, as: 'externalIpv6PrefixLength'
          property :name, as: 'name'
          property :nat_ip, as: 'natIP'
          property :network_tier, as: 'networkTier'
          property :public_ptr_domain_name, as: 'publicPtrDomainName'
          property :set_public_ptr, as: 'setPublicPtr'
          property :type, as: 'type'
        end
      end
      
      class AdvancedMachineFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_nested_virtualization, as: 'enableNestedVirtualization'
          property :enable_uefi_networking, as: 'enableUefiNetworking'
          property :threads_per_core, as: 'threadsPerCore'
          property :visible_core_count, as: 'visibleCoreCount'
        end
      end
      
      class AliasIpRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_cidr_range, as: 'ipCidrRange'
          property :subnetwork_range_name, as: 'subnetworkRangeName'
        end
      end
      
      class AllocationAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consume_reservation_type, as: 'consumeReservationType'
          property :key, as: 'key'
          collection :values, as: 'values'
        end
      end
      
      class AlloyDbClusterBackupPlanAssociationProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AlloyDbClusterDataSourceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class AlloyDbClusterBackupProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chain_id, as: 'chainId'
          property :database_version, as: 'databaseVersion'
          property :description, as: 'description'
          property :stored_bytes, :numeric_string => true, as: 'storedBytes'
        end
      end
      
      class AttachedDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_delete, as: 'autoDelete'
          property :boot, as: 'boot'
          property :device_name, as: 'deviceName'
          property :disk_encryption_key, as: 'diskEncryptionKey', class: Google::Apis::BackupdrV1::CustomerEncryptionKey, decorator: Google::Apis::BackupdrV1::CustomerEncryptionKey::Representation
      
          property :disk_interface, as: 'diskInterface'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :disk_type_deprecated, as: 'diskTypeDeprecated'
          collection :guest_os_feature, as: 'guestOsFeature', class: Google::Apis::BackupdrV1::GuestOsFeature, decorator: Google::Apis::BackupdrV1::GuestOsFeature::Representation
      
          property :index, :numeric_string => true, as: 'index'
          property :initialize_params, as: 'initializeParams', class: Google::Apis::BackupdrV1::InitializeParams, decorator: Google::Apis::BackupdrV1::InitializeParams::Representation
      
          property :kind, as: 'kind'
          collection :license, as: 'license'
          property :mode, as: 'mode'
          property :saved_state, as: 'savedState'
          property :source, as: 'source'
          property :type, as: 'type'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::BackupdrV1::AuditLogConfig, decorator: Google::Apis::BackupdrV1::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alloy_db_backup_properties, as: 'alloyDbBackupProperties', class: Google::Apis::BackupdrV1::AlloyDbClusterBackupProperties, decorator: Google::Apis::BackupdrV1::AlloyDbClusterBackupProperties::Representation
      
          property :backup_appliance_backup_properties, as: 'backupApplianceBackupProperties', class: Google::Apis::BackupdrV1::BackupApplianceBackupProperties, decorator: Google::Apis::BackupdrV1::BackupApplianceBackupProperties::Representation
      
          collection :backup_appliance_locks, as: 'backupApplianceLocks', class: Google::Apis::BackupdrV1::BackupLock, decorator: Google::Apis::BackupdrV1::BackupLock::Representation
      
          property :backup_retention_inheritance, as: 'backupRetentionInheritance'
          property :backup_type, as: 'backupType'
          property :cloud_sql_instance_backup_properties, as: 'cloudSqlInstanceBackupProperties', class: Google::Apis::BackupdrV1::CloudSqlInstanceBackupProperties, decorator: Google::Apis::BackupdrV1::CloudSqlInstanceBackupProperties::Representation
      
          property :compute_instance_backup_properties, as: 'computeInstanceBackupProperties', class: Google::Apis::BackupdrV1::ComputeInstanceBackupProperties, decorator: Google::Apis::BackupdrV1::ComputeInstanceBackupProperties::Representation
      
          property :consistency_time, as: 'consistencyTime'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :disk_backup_properties, as: 'diskBackupProperties', class: Google::Apis::BackupdrV1::DiskBackupProperties, decorator: Google::Apis::BackupdrV1::DiskBackupProperties::Representation
      
          property :enforced_retention_end_time, as: 'enforcedRetentionEndTime'
          property :etag, as: 'etag'
          property :expire_time, as: 'expireTime'
          property :gcp_backup_plan_info, as: 'gcpBackupPlanInfo', class: Google::Apis::BackupdrV1::GcpBackupPlanInfo, decorator: Google::Apis::BackupdrV1::GcpBackupPlanInfo::Representation
      
          property :gcp_resource, as: 'gcpResource', class: Google::Apis::BackupdrV1::BackupGcpResource, decorator: Google::Apis::BackupdrV1::BackupGcpResource::Representation
      
          collection :kms_key_versions, as: 'kmsKeyVersions'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :resource_size_bytes, :numeric_string => true, as: 'resourceSizeBytes'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          collection :service_locks, as: 'serviceLocks', class: Google::Apis::BackupdrV1::BackupLock, decorator: Google::Apis::BackupdrV1::BackupLock::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class BackupApplianceBackupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_name, as: 'applicationName'
          property :backup_appliance_id, :numeric_string => true, as: 'backupApplianceId'
          property :backup_appliance_name, as: 'backupApplianceName'
          property :host_name, as: 'hostName'
          property :sla_id, :numeric_string => true, as: 'slaId'
          property :slp_name, as: 'slpName'
          property :slt_name, as: 'sltName'
        end
      end
      
      class BackupApplianceBackupProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finalize_time, as: 'finalizeTime'
          property :generation_id, as: 'generationId'
          property :recovery_range_end_time, as: 'recoveryRangeEndTime'
          property :recovery_range_start_time, as: 'recoveryRangeStartTime'
        end
      end
      
      class BackupApplianceLockInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_appliance_id, :numeric_string => true, as: 'backupApplianceId'
          property :backup_appliance_name, as: 'backupApplianceName'
          property :backup_image, as: 'backupImage'
          property :job_name, as: 'jobName'
          property :lock_reason, as: 'lockReason'
          property :sla_id, :numeric_string => true, as: 'slaId'
        end
      end
      
      class BackupConfigDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :applicable_resource, as: 'applicableResource'
          property :backup_config_source, as: 'backupConfigSource'
          property :backup_config_source_display_name, as: 'backupConfigSourceDisplayName'
          property :backup_dr_plan_config, as: 'backupDrPlanConfig', class: Google::Apis::BackupdrV1::BackupDrPlanConfig, decorator: Google::Apis::BackupdrV1::BackupDrPlanConfig::Representation
      
          property :backup_dr_template_config, as: 'backupDrTemplateConfig', class: Google::Apis::BackupdrV1::BackupDrTemplateConfig, decorator: Google::Apis::BackupdrV1::BackupDrTemplateConfig::Representation
      
          collection :backup_locations, as: 'backupLocations', class: Google::Apis::BackupdrV1::BackupLocation, decorator: Google::Apis::BackupdrV1::BackupLocation::Representation
      
          property :backup_vault, as: 'backupVault'
          property :latest_successful_backup_time, as: 'latestSuccessfulBackupTime'
          property :pitr_settings, as: 'pitrSettings', class: Google::Apis::BackupdrV1::PitrSettings, decorator: Google::Apis::BackupdrV1::PitrSettings::Representation
      
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class BackupConfigInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_appliance_backup_config, as: 'backupApplianceBackupConfig', class: Google::Apis::BackupdrV1::BackupApplianceBackupConfig, decorator: Google::Apis::BackupdrV1::BackupApplianceBackupConfig::Representation
      
          property :gcp_backup_config, as: 'gcpBackupConfig', class: Google::Apis::BackupdrV1::GcpBackupConfig, decorator: Google::Apis::BackupdrV1::GcpBackupConfig::Representation
      
          property :last_backup_error, as: 'lastBackupError', class: Google::Apis::BackupdrV1::Status, decorator: Google::Apis::BackupdrV1::Status::Representation
      
          property :last_backup_state, as: 'lastBackupState'
          property :last_successful_backup_consistency_time, as: 'lastSuccessfulBackupConsistencyTime'
        end
      end
      
      class BackupDrPlanConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_dr_plan_rules, as: 'backupDrPlanRules', class: Google::Apis::BackupdrV1::BackupDrPlanRule, decorator: Google::Apis::BackupdrV1::BackupDrPlanRule::Representation
      
        end
      end
      
      class BackupDrPlanRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_successful_backup_time, as: 'lastSuccessfulBackupTime'
          property :rule_id, as: 'ruleId'
        end
      end
      
      class BackupDrTemplateConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_party_management_uri, as: 'firstPartyManagementUri'
          property :third_party_management_uri, as: 'thirdPartyManagementUri'
        end
      end
      
      class BackupGcpResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_resourcename, as: 'gcpResourcename'
          property :location, as: 'location'
          property :type, as: 'type'
        end
      end
      
      class BackupLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_id, as: 'locationId'
          property :type, as: 'type'
        end
      end
      
      class BackupLock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_appliance_lock_info, as: 'backupApplianceLockInfo', class: Google::Apis::BackupdrV1::BackupApplianceLockInfo, decorator: Google::Apis::BackupdrV1::BackupApplianceLockInfo::Representation
      
          property :lock_until_time, as: 'lockUntilTime'
          property :service_lock_info, as: 'serviceLockInfo', class: Google::Apis::BackupdrV1::ServiceLockInfo, decorator: Google::Apis::BackupdrV1::ServiceLockInfo::Representation
      
        end
      end
      
      class BackupPlan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_rules, as: 'backupRules', class: Google::Apis::BackupdrV1::BackupRule, decorator: Google::Apis::BackupdrV1::BackupRule::Representation
      
          property :backup_vault, as: 'backupVault'
          property :backup_vault_service_account, as: 'backupVaultServiceAccount'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :log_retention_days, :numeric_string => true, as: 'logRetentionDays'
          property :max_custom_on_demand_retention_days, as: 'maxCustomOnDemandRetentionDays'
          property :name, as: 'name'
          property :resource_type, as: 'resourceType'
          property :revision_id, as: 'revisionId'
          property :revision_name, as: 'revisionName'
          property :state, as: 'state'
          collection :supported_resource_types, as: 'supportedResourceTypes'
          property :update_time, as: 'updateTime'
        end
      end
      
      class BackupPlanAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alloydb_cluster_backup_plan_association_properties, as: 'alloydbClusterBackupPlanAssociationProperties', class: Google::Apis::BackupdrV1::AlloyDbClusterBackupPlanAssociationProperties, decorator: Google::Apis::BackupdrV1::AlloyDbClusterBackupPlanAssociationProperties::Representation
      
          property :backup_plan, as: 'backupPlan'
          property :backup_plan_revision_id, as: 'backupPlanRevisionId'
          property :backup_plan_revision_name, as: 'backupPlanRevisionName'
          property :cloud_sql_instance_backup_plan_association_properties, as: 'cloudSqlInstanceBackupPlanAssociationProperties', class: Google::Apis::BackupdrV1::CloudSqlInstanceBackupPlanAssociationProperties, decorator: Google::Apis::BackupdrV1::CloudSqlInstanceBackupPlanAssociationProperties::Representation
      
          property :create_time, as: 'createTime'
          property :data_source, as: 'dataSource'
          property :filestore_instance_backup_plan_association_properties, as: 'filestoreInstanceBackupPlanAssociationProperties', class: Google::Apis::BackupdrV1::FilestoreInstanceBackupPlanAssociationProperties, decorator: Google::Apis::BackupdrV1::FilestoreInstanceBackupPlanAssociationProperties::Representation
      
          property :name, as: 'name'
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
          collection :rules_config_info, as: 'rulesConfigInfo', class: Google::Apis::BackupdrV1::RuleConfigInfo, decorator: Google::Apis::BackupdrV1::RuleConfigInfo::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class BackupPlanRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_plan_snapshot, as: 'backupPlanSnapshot', class: Google::Apis::BackupdrV1::BackupPlan, decorator: Google::Apis::BackupdrV1::BackupPlan::Representation
      
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :revision_id, as: 'revisionId'
          property :state, as: 'state'
        end
      end
      
      class BackupRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_retention_days, as: 'backupRetentionDays'
          property :rule_id, as: 'ruleId'
          property :standard_schedule, as: 'standardSchedule', class: Google::Apis::BackupdrV1::StandardSchedule, decorator: Google::Apis::BackupdrV1::StandardSchedule::Representation
      
        end
      end
      
      class BackupVault
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_restriction, as: 'accessRestriction'
          hash :annotations, as: 'annotations'
          property :backup_count, :numeric_string => true, as: 'backupCount'
          property :backup_minimum_enforced_retention_duration, as: 'backupMinimumEnforcedRetentionDuration'
          property :backup_retention_inheritance, as: 'backupRetentionInheritance'
          property :create_time, as: 'createTime'
          property :deletable, as: 'deletable'
          property :description, as: 'description'
          property :effective_time, as: 'effectiveTime'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::BackupdrV1::EncryptionConfig, decorator: Google::Apis::BackupdrV1::EncryptionConfig::Representation
      
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :service_account, as: 'serviceAccount'
          property :state, as: 'state'
          property :total_stored_bytes, :numeric_string => true, as: 'totalStoredBytes'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class BackupWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_hour_of_day, as: 'endHourOfDay'
          property :start_hour_of_day, as: 'startHourOfDay'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::BackupdrV1::Expr, decorator: Google::Apis::BackupdrV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudSqlInstanceBackupPlanAssociationProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_create_time, as: 'instanceCreateTime'
        end
      end
      
      class CloudSqlInstanceBackupProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_installed_version, as: 'databaseInstalledVersion'
          property :final_backup, as: 'finalBackup'
          property :instance_create_time, as: 'instanceCreateTime'
          property :instance_delete_time, as: 'instanceDeleteTime'
          property :instance_tier, as: 'instanceTier'
          property :source_instance, as: 'sourceInstance'
        end
      end
      
      class CloudSqlInstanceDataSourceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_installed_version, as: 'databaseInstalledVersion'
          property :instance_create_time, as: 'instanceCreateTime'
          property :instance_tier, as: 'instanceTier'
          property :name, as: 'name'
        end
      end
      
      class CloudSqlInstanceDataSourceReferenceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_installed_version, as: 'databaseInstalledVersion'
          property :instance_create_time, as: 'instanceCreateTime'
          property :instance_tier, as: 'instanceTier'
          property :name, as: 'name'
        end
      end
      
      class CloudSqlInstanceInitializationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :edition, as: 'edition'
        end
      end
      
      class ComputeInstanceBackupProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_ip_forward, as: 'canIpForward'
          property :description, as: 'description'
          collection :disk, as: 'disk', class: Google::Apis::BackupdrV1::AttachedDisk, decorator: Google::Apis::BackupdrV1::AttachedDisk::Representation
      
          collection :guest_accelerator, as: 'guestAccelerator', class: Google::Apis::BackupdrV1::AcceleratorConfig, decorator: Google::Apis::BackupdrV1::AcceleratorConfig::Representation
      
          property :key_revocation_action_type, as: 'keyRevocationActionType'
          hash :labels, as: 'labels'
          property :machine_type, as: 'machineType'
          property :metadata, as: 'metadata', class: Google::Apis::BackupdrV1::Metadata, decorator: Google::Apis::BackupdrV1::Metadata::Representation
      
          property :min_cpu_platform, as: 'minCpuPlatform'
          collection :network_interface, as: 'networkInterface', class: Google::Apis::BackupdrV1::NetworkInterface, decorator: Google::Apis::BackupdrV1::NetworkInterface::Representation
      
          property :scheduling, as: 'scheduling', class: Google::Apis::BackupdrV1::Scheduling, decorator: Google::Apis::BackupdrV1::Scheduling::Representation
      
          collection :service_account, as: 'serviceAccount', class: Google::Apis::BackupdrV1::ServiceAccount, decorator: Google::Apis::BackupdrV1::ServiceAccount::Representation
      
          property :source_instance, as: 'sourceInstance'
          property :tags, as: 'tags', class: Google::Apis::BackupdrV1::Tags, decorator: Google::Apis::BackupdrV1::Tags::Representation
      
        end
      end
      
      class ComputeInstanceDataSourceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :machine_type, as: 'machineType'
          property :name, as: 'name'
          property :total_disk_count, :numeric_string => true, as: 'totalDiskCount'
          property :total_disk_size_gb, :numeric_string => true, as: 'totalDiskSizeGb'
        end
      end
      
      class ComputeInstanceRestoreProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_machine_features, as: 'advancedMachineFeatures', class: Google::Apis::BackupdrV1::AdvancedMachineFeatures, decorator: Google::Apis::BackupdrV1::AdvancedMachineFeatures::Representation
      
          property :can_ip_forward, as: 'canIpForward'
          property :confidential_instance_config, as: 'confidentialInstanceConfig', class: Google::Apis::BackupdrV1::ConfidentialInstanceConfig, decorator: Google::Apis::BackupdrV1::ConfidentialInstanceConfig::Representation
      
          property :deletion_protection, as: 'deletionProtection'
          property :description, as: 'description'
          collection :disks, as: 'disks', class: Google::Apis::BackupdrV1::AttachedDisk, decorator: Google::Apis::BackupdrV1::AttachedDisk::Representation
      
          property :display_device, as: 'displayDevice', class: Google::Apis::BackupdrV1::DisplayDevice, decorator: Google::Apis::BackupdrV1::DisplayDevice::Representation
      
          collection :guest_accelerators, as: 'guestAccelerators', class: Google::Apis::BackupdrV1::AcceleratorConfig, decorator: Google::Apis::BackupdrV1::AcceleratorConfig::Representation
      
          property :hostname, as: 'hostname'
          property :instance_encryption_key, as: 'instanceEncryptionKey', class: Google::Apis::BackupdrV1::CustomerEncryptionKey, decorator: Google::Apis::BackupdrV1::CustomerEncryptionKey::Representation
      
          property :key_revocation_action_type, as: 'keyRevocationActionType'
          hash :labels, as: 'labels'
          property :machine_type, as: 'machineType'
          property :metadata, as: 'metadata', class: Google::Apis::BackupdrV1::Metadata, decorator: Google::Apis::BackupdrV1::Metadata::Representation
      
          property :min_cpu_platform, as: 'minCpuPlatform'
          property :name, as: 'name'
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::BackupdrV1::NetworkInterface, decorator: Google::Apis::BackupdrV1::NetworkInterface::Representation
      
          property :network_performance_config, as: 'networkPerformanceConfig', class: Google::Apis::BackupdrV1::NetworkPerformanceConfig, decorator: Google::Apis::BackupdrV1::NetworkPerformanceConfig::Representation
      
          property :params, as: 'params', class: Google::Apis::BackupdrV1::InstanceParams, decorator: Google::Apis::BackupdrV1::InstanceParams::Representation
      
          property :private_ipv6_google_access, as: 'privateIpv6GoogleAccess'
          property :reservation_affinity, as: 'reservationAffinity', class: Google::Apis::BackupdrV1::AllocationAffinity, decorator: Google::Apis::BackupdrV1::AllocationAffinity::Representation
      
          collection :resource_policies, as: 'resourcePolicies'
          property :scheduling, as: 'scheduling', class: Google::Apis::BackupdrV1::Scheduling, decorator: Google::Apis::BackupdrV1::Scheduling::Representation
      
          collection :service_accounts, as: 'serviceAccounts', class: Google::Apis::BackupdrV1::ServiceAccount, decorator: Google::Apis::BackupdrV1::ServiceAccount::Representation
      
          property :tags, as: 'tags', class: Google::Apis::BackupdrV1::Tags, decorator: Google::Apis::BackupdrV1::Tags::Representation
      
        end
      end
      
      class ComputeInstanceTargetEnvironment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project, as: 'project'
          property :zone, as: 'zone'
        end
      end
      
      class ConfidentialInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_confidential_compute, as: 'enableConfidentialCompute'
        end
      end
      
      class CustomerEncryptionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
          property :kms_key_service_account, as: 'kmsKeyServiceAccount'
          property :raw_key, as: 'rawKey'
          property :rsa_encrypted_key, as: 'rsaEncryptedKey'
        end
      end
      
      class DataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_blocked_by_vault_access_restriction, as: 'backupBlockedByVaultAccessRestriction'
          property :backup_config_info, as: 'backupConfigInfo', class: Google::Apis::BackupdrV1::BackupConfigInfo, decorator: Google::Apis::BackupdrV1::BackupConfigInfo::Representation
      
          property :backup_count, :numeric_string => true, as: 'backupCount'
          property :config_state, as: 'configState'
          property :create_time, as: 'createTime'
          property :data_source_backup_appliance_application, as: 'dataSourceBackupApplianceApplication', class: Google::Apis::BackupdrV1::DataSourceBackupApplianceApplication, decorator: Google::Apis::BackupdrV1::DataSourceBackupApplianceApplication::Representation
      
          property :data_source_gcp_resource, as: 'dataSourceGcpResource', class: Google::Apis::BackupdrV1::DataSourceGcpResource, decorator: Google::Apis::BackupdrV1::DataSourceGcpResource::Representation
      
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :total_stored_bytes, :numeric_string => true, as: 'totalStoredBytes'
          property :update_time, as: 'updateTime'
        end
      end
      
      class DataSourceBackupApplianceApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appliance_id, :numeric_string => true, as: 'applianceId'
          property :application_id, :numeric_string => true, as: 'applicationId'
          property :application_name, as: 'applicationName'
          property :backup_appliance, as: 'backupAppliance'
          property :host_id, :numeric_string => true, as: 'hostId'
          property :hostname, as: 'hostname'
          property :type, as: 'type'
        end
      end
      
      class DataSourceBackupConfigInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_backup_state, as: 'lastBackupState'
          property :last_successful_backup_consistency_time, as: 'lastSuccessfulBackupConsistencyTime'
        end
      end
      
      class DataSourceGcpResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alloy_db_cluster_datasource_properties, as: 'alloyDbClusterDatasourceProperties', class: Google::Apis::BackupdrV1::AlloyDbClusterDataSourceProperties, decorator: Google::Apis::BackupdrV1::AlloyDbClusterDataSourceProperties::Representation
      
          property :cloud_sql_instance_datasource_properties, as: 'cloudSqlInstanceDatasourceProperties', class: Google::Apis::BackupdrV1::CloudSqlInstanceDataSourceProperties, decorator: Google::Apis::BackupdrV1::CloudSqlInstanceDataSourceProperties::Representation
      
          property :compute_instance_datasource_properties, as: 'computeInstanceDatasourceProperties', class: Google::Apis::BackupdrV1::ComputeInstanceDataSourceProperties, decorator: Google::Apis::BackupdrV1::ComputeInstanceDataSourceProperties::Representation
      
          property :disk_datasource_properties, as: 'diskDatasourceProperties', class: Google::Apis::BackupdrV1::DiskDataSourceProperties, decorator: Google::Apis::BackupdrV1::DiskDataSourceProperties::Representation
      
          property :gcp_resourcename, as: 'gcpResourcename'
          property :location, as: 'location'
          property :type, as: 'type'
        end
      end
      
      class DataSourceGcpResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql_instance_properties, as: 'cloudSqlInstanceProperties', class: Google::Apis::BackupdrV1::CloudSqlInstanceDataSourceReferenceProperties, decorator: Google::Apis::BackupdrV1::CloudSqlInstanceDataSourceReferenceProperties::Representation
      
          property :gcp_resourcename, as: 'gcpResourcename'
          property :location, as: 'location'
          property :type, as: 'type'
        end
      end
      
      class DataSourceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_source, as: 'dataSource'
          property :data_source_backup_config_info, as: 'dataSourceBackupConfigInfo', class: Google::Apis::BackupdrV1::DataSourceBackupConfigInfo, decorator: Google::Apis::BackupdrV1::DataSourceBackupConfigInfo::Representation
      
          property :data_source_backup_config_state, as: 'dataSourceBackupConfigState'
          property :data_source_backup_count, :numeric_string => true, as: 'dataSourceBackupCount'
          property :data_source_gcp_resource_info, as: 'dataSourceGcpResourceInfo', class: Google::Apis::BackupdrV1::DataSourceGcpResourceInfo, decorator: Google::Apis::BackupdrV1::DataSourceGcpResourceInfo::Representation
      
          property :name, as: 'name'
          property :total_stored_bytes, :numeric_string => true, as: 'totalStoredBytes'
        end
      end
      
      class DiskBackupProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_mode, as: 'accessMode'
          property :architecture, as: 'architecture'
          property :description, as: 'description'
          property :enable_confidential_compute, as: 'enableConfidentialCompute'
          collection :guest_os_feature, as: 'guestOsFeature', class: Google::Apis::BackupdrV1::GuestOsFeature, decorator: Google::Apis::BackupdrV1::GuestOsFeature::Representation
      
          hash :labels, as: 'labels'
          collection :licenses, as: 'licenses'
          property :physical_block_size_bytes, :numeric_string => true, as: 'physicalBlockSizeBytes'
          property :provisioned_iops, :numeric_string => true, as: 'provisionedIops'
          property :provisioned_throughput, :numeric_string => true, as: 'provisionedThroughput'
          property :region, as: 'region'
          collection :replica_zones, as: 'replicaZones'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
          property :source_disk, as: 'sourceDisk'
          property :storage_pool, as: 'storagePool'
          property :type, as: 'type'
          property :zone, as: 'zone'
        end
      end
      
      class DiskDataSourceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
          property :type, as: 'type'
        end
      end
      
      class DiskRestoreProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_mode, as: 'accessMode'
          property :architecture, as: 'architecture'
          property :description, as: 'description'
          property :disk_encryption_key, as: 'diskEncryptionKey', class: Google::Apis::BackupdrV1::CustomerEncryptionKey, decorator: Google::Apis::BackupdrV1::CustomerEncryptionKey::Representation
      
          property :enable_confidential_compute, as: 'enableConfidentialCompute'
          collection :guest_os_feature, as: 'guestOsFeature', class: Google::Apis::BackupdrV1::GuestOsFeature, decorator: Google::Apis::BackupdrV1::GuestOsFeature::Representation
      
          hash :labels, as: 'labels'
          collection :licenses, as: 'licenses'
          property :name, as: 'name'
          property :physical_block_size_bytes, :numeric_string => true, as: 'physicalBlockSizeBytes'
          property :provisioned_iops, :numeric_string => true, as: 'provisionedIops'
          property :provisioned_throughput, :numeric_string => true, as: 'provisionedThroughput'
          hash :resource_manager_tags, as: 'resourceManagerTags'
          collection :resource_policy, as: 'resourcePolicy'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
          property :storage_pool, as: 'storagePool'
          property :type, as: 'type'
        end
      end
      
      class DiskTargetEnvironment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project, as: 'project'
          property :zone, as: 'zone'
        end
      end
      
      class DisplayDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_display, as: 'enableDisplay'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class EndTrialRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_reason, as: 'endReason'
        end
      end
      
      class Entry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class FetchAccessTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generation_id, as: 'generationId'
        end
      end
      
      class FetchAccessTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          property :read_location, as: 'readLocation'
          property :token, as: 'token'
          property :write_location, as: 'writeLocation'
        end
      end
      
      class FetchBackupPlanAssociationsForResourceTypeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_plan_associations, as: 'backupPlanAssociations', class: Google::Apis::BackupdrV1::BackupPlanAssociation, decorator: Google::Apis::BackupdrV1::BackupPlanAssociation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class FetchBackupsForResourceTypeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::BackupdrV1::Backup, decorator: Google::Apis::BackupdrV1::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class FetchDataSourceReferencesForResourceTypeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_source_references, as: 'dataSourceReferences', class: Google::Apis::BackupdrV1::DataSourceReference, decorator: Google::Apis::BackupdrV1::DataSourceReference::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class FetchMsComplianceMetadataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
        end
      end
      
      class FetchMsComplianceMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_assured_workload, as: 'isAssuredWorkload'
        end
      end
      
      class FetchUsableBackupVaultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_vaults, as: 'backupVaults', class: Google::Apis::BackupdrV1::BackupVault, decorator: Google::Apis::BackupdrV1::BackupVault::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class FilestoreInstanceBackupPlanAssociationProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_create_time, as: 'instanceCreateTime'
        end
      end
      
      class FinalizeBackupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_id, as: 'backupId'
          property :consistency_time, as: 'consistencyTime'
          property :description, as: 'description'
          property :recovery_range_end_time, as: 'recoveryRangeEndTime'
          property :recovery_range_start_time, as: 'recoveryRangeStartTime'
          property :request_id, as: 'requestId'
          property :retention_duration, as: 'retentionDuration'
        end
      end
      
      class GcpBackupPlanInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_plan, as: 'backupPlan'
          property :backup_plan_revision_id, as: 'backupPlanRevisionId'
          property :backup_plan_revision_name, as: 'backupPlanRevisionName'
          property :backup_plan_rule_id, as: 'backupPlanRuleId'
        end
      end
      
      class GcpBackupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_plan, as: 'backupPlan'
          property :backup_plan_association, as: 'backupPlanAssociation'
          property :backup_plan_description, as: 'backupPlanDescription'
          property :backup_plan_revision_id, as: 'backupPlanRevisionId'
          property :backup_plan_revision_name, as: 'backupPlanRevisionName'
          collection :backup_plan_rules, as: 'backupPlanRules'
        end
      end
      
      class GcpResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_resourcename, as: 'gcpResourcename'
          property :location, as: 'location'
          property :type, as: 'type'
        end
      end
      
      class GuestOsFeature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class InitializeParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_name, as: 'diskName'
          collection :replica_zones, as: 'replicaZones'
        end
      end
      
      class InitializeServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql_instance_initialization_config, as: 'cloudSqlInstanceInitializationConfig', class: Google::Apis::BackupdrV1::CloudSqlInstanceInitializationConfig, decorator: Google::Apis::BackupdrV1::CloudSqlInstanceInitializationConfig::Representation
      
          property :request_id, as: 'requestId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class InitiateBackupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_id, as: 'backupId'
          property :request_id, as: 'requestId'
        end
      end
      
      class InitiateBackupResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :base_backup_generation_id, as: 'baseBackupGenerationId'
          property :new_backup_generation_id, as: 'newBackupGenerationId'
        end
      end
      
      class InstanceParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :resource_manager_tags, as: 'resourceManagerTags'
        end
      end
      
      class ListBackupPlanAssociationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_plan_associations, as: 'backupPlanAssociations', class: Google::Apis::BackupdrV1::BackupPlanAssociation, decorator: Google::Apis::BackupdrV1::BackupPlanAssociation::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBackupPlanRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_plan_revisions, as: 'backupPlanRevisions', class: Google::Apis::BackupdrV1::BackupPlanRevision, decorator: Google::Apis::BackupdrV1::BackupPlanRevision::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBackupPlansResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_plans, as: 'backupPlans', class: Google::Apis::BackupdrV1::BackupPlan, decorator: Google::Apis::BackupdrV1::BackupPlan::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBackupVaultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_vaults, as: 'backupVaults', class: Google::Apis::BackupdrV1::BackupVault, decorator: Google::Apis::BackupdrV1::BackupVault::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::BackupdrV1::Backup, decorator: Google::Apis::BackupdrV1::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDataSourceReferencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_source_references, as: 'dataSourceReferences', class: Google::Apis::BackupdrV1::DataSourceReference, decorator: Google::Apis::BackupdrV1::DataSourceReference::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDataSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_sources, as: 'dataSources', class: Google::Apis::BackupdrV1::DataSource, decorator: Google::Apis::BackupdrV1::DataSource::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::BackupdrV1::Location, decorator: Google::Apis::BackupdrV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListManagementServersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :management_servers, as: 'managementServers', class: Google::Apis::BackupdrV1::ManagementServer, decorator: Google::Apis::BackupdrV1::ManagementServer::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::BackupdrV1::Operation, decorator: Google::Apis::BackupdrV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListResourceBackupConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resource_backup_configs, as: 'resourceBackupConfigs', class: Google::Apis::BackupdrV1::ResourceBackupConfig, decorator: Google::Apis::BackupdrV1::ResourceBackupConfig::Representation
      
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
          collection :unsupported_features, as: 'unsupportedFeatures'
        end
      end
      
      class ManagementServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ba_proxy_uri, as: 'baProxyUri'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :management_uri, as: 'managementUri', class: Google::Apis::BackupdrV1::ManagementUri, decorator: Google::Apis::BackupdrV1::ManagementUri::Representation
      
          property :name, as: 'name'
          collection :networks, as: 'networks', class: Google::Apis::BackupdrV1::NetworkConfig, decorator: Google::Apis::BackupdrV1::NetworkConfig::Representation
      
          property :oauth2_client_id, as: 'oauth2ClientId'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :workforce_identity_based_management_uri, as: 'workforceIdentityBasedManagementUri', class: Google::Apis::BackupdrV1::WorkforceIdentityBasedManagementUri, decorator: Google::Apis::BackupdrV1::WorkforceIdentityBasedManagementUri::Representation
      
          property :workforce_identity_based_oauth2_client_id, as: 'workforceIdentityBasedOauth2ClientId', class: Google::Apis::BackupdrV1::WorkforceIdentityBasedOAuth2ClientId, decorator: Google::Apis::BackupdrV1::WorkforceIdentityBasedOAuth2ClientId::Representation
      
        end
      end
      
      class ManagementUri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api, as: 'api'
          property :web_ui, as: 'webUi'
        end
      end
      
      class Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::BackupdrV1::Entry, decorator: Google::Apis::BackupdrV1::Entry::Representation
      
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
          property :peering_mode, as: 'peeringMode'
        end
      end
      
      class NetworkInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_configs, as: 'accessConfigs', class: Google::Apis::BackupdrV1::AccessConfig, decorator: Google::Apis::BackupdrV1::AccessConfig::Representation
      
          collection :alias_ip_ranges, as: 'aliasIpRanges', class: Google::Apis::BackupdrV1::AliasIpRange, decorator: Google::Apis::BackupdrV1::AliasIpRange::Representation
      
          property :internal_ipv6_prefix_length, as: 'internalIpv6PrefixLength'
          collection :ipv6_access_configs, as: 'ipv6AccessConfigs', class: Google::Apis::BackupdrV1::AccessConfig, decorator: Google::Apis::BackupdrV1::AccessConfig::Representation
      
          property :ipv6_access_type, as: 'ipv6AccessType'
          property :ipv6_address, as: 'ipv6Address'
          property :name, as: 'name'
          property :network, as: 'network'
          property :network_attachment, as: 'networkAttachment'
          property :network_ip, as: 'networkIP'
          property :nic_type, as: 'nicType'
          property :queue_count, as: 'queueCount'
          property :stack_type, as: 'stackType'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class NetworkPerformanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_egress_bandwidth_tier, as: 'totalEgressBandwidthTier'
        end
      end
      
      class NodeAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :operator, as: 'operator'
          collection :values, as: 'values'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::BackupdrV1::Status, decorator: Google::Apis::BackupdrV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_info, as: 'additionalInfo'
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class PitrSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retention_days, as: 'retentionDays'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::BackupdrV1::AuditConfig, decorator: Google::Apis::BackupdrV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::BackupdrV1::Binding, decorator: Google::Apis::BackupdrV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class RegionDiskTargetEnvironment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project, as: 'project'
          property :region, as: 'region'
          collection :replica_zones, as: 'replicaZones'
        end
      end
      
      class RemoveDataSourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class ResourceBackupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_configs_details, as: 'backupConfigsDetails', class: Google::Apis::BackupdrV1::BackupConfigDetails, decorator: Google::Apis::BackupdrV1::BackupConfigDetails::Representation
      
          property :backup_configured, as: 'backupConfigured'
          property :name, as: 'name'
          property :target_resource, as: 'targetResource'
          property :target_resource_display_name, as: 'targetResourceDisplayName'
          hash :target_resource_labels, as: 'targetResourceLabels'
          property :target_resource_type, as: 'targetResourceType'
          property :uid, as: 'uid'
          property :vaulted, as: 'vaulted'
        end
      end
      
      class RestoreBackupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clear_overrides_field_mask, as: 'clearOverridesFieldMask'
          property :compute_instance_restore_properties, as: 'computeInstanceRestoreProperties', class: Google::Apis::BackupdrV1::ComputeInstanceRestoreProperties, decorator: Google::Apis::BackupdrV1::ComputeInstanceRestoreProperties::Representation
      
          property :compute_instance_target_environment, as: 'computeInstanceTargetEnvironment', class: Google::Apis::BackupdrV1::ComputeInstanceTargetEnvironment, decorator: Google::Apis::BackupdrV1::ComputeInstanceTargetEnvironment::Representation
      
          property :disk_restore_properties, as: 'diskRestoreProperties', class: Google::Apis::BackupdrV1::DiskRestoreProperties, decorator: Google::Apis::BackupdrV1::DiskRestoreProperties::Representation
      
          property :disk_target_environment, as: 'diskTargetEnvironment', class: Google::Apis::BackupdrV1::DiskTargetEnvironment, decorator: Google::Apis::BackupdrV1::DiskTargetEnvironment::Representation
      
          property :region_disk_target_environment, as: 'regionDiskTargetEnvironment', class: Google::Apis::BackupdrV1::RegionDiskTargetEnvironment, decorator: Google::Apis::BackupdrV1::RegionDiskTargetEnvironment::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class RestoreBackupResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_resource, as: 'targetResource', class: Google::Apis::BackupdrV1::TargetResource, decorator: Google::Apis::BackupdrV1::TargetResource::Representation
      
        end
      end
      
      class RuleConfigInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_backup_error, as: 'lastBackupError', class: Google::Apis::BackupdrV1::Status, decorator: Google::Apis::BackupdrV1::Status::Representation
      
          property :last_backup_state, as: 'lastBackupState'
          property :last_successful_backup_consistency_time, as: 'lastSuccessfulBackupConsistencyTime'
          property :rule_id, as: 'ruleId'
        end
      end
      
      class Scheduling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automatic_restart, as: 'automaticRestart'
          property :instance_termination_action, as: 'instanceTerminationAction'
          property :local_ssd_recovery_timeout, as: 'localSsdRecoveryTimeout', class: Google::Apis::BackupdrV1::SchedulingDuration, decorator: Google::Apis::BackupdrV1::SchedulingDuration::Representation
      
          property :min_node_cpus, as: 'minNodeCpus'
          collection :node_affinities, as: 'nodeAffinities', class: Google::Apis::BackupdrV1::NodeAffinity, decorator: Google::Apis::BackupdrV1::NodeAffinity::Representation
      
          property :on_host_maintenance, as: 'onHostMaintenance'
          property :preemptible, as: 'preemptible'
          property :provisioning_model, as: 'provisioningModel'
        end
      end
      
      class SchedulingDuration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nanos, as: 'nanos'
          property :seconds, :numeric_string => true, as: 'seconds'
        end
      end
      
      class ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          collection :scopes, as: 'scopes'
        end
      end
      
      class ServiceLockInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::BackupdrV1::Policy, decorator: Google::Apis::BackupdrV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SetInternalStatusRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_config_state, as: 'backupConfigState'
          property :request_id, as: 'requestId'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class SetInternalStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StandardSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_window, as: 'backupWindow', class: Google::Apis::BackupdrV1::BackupWindow, decorator: Google::Apis::BackupdrV1::BackupWindow::Representation
      
          collection :days_of_month, as: 'daysOfMonth'
          collection :days_of_week, as: 'daysOfWeek'
          property :hourly_frequency, as: 'hourlyFrequency'
          collection :months, as: 'months'
          property :recurrence_type, as: 'recurrenceType'
          property :time_zone, as: 'timeZone'
          property :week_day_of_month, as: 'weekDayOfMonth', class: Google::Apis::BackupdrV1::WeekDayOfMonth, decorator: Google::Apis::BackupdrV1::WeekDayOfMonth::Representation
      
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
      
      class SubscribeTrialRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Tags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items'
        end
      end
      
      class TargetResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_resource, as: 'gcpResource', class: Google::Apis::BackupdrV1::GcpResource, decorator: Google::Apis::BackupdrV1::GcpResource::Representation
      
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class Trial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_reason, as: 'endReason'
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class TriggerBackupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_retention_days, as: 'customRetentionDays'
          hash :labels, as: 'labels'
          property :request_id, as: 'requestId'
          property :rule_id, as: 'ruleId'
        end
      end
      
      class WeekDayOfMonth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
          property :week_of_month, as: 'weekOfMonth'
        end
      end
      
      class WorkforceIdentityBasedManagementUri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_party_management_uri, as: 'firstPartyManagementUri'
          property :third_party_management_uri, as: 'thirdPartyManagementUri'
        end
      end
      
      class WorkforceIdentityBasedOAuth2ClientId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_party_oauth2_client_id, as: 'firstPartyOauth2ClientId'
          property :third_party_oauth2_client_id, as: 'thirdPartyOauth2ClientId'
        end
      end
    end
  end
end
