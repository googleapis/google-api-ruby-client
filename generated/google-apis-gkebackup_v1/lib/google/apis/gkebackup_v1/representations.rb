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
    module GkebackupV1
      
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
      
      class BackupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupPlan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterResourceRestoreScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningCancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupKind
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupPlansResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRestorePlansResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRestoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVolumeBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVolumeRestoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NamespacedName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NamespacedNames
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Namespaces
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Restore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestorePlan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetentionPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubstitutionRule
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
      
      class TransformationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransformationRuleAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VolumeBackup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VolumeRestore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::GkebackupV1::AuditLogConfig, decorator: Google::Apis::GkebackupV1::AuditLogConfig::Representation
      
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
          property :all_namespaces, as: 'allNamespaces'
          property :cluster_metadata, as: 'clusterMetadata', class: Google::Apis::GkebackupV1::ClusterMetadata, decorator: Google::Apis::GkebackupV1::ClusterMetadata::Representation
      
          property :complete_time, as: 'completeTime'
          property :config_backup_size_bytes, :numeric_string => true, as: 'configBackupSizeBytes'
          property :contains_secrets, as: 'containsSecrets'
          property :contains_volume_data, as: 'containsVolumeData'
          property :create_time, as: 'createTime'
          property :delete_lock_days, as: 'deleteLockDays'
          property :delete_lock_expire_time, as: 'deleteLockExpireTime'
          property :description, as: 'description'
          property :encryption_key, as: 'encryptionKey', class: Google::Apis::GkebackupV1::EncryptionKey, decorator: Google::Apis::GkebackupV1::EncryptionKey::Representation
      
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :manual, as: 'manual'
          property :name, as: 'name'
          property :pod_count, as: 'podCount'
          property :resource_count, as: 'resourceCount'
          property :retain_days, as: 'retainDays'
          property :retain_expire_time, as: 'retainExpireTime'
          property :selected_applications, as: 'selectedApplications', class: Google::Apis::GkebackupV1::NamespacedNames, decorator: Google::Apis::GkebackupV1::NamespacedNames::Representation
      
          property :selected_namespaces, as: 'selectedNamespaces', class: Google::Apis::GkebackupV1::Namespaces, decorator: Google::Apis::GkebackupV1::Namespaces::Representation
      
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :state, as: 'state'
          property :state_reason, as: 'stateReason'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :volume_count, as: 'volumeCount'
        end
      end
      
      class BackupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_namespaces, as: 'allNamespaces'
          property :encryption_key, as: 'encryptionKey', class: Google::Apis::GkebackupV1::EncryptionKey, decorator: Google::Apis::GkebackupV1::EncryptionKey::Representation
      
          property :include_secrets, as: 'includeSecrets'
          property :include_volume_data, as: 'includeVolumeData'
          property :selected_applications, as: 'selectedApplications', class: Google::Apis::GkebackupV1::NamespacedNames, decorator: Google::Apis::GkebackupV1::NamespacedNames::Representation
      
          property :selected_namespaces, as: 'selectedNamespaces', class: Google::Apis::GkebackupV1::Namespaces, decorator: Google::Apis::GkebackupV1::Namespaces::Representation
      
        end
      end
      
      class BackupPlan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_config, as: 'backupConfig', class: Google::Apis::GkebackupV1::BackupConfig, decorator: Google::Apis::GkebackupV1::BackupConfig::Representation
      
          property :backup_schedule, as: 'backupSchedule', class: Google::Apis::GkebackupV1::Schedule, decorator: Google::Apis::GkebackupV1::Schedule::Representation
      
          property :cluster, as: 'cluster'
          property :create_time, as: 'createTime'
          property :deactivated, as: 'deactivated'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :protected_pod_count, as: 'protectedPodCount'
          property :retention_policy, as: 'retentionPolicy', class: Google::Apis::GkebackupV1::RetentionPolicy, decorator: Google::Apis::GkebackupV1::RetentionPolicy::Representation
      
          property :state, as: 'state'
          property :state_reason, as: 'stateReason'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::GkebackupV1::Expr, decorator: Google::Apis::GkebackupV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class ClusterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anthos_version, as: 'anthosVersion'
          hash :backup_crd_versions, as: 'backupCrdVersions'
          property :cluster, as: 'cluster'
          property :gke_version, as: 'gkeVersion'
          property :k8s_version, as: 'k8sVersion'
        end
      end
      
      class ClusterResourceRestoreScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_group_kinds, as: 'allGroupKinds'
          collection :excluded_group_kinds, as: 'excludedGroupKinds', class: Google::Apis::GkebackupV1::GroupKind, decorator: Google::Apis::GkebackupV1::GroupKind::Representation
      
          property :no_group_kinds, as: 'noGroupKinds'
          collection :selected_group_kinds, as: 'selectedGroupKinds', class: Google::Apis::GkebackupV1::GroupKind, decorator: Google::Apis::GkebackupV1::GroupKind::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EncryptionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_kms_encryption_key, as: 'gcpKmsEncryptionKey'
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
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::GkebackupV1::GoogleLongrunningOperation, decorator: Google::Apis::GkebackupV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::GkebackupV1::GoogleRpcStatus, decorator: Google::Apis::GkebackupV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class GroupKind
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_group, as: 'resourceGroup'
          property :resource_kind, as: 'resourceKind'
        end
      end
      
      class ListBackupPlansResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backup_plans, as: 'backupPlans', class: Google::Apis::GkebackupV1::BackupPlan, decorator: Google::Apis::GkebackupV1::BackupPlan::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::GkebackupV1::Backup, decorator: Google::Apis::GkebackupV1::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::GkebackupV1::Location, decorator: Google::Apis::GkebackupV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListRestorePlansResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :restore_plans, as: 'restorePlans', class: Google::Apis::GkebackupV1::RestorePlan, decorator: Google::Apis::GkebackupV1::RestorePlan::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRestoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :restores, as: 'restores', class: Google::Apis::GkebackupV1::Restore, decorator: Google::Apis::GkebackupV1::Restore::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListVolumeBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :volume_backups, as: 'volumeBackups', class: Google::Apis::GkebackupV1::VolumeBackup, decorator: Google::Apis::GkebackupV1::VolumeBackup::Representation
      
        end
      end
      
      class ListVolumeRestoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :volume_restores, as: 'volumeRestores', class: Google::Apis::GkebackupV1::VolumeRestore, decorator: Google::Apis::GkebackupV1::VolumeRestore::Representation
      
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
      
      class NamespacedName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :namespace, as: 'namespace'
        end
      end
      
      class NamespacedNames
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :namespaced_names, as: 'namespacedNames', class: Google::Apis::GkebackupV1::NamespacedName, decorator: Google::Apis::GkebackupV1::NamespacedName::Representation
      
        end
      end
      
      class Namespaces
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :namespaces, as: 'namespaces'
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
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::GkebackupV1::AuditConfig, decorator: Google::Apis::GkebackupV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::GkebackupV1::Binding, decorator: Google::Apis::GkebackupV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ResourceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_kinds, as: 'groupKinds', class: Google::Apis::GkebackupV1::GroupKind, decorator: Google::Apis::GkebackupV1::GroupKind::Representation
      
          property :json_path, as: 'jsonPath'
          collection :namespaces, as: 'namespaces'
        end
      end
      
      class Restore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :cluster, as: 'cluster'
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :resources_excluded_count, as: 'resourcesExcludedCount'
          property :resources_failed_count, as: 'resourcesFailedCount'
          property :resources_restored_count, as: 'resourcesRestoredCount'
          property :restore_config, as: 'restoreConfig', class: Google::Apis::GkebackupV1::RestoreConfig, decorator: Google::Apis::GkebackupV1::RestoreConfig::Representation
      
          property :state, as: 'state'
          property :state_reason, as: 'stateReason'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :volumes_restored_count, as: 'volumesRestoredCount'
        end
      end
      
      class RestoreConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_namespaces, as: 'allNamespaces'
          property :cluster_resource_conflict_policy, as: 'clusterResourceConflictPolicy'
          property :cluster_resource_restore_scope, as: 'clusterResourceRestoreScope', class: Google::Apis::GkebackupV1::ClusterResourceRestoreScope, decorator: Google::Apis::GkebackupV1::ClusterResourceRestoreScope::Representation
      
          property :excluded_namespaces, as: 'excludedNamespaces', class: Google::Apis::GkebackupV1::Namespaces, decorator: Google::Apis::GkebackupV1::Namespaces::Representation
      
          property :namespaced_resource_restore_mode, as: 'namespacedResourceRestoreMode'
          property :no_namespaces, as: 'noNamespaces'
          property :selected_applications, as: 'selectedApplications', class: Google::Apis::GkebackupV1::NamespacedNames, decorator: Google::Apis::GkebackupV1::NamespacedNames::Representation
      
          property :selected_namespaces, as: 'selectedNamespaces', class: Google::Apis::GkebackupV1::Namespaces, decorator: Google::Apis::GkebackupV1::Namespaces::Representation
      
          collection :substitution_rules, as: 'substitutionRules', class: Google::Apis::GkebackupV1::SubstitutionRule, decorator: Google::Apis::GkebackupV1::SubstitutionRule::Representation
      
          collection :transformation_rules, as: 'transformationRules', class: Google::Apis::GkebackupV1::TransformationRule, decorator: Google::Apis::GkebackupV1::TransformationRule::Representation
      
          property :volume_data_restore_policy, as: 'volumeDataRestorePolicy'
        end
      end
      
      class RestorePlan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_plan, as: 'backupPlan'
          property :cluster, as: 'cluster'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :restore_config, as: 'restoreConfig', class: Google::Apis::GkebackupV1::RestoreConfig, decorator: Google::Apis::GkebackupV1::RestoreConfig::Representation
      
          property :state, as: 'state'
          property :state_reason, as: 'stateReason'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class RetentionPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_delete_lock_days, as: 'backupDeleteLockDays'
          property :backup_retain_days, as: 'backupRetainDays'
          property :locked, as: 'locked'
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cron_schedule, as: 'cronSchedule'
          property :paused, as: 'paused'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::GkebackupV1::Policy, decorator: Google::Apis::GkebackupV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SubstitutionRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue'
          property :original_value_pattern, as: 'originalValuePattern'
          collection :target_group_kinds, as: 'targetGroupKinds', class: Google::Apis::GkebackupV1::GroupKind, decorator: Google::Apis::GkebackupV1::GroupKind::Representation
      
          property :target_json_path, as: 'targetJsonPath'
          collection :target_namespaces, as: 'targetNamespaces'
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
      
      class TransformationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :field_actions, as: 'fieldActions', class: Google::Apis::GkebackupV1::TransformationRuleAction, decorator: Google::Apis::GkebackupV1::TransformationRuleAction::Representation
      
          property :resource_filter, as: 'resourceFilter', class: Google::Apis::GkebackupV1::ResourceFilter, decorator: Google::Apis::GkebackupV1::ResourceFilter::Representation
      
        end
      end
      
      class TransformationRuleAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :from_path, as: 'fromPath'
          property :op, as: 'op'
          property :path, as: 'path'
          property :value, as: 'value'
        end
      end
      
      class VolumeBackup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :disk_size_bytes, :numeric_string => true, as: 'diskSizeBytes'
          property :etag, as: 'etag'
          property :format, as: 'format'
          property :name, as: 'name'
          property :source_pvc, as: 'sourcePvc', class: Google::Apis::GkebackupV1::NamespacedName, decorator: Google::Apis::GkebackupV1::NamespacedName::Representation
      
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :storage_bytes, :numeric_string => true, as: 'storageBytes'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :volume_backup_handle, as: 'volumeBackupHandle'
        end
      end
      
      class VolumeRestore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :target_pvc, as: 'targetPvc', class: Google::Apis::GkebackupV1::NamespacedName, decorator: Google::Apis::GkebackupV1::NamespacedName::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :volume_backup, as: 'volumeBackup'
          property :volume_handle, as: 'volumeHandle'
          property :volume_type, as: 'volumeType'
        end
      end
    end
  end
end
