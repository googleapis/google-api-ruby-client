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
    module SpannerV1
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateSessionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateSessionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BeginTransactionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChildLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContextValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateBackupMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateDatabaseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateDatabaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateSessionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Database
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Delete
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DerivedMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiagnosticMessage
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
      
      class EncryptionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteBatchDmlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteBatchDmlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteSqlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetDatabaseDdlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IndexedHotKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IndexedKeyRangeInfos
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyRangeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyRangeInfos
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeySet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatabaseOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatabasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstanceConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListScansResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSessionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalizedString
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricMatrixRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Mutation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OptimizeRestoredDatabaseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialResultSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Partition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionReadRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionedDml
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlanNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrefixNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryPlan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadOnly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadWrite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicaInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreDatabaseEncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreDatabaseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreDatabaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultSetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultSetStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Scan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScanData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Session
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShortRepresentation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Statement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StructType
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
      
      class Transaction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransactionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransactionSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateDatabaseDdlMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateDatabaseDdlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VisualizationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Write
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :database, as: 'database'
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::SpannerV1::EncryptionInfo, decorator: Google::Apis::SpannerV1::EncryptionInfo::Representation
      
          property :expire_time, as: 'expireTime'
          property :name, as: 'name'
          collection :referencing_databases, as: 'referencingDatabases'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :state, as: 'state'
          property :version_time, as: 'versionTime'
        end
      end
      
      class BackupInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :create_time, as: 'createTime'
          property :source_database, as: 'sourceDatabase'
          property :version_time, as: 'versionTime'
        end
      end
      
      class BatchCreateSessionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session_count, as: 'sessionCount'
          property :session_template, as: 'sessionTemplate', class: Google::Apis::SpannerV1::Session, decorator: Google::Apis::SpannerV1::Session::Representation
      
        end
      end
      
      class BatchCreateSessionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :session, as: 'session', class: Google::Apis::SpannerV1::Session, decorator: Google::Apis::SpannerV1::Session::Representation
      
        end
      end
      
      class BeginTransactionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::SpannerV1::TransactionOptions, decorator: Google::Apis::SpannerV1::TransactionOptions::Representation
      
          property :request_options, as: 'requestOptions', class: Google::Apis::SpannerV1::RequestOptions, decorator: Google::Apis::SpannerV1::RequestOptions::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::SpannerV1::Expr, decorator: Google::Apis::SpannerV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class ChildLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :child_index, as: 'childIndex'
          property :type, as: 'type'
          property :variable, as: 'variable'
        end
      end
      
      class CommitRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mutations, as: 'mutations', class: Google::Apis::SpannerV1::Mutation, decorator: Google::Apis::SpannerV1::Mutation::Representation
      
          property :request_options, as: 'requestOptions', class: Google::Apis::SpannerV1::RequestOptions, decorator: Google::Apis::SpannerV1::RequestOptions::Representation
      
          property :return_commit_stats, as: 'returnCommitStats'
          property :single_use_transaction, as: 'singleUseTransaction', class: Google::Apis::SpannerV1::TransactionOptions, decorator: Google::Apis::SpannerV1::TransactionOptions::Representation
      
          property :transaction_id, :base64 => true, as: 'transactionId'
        end
      end
      
      class CommitResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_stats, as: 'commitStats', class: Google::Apis::SpannerV1::CommitStats, decorator: Google::Apis::SpannerV1::CommitStats::Representation
      
          property :commit_timestamp, as: 'commitTimestamp'
        end
      end
      
      class CommitStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mutation_count, :numeric_string => true, as: 'mutationCount'
        end
      end
      
      class ContextValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
          property :severity, as: 'severity'
          property :unit, as: 'unit'
          property :value, as: 'value'
        end
      end
      
      class CreateBackupMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_time, as: 'cancelTime'
          property :database, as: 'database'
          property :name, as: 'name'
          property :progress, as: 'progress', class: Google::Apis::SpannerV1::OperationProgress, decorator: Google::Apis::SpannerV1::OperationProgress::Representation
      
        end
      end
      
      class CreateDatabaseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
        end
      end
      
      class CreateDatabaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_statement, as: 'createStatement'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::SpannerV1::EncryptionConfig, decorator: Google::Apis::SpannerV1::EncryptionConfig::Representation
      
          collection :extra_statements, as: 'extraStatements'
        end
      end
      
      class CreateInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_time, as: 'cancelTime'
          property :end_time, as: 'endTime'
          property :instance, as: 'instance', class: Google::Apis::SpannerV1::Instance, decorator: Google::Apis::SpannerV1::Instance::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class CreateInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::SpannerV1::Instance, decorator: Google::Apis::SpannerV1::Instance::Representation
      
          property :instance_id, as: 'instanceId'
        end
      end
      
      class CreateSessionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session, as: 'session', class: Google::Apis::SpannerV1::Session, decorator: Google::Apis::SpannerV1::Session::Representation
      
        end
      end
      
      class Database
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :default_leader, as: 'defaultLeader'
          property :earliest_version_time, as: 'earliestVersionTime'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::SpannerV1::EncryptionConfig, decorator: Google::Apis::SpannerV1::EncryptionConfig::Representation
      
          collection :encryption_info, as: 'encryptionInfo', class: Google::Apis::SpannerV1::EncryptionInfo, decorator: Google::Apis::SpannerV1::EncryptionInfo::Representation
      
          property :name, as: 'name'
          property :restore_info, as: 'restoreInfo', class: Google::Apis::SpannerV1::RestoreInfo, decorator: Google::Apis::SpannerV1::RestoreInfo::Representation
      
          property :state, as: 'state'
          property :version_retention_period, as: 'versionRetentionPeriod'
        end
      end
      
      class Delete
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_set, as: 'keySet', class: Google::Apis::SpannerV1::KeySet, decorator: Google::Apis::SpannerV1::KeySet::Representation
      
          property :table, as: 'table'
        end
      end
      
      class DerivedMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :denominator, as: 'denominator', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
          property :numerator, as: 'numerator', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
        end
      end
      
      class DiagnosticMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info, as: 'info', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
          property :metric, as: 'metric', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
          property :metric_specific, as: 'metricSpecific'
          property :severity, as: 'severity'
          property :short_message, as: 'shortMessage', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
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
      
      class EncryptionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_status, as: 'encryptionStatus', class: Google::Apis::SpannerV1::Status, decorator: Google::Apis::SpannerV1::Status::Representation
      
          property :encryption_type, as: 'encryptionType'
          property :kms_key_version, as: 'kmsKeyVersion'
        end
      end
      
      class ExecuteBatchDmlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_options, as: 'requestOptions', class: Google::Apis::SpannerV1::RequestOptions, decorator: Google::Apis::SpannerV1::RequestOptions::Representation
      
          property :seqno, :numeric_string => true, as: 'seqno'
          collection :statements, as: 'statements', class: Google::Apis::SpannerV1::Statement, decorator: Google::Apis::SpannerV1::Statement::Representation
      
          property :transaction, as: 'transaction', class: Google::Apis::SpannerV1::TransactionSelector, decorator: Google::Apis::SpannerV1::TransactionSelector::Representation
      
        end
      end
      
      class ExecuteBatchDmlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :result_sets, as: 'resultSets', class: Google::Apis::SpannerV1::ResultSet, decorator: Google::Apis::SpannerV1::ResultSet::Representation
      
          property :status, as: 'status', class: Google::Apis::SpannerV1::Status, decorator: Google::Apis::SpannerV1::Status::Representation
      
        end
      end
      
      class ExecuteSqlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :param_types, as: 'paramTypes', class: Google::Apis::SpannerV1::Type, decorator: Google::Apis::SpannerV1::Type::Representation
      
          hash :params, as: 'params'
          property :partition_token, :base64 => true, as: 'partitionToken'
          property :query_mode, as: 'queryMode'
          property :query_options, as: 'queryOptions', class: Google::Apis::SpannerV1::QueryOptions, decorator: Google::Apis::SpannerV1::QueryOptions::Representation
      
          property :request_options, as: 'requestOptions', class: Google::Apis::SpannerV1::RequestOptions, decorator: Google::Apis::SpannerV1::RequestOptions::Representation
      
          property :resume_token, :base64 => true, as: 'resumeToken'
          property :seqno, :numeric_string => true, as: 'seqno'
          property :sql, as: 'sql'
          property :transaction, as: 'transaction', class: Google::Apis::SpannerV1::TransactionSelector, decorator: Google::Apis::SpannerV1::TransactionSelector::Representation
      
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
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type', class: Google::Apis::SpannerV1::Type, decorator: Google::Apis::SpannerV1::Type::Representation
      
        end
      end
      
      class GetDatabaseDdlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :statements, as: 'statements'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::SpannerV1::GetPolicyOptions, decorator: Google::Apis::SpannerV1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class IndexedHotKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :sparse_hot_keys, as: 'sparseHotKeys'
        end
      end
      
      class IndexedKeyRangeInfos
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :key_range_infos, as: 'keyRangeInfos', class: Google::Apis::SpannerV1::KeyRangeInfos, decorator: Google::Apis::SpannerV1::KeyRangeInfos::Representation
      
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config'
          property :display_name, as: 'displayName'
          collection :endpoint_uris, as: 'endpointUris'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :node_count, as: 'nodeCount'
          property :processing_units, as: 'processingUnits'
          property :state, as: 'state'
        end
      end
      
      class InstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :leader_options, as: 'leaderOptions'
          property :name, as: 'name'
          collection :replicas, as: 'replicas', class: Google::Apis::SpannerV1::ReplicaInfo, decorator: Google::Apis::SpannerV1::ReplicaInfo::Representation
      
        end
      end
      
      class KeyRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :end_closed, as: 'endClosed'
          collection :end_open, as: 'endOpen'
          collection :start_closed, as: 'startClosed'
          collection :start_open, as: 'startOpen'
        end
      end
      
      class KeyRangeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :context_values, as: 'contextValues', class: Google::Apis::SpannerV1::ContextValue, decorator: Google::Apis::SpannerV1::ContextValue::Representation
      
          property :end_key_index, as: 'endKeyIndex'
          property :info, as: 'info', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
          property :keys_count, :numeric_string => true, as: 'keysCount'
          property :metric, as: 'metric', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
          property :start_key_index, as: 'startKeyIndex'
          property :time_offset, as: 'timeOffset'
          property :unit, as: 'unit', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
          property :value, as: 'value'
        end
      end
      
      class KeyRangeInfos
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :infos, as: 'infos', class: Google::Apis::SpannerV1::KeyRangeInfo, decorator: Google::Apis::SpannerV1::KeyRangeInfo::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class KeySet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all, as: 'all'
          collection :keys, as: 'keys', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          collection :ranges, as: 'ranges', class: Google::Apis::SpannerV1::KeyRange, decorator: Google::Apis::SpannerV1::KeyRange::Representation
      
        end
      end
      
      class ListBackupOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::SpannerV1::Operation, decorator: Google::Apis::SpannerV1::Operation::Representation
      
        end
      end
      
      class ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::SpannerV1::Backup, decorator: Google::Apis::SpannerV1::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDatabaseOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::SpannerV1::Operation, decorator: Google::Apis::SpannerV1::Operation::Representation
      
        end
      end
      
      class ListDatabasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :databases, as: 'databases', class: Google::Apis::SpannerV1::Database, decorator: Google::Apis::SpannerV1::Database::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInstanceConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instance_configs, as: 'instanceConfigs', class: Google::Apis::SpannerV1::InstanceConfig, decorator: Google::Apis::SpannerV1::InstanceConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::SpannerV1::Instance, decorator: Google::Apis::SpannerV1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::SpannerV1::Operation, decorator: Google::Apis::SpannerV1::Operation::Representation
      
        end
      end
      
      class ListScansResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :scans, as: 'scans', class: Google::Apis::SpannerV1::Scan, decorator: Google::Apis::SpannerV1::Scan::Representation
      
        end
      end
      
      class ListSessionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sessions, as: 'sessions', class: Google::Apis::SpannerV1::Session, decorator: Google::Apis::SpannerV1::Session::Representation
      
        end
      end
      
      class LocalizedString
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :args, as: 'args'
          property :message, as: 'message'
          property :token, as: 'token'
        end
      end
      
      class Metric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation, as: 'aggregation'
          property :category, as: 'category', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
          property :derived, as: 'derived', class: Google::Apis::SpannerV1::DerivedMetric, decorator: Google::Apis::SpannerV1::DerivedMetric::Representation
      
          property :display_label, as: 'displayLabel', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
          property :has_nonzero_data, as: 'hasNonzeroData'
          property :hot_value, as: 'hotValue'
          hash :indexed_hot_keys, as: 'indexedHotKeys', class: Google::Apis::SpannerV1::IndexedHotKey, decorator: Google::Apis::SpannerV1::IndexedHotKey::Representation
      
          hash :indexed_key_range_infos, as: 'indexedKeyRangeInfos', class: Google::Apis::SpannerV1::IndexedKeyRangeInfos, decorator: Google::Apis::SpannerV1::IndexedKeyRangeInfos::Representation
      
          property :info, as: 'info', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
          property :matrix, as: 'matrix', class: Google::Apis::SpannerV1::MetricMatrix, decorator: Google::Apis::SpannerV1::MetricMatrix::Representation
      
          property :unit, as: 'unit', class: Google::Apis::SpannerV1::LocalizedString, decorator: Google::Apis::SpannerV1::LocalizedString::Representation
      
          property :visible, as: 'visible'
        end
      end
      
      class MetricMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rows, as: 'rows', class: Google::Apis::SpannerV1::MetricMatrixRow, decorator: Google::Apis::SpannerV1::MetricMatrixRow::Representation
      
        end
      end
      
      class MetricMatrixRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cols, as: 'cols'
        end
      end
      
      class Mutation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete, as: 'delete', class: Google::Apis::SpannerV1::Delete, decorator: Google::Apis::SpannerV1::Delete::Representation
      
          property :insert, as: 'insert', class: Google::Apis::SpannerV1::Write, decorator: Google::Apis::SpannerV1::Write::Representation
      
          property :insert_or_update, as: 'insertOrUpdate', class: Google::Apis::SpannerV1::Write, decorator: Google::Apis::SpannerV1::Write::Representation
      
          property :replace, as: 'replace', class: Google::Apis::SpannerV1::Write, decorator: Google::Apis::SpannerV1::Write::Representation
      
          property :update, as: 'update', class: Google::Apis::SpannerV1::Write, decorator: Google::Apis::SpannerV1::Write::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::SpannerV1::Status, decorator: Google::Apis::SpannerV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
        end
      end
      
      class OptimizeRestoredDatabaseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :progress, as: 'progress', class: Google::Apis::SpannerV1::OperationProgress, decorator: Google::Apis::SpannerV1::OperationProgress::Representation
      
        end
      end
      
      class PartialResultSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunked_value, as: 'chunkedValue'
          property :metadata, as: 'metadata', class: Google::Apis::SpannerV1::ResultSetMetadata, decorator: Google::Apis::SpannerV1::ResultSetMetadata::Representation
      
          property :resume_token, :base64 => true, as: 'resumeToken'
          property :stats, as: 'stats', class: Google::Apis::SpannerV1::ResultSetStats, decorator: Google::Apis::SpannerV1::ResultSetStats::Representation
      
          collection :values, as: 'values'
        end
      end
      
      class Partition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_token, :base64 => true, as: 'partitionToken'
        end
      end
      
      class PartitionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_partitions, :numeric_string => true, as: 'maxPartitions'
          property :partition_size_bytes, :numeric_string => true, as: 'partitionSizeBytes'
        end
      end
      
      class PartitionQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :param_types, as: 'paramTypes', class: Google::Apis::SpannerV1::Type, decorator: Google::Apis::SpannerV1::Type::Representation
      
          hash :params, as: 'params'
          property :partition_options, as: 'partitionOptions', class: Google::Apis::SpannerV1::PartitionOptions, decorator: Google::Apis::SpannerV1::PartitionOptions::Representation
      
          property :sql, as: 'sql'
          property :transaction, as: 'transaction', class: Google::Apis::SpannerV1::TransactionSelector, decorator: Google::Apis::SpannerV1::TransactionSelector::Representation
      
        end
      end
      
      class PartitionReadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns'
          property :index, as: 'index'
          property :key_set, as: 'keySet', class: Google::Apis::SpannerV1::KeySet, decorator: Google::Apis::SpannerV1::KeySet::Representation
      
          property :partition_options, as: 'partitionOptions', class: Google::Apis::SpannerV1::PartitionOptions, decorator: Google::Apis::SpannerV1::PartitionOptions::Representation
      
          property :table, as: 'table'
          property :transaction, as: 'transaction', class: Google::Apis::SpannerV1::TransactionSelector, decorator: Google::Apis::SpannerV1::TransactionSelector::Representation
      
        end
      end
      
      class PartitionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :partitions, as: 'partitions', class: Google::Apis::SpannerV1::Partition, decorator: Google::Apis::SpannerV1::Partition::Representation
      
          property :transaction, as: 'transaction', class: Google::Apis::SpannerV1::Transaction, decorator: Google::Apis::SpannerV1::Transaction::Representation
      
        end
      end
      
      class PartitionedDml
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PlanNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :child_links, as: 'childLinks', class: Google::Apis::SpannerV1::ChildLink, decorator: Google::Apis::SpannerV1::ChildLink::Representation
      
          property :display_name, as: 'displayName'
          hash :execution_stats, as: 'executionStats'
          property :index, as: 'index'
          property :kind, as: 'kind'
          hash :metadata, as: 'metadata'
          property :short_representation, as: 'shortRepresentation', class: Google::Apis::SpannerV1::ShortRepresentation, decorator: Google::Apis::SpannerV1::ShortRepresentation::Representation
      
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::SpannerV1::Binding, decorator: Google::Apis::SpannerV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PrefixNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source_node, as: 'dataSourceNode'
          property :depth, as: 'depth'
          property :end_index, as: 'endIndex'
          property :start_index, as: 'startIndex'
          property :word, as: 'word'
        end
      end
      
      class QueryOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :optimizer_statistics_package, as: 'optimizerStatisticsPackage'
          property :optimizer_version, as: 'optimizerVersion'
        end
      end
      
      class QueryPlan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :plan_nodes, as: 'planNodes', class: Google::Apis::SpannerV1::PlanNode, decorator: Google::Apis::SpannerV1::PlanNode::Representation
      
        end
      end
      
      class ReadOnly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_staleness, as: 'exactStaleness'
          property :max_staleness, as: 'maxStaleness'
          property :min_read_timestamp, as: 'minReadTimestamp'
          property :read_timestamp, as: 'readTimestamp'
          property :return_read_timestamp, as: 'returnReadTimestamp'
          property :strong, as: 'strong'
        end
      end
      
      class ReadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns'
          property :index, as: 'index'
          property :key_set, as: 'keySet', class: Google::Apis::SpannerV1::KeySet, decorator: Google::Apis::SpannerV1::KeySet::Representation
      
          property :limit, :numeric_string => true, as: 'limit'
          property :partition_token, :base64 => true, as: 'partitionToken'
          property :request_options, as: 'requestOptions', class: Google::Apis::SpannerV1::RequestOptions, decorator: Google::Apis::SpannerV1::RequestOptions::Representation
      
          property :resume_token, :base64 => true, as: 'resumeToken'
          property :table, as: 'table'
          property :transaction, as: 'transaction', class: Google::Apis::SpannerV1::TransactionSelector, decorator: Google::Apis::SpannerV1::TransactionSelector::Representation
      
        end
      end
      
      class ReadWrite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ReplicaInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_leader_location, as: 'defaultLeaderLocation'
          property :location, as: 'location'
          property :type, as: 'type'
        end
      end
      
      class RequestOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :priority, as: 'priority'
          property :request_tag, as: 'requestTag'
          property :transaction_tag, as: 'transactionTag'
        end
      end
      
      class RestoreDatabaseEncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_type, as: 'encryptionType'
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class RestoreDatabaseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_info, as: 'backupInfo', class: Google::Apis::SpannerV1::BackupInfo, decorator: Google::Apis::SpannerV1::BackupInfo::Representation
      
          property :cancel_time, as: 'cancelTime'
          property :name, as: 'name'
          property :optimize_database_operation_name, as: 'optimizeDatabaseOperationName'
          property :progress, as: 'progress', class: Google::Apis::SpannerV1::OperationProgress, decorator: Google::Apis::SpannerV1::OperationProgress::Representation
      
          property :source_type, as: 'sourceType'
        end
      end
      
      class RestoreDatabaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :database_id, as: 'databaseId'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::SpannerV1::RestoreDatabaseEncryptionConfig, decorator: Google::Apis::SpannerV1::RestoreDatabaseEncryptionConfig::Representation
      
        end
      end
      
      class RestoreInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_info, as: 'backupInfo', class: Google::Apis::SpannerV1::BackupInfo, decorator: Google::Apis::SpannerV1::BackupInfo::Representation
      
          property :source_type, as: 'sourceType'
        end
      end
      
      class ResultSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::SpannerV1::ResultSetMetadata, decorator: Google::Apis::SpannerV1::ResultSetMetadata::Representation
      
          collection :rows, as: 'rows', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :stats, as: 'stats', class: Google::Apis::SpannerV1::ResultSetStats, decorator: Google::Apis::SpannerV1::ResultSetStats::Representation
      
        end
      end
      
      class ResultSetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_type, as: 'rowType', class: Google::Apis::SpannerV1::StructType, decorator: Google::Apis::SpannerV1::StructType::Representation
      
          property :transaction, as: 'transaction', class: Google::Apis::SpannerV1::Transaction, decorator: Google::Apis::SpannerV1::Transaction::Representation
      
        end
      end
      
      class ResultSetStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_plan, as: 'queryPlan', class: Google::Apis::SpannerV1::QueryPlan, decorator: Google::Apis::SpannerV1::QueryPlan::Representation
      
          hash :query_stats, as: 'queryStats'
          property :row_count_exact, :numeric_string => true, as: 'rowCountExact'
          property :row_count_lower_bound, :numeric_string => true, as: 'rowCountLowerBound'
        end
      end
      
      class RollbackRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transaction_id, :base64 => true, as: 'transactionId'
        end
      end
      
      class Scan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :details, as: 'details'
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :scan_data, as: 'scanData', class: Google::Apis::SpannerV1::ScanData, decorator: Google::Apis::SpannerV1::ScanData::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class ScanData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data', class: Google::Apis::SpannerV1::VisualizationData, decorator: Google::Apis::SpannerV1::VisualizationData::Representation
      
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class Session
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approximate_last_use_time, as: 'approximateLastUseTime'
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::SpannerV1::Policy, decorator: Google::Apis::SpannerV1::Policy::Representation
      
        end
      end
      
      class ShortRepresentation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          hash :subqueries, as: 'subqueries'
        end
      end
      
      class Statement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :param_types, as: 'paramTypes', class: Google::Apis::SpannerV1::Type, decorator: Google::Apis::SpannerV1::Type::Representation
      
          hash :params, as: 'params'
          property :sql, as: 'sql'
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
      
      class StructType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::SpannerV1::Field, decorator: Google::Apis::SpannerV1::Field::Representation
      
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
      
      class Transaction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :base64 => true, as: 'id'
          property :read_timestamp, as: 'readTimestamp'
        end
      end
      
      class TransactionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partitioned_dml, as: 'partitionedDml', class: Google::Apis::SpannerV1::PartitionedDml, decorator: Google::Apis::SpannerV1::PartitionedDml::Representation
      
          property :read_only, as: 'readOnly', class: Google::Apis::SpannerV1::ReadOnly, decorator: Google::Apis::SpannerV1::ReadOnly::Representation
      
          property :read_write, as: 'readWrite', class: Google::Apis::SpannerV1::ReadWrite, decorator: Google::Apis::SpannerV1::ReadWrite::Representation
      
        end
      end
      
      class TransactionSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :begin, as: 'begin', class: Google::Apis::SpannerV1::TransactionOptions, decorator: Google::Apis::SpannerV1::TransactionOptions::Representation
      
          property :id, :base64 => true, as: 'id'
          property :single_use, as: 'singleUse', class: Google::Apis::SpannerV1::TransactionOptions, decorator: Google::Apis::SpannerV1::TransactionOptions::Representation
      
        end
      end
      
      class Type
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :array_element_type, as: 'arrayElementType', class: Google::Apis::SpannerV1::Type, decorator: Google::Apis::SpannerV1::Type::Representation
      
          property :code, as: 'code'
          property :struct_type, as: 'structType', class: Google::Apis::SpannerV1::StructType, decorator: Google::Apis::SpannerV1::StructType::Representation
      
        end
      end
      
      class UpdateDatabaseDdlMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :commit_timestamps, as: 'commitTimestamps'
          property :database, as: 'database'
          collection :progress, as: 'progress', class: Google::Apis::SpannerV1::OperationProgress, decorator: Google::Apis::SpannerV1::OperationProgress::Representation
      
          collection :statements, as: 'statements'
          property :throttled, as: 'throttled'
        end
      end
      
      class UpdateDatabaseDdlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
          collection :statements, as: 'statements'
        end
      end
      
      class UpdateInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_time, as: 'cancelTime'
          property :end_time, as: 'endTime'
          property :instance, as: 'instance', class: Google::Apis::SpannerV1::Instance, decorator: Google::Apis::SpannerV1::Instance::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class UpdateInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_mask, as: 'fieldMask'
          property :instance, as: 'instance', class: Google::Apis::SpannerV1::Instance, decorator: Google::Apis::SpannerV1::Instance::Representation
      
        end
      end
      
      class VisualizationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source_end_token, as: 'dataSourceEndToken'
          property :data_source_separator_token, as: 'dataSourceSeparatorToken'
          collection :diagnostic_messages, as: 'diagnosticMessages', class: Google::Apis::SpannerV1::DiagnosticMessage, decorator: Google::Apis::SpannerV1::DiagnosticMessage::Representation
      
          collection :end_key_strings, as: 'endKeyStrings'
          property :has_pii, as: 'hasPii'
          collection :indexed_keys, as: 'indexedKeys'
          property :key_separator, as: 'keySeparator'
          property :key_unit, as: 'keyUnit'
          collection :metrics, as: 'metrics', class: Google::Apis::SpannerV1::Metric, decorator: Google::Apis::SpannerV1::Metric::Representation
      
          collection :prefix_nodes, as: 'prefixNodes', class: Google::Apis::SpannerV1::PrefixNode, decorator: Google::Apis::SpannerV1::PrefixNode::Representation
      
        end
      end
      
      class Write
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns'
          property :table, as: 'table'
          collection :values, as: 'values', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
    end
  end
end
