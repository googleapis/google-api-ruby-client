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
      
      class AdaptMessageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdaptMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdapterSession
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddSplitPointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddSplitPointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AsymmetricAutoscalingOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingConfigOverrides
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingTargets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupInstancePartition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupScheduleSpec
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
      
      class BatchWriteRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchWriteResponse
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
      
      class ChangeQuorumMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChangeQuorumRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChangeStreamRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChildLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ColumnMetadata
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
      
      class CopyBackupEncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CopyBackupMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CopyBackupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateBackupEncryptionConfig
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
      
      class CreateInstanceConfigMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstanceConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstancePartitionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstancePartitionRequest
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
      
      class CrontabSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataChangeRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Database
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseMoveConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseRole
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DdlStatementActionInfo
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
      
      class DirectedReadOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DualRegionQuorum
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
      
      class ExcludeReplicas
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
      
      class FreeInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FullBackupSpec
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
      
      class HeartbeatRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IncludeReplicas
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IncrementalBackupSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IndexAdvice
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
      
      class InstanceEncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceOperationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancePartition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceReplicaSelection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Key
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
      
      class ListBackupSchedulesResponse
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
      
      class ListDatabaseRolesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatabasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstanceConfigOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstanceConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancePartitionOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancePartitionsResponse
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
      
      class Mod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveInEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveOutEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiplexedSessionPrecommitToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Mutation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MutationGroup
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
      
      class PartitionEndRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionEventRecord
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
      
      class PartitionStartRecord
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
      
      class QueryAdvisorResult
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
      
      class QuorumInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuorumType
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
      
      class ReplicaComputeCapacity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicaInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicaSelection
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
      
      class SingleRegionQuorum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SplitPoints
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
      
      class UpdateDatabaseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateDatabaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstanceConfigMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstanceConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstancePartitionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstancePartitionRequest
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
      
      class AdaptMessageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attachments, as: 'attachments'
          property :payload, :base64 => true, as: 'payload'
          property :protocol, as: 'protocol'
        end
      end
      
      class AdaptMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last, as: 'last'
          property :payload, :base64 => true, as: 'payload'
          hash :state_updates, as: 'stateUpdates'
        end
      end
      
      class AdapterSession
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class AddSplitPointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :initiator, as: 'initiator'
          collection :split_points, as: 'splitPoints', class: Google::Apis::SpannerV1::SplitPoints, decorator: Google::Apis::SpannerV1::SplitPoints::Representation
      
        end
      end
      
      class AddSplitPointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AsymmetricAutoscalingOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :overrides, as: 'overrides', class: Google::Apis::SpannerV1::AutoscalingConfigOverrides, decorator: Google::Apis::SpannerV1::AutoscalingConfigOverrides::Representation
      
          property :replica_selection, as: 'replicaSelection', class: Google::Apis::SpannerV1::InstanceReplicaSelection, decorator: Google::Apis::SpannerV1::InstanceReplicaSelection::Representation
      
        end
      end
      
      class AutoscalingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :asymmetric_autoscaling_options, as: 'asymmetricAutoscalingOptions', class: Google::Apis::SpannerV1::AsymmetricAutoscalingOption, decorator: Google::Apis::SpannerV1::AsymmetricAutoscalingOption::Representation
      
          property :autoscaling_limits, as: 'autoscalingLimits', class: Google::Apis::SpannerV1::AutoscalingLimits, decorator: Google::Apis::SpannerV1::AutoscalingLimits::Representation
      
          property :autoscaling_targets, as: 'autoscalingTargets', class: Google::Apis::SpannerV1::AutoscalingTargets, decorator: Google::Apis::SpannerV1::AutoscalingTargets::Representation
      
        end
      end
      
      class AutoscalingConfigOverrides
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling_limits, as: 'autoscalingLimits', class: Google::Apis::SpannerV1::AutoscalingLimits, decorator: Google::Apis::SpannerV1::AutoscalingLimits::Representation
      
          property :autoscaling_target_high_priority_cpu_utilization_percent, as: 'autoscalingTargetHighPriorityCpuUtilizationPercent'
        end
      end
      
      class AutoscalingLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_nodes, as: 'maxNodes'
          property :max_processing_units, as: 'maxProcessingUnits'
          property :min_nodes, as: 'minNodes'
          property :min_processing_units, as: 'minProcessingUnits'
        end
      end
      
      class AutoscalingTargets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high_priority_cpu_utilization_percent, as: 'highPriorityCpuUtilizationPercent'
          property :storage_utilization_percent, as: 'storageUtilizationPercent'
        end
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_schedules, as: 'backupSchedules'
          property :create_time, as: 'createTime'
          property :database, as: 'database'
          property :database_dialect, as: 'databaseDialect'
          property :encryption_info, as: 'encryptionInfo', class: Google::Apis::SpannerV1::EncryptionInfo, decorator: Google::Apis::SpannerV1::EncryptionInfo::Representation
      
          collection :encryption_information, as: 'encryptionInformation', class: Google::Apis::SpannerV1::EncryptionInfo, decorator: Google::Apis::SpannerV1::EncryptionInfo::Representation
      
          property :exclusive_size_bytes, :numeric_string => true, as: 'exclusiveSizeBytes'
          property :expire_time, as: 'expireTime'
          property :freeable_size_bytes, :numeric_string => true, as: 'freeableSizeBytes'
          property :incremental_backup_chain_id, as: 'incrementalBackupChainId'
          collection :instance_partitions, as: 'instancePartitions', class: Google::Apis::SpannerV1::BackupInstancePartition, decorator: Google::Apis::SpannerV1::BackupInstancePartition::Representation
      
          property :max_expire_time, as: 'maxExpireTime'
          property :name, as: 'name'
          property :oldest_version_time, as: 'oldestVersionTime'
          collection :referencing_backups, as: 'referencingBackups'
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
      
      class BackupInstancePartition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_partition, as: 'instancePartition'
        end
      end
      
      class BackupSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::SpannerV1::CreateBackupEncryptionConfig, decorator: Google::Apis::SpannerV1::CreateBackupEncryptionConfig::Representation
      
          property :full_backup_spec, as: 'fullBackupSpec', class: Google::Apis::SpannerV1::FullBackupSpec, decorator: Google::Apis::SpannerV1::FullBackupSpec::Representation
      
          property :incremental_backup_spec, as: 'incrementalBackupSpec', class: Google::Apis::SpannerV1::IncrementalBackupSpec, decorator: Google::Apis::SpannerV1::IncrementalBackupSpec::Representation
      
          property :name, as: 'name'
          property :retention_duration, as: 'retentionDuration'
          property :spec, as: 'spec', class: Google::Apis::SpannerV1::BackupScheduleSpec, decorator: Google::Apis::SpannerV1::BackupScheduleSpec::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class BackupScheduleSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cron_spec, as: 'cronSpec', class: Google::Apis::SpannerV1::CrontabSpec, decorator: Google::Apis::SpannerV1::CrontabSpec::Representation
      
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
      
      class BatchWriteRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude_txn_from_change_streams, as: 'excludeTxnFromChangeStreams'
          collection :mutation_groups, as: 'mutationGroups', class: Google::Apis::SpannerV1::MutationGroup, decorator: Google::Apis::SpannerV1::MutationGroup::Representation
      
          property :request_options, as: 'requestOptions', class: Google::Apis::SpannerV1::RequestOptions, decorator: Google::Apis::SpannerV1::RequestOptions::Representation
      
        end
      end
      
      class BatchWriteResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_timestamp, as: 'commitTimestamp'
          collection :indexes, as: 'indexes'
          property :status, as: 'status', class: Google::Apis::SpannerV1::Status, decorator: Google::Apis::SpannerV1::Status::Representation
      
        end
      end
      
      class BeginTransactionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mutation_key, as: 'mutationKey', class: Google::Apis::SpannerV1::Mutation, decorator: Google::Apis::SpannerV1::Mutation::Representation
      
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
      
      class ChangeQuorumMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :request, as: 'request', class: Google::Apis::SpannerV1::ChangeQuorumRequest, decorator: Google::Apis::SpannerV1::ChangeQuorumRequest::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class ChangeQuorumRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :quorum_type, as: 'quorumType', class: Google::Apis::SpannerV1::QuorumType, decorator: Google::Apis::SpannerV1::QuorumType::Representation
      
        end
      end
      
      class ChangeStreamRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_change_record, as: 'dataChangeRecord', class: Google::Apis::SpannerV1::DataChangeRecord, decorator: Google::Apis::SpannerV1::DataChangeRecord::Representation
      
          property :heartbeat_record, as: 'heartbeatRecord', class: Google::Apis::SpannerV1::HeartbeatRecord, decorator: Google::Apis::SpannerV1::HeartbeatRecord::Representation
      
          property :partition_end_record, as: 'partitionEndRecord', class: Google::Apis::SpannerV1::PartitionEndRecord, decorator: Google::Apis::SpannerV1::PartitionEndRecord::Representation
      
          property :partition_event_record, as: 'partitionEventRecord', class: Google::Apis::SpannerV1::PartitionEventRecord, decorator: Google::Apis::SpannerV1::PartitionEventRecord::Representation
      
          property :partition_start_record, as: 'partitionStartRecord', class: Google::Apis::SpannerV1::PartitionStartRecord, decorator: Google::Apis::SpannerV1::PartitionStartRecord::Representation
      
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
      
      class ClientContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ColumnMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_primary_key, as: 'isPrimaryKey'
          property :name, as: 'name'
          property :ordinal_position, :numeric_string => true, as: 'ordinalPosition'
          property :type, as: 'type', class: Google::Apis::SpannerV1::Type, decorator: Google::Apis::SpannerV1::Type::Representation
      
        end
      end
      
      class CommitRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_commit_delay, as: 'maxCommitDelay'
          collection :mutations, as: 'mutations', class: Google::Apis::SpannerV1::Mutation, decorator: Google::Apis::SpannerV1::Mutation::Representation
      
          property :precommit_token, as: 'precommitToken', class: Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken, decorator: Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken::Representation
      
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
          property :precommit_token, as: 'precommitToken', class: Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken, decorator: Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken::Representation
      
          property :snapshot_timestamp, as: 'snapshotTimestamp'
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
      
      class CopyBackupEncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_type, as: 'encryptionType'
          property :kms_key_name, as: 'kmsKeyName'
          collection :kms_key_names, as: 'kmsKeyNames'
        end
      end
      
      class CopyBackupMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_time, as: 'cancelTime'
          property :name, as: 'name'
          property :progress, as: 'progress', class: Google::Apis::SpannerV1::OperationProgress, decorator: Google::Apis::SpannerV1::OperationProgress::Representation
      
          property :source_backup, as: 'sourceBackup'
        end
      end
      
      class CopyBackupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_id, as: 'backupId'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::SpannerV1::CopyBackupEncryptionConfig, decorator: Google::Apis::SpannerV1::CopyBackupEncryptionConfig::Representation
      
          property :expire_time, as: 'expireTime'
          property :source_backup, as: 'sourceBackup'
        end
      end
      
      class CreateBackupEncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_type, as: 'encryptionType'
          property :kms_key_name, as: 'kmsKeyName'
          collection :kms_key_names, as: 'kmsKeyNames'
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
          property :database_dialect, as: 'databaseDialect'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::SpannerV1::EncryptionConfig, decorator: Google::Apis::SpannerV1::EncryptionConfig::Representation
      
          collection :extra_statements, as: 'extraStatements'
          property :proto_descriptors, :base64 => true, as: 'protoDescriptors'
        end
      end
      
      class CreateInstanceConfigMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_time, as: 'cancelTime'
          property :instance_config, as: 'instanceConfig', class: Google::Apis::SpannerV1::InstanceConfig, decorator: Google::Apis::SpannerV1::InstanceConfig::Representation
      
          property :progress, as: 'progress', class: Google::Apis::SpannerV1::InstanceOperationProgress, decorator: Google::Apis::SpannerV1::InstanceOperationProgress::Representation
      
        end
      end
      
      class CreateInstanceConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_config, as: 'instanceConfig', class: Google::Apis::SpannerV1::InstanceConfig, decorator: Google::Apis::SpannerV1::InstanceConfig::Representation
      
          property :instance_config_id, as: 'instanceConfigId'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class CreateInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_time, as: 'cancelTime'
          property :end_time, as: 'endTime'
          property :expected_fulfillment_period, as: 'expectedFulfillmentPeriod'
          property :instance, as: 'instance', class: Google::Apis::SpannerV1::Instance, decorator: Google::Apis::SpannerV1::Instance::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class CreateInstancePartitionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_time, as: 'cancelTime'
          property :end_time, as: 'endTime'
          property :instance_partition, as: 'instancePartition', class: Google::Apis::SpannerV1::InstancePartition, decorator: Google::Apis::SpannerV1::InstancePartition::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class CreateInstancePartitionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_partition, as: 'instancePartition', class: Google::Apis::SpannerV1::InstancePartition, decorator: Google::Apis::SpannerV1::InstancePartition::Representation
      
          property :instance_partition_id, as: 'instancePartitionId'
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
      
      class CrontabSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_window, as: 'creationWindow'
          property :text, as: 'text'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class DataChangeRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :column_metadata, as: 'columnMetadata', class: Google::Apis::SpannerV1::ColumnMetadata, decorator: Google::Apis::SpannerV1::ColumnMetadata::Representation
      
          property :commit_timestamp, as: 'commitTimestamp'
          property :is_last_record_in_transaction_in_partition, as: 'isLastRecordInTransactionInPartition'
          property :is_system_transaction, as: 'isSystemTransaction'
          property :mod_type, as: 'modType'
          collection :mods, as: 'mods', class: Google::Apis::SpannerV1::Mod, decorator: Google::Apis::SpannerV1::Mod::Representation
      
          property :number_of_partitions_in_transaction, as: 'numberOfPartitionsInTransaction'
          property :number_of_records_in_transaction, as: 'numberOfRecordsInTransaction'
          property :record_sequence, as: 'recordSequence'
          property :server_transaction_id, as: 'serverTransactionId'
          property :table, as: 'table'
          property :transaction_tag, as: 'transactionTag'
          property :value_capture_type, as: 'valueCaptureType'
        end
      end
      
      class Database
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :database_dialect, as: 'databaseDialect'
          property :default_leader, as: 'defaultLeader'
          property :earliest_version_time, as: 'earliestVersionTime'
          property :enable_drop_protection, as: 'enableDropProtection'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::SpannerV1::EncryptionConfig, decorator: Google::Apis::SpannerV1::EncryptionConfig::Representation
      
          collection :encryption_info, as: 'encryptionInfo', class: Google::Apis::SpannerV1::EncryptionInfo, decorator: Google::Apis::SpannerV1::EncryptionInfo::Representation
      
          property :name, as: 'name'
          property :quorum_info, as: 'quorumInfo', class: Google::Apis::SpannerV1::QuorumInfo, decorator: Google::Apis::SpannerV1::QuorumInfo::Representation
      
          property :reconciling, as: 'reconciling'
          property :restore_info, as: 'restoreInfo', class: Google::Apis::SpannerV1::RestoreInfo, decorator: Google::Apis::SpannerV1::RestoreInfo::Representation
      
          property :state, as: 'state'
          property :version_retention_period, as: 'versionRetentionPeriod'
        end
      end
      
      class DatabaseMoveConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::SpannerV1::InstanceEncryptionConfig, decorator: Google::Apis::SpannerV1::InstanceEncryptionConfig::Representation
      
        end
      end
      
      class DatabaseRole
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class DdlStatementActionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          collection :entity_names, as: 'entityNames'
          property :entity_type, as: 'entityType'
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
      
      class DirectedReadOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude_replicas, as: 'excludeReplicas', class: Google::Apis::SpannerV1::ExcludeReplicas, decorator: Google::Apis::SpannerV1::ExcludeReplicas::Representation
      
          property :include_replicas, as: 'includeReplicas', class: Google::Apis::SpannerV1::IncludeReplicas, decorator: Google::Apis::SpannerV1::IncludeReplicas::Representation
      
        end
      end
      
      class DualRegionQuorum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          collection :kms_key_names, as: 'kmsKeyNames'
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
      
      class ExcludeReplicas
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :replica_selections, as: 'replicaSelections', class: Google::Apis::SpannerV1::ReplicaSelection, decorator: Google::Apis::SpannerV1::ReplicaSelection::Representation
      
        end
      end
      
      class ExecuteBatchDmlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_statements, as: 'lastStatements'
          property :request_options, as: 'requestOptions', class: Google::Apis::SpannerV1::RequestOptions, decorator: Google::Apis::SpannerV1::RequestOptions::Representation
      
          property :seqno, :numeric_string => true, as: 'seqno'
          collection :statements, as: 'statements', class: Google::Apis::SpannerV1::Statement, decorator: Google::Apis::SpannerV1::Statement::Representation
      
          property :transaction, as: 'transaction', class: Google::Apis::SpannerV1::TransactionSelector, decorator: Google::Apis::SpannerV1::TransactionSelector::Representation
      
        end
      end
      
      class ExecuteBatchDmlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :precommit_token, as: 'precommitToken', class: Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken, decorator: Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken::Representation
      
          collection :result_sets, as: 'resultSets', class: Google::Apis::SpannerV1::ResultSet, decorator: Google::Apis::SpannerV1::ResultSet::Representation
      
          property :status, as: 'status', class: Google::Apis::SpannerV1::Status, decorator: Google::Apis::SpannerV1::Status::Representation
      
        end
      end
      
      class ExecuteSqlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_boost_enabled, as: 'dataBoostEnabled'
          property :directed_read_options, as: 'directedReadOptions', class: Google::Apis::SpannerV1::DirectedReadOptions, decorator: Google::Apis::SpannerV1::DirectedReadOptions::Representation
      
          property :last_statement, as: 'lastStatement'
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
      
      class FreeInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_behavior, as: 'expireBehavior'
          property :expire_time, as: 'expireTime'
          property :upgrade_time, as: 'upgradeTime'
        end
      end
      
      class FullBackupSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GetDatabaseDdlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :proto_descriptors, :base64 => true, as: 'protoDescriptors'
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
      
      class HeartbeatRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timestamp, as: 'timestamp'
        end
      end
      
      class IncludeReplicas
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_failover_disabled, as: 'autoFailoverDisabled'
          collection :replica_selections, as: 'replicaSelections', class: Google::Apis::SpannerV1::ReplicaSelection, decorator: Google::Apis::SpannerV1::ReplicaSelection::Representation
      
        end
      end
      
      class IncrementalBackupSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class IndexAdvice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ddl, as: 'ddl'
          property :improvement_factor, as: 'improvementFactor'
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
          property :autoscaling_config, as: 'autoscalingConfig', class: Google::Apis::SpannerV1::AutoscalingConfig, decorator: Google::Apis::SpannerV1::AutoscalingConfig::Representation
      
          property :config, as: 'config'
          property :create_time, as: 'createTime'
          property :default_backup_schedule_type, as: 'defaultBackupScheduleType'
          property :display_name, as: 'displayName'
          property :edition, as: 'edition'
          collection :endpoint_uris, as: 'endpointUris'
          property :free_instance_metadata, as: 'freeInstanceMetadata', class: Google::Apis::SpannerV1::FreeInstanceMetadata, decorator: Google::Apis::SpannerV1::FreeInstanceMetadata::Representation
      
          property :instance_type, as: 'instanceType'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :node_count, as: 'nodeCount'
          property :processing_units, as: 'processingUnits'
          collection :replica_compute_capacity, as: 'replicaComputeCapacity', class: Google::Apis::SpannerV1::ReplicaComputeCapacity, decorator: Google::Apis::SpannerV1::ReplicaComputeCapacity::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class InstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_config, as: 'baseConfig'
          property :config_type, as: 'configType'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :free_instance_availability, as: 'freeInstanceAvailability'
          hash :labels, as: 'labels'
          collection :leader_options, as: 'leaderOptions'
          property :name, as: 'name'
          collection :optional_replicas, as: 'optionalReplicas', class: Google::Apis::SpannerV1::ReplicaInfo, decorator: Google::Apis::SpannerV1::ReplicaInfo::Representation
      
          property :quorum_type, as: 'quorumType'
          property :reconciling, as: 'reconciling'
          collection :replicas, as: 'replicas', class: Google::Apis::SpannerV1::ReplicaInfo, decorator: Google::Apis::SpannerV1::ReplicaInfo::Representation
      
          property :state, as: 'state'
          property :storage_limit_per_processing_unit, :numeric_string => true, as: 'storageLimitPerProcessingUnit'
        end
      end
      
      class InstanceEncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
          collection :kms_key_names, as: 'kmsKeyNames'
        end
      end
      
      class InstanceOperationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
        end
      end
      
      class InstancePartition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling_config, as: 'autoscalingConfig', class: Google::Apis::SpannerV1::AutoscalingConfig, decorator: Google::Apis::SpannerV1::AutoscalingConfig::Representation
      
          property :config, as: 'config'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :node_count, as: 'nodeCount'
          property :processing_units, as: 'processingUnits'
          collection :referencing_backups, as: 'referencingBackups'
          collection :referencing_databases, as: 'referencingDatabases'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class InstanceReplicaSelection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
        end
      end
      
      class Key
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :key_parts, as: 'keyParts'
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
      
      class ListBackupSchedulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_schedules, as: 'backupSchedules', class: Google::Apis::SpannerV1::BackupSchedule, decorator: Google::Apis::SpannerV1::BackupSchedule::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
      
      class ListDatabaseRolesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :database_roles, as: 'databaseRoles', class: Google::Apis::SpannerV1::DatabaseRole, decorator: Google::Apis::SpannerV1::DatabaseRole::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDatabasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :databases, as: 'databases', class: Google::Apis::SpannerV1::Database, decorator: Google::Apis::SpannerV1::Database::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInstanceConfigOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::SpannerV1::Operation, decorator: Google::Apis::SpannerV1::Operation::Representation
      
        end
      end
      
      class ListInstanceConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instance_configs, as: 'instanceConfigs', class: Google::Apis::SpannerV1::InstanceConfig, decorator: Google::Apis::SpannerV1::InstanceConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInstancePartitionOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::SpannerV1::Operation, decorator: Google::Apis::SpannerV1::Operation::Representation
      
          collection :unreachable_instance_partitions, as: 'unreachableInstancePartitions'
        end
      end
      
      class ListInstancePartitionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instance_partitions, as: 'instancePartitions', class: Google::Apis::SpannerV1::InstancePartition, decorator: Google::Apis::SpannerV1::InstancePartition::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
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
      
          collection :unreachable, as: 'unreachable'
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
      
      class Mod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :keys, as: 'keys', class: Google::Apis::SpannerV1::ModValue, decorator: Google::Apis::SpannerV1::ModValue::Representation
      
          collection :new_values, as: 'newValues', class: Google::Apis::SpannerV1::ModValue, decorator: Google::Apis::SpannerV1::ModValue::Representation
      
          collection :old_values, as: 'oldValues', class: Google::Apis::SpannerV1::ModValue, decorator: Google::Apis::SpannerV1::ModValue::Representation
      
        end
      end
      
      class ModValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_metadata_index, as: 'columnMetadataIndex'
          property :value, as: 'value'
        end
      end
      
      class MoveInEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_partition_token, as: 'sourcePartitionToken'
        end
      end
      
      class MoveInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_config, as: 'targetConfig'
          collection :target_database_move_configs, as: 'targetDatabaseMoveConfigs', class: Google::Apis::SpannerV1::DatabaseMoveConfig, decorator: Google::Apis::SpannerV1::DatabaseMoveConfig::Representation
      
        end
      end
      
      class MoveOutEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_partition_token, as: 'destinationPartitionToken'
        end
      end
      
      class MultiplexedSessionPrecommitToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :precommit_token, :base64 => true, as: 'precommitToken'
          property :seq_num, as: 'seqNum'
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
      
      class MutationGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mutations, as: 'mutations', class: Google::Apis::SpannerV1::Mutation, decorator: Google::Apis::SpannerV1::Mutation::Representation
      
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
          property :last, as: 'last'
          property :metadata, as: 'metadata', class: Google::Apis::SpannerV1::ResultSetMetadata, decorator: Google::Apis::SpannerV1::ResultSetMetadata::Representation
      
          property :precommit_token, as: 'precommitToken', class: Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken, decorator: Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken::Representation
      
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
      
      class PartitionEndRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_timestamp, as: 'endTimestamp'
          property :partition_token, as: 'partitionToken'
          property :record_sequence, as: 'recordSequence'
        end
      end
      
      class PartitionEventRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_timestamp, as: 'commitTimestamp'
          collection :move_in_events, as: 'moveInEvents', class: Google::Apis::SpannerV1::MoveInEvent, decorator: Google::Apis::SpannerV1::MoveInEvent::Representation
      
          collection :move_out_events, as: 'moveOutEvents', class: Google::Apis::SpannerV1::MoveOutEvent, decorator: Google::Apis::SpannerV1::MoveOutEvent::Representation
      
          property :partition_token, as: 'partitionToken'
          property :record_sequence, as: 'recordSequence'
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
      
      class PartitionStartRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :partition_tokens, as: 'partitionTokens'
          property :record_sequence, as: 'recordSequence'
          property :start_timestamp, as: 'startTimestamp'
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
      
      class QueryAdvisorResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :index_advice, as: 'indexAdvice', class: Google::Apis::SpannerV1::IndexAdvice, decorator: Google::Apis::SpannerV1::IndexAdvice::Representation
      
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
      
          property :query_advice, as: 'queryAdvice', class: Google::Apis::SpannerV1::QueryAdvisorResult, decorator: Google::Apis::SpannerV1::QueryAdvisorResult::Representation
      
        end
      end
      
      class QuorumInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :initiator, as: 'initiator'
          property :quorum_type, as: 'quorumType', class: Google::Apis::SpannerV1::QuorumType, decorator: Google::Apis::SpannerV1::QuorumType::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class QuorumType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dual_region, as: 'dualRegion', class: Google::Apis::SpannerV1::DualRegionQuorum, decorator: Google::Apis::SpannerV1::DualRegionQuorum::Representation
      
          property :single_region, as: 'singleRegion', class: Google::Apis::SpannerV1::SingleRegionQuorum, decorator: Google::Apis::SpannerV1::SingleRegionQuorum::Representation
      
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
          property :data_boost_enabled, as: 'dataBoostEnabled'
          property :directed_read_options, as: 'directedReadOptions', class: Google::Apis::SpannerV1::DirectedReadOptions, decorator: Google::Apis::SpannerV1::DirectedReadOptions::Representation
      
          property :index, as: 'index'
          property :key_set, as: 'keySet', class: Google::Apis::SpannerV1::KeySet, decorator: Google::Apis::SpannerV1::KeySet::Representation
      
          property :limit, :numeric_string => true, as: 'limit'
          property :lock_hint, as: 'lockHint'
          property :order_by, as: 'orderBy'
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
          property :multiplexed_session_previous_transaction_id, :base64 => true, as: 'multiplexedSessionPreviousTransactionId'
          property :read_lock_mode, as: 'readLockMode'
        end
      end
      
      class ReplicaComputeCapacity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_count, as: 'nodeCount'
          property :processing_units, as: 'processingUnits'
          property :replica_selection, as: 'replicaSelection', class: Google::Apis::SpannerV1::InstanceReplicaSelection, decorator: Google::Apis::SpannerV1::InstanceReplicaSelection::Representation
      
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
      
      class ReplicaSelection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :type, as: 'type'
        end
      end
      
      class RequestOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_context, as: 'clientContext', class: Google::Apis::SpannerV1::ClientContext, decorator: Google::Apis::SpannerV1::ClientContext::Representation
      
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
          collection :kms_key_names, as: 'kmsKeyNames'
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
      
          property :precommit_token, as: 'precommitToken', class: Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken, decorator: Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken::Representation
      
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
      
          property :undeclared_parameters, as: 'undeclaredParameters', class: Google::Apis::SpannerV1::StructType, decorator: Google::Apis::SpannerV1::StructType::Representation
      
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
          property :creator_role, as: 'creatorRole'
          hash :labels, as: 'labels'
          property :multiplexed, as: 'multiplexed'
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
      
      class SingleRegionQuorum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :serving_location, as: 'servingLocation'
        end
      end
      
      class SplitPoints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          property :index, as: 'index'
          collection :keys, as: 'keys', class: Google::Apis::SpannerV1::Key, decorator: Google::Apis::SpannerV1::Key::Representation
      
          property :table, as: 'table'
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
          property :precommit_token, as: 'precommitToken', class: Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken, decorator: Google::Apis::SpannerV1::MultiplexedSessionPrecommitToken::Representation
      
          property :read_timestamp, as: 'readTimestamp'
        end
      end
      
      class TransactionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude_txn_from_change_streams, as: 'excludeTxnFromChangeStreams'
          property :isolation_level, as: 'isolationLevel'
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
          property :proto_type_fqn, as: 'protoTypeFqn'
          property :struct_type, as: 'structType', class: Google::Apis::SpannerV1::StructType, decorator: Google::Apis::SpannerV1::StructType::Representation
      
          property :type_annotation, as: 'typeAnnotation'
        end
      end
      
      class UpdateDatabaseDdlMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::SpannerV1::DdlStatementActionInfo, decorator: Google::Apis::SpannerV1::DdlStatementActionInfo::Representation
      
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
          property :proto_descriptors, :base64 => true, as: 'protoDescriptors'
          collection :statements, as: 'statements'
        end
      end
      
      class UpdateDatabaseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_time, as: 'cancelTime'
          property :progress, as: 'progress', class: Google::Apis::SpannerV1::OperationProgress, decorator: Google::Apis::SpannerV1::OperationProgress::Representation
      
          property :request, as: 'request', class: Google::Apis::SpannerV1::UpdateDatabaseRequest, decorator: Google::Apis::SpannerV1::UpdateDatabaseRequest::Representation
      
        end
      end
      
      class UpdateDatabaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database', class: Google::Apis::SpannerV1::Database, decorator: Google::Apis::SpannerV1::Database::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateInstanceConfigMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_time, as: 'cancelTime'
          property :instance_config, as: 'instanceConfig', class: Google::Apis::SpannerV1::InstanceConfig, decorator: Google::Apis::SpannerV1::InstanceConfig::Representation
      
          property :progress, as: 'progress', class: Google::Apis::SpannerV1::InstanceOperationProgress, decorator: Google::Apis::SpannerV1::InstanceOperationProgress::Representation
      
        end
      end
      
      class UpdateInstanceConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_config, as: 'instanceConfig', class: Google::Apis::SpannerV1::InstanceConfig, decorator: Google::Apis::SpannerV1::InstanceConfig::Representation
      
          property :update_mask, as: 'updateMask'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class UpdateInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_time, as: 'cancelTime'
          property :end_time, as: 'endTime'
          property :expected_fulfillment_period, as: 'expectedFulfillmentPeriod'
          property :instance, as: 'instance', class: Google::Apis::SpannerV1::Instance, decorator: Google::Apis::SpannerV1::Instance::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class UpdateInstancePartitionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancel_time, as: 'cancelTime'
          property :end_time, as: 'endTime'
          property :instance_partition, as: 'instancePartition', class: Google::Apis::SpannerV1::InstancePartition, decorator: Google::Apis::SpannerV1::InstancePartition::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class UpdateInstancePartitionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_mask, as: 'fieldMask'
          property :instance_partition, as: 'instancePartition', class: Google::Apis::SpannerV1::InstancePartition, decorator: Google::Apis::SpannerV1::InstancePartition::Representation
      
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
