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
    module DatabasecenterV1beta
      
      class AdditionalDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Affiliation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregateFleetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregateFleetRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregateIssueStatsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregateIssueStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregateQueryStatsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregateQueryStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutomatedBackupPolicyInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupDrConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupRunInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseResourceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseResourceIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeletionProtectionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeltaDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InefficientQueryInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssueCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssueGroupStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssueStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Label
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Lineage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceRecommendationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OutdatedMinorVersionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryDatabaseResourceGroupsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryDatabaseResourceGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryIssuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryIssuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryStatsInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecommendationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegulatoryStandard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceMaintenanceDenySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceMaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceSuspensionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetentionSettingsInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SccInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Signal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignalFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignalGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignalProductsFilters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignalTypeGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypedValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpcomingMaintenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdditionalDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automated_backup_policy_info, as: 'automatedBackupPolicyInfo', class: Google::Apis::DatabasecenterV1beta::AutomatedBackupPolicyInfo, decorator: Google::Apis::DatabasecenterV1beta::AutomatedBackupPolicyInfo::Representation
      
          property :backup_run_info, as: 'backupRunInfo', class: Google::Apis::DatabasecenterV1beta::BackupRunInfo, decorator: Google::Apis::DatabasecenterV1beta::BackupRunInfo::Representation
      
          property :deletion_protection_info, as: 'deletionProtectionInfo', class: Google::Apis::DatabasecenterV1beta::DeletionProtectionInfo, decorator: Google::Apis::DatabasecenterV1beta::DeletionProtectionInfo::Representation
      
          property :inefficient_query_info, as: 'inefficientQueryInfo', class: Google::Apis::DatabasecenterV1beta::InefficientQueryInfo, decorator: Google::Apis::DatabasecenterV1beta::InefficientQueryInfo::Representation
      
          property :maintenance_recommendation_info, as: 'maintenanceRecommendationInfo', class: Google::Apis::DatabasecenterV1beta::MaintenanceRecommendationInfo, decorator: Google::Apis::DatabasecenterV1beta::MaintenanceRecommendationInfo::Representation
      
          property :outdated_minor_version_info, as: 'outdatedMinorVersionInfo', class: Google::Apis::DatabasecenterV1beta::OutdatedMinorVersionInfo, decorator: Google::Apis::DatabasecenterV1beta::OutdatedMinorVersionInfo::Representation
      
          property :recommendation_info, as: 'recommendationInfo', class: Google::Apis::DatabasecenterV1beta::RecommendationInfo, decorator: Google::Apis::DatabasecenterV1beta::RecommendationInfo::Representation
      
          property :resource_suspension_info, as: 'resourceSuspensionInfo', class: Google::Apis::DatabasecenterV1beta::ResourceSuspensionInfo, decorator: Google::Apis::DatabasecenterV1beta::ResourceSuspensionInfo::Representation
      
          property :scc_info, as: 'sccInfo', class: Google::Apis::DatabasecenterV1beta::SccInfo, decorator: Google::Apis::DatabasecenterV1beta::SccInfo::Representation
      
          property :short_backup_retention_info, as: 'shortBackupRetentionInfo', class: Google::Apis::DatabasecenterV1beta::RetentionSettingsInfo, decorator: Google::Apis::DatabasecenterV1beta::RetentionSettingsInfo::Representation
      
          property :signal_event_time, as: 'signalEventTime'
          property :signal_source, as: 'signalSource'
          property :signal_type, as: 'signalType'
        end
      end
      
      class Affiliation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
          collection :lineages, as: 'lineages', class: Google::Apis::DatabasecenterV1beta::Lineage, decorator: Google::Apis::DatabasecenterV1beta::Lineage::Representation
      
          property :resource_id, as: 'resourceId'
        end
      end
      
      class AggregateFleetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :resource_groups_total_count, as: 'resourceGroupsTotalCount'
          property :resource_total_count, as: 'resourceTotalCount'
          collection :rows, as: 'rows', class: Google::Apis::DatabasecenterV1beta::AggregateFleetRow, decorator: Google::Apis::DatabasecenterV1beta::AggregateFleetRow::Representation
      
          property :total_size, :numeric_string => true, as: 'totalSize'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class AggregateFleetRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delta_details, as: 'deltaDetails', class: Google::Apis::DatabasecenterV1beta::DeltaDetails, decorator: Google::Apis::DatabasecenterV1beta::DeltaDetails::Representation
      
          collection :dimension, as: 'dimension', class: Google::Apis::DatabasecenterV1beta::Dimension, decorator: Google::Apis::DatabasecenterV1beta::Dimension::Representation
      
          property :resource_groups_count, as: 'resourceGroupsCount'
          property :resources_count, as: 'resourcesCount'
        end
      end
      
      class AggregateIssueStatsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baseline_date, as: 'baselineDate', class: Google::Apis::DatabasecenterV1beta::Date, decorator: Google::Apis::DatabasecenterV1beta::Date::Representation
      
          property :filter, as: 'filter'
          property :parent, as: 'parent'
          collection :signal_type_groups, as: 'signalTypeGroups', class: Google::Apis::DatabasecenterV1beta::SignalTypeGroup, decorator: Google::Apis::DatabasecenterV1beta::SignalTypeGroup::Representation
      
        end
      end
      
      class AggregateIssueStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issue_group_stats, as: 'issueGroupStats', class: Google::Apis::DatabasecenterV1beta::IssueGroupStats, decorator: Google::Apis::DatabasecenterV1beta::IssueGroupStats::Representation
      
          property :total_resource_groups_count, as: 'totalResourceGroupsCount'
          property :total_resources_count, as: 'totalResourcesCount'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class AggregateQueryStatsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class AggregateQueryStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :query_stats, as: 'queryStats', class: Google::Apis::DatabasecenterV1beta::QueryStatsInfo, decorator: Google::Apis::DatabasecenterV1beta::QueryStatsInfo::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class AutomatedBackupPolicyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_enabled, as: 'isEnabled'
          property :sub_resource, as: 'subResource', class: Google::Apis::DatabasecenterV1beta::SubResource, decorator: Google::Apis::DatabasecenterV1beta::SubResource::Representation
      
        end
      end
      
      class BackupDrConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backupdr_managed, as: 'backupdrManaged'
        end
      end
      
      class BackupRunInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :error_message, as: 'errorMessage'
          property :operation_error_type, as: 'operationErrorType'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :sub_resource, as: 'subResource', class: Google::Apis::DatabasecenterV1beta::SubResource, decorator: Google::Apis::DatabasecenterV1beta::SubResource::Representation
      
        end
      end
      
      class DatabaseResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :affiliations, as: 'affiliations', class: Google::Apis::DatabasecenterV1beta::Affiliation, decorator: Google::Apis::DatabasecenterV1beta::Affiliation::Representation
      
          property :backupdr_config, as: 'backupdrConfig', class: Google::Apis::DatabasecenterV1beta::BackupDrConfig, decorator: Google::Apis::DatabasecenterV1beta::BackupDrConfig::Representation
      
          collection :child_resources, as: 'childResources', class: Google::Apis::DatabasecenterV1beta::DatabaseResource, decorator: Google::Apis::DatabasecenterV1beta::DatabaseResource::Representation
      
          property :container, as: 'container'
          property :edition, as: 'edition'
          property :full_resource_name, as: 'fullResourceName'
          collection :labels, as: 'labels', class: Google::Apis::DatabasecenterV1beta::Label, decorator: Google::Apis::DatabasecenterV1beta::Label::Representation
      
          property :location, as: 'location'
          property :machine_config, as: 'machineConfig', class: Google::Apis::DatabasecenterV1beta::MachineConfig, decorator: Google::Apis::DatabasecenterV1beta::MachineConfig::Representation
      
          property :maintenance_info, as: 'maintenanceInfo', class: Google::Apis::DatabasecenterV1beta::MaintenanceInfo, decorator: Google::Apis::DatabasecenterV1beta::MaintenanceInfo::Representation
      
          property :metrics, as: 'metrics', class: Google::Apis::DatabasecenterV1beta::Metrics, decorator: Google::Apis::DatabasecenterV1beta::Metrics::Representation
      
          property :product, as: 'product', class: Google::Apis::DatabasecenterV1beta::Product, decorator: Google::Apis::DatabasecenterV1beta::Product::Representation
      
          property :resource_category, as: 'resourceCategory'
          property :resource_name, as: 'resourceName'
          property :resource_type, as: 'resourceType'
          collection :signal_groups, as: 'signalGroups', class: Google::Apis::DatabasecenterV1beta::SignalGroup, decorator: Google::Apis::DatabasecenterV1beta::SignalGroup::Representation
      
          property :sub_resource_type, as: 'subResourceType'
          collection :tags, as: 'tags', class: Google::Apis::DatabasecenterV1beta::Tag, decorator: Google::Apis::DatabasecenterV1beta::Tag::Representation
      
        end
      end
      
      class DatabaseResourceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :root_resources, as: 'rootResources', class: Google::Apis::DatabasecenterV1beta::DatabaseResource, decorator: Google::Apis::DatabasecenterV1beta::DatabaseResource::Representation
      
          collection :signal_groups, as: 'signalGroups', class: Google::Apis::DatabasecenterV1beta::IssueCount, decorator: Google::Apis::DatabasecenterV1beta::IssueCount::Representation
      
        end
      end
      
      class DatabaseResourceIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::DatabasecenterV1beta::DatabaseResource, decorator: Google::Apis::DatabasecenterV1beta::DatabaseResource::Representation
      
          property :signal, as: 'signal', class: Google::Apis::DatabasecenterV1beta::Signal, decorator: Google::Apis::DatabasecenterV1beta::Signal::Representation
      
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DeletionProtectionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deletion_protection_enabled, as: 'deletionProtectionEnabled'
          property :sub_resource, as: 'subResource', class: Google::Apis::DatabasecenterV1beta::SubResource, decorator: Google::Apis::DatabasecenterV1beta::SubResource::Representation
      
        end
      end
      
      class DeltaDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :decreased_resources, as: 'decreasedResources', class: Google::Apis::DatabasecenterV1beta::ResourceDetails, decorator: Google::Apis::DatabasecenterV1beta::ResourceDetails::Representation
      
          collection :increased_resources, as: 'increasedResources', class: Google::Apis::DatabasecenterV1beta::ResourceDetails, decorator: Google::Apis::DatabasecenterV1beta::ResourceDetails::Representation
      
        end
      end
      
      class Dimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container, as: 'container'
          property :edition, as: 'edition'
          property :has_deny_maintenance_schedules, as: 'hasDenyMaintenanceSchedules'
          property :has_maintenance_schedule, as: 'hasMaintenanceSchedule'
          property :label_key, as: 'labelKey'
          property :label_source, as: 'labelSource'
          property :label_value, as: 'labelValue'
          property :location, as: 'location'
          property :management_type, as: 'managementType'
          property :product_engine, as: 'productEngine'
          property :product_type, as: 'productType'
          property :product_version, as: 'productVersion'
          property :resource_category, as: 'resourceCategory'
          property :resource_type, as: 'resourceType'
          property :sub_resource_type, as: 'subResourceType'
          property :tag_inherited, as: 'tagInherited'
          property :tag_key, as: 'tagKey'
          property :tag_source, as: 'tagSource'
          property :tag_value, as: 'tagValue'
        end
      end
      
      class InefficientQueryInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
          property :impacted_queries_count, :numeric_string => true, as: 'impactedQueriesCount'
          property :sql_index_statement, as: 'sqlIndexStatement'
          property :storage_cost_bytes, :numeric_string => true, as: 'storageCostBytes'
          property :table, as: 'table'
        end
      end
      
      class IssueCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :issue_count, as: 'issueCount'
        end
      end
      
      class IssueGroupStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :healthy_resource_groups_count, as: 'healthyResourceGroupsCount'
          property :healthy_resources_count, as: 'healthyResourcesCount'
          collection :issue_stats, as: 'issueStats', class: Google::Apis::DatabasecenterV1beta::IssueStats, decorator: Google::Apis::DatabasecenterV1beta::IssueStats::Representation
      
          property :resource_groups_count, as: 'resourceGroupsCount'
          property :resources_count, as: 'resourcesCount'
        end
      end
      
      class IssueStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delta_details, as: 'deltaDetails', class: Google::Apis::DatabasecenterV1beta::DeltaDetails, decorator: Google::Apis::DatabasecenterV1beta::DeltaDetails::Representation
      
          property :issue_severity, as: 'issueSeverity'
          property :resource_count, as: 'resourceCount'
          property :signal_type, as: 'signalType'
        end
      end
      
      class Label
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :source, as: 'source'
          property :value, as: 'value'
        end
      end
      
      class Lineage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :process_fqn, as: 'processFqn'
          property :process_type, as: 'processType'
          property :source_fqn, as: 'sourceFqn'
          property :target_fqn, as: 'targetFqn'
        end
      end
      
      class MachineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baseline_slot_count, :numeric_string => true, as: 'baselineSlotCount'
          property :max_reservation_slot_count, :numeric_string => true, as: 'maxReservationSlotCount'
          property :memory_size_bytes, :numeric_string => true, as: 'memorySizeBytes'
          property :shard_count, as: 'shardCount'
          property :vcpu_count, as: 'vcpuCount'
        end
      end
      
      class MaintenanceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_version_release_date, as: 'currentVersionReleaseDate', class: Google::Apis::DatabasecenterV1beta::Date, decorator: Google::Apis::DatabasecenterV1beta::Date::Representation
      
          collection :deny_maintenance_schedules, as: 'denyMaintenanceSchedules', class: Google::Apis::DatabasecenterV1beta::ResourceMaintenanceDenySchedule, decorator: Google::Apis::DatabasecenterV1beta::ResourceMaintenanceDenySchedule::Representation
      
          property :maintenance_schedule, as: 'maintenanceSchedule', class: Google::Apis::DatabasecenterV1beta::ResourceMaintenanceSchedule, decorator: Google::Apis::DatabasecenterV1beta::ResourceMaintenanceSchedule::Representation
      
          property :maintenance_version, as: 'maintenanceVersion'
          collection :possible_failure_reasons, as: 'possibleFailureReasons'
          property :previous_maintenance_version, as: 'previousMaintenanceVersion'
          property :state, as: 'state'
          property :upcoming_maintenance, as: 'upcomingMaintenance', class: Google::Apis::DatabasecenterV1beta::UpcomingMaintenance, decorator: Google::Apis::DatabasecenterV1beta::UpcomingMaintenance::Representation
      
        end
      end
      
      class MaintenanceRecommendationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_maintenance_schedules, as: 'resourceMaintenanceSchedules', class: Google::Apis::DatabasecenterV1beta::ResourceMaintenanceSchedule, decorator: Google::Apis::DatabasecenterV1beta::ResourceMaintenanceSchedule::Representation
      
        end
      end
      
      class MetricData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :observation_time, as: 'observationTime'
          property :value, as: 'value', class: Google::Apis::DatabasecenterV1beta::TypedValue, decorator: Google::Apis::DatabasecenterV1beta::TypedValue::Representation
      
        end
      end
      
      class Metrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_memory_used_bytes, as: 'currentMemoryUsedBytes', class: Google::Apis::DatabasecenterV1beta::MetricData, decorator: Google::Apis::DatabasecenterV1beta::MetricData::Representation
      
          property :current_storage_used_bytes, as: 'currentStorageUsedBytes', class: Google::Apis::DatabasecenterV1beta::MetricData, decorator: Google::Apis::DatabasecenterV1beta::MetricData::Representation
      
          property :node_count, as: 'nodeCount', class: Google::Apis::DatabasecenterV1beta::MetricData, decorator: Google::Apis::DatabasecenterV1beta::MetricData::Representation
      
          property :p95_cpu_utilization, as: 'p95CpuUtilization', class: Google::Apis::DatabasecenterV1beta::MetricData, decorator: Google::Apis::DatabasecenterV1beta::MetricData::Representation
      
          property :p99_cpu_utilization, as: 'p99CpuUtilization', class: Google::Apis::DatabasecenterV1beta::MetricData, decorator: Google::Apis::DatabasecenterV1beta::MetricData::Representation
      
          property :peak_memory_utilization, as: 'peakMemoryUtilization', class: Google::Apis::DatabasecenterV1beta::MetricData, decorator: Google::Apis::DatabasecenterV1beta::MetricData::Representation
      
          property :peak_number_connections, as: 'peakNumberConnections', class: Google::Apis::DatabasecenterV1beta::MetricData, decorator: Google::Apis::DatabasecenterV1beta::MetricData::Representation
      
          property :peak_storage_utilization, as: 'peakStorageUtilization', class: Google::Apis::DatabasecenterV1beta::MetricData, decorator: Google::Apis::DatabasecenterV1beta::MetricData::Representation
      
          property :processing_unit_count, as: 'processingUnitCount', class: Google::Apis::DatabasecenterV1beta::MetricData, decorator: Google::Apis::DatabasecenterV1beta::MetricData::Representation
      
        end
      end
      
      class OutdatedMinorVersionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recommended_minor_version, as: 'recommendedMinorVersion'
        end
      end
      
      class Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
          property :minor_version, as: 'minorVersion'
          property :type, as: 'type'
          property :version, as: 'version'
        end
      end
      
      class QueryDatabaseResourceGroupsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :parent, as: 'parent'
          collection :signal_filters, as: 'signalFilters', class: Google::Apis::DatabasecenterV1beta::SignalFilter, decorator: Google::Apis::DatabasecenterV1beta::SignalFilter::Representation
      
          collection :signal_products_filters, as: 'signalProductsFilters', class: Google::Apis::DatabasecenterV1beta::SignalProductsFilters, decorator: Google::Apis::DatabasecenterV1beta::SignalProductsFilters::Representation
      
          collection :signal_type_groups, as: 'signalTypeGroups', class: Google::Apis::DatabasecenterV1beta::SignalTypeGroup, decorator: Google::Apis::DatabasecenterV1beta::SignalTypeGroup::Representation
      
        end
      end
      
      class QueryDatabaseResourceGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resource_groups, as: 'resourceGroups', class: Google::Apis::DatabasecenterV1beta::DatabaseResourceGroup, decorator: Google::Apis::DatabasecenterV1beta::DatabaseResourceGroup::Representation
      
          property :total_size, :numeric_string => true, as: 'totalSize'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class QueryIssuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :parent, as: 'parent'
          collection :signal_products_filters, as: 'signalProductsFilters', class: Google::Apis::DatabasecenterV1beta::SignalProductsFilters, decorator: Google::Apis::DatabasecenterV1beta::SignalProductsFilters::Representation
      
        end
      end
      
      class QueryIssuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resource_issues, as: 'resourceIssues', class: Google::Apis::DatabasecenterV1beta::DatabaseResourceIssue, decorator: Google::Apis::DatabasecenterV1beta::DatabaseResourceIssue::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class QueryMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avg_cpu_time, as: 'avgCpuTime'
          property :execution_count, :numeric_string => true, as: 'executionCount'
          property :metrics_window, as: 'metricsWindow'
          property :rows_processed, :numeric_string => true, as: 'rowsProcessed'
          property :total_cpu_time, as: 'totalCpuTime'
        end
      end
      
      class QueryProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :products, as: 'products', class: Google::Apis::DatabasecenterV1beta::Product, decorator: Google::Apis::DatabasecenterV1beta::Product::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class QueryStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inefficient_query_info, as: 'inefficientQueryInfo', class: Google::Apis::DatabasecenterV1beta::InefficientQueryInfo, decorator: Google::Apis::DatabasecenterV1beta::InefficientQueryInfo::Representation
      
          property :normalized_query, as: 'normalizedQuery'
          property :query_hash, as: 'queryHash'
          property :query_metrics, as: 'queryMetrics', class: Google::Apis::DatabasecenterV1beta::QueryMetrics, decorator: Google::Apis::DatabasecenterV1beta::QueryMetrics::Representation
      
          collection :resource_ids, as: 'resourceIds', class: Google::Apis::DatabasecenterV1beta::ResourceId, decorator: Google::Apis::DatabasecenterV1beta::ResourceId::Representation
      
          property :resource_type, as: 'resourceType'
        end
      end
      
      class QueryStatsInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregated_query_stats, as: 'aggregatedQueryStats', class: Google::Apis::DatabasecenterV1beta::QueryStats, decorator: Google::Apis::DatabasecenterV1beta::QueryStats::Representation
      
          collection :query_stats, as: 'queryStats', class: Google::Apis::DatabasecenterV1beta::QueryStats, decorator: Google::Apis::DatabasecenterV1beta::QueryStats::Representation
      
        end
      end
      
      class RecommendationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recommender, as: 'recommender'
          property :recommender_id, as: 'recommenderId'
          property :recommender_subtype, as: 'recommenderSubtype'
        end
      end
      
      class RegulatoryStandard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :standard, as: 'standard'
          property :version, as: 'version'
        end
      end
      
      class ResourceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container, as: 'container'
          property :full_resource_name, as: 'fullResourceName'
          property :location, as: 'location'
          property :product, as: 'product', class: Google::Apis::DatabasecenterV1beta::Product, decorator: Google::Apis::DatabasecenterV1beta::Product::Representation
      
        end
      end
      
      class ResourceId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_resource_name, as: 'fullResourceName'
          property :product, as: 'product', class: Google::Apis::DatabasecenterV1beta::Product, decorator: Google::Apis::DatabasecenterV1beta::Product::Representation
      
          property :resource_type, as: 'resourceType'
        end
      end
      
      class ResourceMaintenanceDenySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::DatabasecenterV1beta::Date, decorator: Google::Apis::DatabasecenterV1beta::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::DatabasecenterV1beta::Date, decorator: Google::Apis::DatabasecenterV1beta::Date::Representation
      
          property :time, as: 'time', class: Google::Apis::DatabasecenterV1beta::TimeOfDay, decorator: Google::Apis::DatabasecenterV1beta::TimeOfDay::Representation
      
        end
      end
      
      class ResourceMaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :phase, as: 'phase'
          property :start_time, as: 'startTime', class: Google::Apis::DatabasecenterV1beta::TimeOfDay, decorator: Google::Apis::DatabasecenterV1beta::TimeOfDay::Representation
      
        end
      end
      
      class ResourceSuspensionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_suspended, as: 'resourceSuspended'
          property :suspension_reason, as: 'suspensionReason'
        end
      end
      
      class RetentionSettingsInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration_based_retention, as: 'durationBasedRetention'
          property :quantity_based_retention, as: 'quantityBasedRetention'
          property :sub_resource, as: 'subResource', class: Google::Apis::DatabasecenterV1beta::SubResource, decorator: Google::Apis::DatabasecenterV1beta::SubResource::Representation
      
          property :timestamp_based_retention_time, as: 'timestampBasedRetentionTime'
        end
      end
      
      class SccInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :external_uri, as: 'externalUri'
          collection :regulatory_standards, as: 'regulatoryStandards', class: Google::Apis::DatabasecenterV1beta::RegulatoryStandard, decorator: Google::Apis::DatabasecenterV1beta::RegulatoryStandard::Representation
      
          property :signal, as: 'signal'
        end
      end
      
      class Signal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_details, as: 'additionalDetails', class: Google::Apis::DatabasecenterV1beta::AdditionalDetail, decorator: Google::Apis::DatabasecenterV1beta::AdditionalDetail::Representation
      
          property :issue_create_time, as: 'issueCreateTime'
          property :issue_severity, as: 'issueSeverity'
          property :signal_status, as: 'signalStatus'
          property :signal_type, as: 'signalType'
        end
      end
      
      class SignalFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :signal_status, as: 'signalStatus'
          property :signal_type, as: 'signalType'
        end
      end
      
      class SignalGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :issue_count, as: 'issueCount'
          collection :signals, as: 'signals', class: Google::Apis::DatabasecenterV1beta::Signal, decorator: Google::Apis::DatabasecenterV1beta::Signal::Representation
      
        end
      end
      
      class SignalProductsFilters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :products, as: 'products', class: Google::Apis::DatabasecenterV1beta::Product, decorator: Google::Apis::DatabasecenterV1beta::Product::Representation
      
          property :signal_type, as: 'signalType'
        end
      end
      
      class SignalTypeGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :signal_types, as: 'signalTypes'
        end
      end
      
      class SubResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container, as: 'container'
          property :full_resource_name, as: 'fullResourceName'
          property :product, as: 'product', class: Google::Apis::DatabasecenterV1beta::Product, decorator: Google::Apis::DatabasecenterV1beta::Product::Representation
      
          property :resource_type, as: 'resourceType'
        end
      end
      
      class Tag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inherited, as: 'inherited'
          property :key, as: 'key'
          property :source, as: 'source'
          property :value, as: 'value'
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
      
      class TypedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
        end
      end
      
      class UpcomingMaintenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
    end
  end
end
