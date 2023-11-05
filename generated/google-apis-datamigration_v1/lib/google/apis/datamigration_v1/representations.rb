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
    module DatamigrationV1
      
      class AlloyDbConnectionProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlloyDbSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplyConversionWorkspaceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplyHash
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplyJobDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssignSpecificValue
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
      
      class BackgroundJobLogEntry
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
      
      class CloudSqlConnectionProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ColumnEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitConversionWorkspaceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConditionalColumnSetValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConstraintEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConversionWorkspace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConversionWorkspaceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConvertConversionWorkspaceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConvertJobDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConvertRowIdToColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataCacheConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseEngineInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseInstanceEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DescribeConversionWorkspaceRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DescribeDatabaseEntitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleComparisonFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DumpFlag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DumpFlags
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
      
      class EntityDdl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityMappingLogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityMove
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchStaticIpsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterTableColumns
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardSshTunnelConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FunctionEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateSshScriptRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateTcpProxyScriptRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudClouddmsV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportMappingRulesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportRulesJobDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IndexEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntComparisonFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectionProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConversionWorkspacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMappingRulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMigrationJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPrivateConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MappingRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MappingRuleFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaterializedViewEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MigrationJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MigrationJobVerificationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiColumnDatatypeChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiEntityRename
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MySqlConnectionProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OracleConnectionProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerformanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Position
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgreSqlConnectionProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrimaryInstanceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateServiceConnectConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromoteMigrationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestartMigrationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResumeMigrationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReverseSshConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackConversionWorkspaceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoundToScale
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RulesFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchBackgroundJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeedConversionWorkspaceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeedJobDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SequenceEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetTablePrimaryKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SingleColumnChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SingleEntityRename
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SinglePackageChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceNumericFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceSqlChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceTextFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlAclEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlIpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SshScript
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartMigrationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StaticIpConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StaticServiceIpConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopMigrationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoredProcedureEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SynonymEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TcpProxyScript
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
      
      class TriggerEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UdtEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserPassword
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValueListFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValueTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyMigrationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ViewEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmCreationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmSelectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpcPeeringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpcPeeringConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlloyDbConnectionProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :settings, as: 'settings', class: Google::Apis::DatamigrationV1::AlloyDbSettings, decorator: Google::Apis::DatamigrationV1::AlloyDbSettings::Representation
      
        end
      end
      
      class AlloyDbSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::DatamigrationV1::EncryptionConfig, decorator: Google::Apis::DatamigrationV1::EncryptionConfig::Representation
      
          property :initial_user, as: 'initialUser', class: Google::Apis::DatamigrationV1::UserPassword, decorator: Google::Apis::DatamigrationV1::UserPassword::Representation
      
          hash :labels, as: 'labels'
          property :primary_instance_settings, as: 'primaryInstanceSettings', class: Google::Apis::DatamigrationV1::PrimaryInstanceSettings, decorator: Google::Apis::DatamigrationV1::PrimaryInstanceSettings::Representation
      
          property :vpc_network, as: 'vpcNetwork'
        end
      end
      
      class ApplyConversionWorkspaceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_commit, as: 'autoCommit'
          property :connection_profile, as: 'connectionProfile'
          property :dry_run, as: 'dryRun'
          property :filter, as: 'filter'
        end
      end
      
      class ApplyHash
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uuid_from_bytes, as: 'uuidFromBytes', class: Google::Apis::DatamigrationV1::Empty, decorator: Google::Apis::DatamigrationV1::Empty::Representation
      
        end
      end
      
      class ApplyJobDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_profile, as: 'connectionProfile'
          property :filter, as: 'filter'
        end
      end
      
      class AssignSpecificValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::DatamigrationV1::AuditLogConfig, decorator: Google::Apis::DatamigrationV1::AuditLogConfig::Representation
      
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
      
      class BackgroundJobLogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apply_job_details, as: 'applyJobDetails', class: Google::Apis::DatamigrationV1::ApplyJobDetails, decorator: Google::Apis::DatamigrationV1::ApplyJobDetails::Representation
      
          property :completion_comment, as: 'completionComment'
          property :completion_state, as: 'completionState'
          property :convert_job_details, as: 'convertJobDetails', class: Google::Apis::DatamigrationV1::ConvertJobDetails, decorator: Google::Apis::DatamigrationV1::ConvertJobDetails::Representation
      
          property :finish_time, as: 'finishTime'
          property :id, as: 'id'
          property :import_rules_job_details, as: 'importRulesJobDetails', class: Google::Apis::DatamigrationV1::ImportRulesJobDetails, decorator: Google::Apis::DatamigrationV1::ImportRulesJobDetails::Representation
      
          property :job_type, as: 'jobType'
          property :request_autocommit, as: 'requestAutocommit'
          property :seed_job_details, as: 'seedJobDetails', class: Google::Apis::DatamigrationV1::SeedJobDetails, decorator: Google::Apis::DatamigrationV1::SeedJobDetails::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DatamigrationV1::Expr, decorator: Google::Apis::DatamigrationV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudSqlConnectionProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_public_ip, as: 'additionalPublicIp'
          property :cloud_sql_id, as: 'cloudSqlId'
          property :private_ip, as: 'privateIp'
          property :public_ip, as: 'publicIp'
          property :settings, as: 'settings', class: Google::Apis::DatamigrationV1::CloudSqlSettings, decorator: Google::Apis::DatamigrationV1::CloudSqlSettings::Representation
      
        end
      end
      
      class CloudSqlSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_policy, as: 'activationPolicy'
          property :auto_storage_increase, as: 'autoStorageIncrease'
          property :availability_type, as: 'availabilityType'
          property :cmek_key_name, as: 'cmekKeyName'
          property :collation, as: 'collation'
          property :data_cache_config, as: 'dataCacheConfig', class: Google::Apis::DatamigrationV1::DataCacheConfig, decorator: Google::Apis::DatamigrationV1::DataCacheConfig::Representation
      
          property :data_disk_size_gb, :numeric_string => true, as: 'dataDiskSizeGb'
          property :data_disk_type, as: 'dataDiskType'
          hash :database_flags, as: 'databaseFlags'
          property :database_version, as: 'databaseVersion'
          property :edition, as: 'edition'
          property :ip_config, as: 'ipConfig', class: Google::Apis::DatamigrationV1::SqlIpConfig, decorator: Google::Apis::DatamigrationV1::SqlIpConfig::Representation
      
          property :root_password, as: 'rootPassword'
          property :root_password_set, as: 'rootPasswordSet'
          property :secondary_zone, as: 'secondaryZone'
          property :source_id, as: 'sourceId'
          property :storage_auto_resize_limit, :numeric_string => true, as: 'storageAutoResizeLimit'
          property :tier, as: 'tier'
          hash :user_labels, as: 'userLabels'
          property :zone, as: 'zone'
        end
      end
      
      class ColumnEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :array, as: 'array'
          property :array_length, as: 'arrayLength'
          property :auto_generated, as: 'autoGenerated'
          property :charset, as: 'charset'
          property :collation, as: 'collation'
          property :comment, as: 'comment'
          hash :custom_features, as: 'customFeatures'
          property :data_type, as: 'dataType'
          property :default_value, as: 'defaultValue'
          property :fractional_seconds_precision, as: 'fractionalSecondsPrecision'
          property :length, :numeric_string => true, as: 'length'
          property :name, as: 'name'
          property :nullable, as: 'nullable'
          property :ordinal_position, as: 'ordinalPosition'
          property :precision, as: 'precision'
          property :scale, as: 'scale'
          collection :set_values, as: 'setValues'
          property :udt, as: 'udt'
        end
      end
      
      class CommitConversionWorkspaceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_name, as: 'commitName'
        end
      end
      
      class ConditionalColumnSetValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
          property :source_numeric_filter, as: 'sourceNumericFilter', class: Google::Apis::DatamigrationV1::SourceNumericFilter, decorator: Google::Apis::DatamigrationV1::SourceNumericFilter::Representation
      
          property :source_text_filter, as: 'sourceTextFilter', class: Google::Apis::DatamigrationV1::SourceTextFilter, decorator: Google::Apis::DatamigrationV1::SourceTextFilter::Representation
      
          property :value_transformation, as: 'valueTransformation', class: Google::Apis::DatamigrationV1::ValueTransformation, decorator: Google::Apis::DatamigrationV1::ValueTransformation::Representation
      
        end
      end
      
      class ConnectionProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alloydb, as: 'alloydb', class: Google::Apis::DatamigrationV1::AlloyDbConnectionProfile, decorator: Google::Apis::DatamigrationV1::AlloyDbConnectionProfile::Representation
      
          property :cloudsql, as: 'cloudsql', class: Google::Apis::DatamigrationV1::CloudSqlConnectionProfile, decorator: Google::Apis::DatamigrationV1::CloudSqlConnectionProfile::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :error, as: 'error', class: Google::Apis::DatamigrationV1::Status, decorator: Google::Apis::DatamigrationV1::Status::Representation
      
          hash :labels, as: 'labels'
          property :mysql, as: 'mysql', class: Google::Apis::DatamigrationV1::MySqlConnectionProfile, decorator: Google::Apis::DatamigrationV1::MySqlConnectionProfile::Representation
      
          property :name, as: 'name'
          property :oracle, as: 'oracle', class: Google::Apis::DatamigrationV1::OracleConnectionProfile, decorator: Google::Apis::DatamigrationV1::OracleConnectionProfile::Representation
      
          property :postgresql, as: 'postgresql', class: Google::Apis::DatamigrationV1::PostgreSqlConnectionProfile, decorator: Google::Apis::DatamigrationV1::PostgreSqlConnectionProfile::Representation
      
          property :provider, as: 'provider'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ConstraintEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
          property :name, as: 'name'
          collection :reference_columns, as: 'referenceColumns'
          property :reference_table, as: 'referenceTable'
          collection :table_columns, as: 'tableColumns'
          property :table_name, as: 'tableName'
          property :type, as: 'type'
        end
      end
      
      class ConversionWorkspace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :destination, as: 'destination', class: Google::Apis::DatamigrationV1::DatabaseEngineInfo, decorator: Google::Apis::DatamigrationV1::DatabaseEngineInfo::Representation
      
          property :display_name, as: 'displayName'
          hash :global_settings, as: 'globalSettings'
          property :has_uncommitted_changes, as: 'hasUncommittedChanges'
          property :latest_commit_id, as: 'latestCommitId'
          property :latest_commit_time, as: 'latestCommitTime'
          property :name, as: 'name'
          property :source, as: 'source', class: Google::Apis::DatamigrationV1::DatabaseEngineInfo, decorator: Google::Apis::DatamigrationV1::DatabaseEngineInfo::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class ConversionWorkspaceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_id, as: 'commitId'
          property :name, as: 'name'
        end
      end
      
      class ConvertConversionWorkspaceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_commit, as: 'autoCommit'
          property :convert_full_path, as: 'convertFullPath'
          property :filter, as: 'filter'
        end
      end
      
      class ConvertJobDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
        end
      end
      
      class ConvertRowIdToColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :only_if_no_primary_key, as: 'onlyIfNoPrimaryKey'
        end
      end
      
      class DataCacheConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_cache_enabled, as: 'dataCacheEnabled'
        end
      end
      
      class DatabaseEngineInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
          property :version, as: 'version'
        end
      end
      
      class DatabaseEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database', class: Google::Apis::DatamigrationV1::DatabaseInstanceEntity, decorator: Google::Apis::DatamigrationV1::DatabaseInstanceEntity::Representation
      
          property :database_function, as: 'databaseFunction', class: Google::Apis::DatamigrationV1::FunctionEntity, decorator: Google::Apis::DatamigrationV1::FunctionEntity::Representation
      
          property :database_package, as: 'databasePackage', class: Google::Apis::DatamigrationV1::PackageEntity, decorator: Google::Apis::DatamigrationV1::PackageEntity::Representation
      
          collection :entity_ddl, as: 'entityDdl', class: Google::Apis::DatamigrationV1::EntityDdl, decorator: Google::Apis::DatamigrationV1::EntityDdl::Representation
      
          property :entity_type, as: 'entityType'
          collection :issues, as: 'issues', class: Google::Apis::DatamigrationV1::EntityIssue, decorator: Google::Apis::DatamigrationV1::EntityIssue::Representation
      
          collection :mappings, as: 'mappings', class: Google::Apis::DatamigrationV1::EntityMapping, decorator: Google::Apis::DatamigrationV1::EntityMapping::Representation
      
          property :materialized_view, as: 'materializedView', class: Google::Apis::DatamigrationV1::MaterializedViewEntity, decorator: Google::Apis::DatamigrationV1::MaterializedViewEntity::Representation
      
          property :parent_entity, as: 'parentEntity'
          property :schema, as: 'schema', class: Google::Apis::DatamigrationV1::SchemaEntity, decorator: Google::Apis::DatamigrationV1::SchemaEntity::Representation
      
          property :sequence, as: 'sequence', class: Google::Apis::DatamigrationV1::SequenceEntity, decorator: Google::Apis::DatamigrationV1::SequenceEntity::Representation
      
          property :short_name, as: 'shortName'
          property :stored_procedure, as: 'storedProcedure', class: Google::Apis::DatamigrationV1::StoredProcedureEntity, decorator: Google::Apis::DatamigrationV1::StoredProcedureEntity::Representation
      
          property :synonym, as: 'synonym', class: Google::Apis::DatamigrationV1::SynonymEntity, decorator: Google::Apis::DatamigrationV1::SynonymEntity::Representation
      
          property :table, as: 'table', class: Google::Apis::DatamigrationV1::TableEntity, decorator: Google::Apis::DatamigrationV1::TableEntity::Representation
      
          property :tree, as: 'tree'
          property :udt, as: 'udt', class: Google::Apis::DatamigrationV1::UdtEntity, decorator: Google::Apis::DatamigrationV1::UdtEntity::Representation
      
          property :view, as: 'view', class: Google::Apis::DatamigrationV1::ViewEntity, decorator: Google::Apis::DatamigrationV1::ViewEntity::Representation
      
        end
      end
      
      class DatabaseInstanceEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
        end
      end
      
      class DatabaseType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
          property :provider, as: 'provider'
        end
      end
      
      class DescribeConversionWorkspaceRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :revisions, as: 'revisions', class: Google::Apis::DatamigrationV1::ConversionWorkspace, decorator: Google::Apis::DatamigrationV1::ConversionWorkspace::Representation
      
        end
      end
      
      class DescribeDatabaseEntitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :database_entities, as: 'databaseEntities', class: Google::Apis::DatamigrationV1::DatabaseEntity, decorator: Google::Apis::DatamigrationV1::DatabaseEntity::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class DoubleComparisonFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :value_comparison, as: 'valueComparison'
        end
      end
      
      class DumpFlag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class DumpFlags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dump_flags, as: 'dumpFlags', class: Google::Apis::DatamigrationV1::DumpFlag, decorator: Google::Apis::DatamigrationV1::DumpFlag::Representation
      
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
      
      class EntityDdl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ddl, as: 'ddl'
          property :ddl_type, as: 'ddlType'
          property :entity, as: 'entity'
          property :entity_type, as: 'entityType'
          collection :issue_id, as: 'issueId'
        end
      end
      
      class EntityIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :ddl, as: 'ddl'
          property :entity_type, as: 'entityType'
          property :id, as: 'id'
          property :message, as: 'message'
          property :position, as: 'position', class: Google::Apis::DatamigrationV1::Position, decorator: Google::Apis::DatamigrationV1::Position::Representation
      
          property :severity, as: 'severity'
          property :type, as: 'type'
        end
      end
      
      class EntityMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :draft_entity, as: 'draftEntity'
          property :draft_type, as: 'draftType'
          collection :mapping_log, as: 'mappingLog', class: Google::Apis::DatamigrationV1::EntityMappingLogEntry, decorator: Google::Apis::DatamigrationV1::EntityMappingLogEntry::Representation
      
          property :source_entity, as: 'sourceEntity'
          property :source_type, as: 'sourceType'
        end
      end
      
      class EntityMappingLogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mapping_comment, as: 'mappingComment'
          property :rule_id, as: 'ruleId'
          property :rule_revision_id, as: 'ruleRevisionId'
        end
      end
      
      class EntityMove
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_schema, as: 'newSchema'
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
      
      class FetchStaticIpsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :static_ips, as: 'staticIps'
        end
      end
      
      class FilterTableColumns
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exclude_columns, as: 'excludeColumns'
          collection :include_columns, as: 'includeColumns'
        end
      end
      
      class ForwardSshTunnelConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hostname, as: 'hostname'
          property :password, as: 'password'
          property :port, as: 'port'
          property :private_key, as: 'privateKey'
          property :username, as: 'username'
        end
      end
      
      class FunctionEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
          property :sql_code, as: 'sqlCode'
        end
      end
      
      class GenerateSshScriptRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm, as: 'vm'
          property :vm_creation_config, as: 'vmCreationConfig', class: Google::Apis::DatamigrationV1::VmCreationConfig, decorator: Google::Apis::DatamigrationV1::VmCreationConfig::Representation
      
          property :vm_port, as: 'vmPort'
          property :vm_selection_config, as: 'vmSelectionConfig', class: Google::Apis::DatamigrationV1::VmSelectionConfig, decorator: Google::Apis::DatamigrationV1::VmSelectionConfig::Representation
      
        end
      end
      
      class GenerateTcpProxyScriptRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm_machine_type, as: 'vmMachineType'
          property :vm_name, as: 'vmName'
          property :vm_subnet, as: 'vmSubnet'
          property :vm_zone, as: 'vmZone'
        end
      end
      
      class GoogleCloudClouddmsV1OperationMetadata
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
      
      class ImportMappingRulesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_commit, as: 'autoCommit'
          collection :rules_files, as: 'rulesFiles', class: Google::Apis::DatamigrationV1::RulesFile, decorator: Google::Apis::DatamigrationV1::RulesFile::Representation
      
          property :rules_format, as: 'rulesFormat'
        end
      end
      
      class ImportRulesJobDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_format, as: 'fileFormat'
          collection :files, as: 'files'
        end
      end
      
      class IndexEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
          property :name, as: 'name'
          collection :table_columns, as: 'tableColumns'
          property :type, as: 'type'
          property :unique, as: 'unique'
        end
      end
      
      class IntComparisonFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, :numeric_string => true, as: 'value'
          property :value_comparison, as: 'valueComparison'
        end
      end
      
      class ListConnectionProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connection_profiles, as: 'connectionProfiles', class: Google::Apis::DatamigrationV1::ConnectionProfile, decorator: Google::Apis::DatamigrationV1::ConnectionProfile::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListConversionWorkspacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversion_workspaces, as: 'conversionWorkspaces', class: Google::Apis::DatamigrationV1::ConversionWorkspace, decorator: Google::Apis::DatamigrationV1::ConversionWorkspace::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DatamigrationV1::Location, decorator: Google::Apis::DatamigrationV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMappingRulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mapping_rules, as: 'mappingRules', class: Google::Apis::DatamigrationV1::MappingRule, decorator: Google::Apis::DatamigrationV1::MappingRule::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMigrationJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :migration_jobs, as: 'migrationJobs', class: Google::Apis::DatamigrationV1::MigrationJob, decorator: Google::Apis::DatamigrationV1::MigrationJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DatamigrationV1::Operation, decorator: Google::Apis::DatamigrationV1::Operation::Representation
      
        end
      end
      
      class ListPrivateConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :private_connections, as: 'privateConnections', class: Google::Apis::DatamigrationV1::PrivateConnection, decorator: Google::Apis::DatamigrationV1::PrivateConnection::Representation
      
          collection :unreachable, as: 'unreachable'
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
      
      class MachineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_count, as: 'cpuCount'
        end
      end
      
      class MappingRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conditional_column_set_value, as: 'conditionalColumnSetValue', class: Google::Apis::DatamigrationV1::ConditionalColumnSetValue, decorator: Google::Apis::DatamigrationV1::ConditionalColumnSetValue::Representation
      
          property :convert_rowid_column, as: 'convertRowidColumn', class: Google::Apis::DatamigrationV1::ConvertRowIdToColumn, decorator: Google::Apis::DatamigrationV1::ConvertRowIdToColumn::Representation
      
          property :display_name, as: 'displayName'
          property :entity_move, as: 'entityMove', class: Google::Apis::DatamigrationV1::EntityMove, decorator: Google::Apis::DatamigrationV1::EntityMove::Representation
      
          property :filter, as: 'filter', class: Google::Apis::DatamigrationV1::MappingRuleFilter, decorator: Google::Apis::DatamigrationV1::MappingRuleFilter::Representation
      
          property :filter_table_columns, as: 'filterTableColumns', class: Google::Apis::DatamigrationV1::FilterTableColumns, decorator: Google::Apis::DatamigrationV1::FilterTableColumns::Representation
      
          property :multi_column_data_type_change, as: 'multiColumnDataTypeChange', class: Google::Apis::DatamigrationV1::MultiColumnDatatypeChange, decorator: Google::Apis::DatamigrationV1::MultiColumnDatatypeChange::Representation
      
          property :multi_entity_rename, as: 'multiEntityRename', class: Google::Apis::DatamigrationV1::MultiEntityRename, decorator: Google::Apis::DatamigrationV1::MultiEntityRename::Representation
      
          property :name, as: 'name'
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_id, as: 'revisionId'
          property :rule_order, :numeric_string => true, as: 'ruleOrder'
          property :rule_scope, as: 'ruleScope'
          property :set_table_primary_key, as: 'setTablePrimaryKey', class: Google::Apis::DatamigrationV1::SetTablePrimaryKey, decorator: Google::Apis::DatamigrationV1::SetTablePrimaryKey::Representation
      
          property :single_column_change, as: 'singleColumnChange', class: Google::Apis::DatamigrationV1::SingleColumnChange, decorator: Google::Apis::DatamigrationV1::SingleColumnChange::Representation
      
          property :single_entity_rename, as: 'singleEntityRename', class: Google::Apis::DatamigrationV1::SingleEntityRename, decorator: Google::Apis::DatamigrationV1::SingleEntityRename::Representation
      
          property :single_package_change, as: 'singlePackageChange', class: Google::Apis::DatamigrationV1::SinglePackageChange, decorator: Google::Apis::DatamigrationV1::SinglePackageChange::Representation
      
          property :source_sql_change, as: 'sourceSqlChange', class: Google::Apis::DatamigrationV1::SourceSqlChange, decorator: Google::Apis::DatamigrationV1::SourceSqlChange::Representation
      
          property :state, as: 'state'
        end
      end
      
      class MappingRuleFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities'
          property :entity_name_contains, as: 'entityNameContains'
          property :entity_name_prefix, as: 'entityNamePrefix'
          property :entity_name_suffix, as: 'entityNameSuffix'
          property :parent_entity, as: 'parentEntity'
        end
      end
      
      class MaterializedViewEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
          property :sql_code, as: 'sqlCode'
        end
      end
      
      class MigrationJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cmek_key_name, as: 'cmekKeyName'
          property :conversion_workspace, as: 'conversionWorkspace', class: Google::Apis::DatamigrationV1::ConversionWorkspaceInfo, decorator: Google::Apis::DatamigrationV1::ConversionWorkspaceInfo::Representation
      
          property :create_time, as: 'createTime'
          property :destination, as: 'destination'
          property :destination_database, as: 'destinationDatabase', class: Google::Apis::DatamigrationV1::DatabaseType, decorator: Google::Apis::DatamigrationV1::DatabaseType::Representation
      
          property :display_name, as: 'displayName'
          property :dump_flags, as: 'dumpFlags', class: Google::Apis::DatamigrationV1::DumpFlags, decorator: Google::Apis::DatamigrationV1::DumpFlags::Representation
      
          property :dump_path, as: 'dumpPath'
          property :duration, as: 'duration'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::DatamigrationV1::Status, decorator: Google::Apis::DatamigrationV1::Status::Representation
      
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :performance_config, as: 'performanceConfig', class: Google::Apis::DatamigrationV1::PerformanceConfig, decorator: Google::Apis::DatamigrationV1::PerformanceConfig::Representation
      
          property :phase, as: 'phase'
          property :reverse_ssh_connectivity, as: 'reverseSshConnectivity', class: Google::Apis::DatamigrationV1::ReverseSshConnectivity, decorator: Google::Apis::DatamigrationV1::ReverseSshConnectivity::Representation
      
          property :source, as: 'source'
          property :source_database, as: 'sourceDatabase', class: Google::Apis::DatamigrationV1::DatabaseType, decorator: Google::Apis::DatamigrationV1::DatabaseType::Representation
      
          property :state, as: 'state'
          property :static_ip_connectivity, as: 'staticIpConnectivity', class: Google::Apis::DatamigrationV1::StaticIpConnectivity, decorator: Google::Apis::DatamigrationV1::StaticIpConnectivity::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :vpc_peering_connectivity, as: 'vpcPeeringConnectivity', class: Google::Apis::DatamigrationV1::VpcPeeringConnectivity, decorator: Google::Apis::DatamigrationV1::VpcPeeringConnectivity::Representation
      
        end
      end
      
      class MigrationJobVerificationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
          property :error_detail_message, as: 'errorDetailMessage'
          property :error_message, as: 'errorMessage'
        end
      end
      
      class MultiColumnDatatypeChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
          property :new_data_type, as: 'newDataType'
          property :override_fractional_seconds_precision, as: 'overrideFractionalSecondsPrecision'
          property :override_length, :numeric_string => true, as: 'overrideLength'
          property :override_precision, as: 'overridePrecision'
          property :override_scale, as: 'overrideScale'
          property :source_data_type_filter, as: 'sourceDataTypeFilter'
          property :source_numeric_filter, as: 'sourceNumericFilter', class: Google::Apis::DatamigrationV1::SourceNumericFilter, decorator: Google::Apis::DatamigrationV1::SourceNumericFilter::Representation
      
          property :source_text_filter, as: 'sourceTextFilter', class: Google::Apis::DatamigrationV1::SourceTextFilter, decorator: Google::Apis::DatamigrationV1::SourceTextFilter::Representation
      
        end
      end
      
      class MultiEntityRename
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_name_pattern, as: 'newNamePattern'
          property :source_name_transformation, as: 'sourceNameTransformation'
        end
      end
      
      class MySqlConnectionProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql_id, as: 'cloudSqlId'
          property :host, as: 'host'
          property :password, as: 'password'
          property :password_set, as: 'passwordSet'
          property :port, as: 'port'
          property :ssl, as: 'ssl', class: Google::Apis::DatamigrationV1::SslConfig, decorator: Google::Apis::DatamigrationV1::SslConfig::Representation
      
          property :username, as: 'username'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DatamigrationV1::Status, decorator: Google::Apis::DatamigrationV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OracleConnectionProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_service, as: 'databaseService'
          property :forward_ssh_connectivity, as: 'forwardSshConnectivity', class: Google::Apis::DatamigrationV1::ForwardSshTunnelConnectivity, decorator: Google::Apis::DatamigrationV1::ForwardSshTunnelConnectivity::Representation
      
          property :host, as: 'host'
          property :password, as: 'password'
          property :password_set, as: 'passwordSet'
          property :port, as: 'port'
          property :private_connectivity, as: 'privateConnectivity', class: Google::Apis::DatamigrationV1::PrivateConnectivity, decorator: Google::Apis::DatamigrationV1::PrivateConnectivity::Representation
      
          property :ssl, as: 'ssl', class: Google::Apis::DatamigrationV1::SslConfig, decorator: Google::Apis::DatamigrationV1::SslConfig::Representation
      
          property :static_service_ip_connectivity, as: 'staticServiceIpConnectivity', class: Google::Apis::DatamigrationV1::StaticServiceIpConnectivity, decorator: Google::Apis::DatamigrationV1::StaticServiceIpConnectivity::Representation
      
          property :username, as: 'username'
        end
      end
      
      class PackageEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
          property :package_body, as: 'packageBody'
          property :package_sql_code, as: 'packageSqlCode'
        end
      end
      
      class PerformanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dump_parallel_level, as: 'dumpParallelLevel'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::DatamigrationV1::AuditConfig, decorator: Google::Apis::DatamigrationV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::DatamigrationV1::Binding, decorator: Google::Apis::DatamigrationV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Position
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :length, as: 'length'
          property :line, as: 'line'
          property :offset, as: 'offset'
        end
      end
      
      class PostgreSqlConnectionProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alloydb_cluster_id, as: 'alloydbClusterId'
          property :cloud_sql_id, as: 'cloudSqlId'
          property :host, as: 'host'
          property :network_architecture, as: 'networkArchitecture'
          property :password, as: 'password'
          property :password_set, as: 'passwordSet'
          property :port, as: 'port'
          property :private_service_connect_connectivity, as: 'privateServiceConnectConnectivity', class: Google::Apis::DatamigrationV1::PrivateServiceConnectConnectivity, decorator: Google::Apis::DatamigrationV1::PrivateServiceConnectConnectivity::Representation
      
          property :ssl, as: 'ssl', class: Google::Apis::DatamigrationV1::SslConfig, decorator: Google::Apis::DatamigrationV1::SslConfig::Representation
      
          property :static_ip_connectivity, as: 'staticIpConnectivity', class: Google::Apis::DatamigrationV1::StaticIpConnectivity, decorator: Google::Apis::DatamigrationV1::StaticIpConnectivity::Representation
      
          property :username, as: 'username'
        end
      end
      
      class PrimaryInstanceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :database_flags, as: 'databaseFlags'
          property :id, as: 'id'
          hash :labels, as: 'labels'
          property :machine_config, as: 'machineConfig', class: Google::Apis::DatamigrationV1::MachineConfig, decorator: Google::Apis::DatamigrationV1::MachineConfig::Representation
      
          property :private_ip, as: 'privateIp'
        end
      end
      
      class PrivateConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :error, as: 'error', class: Google::Apis::DatamigrationV1::Status, decorator: Google::Apis::DatamigrationV1::Status::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :vpc_peering_config, as: 'vpcPeeringConfig', class: Google::Apis::DatamigrationV1::VpcPeeringConfig, decorator: Google::Apis::DatamigrationV1::VpcPeeringConfig::Representation
      
        end
      end
      
      class PrivateConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_connection, as: 'privateConnection'
        end
      end
      
      class PrivateServiceConnectConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_attachment, as: 'serviceAttachment'
        end
      end
      
      class PromoteMigrationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RestartMigrationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :skip_validation, as: 'skipValidation'
        end
      end
      
      class ResumeMigrationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ReverseSshConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm, as: 'vm'
          property :vm_ip, as: 'vmIp'
          property :vm_port, as: 'vmPort'
          property :vpc, as: 'vpc'
        end
      end
      
      class RollbackConversionWorkspaceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RoundToScale
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scale, as: 'scale'
        end
      end
      
      class RulesFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rules_content, as: 'rulesContent'
          property :rules_source_filename, as: 'rulesSourceFilename'
        end
      end
      
      class SchemaEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
        end
      end
      
      class SearchBackgroundJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::DatamigrationV1::BackgroundJobLogEntry, decorator: Google::Apis::DatamigrationV1::BackgroundJobLogEntry::Representation
      
        end
      end
      
      class SeedConversionWorkspaceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_commit, as: 'autoCommit'
          property :destination_connection_profile, as: 'destinationConnectionProfile'
          property :source_connection_profile, as: 'sourceConnectionProfile'
        end
      end
      
      class SeedJobDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_profile, as: 'connectionProfile'
        end
      end
      
      class SequenceEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache, :numeric_string => true, as: 'cache'
          hash :custom_features, as: 'customFeatures'
          property :cycle, as: 'cycle'
          property :increment, :numeric_string => true, as: 'increment'
          property :max_value, :base64 => true, as: 'maxValue'
          property :min_value, :base64 => true, as: 'minValue'
          property :start_value, :base64 => true, as: 'startValue'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::DatamigrationV1::Policy, decorator: Google::Apis::DatamigrationV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SetTablePrimaryKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :primary_key, as: 'primaryKey'
          collection :primary_key_columns, as: 'primaryKeyColumns'
        end
      end
      
      class SingleColumnChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :array, as: 'array'
          property :array_length, as: 'arrayLength'
          property :auto_generated, as: 'autoGenerated'
          property :charset, as: 'charset'
          property :collation, as: 'collation'
          property :comment, as: 'comment'
          hash :custom_features, as: 'customFeatures'
          property :data_type, as: 'dataType'
          property :fractional_seconds_precision, as: 'fractionalSecondsPrecision'
          property :length, :numeric_string => true, as: 'length'
          property :nullable, as: 'nullable'
          property :precision, as: 'precision'
          property :scale, as: 'scale'
          collection :set_values, as: 'setValues'
          property :udt, as: 'udt'
        end
      end
      
      class SingleEntityRename
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_name, as: 'newName'
        end
      end
      
      class SinglePackageChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :package_body, as: 'packageBody'
          property :package_description, as: 'packageDescription'
        end
      end
      
      class SourceNumericFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :numeric_filter_option, as: 'numericFilterOption'
          property :source_max_precision_filter, as: 'sourceMaxPrecisionFilter'
          property :source_max_scale_filter, as: 'sourceMaxScaleFilter'
          property :source_min_precision_filter, as: 'sourceMinPrecisionFilter'
          property :source_min_scale_filter, as: 'sourceMinScaleFilter'
        end
      end
      
      class SourceSqlChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sql_code, as: 'sqlCode'
        end
      end
      
      class SourceTextFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_max_length_filter, :numeric_string => true, as: 'sourceMaxLengthFilter'
          property :source_min_length_filter, :numeric_string => true, as: 'sourceMinLengthFilter'
        end
      end
      
      class SqlAclEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          property :label, as: 'label'
          property :ttl, as: 'ttl'
          property :value, as: 'value'
        end
      end
      
      class SqlIpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_ip_range, as: 'allocatedIpRange'
          collection :authorized_networks, as: 'authorizedNetworks', class: Google::Apis::DatamigrationV1::SqlAclEntry, decorator: Google::Apis::DatamigrationV1::SqlAclEntry::Representation
      
          property :enable_ipv4, as: 'enableIpv4'
          property :private_network, as: 'privateNetwork'
          property :require_ssl, as: 'requireSsl'
        end
      end
      
      class SshScript
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :script, as: 'script'
        end
      end
      
      class SslConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :client_certificate, as: 'clientCertificate'
          property :client_key, as: 'clientKey'
          property :type, as: 'type'
        end
      end
      
      class StartMigrationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :skip_validation, as: 'skipValidation'
        end
      end
      
      class StaticIpConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StaticServiceIpConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class StopMigrationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StoredProcedureEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
          property :sql_code, as: 'sqlCode'
        end
      end
      
      class SynonymEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
          property :source_entity, as: 'sourceEntity'
          property :source_type, as: 'sourceType'
        end
      end
      
      class TableEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::DatamigrationV1::ColumnEntity, decorator: Google::Apis::DatamigrationV1::ColumnEntity::Representation
      
          property :comment, as: 'comment'
          collection :constraints, as: 'constraints', class: Google::Apis::DatamigrationV1::ConstraintEntity, decorator: Google::Apis::DatamigrationV1::ConstraintEntity::Representation
      
          hash :custom_features, as: 'customFeatures'
          collection :indices, as: 'indices', class: Google::Apis::DatamigrationV1::IndexEntity, decorator: Google::Apis::DatamigrationV1::IndexEntity::Representation
      
          collection :triggers, as: 'triggers', class: Google::Apis::DatamigrationV1::TriggerEntity, decorator: Google::Apis::DatamigrationV1::TriggerEntity::Representation
      
        end
      end
      
      class TcpProxyScript
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :script, as: 'script'
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
      
      class TriggerEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
          property :name, as: 'name'
          property :sql_code, as: 'sqlCode'
          property :trigger_type, as: 'triggerType'
          collection :triggering_events, as: 'triggeringEvents'
        end
      end
      
      class UdtEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_features, as: 'customFeatures'
          property :udt_body, as: 'udtBody'
          property :udt_sql_code, as: 'udtSqlCode'
        end
      end
      
      class UserPassword
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password'
          property :password_set, as: 'passwordSet'
          property :user, as: 'user'
        end
      end
      
      class ValueListFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_case, as: 'ignoreCase'
          property :value_present_list, as: 'valuePresentList'
          collection :values, as: 'values'
        end
      end
      
      class ValueTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apply_hash, as: 'applyHash', class: Google::Apis::DatamigrationV1::ApplyHash, decorator: Google::Apis::DatamigrationV1::ApplyHash::Representation
      
          property :assign_max_value, as: 'assignMaxValue', class: Google::Apis::DatamigrationV1::Empty, decorator: Google::Apis::DatamigrationV1::Empty::Representation
      
          property :assign_min_value, as: 'assignMinValue', class: Google::Apis::DatamigrationV1::Empty, decorator: Google::Apis::DatamigrationV1::Empty::Representation
      
          property :assign_null, as: 'assignNull', class: Google::Apis::DatamigrationV1::Empty, decorator: Google::Apis::DatamigrationV1::Empty::Representation
      
          property :assign_specific_value, as: 'assignSpecificValue', class: Google::Apis::DatamigrationV1::AssignSpecificValue, decorator: Google::Apis::DatamigrationV1::AssignSpecificValue::Representation
      
          property :double_comparison, as: 'doubleComparison', class: Google::Apis::DatamigrationV1::DoubleComparisonFilter, decorator: Google::Apis::DatamigrationV1::DoubleComparisonFilter::Representation
      
          property :int_comparison, as: 'intComparison', class: Google::Apis::DatamigrationV1::IntComparisonFilter, decorator: Google::Apis::DatamigrationV1::IntComparisonFilter::Representation
      
          property :is_null, as: 'isNull', class: Google::Apis::DatamigrationV1::Empty, decorator: Google::Apis::DatamigrationV1::Empty::Representation
      
          property :round_scale, as: 'roundScale', class: Google::Apis::DatamigrationV1::RoundToScale, decorator: Google::Apis::DatamigrationV1::RoundToScale::Representation
      
          property :value_list, as: 'valueList', class: Google::Apis::DatamigrationV1::ValueListFilter, decorator: Google::Apis::DatamigrationV1::ValueListFilter::Representation
      
        end
      end
      
      class VerifyMigrationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migration_job, as: 'migrationJob', class: Google::Apis::DatamigrationV1::MigrationJob, decorator: Google::Apis::DatamigrationV1::MigrationJob::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class ViewEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :constraints, as: 'constraints', class: Google::Apis::DatamigrationV1::ConstraintEntity, decorator: Google::Apis::DatamigrationV1::ConstraintEntity::Representation
      
          hash :custom_features, as: 'customFeatures'
          property :sql_code, as: 'sqlCode'
        end
      end
      
      class VmCreationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subnet, as: 'subnet'
          property :vm_machine_type, as: 'vmMachineType'
          property :vm_zone, as: 'vmZone'
        end
      end
      
      class VmSelectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vm_zone, as: 'vmZone'
        end
      end
      
      class VpcPeeringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subnet, as: 'subnet'
          property :vpc_name, as: 'vpcName'
        end
      end
      
      class VpcPeeringConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vpc, as: 'vpc'
        end
      end
    end
  end
end
