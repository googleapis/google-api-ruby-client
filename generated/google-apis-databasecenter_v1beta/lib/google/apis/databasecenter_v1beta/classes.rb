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
      
      # Details related to signal.
      class AdditionalDetail
        include Google::Apis::Core::Hashable
      
        # Automated backup policy signal info
        # Corresponds to the JSON property `automatedBackupPolicyInfo`
        # @return [Google::Apis::DatabasecenterV1beta::AutomatedBackupPolicyInfo]
        attr_accessor :automated_backup_policy_info
      
        # Metadata about latest backup run state for a database resource.
        # Corresponds to the JSON property `backupRunInfo`
        # @return [Google::Apis::DatabasecenterV1beta::BackupRunInfo]
        attr_accessor :backup_run_info
      
        # Deletion protection signal info for a database resource.
        # Corresponds to the JSON property `deletionProtectionInfo`
        # @return [Google::Apis::DatabasecenterV1beta::DeletionProtectionInfo]
        attr_accessor :deletion_protection_info
      
        # Metadata about inefficient query signal info for a database resource.
        # Corresponds to the JSON property `inefficientQueryInfo`
        # @return [Google::Apis::DatabasecenterV1beta::InefficientQueryInfo]
        attr_accessor :inefficient_query_info
      
        # Info associated with maintenance recommendation.
        # Corresponds to the JSON property `maintenanceRecommendationInfo`
        # @return [Google::Apis::DatabasecenterV1beta::MaintenanceRecommendationInfo]
        attr_accessor :maintenance_recommendation_info
      
        # Info associated with outdated minor version.
        # Corresponds to the JSON property `outdatedMinorVersionInfo`
        # @return [Google::Apis::DatabasecenterV1beta::OutdatedMinorVersionInfo]
        attr_accessor :outdated_minor_version_info
      
        # Info associated with recommendation.
        # Corresponds to the JSON property `recommendationInfo`
        # @return [Google::Apis::DatabasecenterV1beta::RecommendationInfo]
        attr_accessor :recommendation_info
      
        # Resource suspension info for a database resource.
        # Corresponds to the JSON property `resourceSuspensionInfo`
        # @return [Google::Apis::DatabasecenterV1beta::ResourceSuspensionInfo]
        attr_accessor :resource_suspension_info
      
        # Info associated with SCC signals.
        # Corresponds to the JSON property `sccInfo`
        # @return [Google::Apis::DatabasecenterV1beta::SccInfo]
        attr_accessor :scc_info
      
        # Metadata about backup retention settings for a database resource.
        # Corresponds to the JSON property `shortBackupRetentionInfo`
        # @return [Google::Apis::DatabasecenterV1beta::RetentionSettingsInfo]
        attr_accessor :short_backup_retention_info
      
        # Event time when signal was recorded by source service.
        # Corresponds to the JSON property `signalEventTime`
        # @return [String]
        attr_accessor :signal_event_time
      
        # Where the signal is coming from.
        # Corresponds to the JSON property `signalSource`
        # @return [String]
        attr_accessor :signal_source
      
        # Type of the signal.
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automated_backup_policy_info = args[:automated_backup_policy_info] if args.key?(:automated_backup_policy_info)
          @backup_run_info = args[:backup_run_info] if args.key?(:backup_run_info)
          @deletion_protection_info = args[:deletion_protection_info] if args.key?(:deletion_protection_info)
          @inefficient_query_info = args[:inefficient_query_info] if args.key?(:inefficient_query_info)
          @maintenance_recommendation_info = args[:maintenance_recommendation_info] if args.key?(:maintenance_recommendation_info)
          @outdated_minor_version_info = args[:outdated_minor_version_info] if args.key?(:outdated_minor_version_info)
          @recommendation_info = args[:recommendation_info] if args.key?(:recommendation_info)
          @resource_suspension_info = args[:resource_suspension_info] if args.key?(:resource_suspension_info)
          @scc_info = args[:scc_info] if args.key?(:scc_info)
          @short_backup_retention_info = args[:short_backup_retention_info] if args.key?(:short_backup_retention_info)
          @signal_event_time = args[:signal_event_time] if args.key?(:signal_event_time)
          @signal_source = args[:signal_source] if args.key?(:signal_source)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
        end
      end
      
      # Affiliation information of a resource
      class Affiliation
        include Google::Apis::Core::Hashable
      
        # Optional. Full resource name
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Optional. Multiple lineages can be created from a resource. For example, a
        # resource can be replicated to multiple target resources. In this case, there
        # will be multiple lineages for the resource, one for each target resource.
        # Corresponds to the JSON property `lineages`
        # @return [Array<Google::Apis::DatabasecenterV1beta::Lineage>]
        attr_accessor :lineages
      
        # Optional. resource id of affiliated resource
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @lineages = args[:lineages] if args.key?(:lineages)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
        end
      end
      
      # The response message to aggregate a fleet by some group by fields.
      class AggregateFleetResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Count of all resource groups in the fleet. This includes counts from all pages.
        # Corresponds to the JSON property `resourceGroupsTotalCount`
        # @return [Fixnum]
        attr_accessor :resource_groups_total_count
      
        # Count of all resources in the fleet. This includes counts from all pages.
        # Corresponds to the JSON property `resourceTotalCount`
        # @return [Fixnum]
        attr_accessor :resource_total_count
      
        # Represents a row grouped by the fields in the input.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DatabasecenterV1beta::AggregateFleetRow>]
        attr_accessor :rows
      
        # Output only. The total number of rows in the entire list.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        # Unordered list. List of unreachable regions from where data could not be
        # retrieved.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resource_groups_total_count = args[:resource_groups_total_count] if args.key?(:resource_groups_total_count)
          @resource_total_count = args[:resource_total_count] if args.key?(:resource_total_count)
          @rows = args[:rows] if args.key?(:rows)
          @total_size = args[:total_size] if args.key?(:total_size)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Individual row grouped by a particular dimension.
      class AggregateFleetRow
        include Google::Apis::Core::Hashable
      
        # Captures the details of items that have increased or decreased in some bucket
        # when compared to some point in history. It is currently used to capture the
        # delta of resources that have been added or removed in the fleet as well as to
        # capture the resources that have a change in Issue/Signal status.
        # Corresponds to the JSON property `deltaDetails`
        # @return [Google::Apis::DatabasecenterV1beta::DeltaDetails]
        attr_accessor :delta_details
      
        # Group by dimension.
        # Corresponds to the JSON property `dimension`
        # @return [Array<Google::Apis::DatabasecenterV1beta::Dimension>]
        attr_accessor :dimension
      
        # Number of resource groups that have a particular dimension.
        # Corresponds to the JSON property `resourceGroupsCount`
        # @return [Fixnum]
        attr_accessor :resource_groups_count
      
        # Number of resources that have a particular dimension.
        # Corresponds to the JSON property `resourcesCount`
        # @return [Fixnum]
        attr_accessor :resources_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delta_details = args[:delta_details] if args.key?(:delta_details)
          @dimension = args[:dimension] if args.key?(:dimension)
          @resource_groups_count = args[:resource_groups_count] if args.key?(:resource_groups_count)
          @resources_count = args[:resources_count] if args.key?(:resources_count)
        end
      end
      
      # AggregateIssueStatsRequest represents the input to the AggregateIssueStats
      # method.
      class AggregateIssueStatsRequest
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `baselineDate`
        # @return [Google::Apis::DatabasecenterV1beta::Date]
        attr_accessor :baseline_date
      
        # Optional. The expression to filter resources. Supported fields are: `
        # full_resource_name`, `resource_type`, `container`, `product.type`, `product.
        # engine`, `product.version`, `location`, `labels`, `issues`, fields of
        # availability_info, data_protection_info,'resource_name', etc. The expression
        # is a list of zero or more restrictions combined via logical operators `AND`
        # and `OR`. When `AND` and `OR` are both used in the expression, parentheses
        # must be appropriately used to group the combinations. Example: `location="us-
        # east1"` Example: `container="projects/123" OR container="projects/456"`
        # Example: `(container="projects/123" OR container="projects/456") AND location="
        # us-east1"`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. Parent can be a project, a folder, or an organization. The search is
        # limited to the resources within the `scope`. The allowed values are: *
        # projects/`PROJECT_ID` (e.g., "projects/foo-bar") * projects/`PROJECT_NUMBER` (
        # e.g., "projects/12345678") * folders/`FOLDER_NUMBER` (e.g., "folders/1234567")
        # * organizations/`ORGANIZATION_NUMBER` (e.g., "organizations/123456")
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Optional. Lists of signal types that are issues.
        # Corresponds to the JSON property `signalTypeGroups`
        # @return [Array<Google::Apis::DatabasecenterV1beta::SignalTypeGroup>]
        attr_accessor :signal_type_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baseline_date = args[:baseline_date] if args.key?(:baseline_date)
          @filter = args[:filter] if args.key?(:filter)
          @parent = args[:parent] if args.key?(:parent)
          @signal_type_groups = args[:signal_type_groups] if args.key?(:signal_type_groups)
        end
      end
      
      # The response message containing one of more group of relevant health issues
      # for database resources.
      class AggregateIssueStatsResponse
        include Google::Apis::Core::Hashable
      
        # List of issue group stats where each group contains stats for resources having
        # a particular combination of relevant issues.
        # Corresponds to the JSON property `issueGroupStats`
        # @return [Array<Google::Apis::DatabasecenterV1beta::IssueGroupStats>]
        attr_accessor :issue_group_stats
      
        # Total count of the resource filtered in based on the user given filter.
        # Corresponds to the JSON property `totalResourceGroupsCount`
        # @return [Fixnum]
        attr_accessor :total_resource_groups_count
      
        # Total count of the resources filtered in based on the user given filter.
        # Corresponds to the JSON property `totalResourcesCount`
        # @return [Fixnum]
        attr_accessor :total_resources_count
      
        # Unordered list. List of unreachable regions from where data could not be
        # retrieved.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_group_stats = args[:issue_group_stats] if args.key?(:issue_group_stats)
          @total_resource_groups_count = args[:total_resource_groups_count] if args.key?(:total_resource_groups_count)
          @total_resources_count = args[:total_resources_count] if args.key?(:total_resources_count)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # AggregateQueryStatsRequest represents the input to the AggregateQueryStats
      # method.
      class AggregateQueryStatsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The expression to filter resources. Supported fields are: `
        # full_resource_name`, `resource_type`, `container`, `product.type`, `product.
        # engine`, `product.version`, `location`, `labels`, `issues`, fields of
        # availability_info, data_protection_info,'resource_name', etc. The expression
        # is a list of zero or more restrictions combined via logical operators `AND`
        # and `OR`. When `AND` and `OR` are both used in the expression, parentheses
        # must be appropriately used to group the combinations. Example: `location="us-
        # east1"` Example: `container="projects/123" OR container="projects/456"`
        # Example: `(container="projects/123" OR container="projects/456") AND location="
        # us-east1"` Additional specific fields for query stats are: `metric_window`, `
        # query_hash`, `normalized_query`. Example: `metric_window="LAST_ONE_DAY"` (
        # Possible values for `metric_window` are: `LAST_ONE_DAY`, `LAST_ONE_WEEK`, `
        # LAST_TWO_WEEKS`) Example: `query_hash="12345678"` Example: `normalized_query="
        # SELECT * FROM table"`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. The expression to order the results by. Example: `order_by="
        # execution_count"` Example: `order_by="execution_count desc"` Supported order
        # by fields are `execution_count`, `rows_processed`, `total_cpu_time`, `
        # avg_cpu_time`.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Optional. If unspecified, at most 100 query stats will be returned. The
        # maximum value is 1000; values above 1000 will be coerced to 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token, received from a previous `AggregateQueryStatsRequest`
        # call. Provide this to retrieve the subsequent page. All parameters except
        # page_token should match the parameters in the call that provided the page
        # token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # The response message containing relevant query stats for database resources.
      class AggregateQueryStatsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of query stats where each group contains stats for resources having a
        # particular combination of relevant query stats.
        # Corresponds to the JSON property `queryStats`
        # @return [Array<Google::Apis::DatabasecenterV1beta::QueryStatsInfo>]
        attr_accessor :query_stats
      
        # Unordered list. List of unreachable regions from where data could not be
        # retrieved.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @query_stats = args[:query_stats] if args.key?(:query_stats)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Automated backup policy signal info
      class AutomatedBackupPolicyInfo
        include Google::Apis::Core::Hashable
      
        # Is automated policy enabled.
        # Corresponds to the JSON property `isEnabled`
        # @return [Boolean]
        attr_accessor :is_enabled
        alias_method :is_enabled?, :is_enabled
      
        # Sub resource details For Spanner/Bigtable instance certain data protection
        # settings are at sub resource level like database/table. This message is used
        # to capture such sub resource details.
        # Corresponds to the JSON property `subResource`
        # @return [Google::Apis::DatabasecenterV1beta::SubResource]
        attr_accessor :sub_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_enabled = args[:is_enabled] if args.key?(:is_enabled)
          @sub_resource = args[:sub_resource] if args.key?(:sub_resource)
        end
      end
      
      # BackupDRConfig to capture the backup and disaster recovery details of database
      # resource.
      class BackupDrConfig
        include Google::Apis::Core::Hashable
      
        # Indicates if the resource is managed by BackupDR.
        # Corresponds to the JSON property `backupdrManaged`
        # @return [Boolean]
        attr_accessor :backupdr_managed
        alias_method :backupdr_managed?, :backupdr_managed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backupdr_managed = args[:backupdr_managed] if args.key?(:backupdr_managed)
        end
      end
      
      # Metadata about latest backup run state for a database resource.
      class BackupRunInfo
        include Google::Apis::Core::Hashable
      
        # The time the backup operation completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Additional information about the error encountered.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Optional. OperationErrorType to expose specific error when backup operation of
        # database resource failed, that is state is FAILED.
        # Corresponds to the JSON property `operationErrorType`
        # @return [String]
        attr_accessor :operation_error_type
      
        # The time the backup operation started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The state of this run.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Sub resource details For Spanner/Bigtable instance certain data protection
        # settings are at sub resource level like database/table. This message is used
        # to capture such sub resource details.
        # Corresponds to the JSON property `subResource`
        # @return [Google::Apis::DatabasecenterV1beta::SubResource]
        attr_accessor :sub_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error_message = args[:error_message] if args.key?(:error_message)
          @operation_error_type = args[:operation_error_type] if args.key?(:operation_error_type)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @sub_resource = args[:sub_resource] if args.key?(:sub_resource)
        end
      end
      
      # DatabaseResource represents every individually configured database unit
      # representing compute and/or storage.
      class DatabaseResource
        include Google::Apis::Core::Hashable
      
        # Optional. Affiliation details of the resource.
        # Corresponds to the JSON property `affiliations`
        # @return [Array<Google::Apis::DatabasecenterV1beta::Affiliation>]
        attr_accessor :affiliations
      
        # BackupDRConfig to capture the backup and disaster recovery details of database
        # resource.
        # Corresponds to the JSON property `backupdrConfig`
        # @return [Google::Apis::DatabasecenterV1beta::BackupDrConfig]
        attr_accessor :backupdr_config
      
        # List of children associated with a database group.
        # Corresponds to the JSON property `childResources`
        # @return [Array<Google::Apis::DatabasecenterV1beta::DatabaseResource>]
        attr_accessor :child_resources
      
        # Specifies where the resource is created. For Google Cloud resources, it is the
        # full name of the project.
        # Corresponds to the JSON property `container`
        # @return [String]
        attr_accessor :container
      
        # The edition of the resource.
        # Corresponds to the JSON property `edition`
        # @return [String]
        attr_accessor :edition
      
        # The full resource name, based on CAIS resource name format https://cloud.
        # google.com/asset-inventory/docs/resource-name-format Example: `//cloudsql.
        # googleapis.com/projects/project-number/instances/mysql-1` `//cloudsql.
        # googleapis.com/projects/project-number/instances/postgres-1` `//spanner.
        # googleapis.com/projects/project-number/instances/spanner-instance-1` `//
        # alloydb.googleapis.com/projects/project-number/locations/us-central1/clusters/
        # c1` `//alloydb.googleapis.com/projects/project-number/locations/us-central1/
        # clusters/c1/instances/i1`
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Labels applied on the resource. The requirements for labels assigned to Google
        # Cloud resources may be found at https://cloud.google.com/resource-manager/docs/
        # labels-overview#requirements
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::DatabasecenterV1beta::Label>]
        attr_accessor :labels
      
        # The location of the resources. It supports returning only regional locations
        # in Google Cloud. These are of the form: "us-central1", "us-east1", etc. See
        # https://cloud.google.com/about/locations for a list of such regions.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # MachineConfig describes the configuration of a machine specific to a Database
        # Resource.
        # Corresponds to the JSON property `machineConfig`
        # @return [Google::Apis::DatabasecenterV1beta::MachineConfig]
        attr_accessor :machine_config
      
        # MaintenanceInfo to capture the maintenance details of database resource.
        # Corresponds to the JSON property `maintenanceInfo`
        # @return [Google::Apis::DatabasecenterV1beta::MaintenanceInfo]
        attr_accessor :maintenance_info
      
        # Metrics represents the metrics for a database resource.
        # Corresponds to the JSON property `metrics`
        # @return [Google::Apis::DatabasecenterV1beta::Metrics]
        attr_accessor :metrics
      
        # Product specification for databasecenter resources.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::DatabasecenterV1beta::Product]
        attr_accessor :product
      
        # The category of the resource.
        # Corresponds to the JSON property `resourceCategory`
        # @return [String]
        attr_accessor :resource_category
      
        # The name of the resource(The last part of the full resource name). Example:
        # For full resource name - `//cloudsql.googleapis.com/projects/project-number/
        # instances/mysql-1`, resource name - `mysql-1` For full resource name - `//
        # cloudsql.googleapis.com/projects/project-number/instances/postgres-1` ,
        # resource name - `postgres-1` Note: In some cases, there might be more than one
        # resource with the same resource name.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The type of resource defined according to the pattern: `Service Name`/`Type`.
        # Ex: sqladmin.googleapis.com/Instance alloydb.googleapis.com/Cluster alloydb.
        # googleapis.com/Instance spanner.googleapis.com/Instance
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # The list of signal groups and count of issues related to the resource. Only
        # those signals which have been requested would be included.
        # Corresponds to the JSON property `signalGroups`
        # @return [Array<Google::Apis::DatabasecenterV1beta::SignalGroup>]
        attr_accessor :signal_groups
      
        # Subtype of the resource specified at creation time.
        # Corresponds to the JSON property `subResourceType`
        # @return [String]
        attr_accessor :sub_resource_type
      
        # Tags applied on the resource. The requirements for tags assigned to Google
        # Cloud resources may be found at https://cloud.google.com/resource-manager/docs/
        # tags/tags-overview
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::DatabasecenterV1beta::Tag>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affiliations = args[:affiliations] if args.key?(:affiliations)
          @backupdr_config = args[:backupdr_config] if args.key?(:backupdr_config)
          @child_resources = args[:child_resources] if args.key?(:child_resources)
          @container = args[:container] if args.key?(:container)
          @edition = args[:edition] if args.key?(:edition)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @labels = args[:labels] if args.key?(:labels)
          @location = args[:location] if args.key?(:location)
          @machine_config = args[:machine_config] if args.key?(:machine_config)
          @maintenance_info = args[:maintenance_info] if args.key?(:maintenance_info)
          @metrics = args[:metrics] if args.key?(:metrics)
          @product = args[:product] if args.key?(:product)
          @resource_category = args[:resource_category] if args.key?(:resource_category)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @signal_groups = args[:signal_groups] if args.key?(:signal_groups)
          @sub_resource_type = args[:sub_resource_type] if args.key?(:sub_resource_type)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # DatabaseResourceGroup represents all resources that serve a common data set.
      # It is considered notionally as a single entity, powered by any number of units
      # of compute and storage.
      class DatabaseResourceGroup
        include Google::Apis::Core::Hashable
      
        # A database resource that serves as a root of the group of database resources.
        # It is repeated just in case we have the concept of multiple roots in the
        # future, however, it will only be populated with a single value for now.
        # Corresponds to the JSON property `rootResources`
        # @return [Array<Google::Apis::DatabasecenterV1beta::DatabaseResource>]
        attr_accessor :root_resources
      
        # The filtered signal groups and the count of issues associated with the
        # resources that have been filtered in.
        # Corresponds to the JSON property `signalGroups`
        # @return [Array<Google::Apis::DatabasecenterV1beta::IssueCount>]
        attr_accessor :signal_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @root_resources = args[:root_resources] if args.key?(:root_resources)
          @signal_groups = args[:signal_groups] if args.key?(:signal_groups)
        end
      end
      
      # DatabaseResource and Issue associated with it.
      class DatabaseResourceIssue
        include Google::Apis::Core::Hashable
      
        # DatabaseResource represents every individually configured database unit
        # representing compute and/or storage.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::DatabasecenterV1beta::DatabaseResource]
        attr_accessor :resource
      
        # Represents a signal.
        # Corresponds to the JSON property `signal`
        # @return [Google::Apis::DatabasecenterV1beta::Signal]
        attr_accessor :signal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
          @signal = args[:signal] if args.key?(:signal)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Deletion protection signal info for a database resource.
      class DeletionProtectionInfo
        include Google::Apis::Core::Hashable
      
        # Is deletion protection enabled.
        # Corresponds to the JSON property `deletionProtectionEnabled`
        # @return [Boolean]
        attr_accessor :deletion_protection_enabled
        alias_method :deletion_protection_enabled?, :deletion_protection_enabled
      
        # Sub resource details For Spanner/Bigtable instance certain data protection
        # settings are at sub resource level like database/table. This message is used
        # to capture such sub resource details.
        # Corresponds to the JSON property `subResource`
        # @return [Google::Apis::DatabasecenterV1beta::SubResource]
        attr_accessor :sub_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deletion_protection_enabled = args[:deletion_protection_enabled] if args.key?(:deletion_protection_enabled)
          @sub_resource = args[:sub_resource] if args.key?(:sub_resource)
        end
      end
      
      # Captures the details of items that have increased or decreased in some bucket
      # when compared to some point in history. It is currently used to capture the
      # delta of resources that have been added or removed in the fleet as well as to
      # capture the resources that have a change in Issue/Signal status.
      class DeltaDetails
        include Google::Apis::Core::Hashable
      
        # Details of resources that have decreased.
        # Corresponds to the JSON property `decreasedResources`
        # @return [Array<Google::Apis::DatabasecenterV1beta::ResourceDetails>]
        attr_accessor :decreased_resources
      
        # Details of resources that have increased.
        # Corresponds to the JSON property `increasedResources`
        # @return [Array<Google::Apis::DatabasecenterV1beta::ResourceDetails>]
        attr_accessor :increased_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @decreased_resources = args[:decreased_resources] if args.key?(:decreased_resources)
          @increased_resources = args[:increased_resources] if args.key?(:increased_resources)
        end
      end
      
      # Dimension used to aggregate the fleet.
      class Dimension
        include Google::Apis::Core::Hashable
      
        # Specifies where the resource is created. For Google Cloud resources, it is the
        # full name of the project.
        # Corresponds to the JSON property `container`
        # @return [String]
        attr_accessor :container
      
        # The edition of the resource.
        # Corresponds to the JSON property `edition`
        # @return [String]
        attr_accessor :edition
      
        # Whether the resource has deny maintenance schedules.
        # Corresponds to the JSON property `hasDenyMaintenanceSchedules`
        # @return [Boolean]
        attr_accessor :has_deny_maintenance_schedules
        alias_method :has_deny_maintenance_schedules?, :has_deny_maintenance_schedules
      
        # Whether the resource has a maintenance schedule.
        # Corresponds to the JSON property `hasMaintenanceSchedule`
        # @return [Boolean]
        attr_accessor :has_maintenance_schedule
        alias_method :has_maintenance_schedule?, :has_maintenance_schedule
      
        # Label key of the resource.
        # Corresponds to the JSON property `labelKey`
        # @return [String]
        attr_accessor :label_key
      
        # Label source of the resource.
        # Corresponds to the JSON property `labelSource`
        # @return [String]
        attr_accessor :label_source
      
        # Label value of the resource.
        # Corresponds to the JSON property `labelValue`
        # @return [String]
        attr_accessor :label_value
      
        # The location of the resources. It supports returning only regional locations
        # in Google Cloud.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The management type of the resource.
        # Corresponds to the JSON property `managementType`
        # @return [String]
        attr_accessor :management_type
      
        # Engine refers to underlying database binary running in an instance.
        # Corresponds to the JSON property `productEngine`
        # @return [String]
        attr_accessor :product_engine
      
        # Type to identify a product
        # Corresponds to the JSON property `productType`
        # @return [String]
        attr_accessor :product_type
      
        # Version of the underlying database engine
        # Corresponds to the JSON property `productVersion`
        # @return [String]
        attr_accessor :product_version
      
        # The category of the resource.
        # Corresponds to the JSON property `resourceCategory`
        # @return [String]
        attr_accessor :resource_category
      
        # The type of resource defined according to the pattern: `Service Name`/`Type`.
        # Ex: sqladmin.googleapis.com/Instance alloydb.googleapis.com/Cluster alloydb.
        # googleapis.com/Instance spanner.googleapis.com/Instance
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Subtype of the resource specified at creation time.
        # Corresponds to the JSON property `subResourceType`
        # @return [String]
        attr_accessor :sub_resource_type
      
        # Tag inheritance value of the resource.
        # Corresponds to the JSON property `tagInherited`
        # @return [Boolean]
        attr_accessor :tag_inherited
        alias_method :tag_inherited?, :tag_inherited
      
        # Tag key of the resource.
        # Corresponds to the JSON property `tagKey`
        # @return [String]
        attr_accessor :tag_key
      
        # Tag source of the resource.
        # Corresponds to the JSON property `tagSource`
        # @return [String]
        attr_accessor :tag_source
      
        # Tag value of the resource.
        # Corresponds to the JSON property `tagValue`
        # @return [String]
        attr_accessor :tag_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container = args[:container] if args.key?(:container)
          @edition = args[:edition] if args.key?(:edition)
          @has_deny_maintenance_schedules = args[:has_deny_maintenance_schedules] if args.key?(:has_deny_maintenance_schedules)
          @has_maintenance_schedule = args[:has_maintenance_schedule] if args.key?(:has_maintenance_schedule)
          @label_key = args[:label_key] if args.key?(:label_key)
          @label_source = args[:label_source] if args.key?(:label_source)
          @label_value = args[:label_value] if args.key?(:label_value)
          @location = args[:location] if args.key?(:location)
          @management_type = args[:management_type] if args.key?(:management_type)
          @product_engine = args[:product_engine] if args.key?(:product_engine)
          @product_type = args[:product_type] if args.key?(:product_type)
          @product_version = args[:product_version] if args.key?(:product_version)
          @resource_category = args[:resource_category] if args.key?(:resource_category)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @sub_resource_type = args[:sub_resource_type] if args.key?(:sub_resource_type)
          @tag_inherited = args[:tag_inherited] if args.key?(:tag_inherited)
          @tag_key = args[:tag_key] if args.key?(:tag_key)
          @tag_source = args[:tag_source] if args.key?(:tag_source)
          @tag_value = args[:tag_value] if args.key?(:tag_value)
        end
      end
      
      # Metadata about inefficient query signal info for a database resource.
      class InefficientQueryInfo
        include Google::Apis::Core::Hashable
      
        # Name of the database where index is required. For example, "db1", which is the
        # name of the database present in the instance.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Count of queries to be impacted if index is applied
        # Corresponds to the JSON property `impactedQueriesCount`
        # @return [Fixnum]
        attr_accessor :impacted_queries_count
      
        # SQL statement of the index. Based on the ddl type, this will be either CREATE
        # INDEX or DROP INDEX.
        # Corresponds to the JSON property `sqlIndexStatement`
        # @return [String]
        attr_accessor :sql_index_statement
      
        # Cost of additional disk usage in bytes
        # Corresponds to the JSON property `storageCostBytes`
        # @return [Fixnum]
        attr_accessor :storage_cost_bytes
      
        # Name of the table where index is required
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @impacted_queries_count = args[:impacted_queries_count] if args.key?(:impacted_queries_count)
          @sql_index_statement = args[:sql_index_statement] if args.key?(:sql_index_statement)
          @storage_cost_bytes = args[:storage_cost_bytes] if args.key?(:storage_cost_bytes)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Count of issues for a group of signals.
      class IssueCount
        include Google::Apis::Core::Hashable
      
        # Title of a signal group corresponding to the request.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The count of the number of issues associated with those resources that are
        # explicitly filtered in by the filters present in the request. A signal is an
        # issue when its SignalStatus field is set to SIGNAL_STATUS_ISSUE.
        # Corresponds to the JSON property `issueCount`
        # @return [Fixnum]
        attr_accessor :issue_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @issue_count = args[:issue_count] if args.key?(:issue_count)
        end
      end
      
      # IssueGroupStats refers to stats for a particulare combination of relevant
      # health issues of database resources.
      class IssueGroupStats
        include Google::Apis::Core::Hashable
      
        # Database resource level health card name. This will corresponds to one of the
        # requested input group names.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The number of resource groups from the total groups as defined above that are
        # healthy with respect to all of the specified issues.
        # Corresponds to the JSON property `healthyResourceGroupsCount`
        # @return [Fixnum]
        attr_accessor :healthy_resource_groups_count
      
        # The number of resources from the total defined above in field
        # total_resources_count that are healthy with respect to all of the specified
        # issues.
        # Corresponds to the JSON property `healthyResourcesCount`
        # @return [Fixnum]
        attr_accessor :healthy_resources_count
      
        # List of issues stats containing count of resources having particular issue
        # category.
        # Corresponds to the JSON property `issueStats`
        # @return [Array<Google::Apis::DatabasecenterV1beta::IssueStats>]
        attr_accessor :issue_stats
      
        # Total count of the groups of resources returned by the filter that also have
        # one or more resources for which any of the specified issues are applicable.
        # Corresponds to the JSON property `resourceGroupsCount`
        # @return [Fixnum]
        attr_accessor :resource_groups_count
      
        # Total count of resources returned by the filter for which any of the specified
        # issues are applicable.
        # Corresponds to the JSON property `resourcesCount`
        # @return [Fixnum]
        attr_accessor :resources_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @healthy_resource_groups_count = args[:healthy_resource_groups_count] if args.key?(:healthy_resource_groups_count)
          @healthy_resources_count = args[:healthy_resources_count] if args.key?(:healthy_resources_count)
          @issue_stats = args[:issue_stats] if args.key?(:issue_stats)
          @resource_groups_count = args[:resource_groups_count] if args.key?(:resource_groups_count)
          @resources_count = args[:resources_count] if args.key?(:resources_count)
        end
      end
      
      # IssueStats holds stats for a particular signal category.
      class IssueStats
        include Google::Apis::Core::Hashable
      
        # Captures the details of items that have increased or decreased in some bucket
        # when compared to some point in history. It is currently used to capture the
        # delta of resources that have been added or removed in the fleet as well as to
        # capture the resources that have a change in Issue/Signal status.
        # Corresponds to the JSON property `deltaDetails`
        # @return [Google::Apis::DatabasecenterV1beta::DeltaDetails]
        attr_accessor :delta_details
      
        # Severity of the issue.
        # Corresponds to the JSON property `issueSeverity`
        # @return [String]
        attr_accessor :issue_severity
      
        # Number of resources having issues of a given type.
        # Corresponds to the JSON property `resourceCount`
        # @return [Fixnum]
        attr_accessor :resource_count
      
        # Type of signal which is an issue.
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delta_details = args[:delta_details] if args.key?(:delta_details)
          @issue_severity = args[:issue_severity] if args.key?(:issue_severity)
          @resource_count = args[:resource_count] if args.key?(:resource_count)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
        end
      end
      
      # Label is a key value pair applied to a resource.
      class Label
        include Google::Apis::Core::Hashable
      
        # The key part of the label.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The source of the Label. Source is empty if the label is directly attached to
        # the resource and not inherited.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # The value part of the label.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @source = args[:source] if args.key?(:source)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # lineage information of the affiliated resources This captures source, target
      # and process which created the lineage.
      class Lineage
        include Google::Apis::Core::Hashable
      
        # Optional. FQN of process which created the lineage i.e. dataplex, datastream
        # etc.
        # Corresponds to the JSON property `processFqn`
        # @return [String]
        attr_accessor :process_fqn
      
        # Optional. Type of process which created the lineage.
        # Corresponds to the JSON property `processType`
        # @return [String]
        attr_accessor :process_type
      
        # Optional. FQN of source table / column
        # Corresponds to the JSON property `sourceFqn`
        # @return [String]
        attr_accessor :source_fqn
      
        # Optional. FQN of target table / column
        # Corresponds to the JSON property `targetFqn`
        # @return [String]
        attr_accessor :target_fqn
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @process_fqn = args[:process_fqn] if args.key?(:process_fqn)
          @process_type = args[:process_type] if args.key?(:process_type)
          @source_fqn = args[:source_fqn] if args.key?(:source_fqn)
          @target_fqn = args[:target_fqn] if args.key?(:target_fqn)
        end
      end
      
      # MachineConfig describes the configuration of a machine specific to a Database
      # Resource.
      class MachineConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Baseline slots for BigQuery Reservations. Baseline slots are in
        # increments of 50.
        # Corresponds to the JSON property `baselineSlotCount`
        # @return [Fixnum]
        attr_accessor :baseline_slot_count
      
        # Optional. Max slots for BigQuery Reservations. Max slots are in increments of
        # 50.
        # Corresponds to the JSON property `maxReservationSlotCount`
        # @return [Fixnum]
        attr_accessor :max_reservation_slot_count
      
        # Memory size in bytes.
        # Corresponds to the JSON property `memorySizeBytes`
        # @return [Fixnum]
        attr_accessor :memory_size_bytes
      
        # Optional. The number of Shards (if applicable).
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # Optional. The number of vCPUs (if applicable).
        # Corresponds to the JSON property `vcpuCount`
        # @return [Float]
        attr_accessor :vcpu_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baseline_slot_count = args[:baseline_slot_count] if args.key?(:baseline_slot_count)
          @max_reservation_slot_count = args[:max_reservation_slot_count] if args.key?(:max_reservation_slot_count)
          @memory_size_bytes = args[:memory_size_bytes] if args.key?(:memory_size_bytes)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @vcpu_count = args[:vcpu_count] if args.key?(:vcpu_count)
        end
      end
      
      # MaintenanceInfo to capture the maintenance details of database resource.
      class MaintenanceInfo
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `currentVersionReleaseDate`
        # @return [Google::Apis::DatabasecenterV1beta::Date]
        attr_accessor :current_version_release_date
      
        # Optional. List of Deny maintenance period for the database resource.
        # Corresponds to the JSON property `denyMaintenanceSchedules`
        # @return [Array<Google::Apis::DatabasecenterV1beta::ResourceMaintenanceDenySchedule>]
        attr_accessor :deny_maintenance_schedules
      
        # Maintenance window for the database resource. It specifies preferred time and
        # day of the week and phase in some cases, when the maintenance can start.
        # Corresponds to the JSON property `maintenanceSchedule`
        # @return [Google::Apis::DatabasecenterV1beta::ResourceMaintenanceSchedule]
        attr_accessor :maintenance_schedule
      
        # Output only. Current Maintenance version of the database resource. Example: "
        # MYSQL_8_0_41.R20250531.01_15"
        # Corresponds to the JSON property `maintenanceVersion`
        # @return [String]
        attr_accessor :maintenance_version
      
        # Output only. List of possible reasons why the maintenance is not completed.
        # This is an optional field and is only populated if there are any reasons for
        # failures recorded for the maintenance by DB Center. FAILURE maintenance status
        # may not always have a failure reason.
        # Corresponds to the JSON property `possibleFailureReasons`
        # @return [Array<String>]
        attr_accessor :possible_failure_reasons
      
        # Output only. Previous maintenance version of the database resource. Example: "
        # MYSQL_8_0_41.R20250531.01_15". This is available once a minor version
        # maintenance is complete on a database resource.
        # Corresponds to the JSON property `previousMaintenanceVersion`
        # @return [String]
        attr_accessor :previous_maintenance_version
      
        # Output only. Resource maintenance state. This is to capture the current state
        # of the maintenance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Upcoming maintenance window for the database resource.
        # Corresponds to the JSON property `upcomingMaintenance`
        # @return [Google::Apis::DatabasecenterV1beta::UpcomingMaintenance]
        attr_accessor :upcoming_maintenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_version_release_date = args[:current_version_release_date] if args.key?(:current_version_release_date)
          @deny_maintenance_schedules = args[:deny_maintenance_schedules] if args.key?(:deny_maintenance_schedules)
          @maintenance_schedule = args[:maintenance_schedule] if args.key?(:maintenance_schedule)
          @maintenance_version = args[:maintenance_version] if args.key?(:maintenance_version)
          @possible_failure_reasons = args[:possible_failure_reasons] if args.key?(:possible_failure_reasons)
          @previous_maintenance_version = args[:previous_maintenance_version] if args.key?(:previous_maintenance_version)
          @state = args[:state] if args.key?(:state)
          @upcoming_maintenance = args[:upcoming_maintenance] if args.key?(:upcoming_maintenance)
        end
      end
      
      # Info associated with maintenance recommendation.
      class MaintenanceRecommendationInfo
        include Google::Apis::Core::Hashable
      
        # Optional. List of recommended maintenance schedules for the database resource.
        # Corresponds to the JSON property `resourceMaintenanceSchedules`
        # @return [Array<Google::Apis::DatabasecenterV1beta::ResourceMaintenanceSchedule>]
        attr_accessor :resource_maintenance_schedules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_maintenance_schedules = args[:resource_maintenance_schedules] if args.key?(:resource_maintenance_schedules)
        end
      end
      
      # MetricData represents the metric data for a database resource.
      class MetricData
        include Google::Apis::Core::Hashable
      
        # The time the metric was observed in the metric source service.
        # Corresponds to the JSON property `observationTime`
        # @return [String]
        attr_accessor :observation_time
      
        # TypedValue represents the value of the metric based on data type.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::DatabasecenterV1beta::TypedValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @observation_time = args[:observation_time] if args.key?(:observation_time)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Metrics represents the metrics for a database resource.
      class Metrics
        include Google::Apis::Core::Hashable
      
        # MetricData represents the metric data for a database resource.
        # Corresponds to the JSON property `currentMemoryUsedBytes`
        # @return [Google::Apis::DatabasecenterV1beta::MetricData]
        attr_accessor :current_memory_used_bytes
      
        # MetricData represents the metric data for a database resource.
        # Corresponds to the JSON property `currentStorageUsedBytes`
        # @return [Google::Apis::DatabasecenterV1beta::MetricData]
        attr_accessor :current_storage_used_bytes
      
        # MetricData represents the metric data for a database resource.
        # Corresponds to the JSON property `nodeCount`
        # @return [Google::Apis::DatabasecenterV1beta::MetricData]
        attr_accessor :node_count
      
        # MetricData represents the metric data for a database resource.
        # Corresponds to the JSON property `p95CpuUtilization`
        # @return [Google::Apis::DatabasecenterV1beta::MetricData]
        attr_accessor :p95_cpu_utilization
      
        # MetricData represents the metric data for a database resource.
        # Corresponds to the JSON property `p99CpuUtilization`
        # @return [Google::Apis::DatabasecenterV1beta::MetricData]
        attr_accessor :p99_cpu_utilization
      
        # MetricData represents the metric data for a database resource.
        # Corresponds to the JSON property `peakMemoryUtilization`
        # @return [Google::Apis::DatabasecenterV1beta::MetricData]
        attr_accessor :peak_memory_utilization
      
        # MetricData represents the metric data for a database resource.
        # Corresponds to the JSON property `peakNumberConnections`
        # @return [Google::Apis::DatabasecenterV1beta::MetricData]
        attr_accessor :peak_number_connections
      
        # MetricData represents the metric data for a database resource.
        # Corresponds to the JSON property `peakStorageUtilization`
        # @return [Google::Apis::DatabasecenterV1beta::MetricData]
        attr_accessor :peak_storage_utilization
      
        # MetricData represents the metric data for a database resource.
        # Corresponds to the JSON property `processingUnitCount`
        # @return [Google::Apis::DatabasecenterV1beta::MetricData]
        attr_accessor :processing_unit_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_memory_used_bytes = args[:current_memory_used_bytes] if args.key?(:current_memory_used_bytes)
          @current_storage_used_bytes = args[:current_storage_used_bytes] if args.key?(:current_storage_used_bytes)
          @node_count = args[:node_count] if args.key?(:node_count)
          @p95_cpu_utilization = args[:p95_cpu_utilization] if args.key?(:p95_cpu_utilization)
          @p99_cpu_utilization = args[:p99_cpu_utilization] if args.key?(:p99_cpu_utilization)
          @peak_memory_utilization = args[:peak_memory_utilization] if args.key?(:peak_memory_utilization)
          @peak_number_connections = args[:peak_number_connections] if args.key?(:peak_number_connections)
          @peak_storage_utilization = args[:peak_storage_utilization] if args.key?(:peak_storage_utilization)
          @processing_unit_count = args[:processing_unit_count] if args.key?(:processing_unit_count)
        end
      end
      
      # Info associated with outdated minor version.
      class OutdatedMinorVersionInfo
        include Google::Apis::Core::Hashable
      
        # Recommended minor version of the underlying database engine. Example values:
        # For MySQL, it could be "8.0.35", "5.7.25" etc. For PostgreSQL, it could be "14.
        # 4", "15.5" etc.
        # Corresponds to the JSON property `recommendedMinorVersion`
        # @return [String]
        attr_accessor :recommended_minor_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recommended_minor_version = args[:recommended_minor_version] if args.key?(:recommended_minor_version)
        end
      end
      
      # Product specification for databasecenter resources.
      class Product
        include Google::Apis::Core::Hashable
      
        # Optional. The specific engine that the underlying database is running.
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        # Optional. Minor version of the underlying database engine. Example values: For
        # MySQL, it could be "8.0.35", "5.7.25" etc. For PostgreSQL, it could be "14.4",
        # "15.5" etc.
        # Corresponds to the JSON property `minorVersion`
        # @return [String]
        attr_accessor :minor_version
      
        # Optional. Type of specific database product. It could be CloudSQL, AlloyDB etc.
        # .
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Optional. Version of the underlying database engine. Example values: For MySQL,
        # it could be "8.0", "5.7" etc. For Postgres, it could be "14", "15" etc.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @engine = args[:engine] if args.key?(:engine)
          @minor_version = args[:minor_version] if args.key?(:minor_version)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # QueryDatabaseResourceGroupsRequest is the request to get a list of database
      # groups.
      class QueryDatabaseResourceGroupsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The expression to filter resources. The following fields are
        # filterable: * full_resource_name * resource_type * container * product.type *
        # product.engine * product.version * location * labels * resource_category *
        # machine_config.cpu_count * machine_config.memory_size_bytes * machine_config.
        # shard_count * resource_name * tags * backupdr_config.backupdr_managed *
        # edition The expression is a list of zero or more restrictions combined via
        # logical operators `AND` and `OR`. When `AND` and `OR` are both used in the
        # expression, parentheses must be appropriately used to group the combinations.
        # Example: `location="us-east1"` Example: `container="projects/123" OR container=
        # "projects/456"` Example: `(container="projects/123" OR container="projects/456"
        # ) AND location="us-east1"` Example: `full_resource_name=~"test"` Example: `
        # full_resource_name=~"test.*master"`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. A field that specifies the sort order of the results. The following
        # fields are sortable: * full_resource_name * product.type * product.engine *
        # product.version * container * issue_count * machine_config.vcpu_count *
        # machine_config.memory_size_bytes * machine_config.shard_count * resource_name *
        # issue_severity * signal_type * location * resource_type * instance_type *
        # edition * metrics.p99_cpu_utilization * metrics.p95_cpu_utilization * metrics.
        # current_storage_used_bytes * metrics.node_count * metrics.
        # processing_unit_count * metrics.current_memory_used_bytes * metrics.
        # peak_storage_utilization * metrics.peak_number_connections * metrics.
        # peak_memory_utilization The default order is ascending. Add "DESC" after the
        # field name to indicate descending order. Add "ASC" after the field name to
        # indicate ascending order. It only supports a single field at a time. For
        # example: `order_by = "full_resource_name"` sorts response in ascending order `
        # order_by = "full_resource_name DESC"` sorts response in descending order `
        # order_by = "issue_count DESC"` sorts response in descending order of count of
        # all issues associated with a resource. More explicitly, `order_by = "
        # full_resource_name, product"` is not supported.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Optional. If unspecified, at most 50 resource groups will be returned. The
        # maximum value is 1000; values above 1000 will be coerced to 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token, received from a previous `
        # QueryDatabaseResourceGroupsRequest` call. Provide this to retrieve the
        # subsequent page. All parameters except page_token should match the parameters
        # in the call that provided the page page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. Parent can be a project, a folder, or an organization. The search is
        # limited to the resources within the `scope`. The allowed values are: *
        # projects/`PROJECT_ID` (e.g., "projects/foo-bar") * projects/`PROJECT_NUMBER` (
        # e.g., "projects/12345678") * folders/`FOLDER_NUMBER` (e.g., "folders/1234567")
        # * organizations/`ORGANIZATION_NUMBER` (e.g., "organizations/123456")
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Optional. Filters based on signals. The list will be ORed together and then
        # ANDed with the `filters` field above.
        # Corresponds to the JSON property `signalFilters`
        # @return [Array<Google::Apis::DatabasecenterV1beta::SignalFilter>]
        attr_accessor :signal_filters
      
        # Optional. Filters based on signal and product. The filter list will be ORed
        # across pairs and ANDed within a signal and products pair.
        # Corresponds to the JSON property `signalProductsFilters`
        # @return [Array<Google::Apis::DatabasecenterV1beta::SignalProductsFilters>]
        attr_accessor :signal_products_filters
      
        # Optional. Groups of signal types that are requested.
        # Corresponds to the JSON property `signalTypeGroups`
        # @return [Array<Google::Apis::DatabasecenterV1beta::SignalTypeGroup>]
        attr_accessor :signal_type_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @parent = args[:parent] if args.key?(:parent)
          @signal_filters = args[:signal_filters] if args.key?(:signal_filters)
          @signal_products_filters = args[:signal_products_filters] if args.key?(:signal_products_filters)
          @signal_type_groups = args[:signal_type_groups] if args.key?(:signal_type_groups)
        end
      end
      
      # QueryDatabaseResourceGroupsResponse represents the response message containing
      # a list of resource groups.
      class QueryDatabaseResourceGroupsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of database resource groups that pass the filter.
        # Corresponds to the JSON property `resourceGroups`
        # @return [Array<Google::Apis::DatabasecenterV1beta::DatabaseResourceGroup>]
        attr_accessor :resource_groups
      
        # Output only. The total number of resource groups in the entire list.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        # Unordered list. List of unreachable regions from where data could not be
        # retrieved.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resource_groups = args[:resource_groups] if args.key?(:resource_groups)
          @total_size = args[:total_size] if args.key?(:total_size)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # QueryIssuesRequest is the request to get a list of issues.
      class QueryIssuesRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Supported fields are: 'product', `location`, `issue_severity`, 'tags'
        # , 'labels',
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. Following fields are sortable: SignalType Product Location
        # IssueSeverity The default order is ascending. Add "DESC" after the field name
        # to indicate descending order. Add "ASC" after the field name to indicate
        # ascending order. It only supports a single field at a time.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Optional. If unspecified, at most 50 issues will be returned. The maximum
        # value is 1000; values above 1000 will be coerced to 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token, received from a previous `QueryIssues` call. Provide
        # this to retrieve the subsequent page. All parameters except page size should
        # match the parameters used in the call that provided the page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. Parent can be a project, a folder, or an organization. The list is
        # limited to the one attached to resources within the `scope` that a user has
        # access to. The allowed values are: * projects/`PROJECT_ID` (e.g., "projects/
        # foo-bar") * projects/`PROJECT_NUMBER` (e.g., "projects/12345678") * folders/`
        # FOLDER_NUMBER` (e.g., "folders/1234567") * organizations/`ORGANIZATION_NUMBER`
        # (e.g., "organizations/123456")
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Optional. Filters based on signal and product. The filter list will be ORed
        # across pairs and ANDed within a signal and products pair.
        # Corresponds to the JSON property `signalProductsFilters`
        # @return [Array<Google::Apis::DatabasecenterV1beta::SignalProductsFilters>]
        attr_accessor :signal_products_filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @parent = args[:parent] if args.key?(:parent)
          @signal_products_filters = args[:signal_products_filters] if args.key?(:signal_products_filters)
        end
      end
      
      # QueryIssuesResponse is the response containing a list of issues.
      class QueryIssuesResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of issues and resource details.
        # Corresponds to the JSON property `resourceIssues`
        # @return [Array<Google::Apis::DatabasecenterV1beta::DatabaseResourceIssue>]
        attr_accessor :resource_issues
      
        # Unordered list. List of unreachable regions from where data could not be
        # retrieved.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resource_issues = args[:resource_issues] if args.key?(:resource_issues)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # QueryMetrics contains the metrics related to the query execution.
      class QueryMetrics
        include Google::Apis::Core::Hashable
      
        # The average execution period of the query across all runs.
        # Corresponds to the JSON property `avgCpuTime`
        # @return [String]
        attr_accessor :avg_cpu_time
      
        # The number of times the query was executed.
        # Corresponds to the JSON property `executionCount`
        # @return [Fixnum]
        attr_accessor :execution_count
      
        # The window over which the metrics are aggregated.
        # Corresponds to the JSON property `metricsWindow`
        # @return [String]
        attr_accessor :metrics_window
      
        # The average number of rows processed by the query across all runs.
        # Corresponds to the JSON property `rowsProcessed`
        # @return [Fixnum]
        attr_accessor :rows_processed
      
        # The total CPU time consumed by the query across all runs.
        # Corresponds to the JSON property `totalCpuTime`
        # @return [String]
        attr_accessor :total_cpu_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avg_cpu_time = args[:avg_cpu_time] if args.key?(:avg_cpu_time)
          @execution_count = args[:execution_count] if args.key?(:execution_count)
          @metrics_window = args[:metrics_window] if args.key?(:metrics_window)
          @rows_processed = args[:rows_processed] if args.key?(:rows_processed)
          @total_cpu_time = args[:total_cpu_time] if args.key?(:total_cpu_time)
        end
      end
      
      # QueryProductsResponse represents the response containing a list of products.
      class QueryProductsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of database products returned.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::DatabasecenterV1beta::Product>]
        attr_accessor :products
      
        # Unordered list. List of unreachable regions from where data could not be
        # retrieved.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @products = args[:products] if args.key?(:products)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # QueryStats contains the stats for a particular combination of query_hash,
      # query_string and resource_type.
      class QueryStats
        include Google::Apis::Core::Hashable
      
        # Metadata about inefficient query signal info for a database resource.
        # Corresponds to the JSON property `inefficientQueryInfo`
        # @return [Google::Apis::DatabasecenterV1beta::InefficientQueryInfo]
        attr_accessor :inefficient_query_info
      
        # The query string is normalized query without any PII data.
        # Corresponds to the JSON property `normalizedQuery`
        # @return [String]
        attr_accessor :normalized_query
      
        # The query hash of the query.
        # Corresponds to the JSON property `queryHash`
        # @return [String]
        attr_accessor :query_hash
      
        # QueryMetrics contains the metrics related to the query execution.
        # Corresponds to the JSON property `queryMetrics`
        # @return [Google::Apis::DatabasecenterV1beta::QueryMetrics]
        attr_accessor :query_metrics
      
        # The resource ids for which the query stats are collected.
        # Corresponds to the JSON property `resourceIds`
        # @return [Array<Google::Apis::DatabasecenterV1beta::ResourceId>]
        attr_accessor :resource_ids
      
        # The type of the resource. sqladmin.googleapis.com/Instance alloydb.googleapis.
        # com/Cluster alloydb.googleapis.com/Instance
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inefficient_query_info = args[:inefficient_query_info] if args.key?(:inefficient_query_info)
          @normalized_query = args[:normalized_query] if args.key?(:normalized_query)
          @query_hash = args[:query_hash] if args.key?(:query_hash)
          @query_metrics = args[:query_metrics] if args.key?(:query_metrics)
          @resource_ids = args[:resource_ids] if args.key?(:resource_ids)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # QueryStatsInfo contains the aggregated and detailed query stats for a
      # particular combination of relevant query stats for queries having same
      # normalized query.
      class QueryStatsInfo
        include Google::Apis::Core::Hashable
      
        # QueryStats contains the stats for a particular combination of query_hash,
        # query_string and resource_type.
        # Corresponds to the JSON property `aggregatedQueryStats`
        # @return [Google::Apis::DatabasecenterV1beta::QueryStats]
        attr_accessor :aggregated_query_stats
      
        # List of query stats for the resources in the group. This stats is stats at
        # resource level for the resources having same normalized query.
        # Corresponds to the JSON property `queryStats`
        # @return [Array<Google::Apis::DatabasecenterV1beta::QueryStats>]
        attr_accessor :query_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregated_query_stats = args[:aggregated_query_stats] if args.key?(:aggregated_query_stats)
          @query_stats = args[:query_stats] if args.key?(:query_stats)
        end
      end
      
      # Info associated with recommendation.
      class RecommendationInfo
        include Google::Apis::Core::Hashable
      
        # Name of recommendation. Examples: organizations/1234/locations/us-central1/
        # recommenders/google.cloudsql.instance.PerformanceRecommender/recommendations/
        # 9876
        # Corresponds to the JSON property `recommender`
        # @return [String]
        attr_accessor :recommender
      
        # ID of recommender. Examples: "google.cloudsql.instance.PerformanceRecommender"
        # Corresponds to the JSON property `recommenderId`
        # @return [String]
        attr_accessor :recommender_id
      
        # Contains an identifier for a subtype of recommendations produced for the same
        # recommender. Subtype is a function of content and impact, meaning a new
        # subtype might be added when significant changes to `content` or `
        # primary_impact.category` are introduced. See the Recommenders section to see a
        # list of subtypes for a given Recommender. Examples: For recommender = "google.
        # cloudsql.instance.PerformanceRecommender", recommender_subtype can be "
        # MYSQL_HIGH_NUMBER_OF_OPEN_TABLES_BEST_PRACTICE"/"
        # POSTGRES_HIGH_TRANSACTION_ID_UTILIZATION_BEST_PRACTICE"
        # Corresponds to the JSON property `recommenderSubtype`
        # @return [String]
        attr_accessor :recommender_subtype
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recommender = args[:recommender] if args.key?(:recommender)
          @recommender_id = args[:recommender_id] if args.key?(:recommender_id)
          @recommender_subtype = args[:recommender_subtype] if args.key?(:recommender_subtype)
        end
      end
      
      # Compliances associated with signals.
      class RegulatoryStandard
        include Google::Apis::Core::Hashable
      
        # Name of industry compliance standards, such as such as CIS, PCI, and OWASP.
        # Corresponds to the JSON property `standard`
        # @return [String]
        attr_accessor :standard
      
        # Version of the standard or benchmark, for example, 1.1.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @standard = args[:standard] if args.key?(:standard)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Capture the resource details for resources that are included in the delta
      # counts.
      class ResourceDetails
        include Google::Apis::Core::Hashable
      
        # Specifies where the resource is created. For Google Cloud resources, it is the
        # full name of the project.
        # Corresponds to the JSON property `container`
        # @return [String]
        attr_accessor :container
      
        # Full resource name of the resource.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Location of the resource.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Product specification for databasecenter resources.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::DatabasecenterV1beta::Product]
        attr_accessor :product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container = args[:container] if args.key?(:container)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @location = args[:location] if args.key?(:location)
          @product = args[:product] if args.key?(:product)
        end
      end
      
      # ResourceId contains the identifier for a database resource, including the full
      # resource name, resource type, and product.
      class ResourceId
        include Google::Apis::Core::Hashable
      
        # The full resource name of the resource.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Product specification for databasecenter resources.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::DatabasecenterV1beta::Product]
        attr_accessor :product
      
        # The type of the resource. sqladmin.googleapis.com/Instance alloydb.googleapis.
        # com/Cluster alloydb.googleapis.com/Instance
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @product = args[:product] if args.key?(:product)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Deny maintenance period for the database resource. It specifies the time range
      # during which the maintenance cannot start. This is configured by the customer.
      class ResourceMaintenanceDenySchedule
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::DatabasecenterV1beta::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::DatabasecenterV1beta::Date]
        attr_accessor :start_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `time`
        # @return [Google::Apis::DatabasecenterV1beta::TimeOfDay]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # Maintenance window for the database resource. It specifies preferred time and
      # day of the week and phase in some cases, when the maintenance can start.
      class ResourceMaintenanceSchedule
        include Google::Apis::Core::Hashable
      
        # Optional. Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc.
        # Corresponds to the JSON property `day`
        # @return [String]
        attr_accessor :day
      
        # Optional. Phase of the maintenance window. This is to capture order of
        # maintenance. For example, for Cloud SQL resources, this can be used to capture
        # if the maintenance window is in Week1, Week2, Week5, etc. Non production
        # resources are usually part of early phase. For more details, refer to Cloud
        # SQL resources - https://cloud.google.com/sql/docs/mysql/maintenance
        # Corresponds to the JSON property `phase`
        # @return [String]
        attr_accessor :phase
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::DatabasecenterV1beta::TimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @phase = args[:phase] if args.key?(:phase)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Resource suspension info for a database resource.
      class ResourceSuspensionInfo
        include Google::Apis::Core::Hashable
      
        # Is resource suspended.
        # Corresponds to the JSON property `resourceSuspended`
        # @return [Boolean]
        attr_accessor :resource_suspended
        alias_method :resource_suspended?, :resource_suspended
      
        # Suspension reason for the resource.
        # Corresponds to the JSON property `suspensionReason`
        # @return [String]
        attr_accessor :suspension_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_suspended = args[:resource_suspended] if args.key?(:resource_suspended)
          @suspension_reason = args[:suspension_reason] if args.key?(:suspension_reason)
        end
      end
      
      # Metadata about backup retention settings for a database resource.
      class RetentionSettingsInfo
        include Google::Apis::Core::Hashable
      
        # Duration based retention period i.e. 172800 seconds (2 days)
        # Corresponds to the JSON property `durationBasedRetention`
        # @return [String]
        attr_accessor :duration_based_retention
      
        # Number of backups that will be retained.
        # Corresponds to the JSON property `quantityBasedRetention`
        # @return [Fixnum]
        attr_accessor :quantity_based_retention
      
        # Sub resource details For Spanner/Bigtable instance certain data protection
        # settings are at sub resource level like database/table. This message is used
        # to capture such sub resource details.
        # Corresponds to the JSON property `subResource`
        # @return [Google::Apis::DatabasecenterV1beta::SubResource]
        attr_accessor :sub_resource
      
        # Timestamp based retention period i.e. till 2024-05-01T00:00:00Z
        # Corresponds to the JSON property `timestampBasedRetentionTime`
        # @return [String]
        attr_accessor :timestamp_based_retention_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration_based_retention = args[:duration_based_retention] if args.key?(:duration_based_retention)
          @quantity_based_retention = args[:quantity_based_retention] if args.key?(:quantity_based_retention)
          @sub_resource = args[:sub_resource] if args.key?(:sub_resource)
          @timestamp_based_retention_time = args[:timestamp_based_retention_time] if args.key?(:timestamp_based_retention_time)
        end
      end
      
      # Info associated with SCC signals.
      class SccInfo
        include Google::Apis::Core::Hashable
      
        # Name by which SCC calls this signal.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # External URI which points to a SCC page associated with the signal.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # Compliances that are associated with the signal.
        # Corresponds to the JSON property `regulatoryStandards`
        # @return [Array<Google::Apis::DatabasecenterV1beta::RegulatoryStandard>]
        attr_accessor :regulatory_standards
      
        # Name of the signal.
        # Corresponds to the JSON property `signal`
        # @return [String]
        attr_accessor :signal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @regulatory_standards = args[:regulatory_standards] if args.key?(:regulatory_standards)
          @signal = args[:signal] if args.key?(:signal)
        end
      end
      
      # Represents a signal.
      class Signal
        include Google::Apis::Core::Hashable
      
        # Additional information related to the signal. In the case of composite signals,
        # this field encapsulates details associated with granular signals, having a
        # signal status of "ISSUE"; signals with a status of "OK" are not included. For
        # granular signals, it encompasses information relevant to the signal,
        # regardless of the signal status.
        # Corresponds to the JSON property `additionalDetails`
        # @return [Array<Google::Apis::DatabasecenterV1beta::AdditionalDetail>]
        attr_accessor :additional_details
      
        # Timestamp when the issue was created (when signal status is ISSUE).
        # Corresponds to the JSON property `issueCreateTime`
        # @return [String]
        attr_accessor :issue_create_time
      
        # Severity of the issue.
        # Corresponds to the JSON property `issueSeverity`
        # @return [String]
        attr_accessor :issue_severity
      
        # Status of the signal.
        # Corresponds to the JSON property `signalStatus`
        # @return [String]
        attr_accessor :signal_status
      
        # Type of the signal.
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_details = args[:additional_details] if args.key?(:additional_details)
          @issue_create_time = args[:issue_create_time] if args.key?(:issue_create_time)
          @issue_severity = args[:issue_severity] if args.key?(:issue_severity)
          @signal_status = args[:signal_status] if args.key?(:signal_status)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
        end
      end
      
      # A filter for Signals. If signal_type is left unset, all signals should be
      # returned. For example, the following filter returns all issues. signal_filter:
      # ` signal_status: SIGNAL_STATUS_ISSUE; ` Another example, the following filter
      # returns issues of the given type: signal_filter: ` type:
      # SIGNAL_TYPE_NO_PROMOTABLE_REPLICA signal_status: ISSUE ` If signal_status is
      # left unset or set to SIGNAL_STATE_UNSPECIFIED, an error should be returned.
      class SignalFilter
        include Google::Apis::Core::Hashable
      
        # Optional. Represents the status of the Signal for which the filter is for.
        # Corresponds to the JSON property `signalStatus`
        # @return [String]
        attr_accessor :signal_status
      
        # Optional. Represents the type of the Signal for which the filter is for.
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @signal_status = args[:signal_status] if args.key?(:signal_status)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
        end
      end
      
      # A group of signals and their counts.
      class SignalGroup
        include Google::Apis::Core::Hashable
      
        # Title of a signal group corresponding to the request.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # When applied to a DatabaseResource represents count of issues associated with
        # the resource. A signal is an issue when its SignalStatus field is set to
        # SIGNAL_STATUS_ISSUE.
        # Corresponds to the JSON property `issueCount`
        # @return [Fixnum]
        attr_accessor :issue_count
      
        # List of signals present in the group and associated with the resource. Only
        # applies to a DatabaseResource.
        # Corresponds to the JSON property `signals`
        # @return [Array<Google::Apis::DatabasecenterV1beta::Signal>]
        attr_accessor :signals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @issue_count = args[:issue_count] if args.key?(:issue_count)
          @signals = args[:signals] if args.key?(:signals)
        end
      end
      
      # SignalProductsFilters represents a signal and list of supported products.
      class SignalProductsFilters
        include Google::Apis::Core::Hashable
      
        # Optional. Product type of the resource. The version of the product will be
        # ignored in filtering.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::DatabasecenterV1beta::Product>]
        attr_accessor :products
      
        # Optional. The type of signal.
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @products = args[:products] if args.key?(:products)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
        end
      end
      
      # A group of signal types that specifies what the user is interested in. Used by
      # QueryDatabaseResourceGroups API. Example: signal_type_group ` name = "
      # AVAILABILITY" types = [SIGNAL_TYPE_NO_PROMOTABLE_REPLICA] `
      class SignalTypeGroup
        include Google::Apis::Core::Hashable
      
        # Required. The display name of a signal group.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. List of signal types present in the group.
        # Corresponds to the JSON property `signalTypes`
        # @return [Array<String>]
        attr_accessor :signal_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @signal_types = args[:signal_types] if args.key?(:signal_types)
        end
      end
      
      # Sub resource details For Spanner/Bigtable instance certain data protection
      # settings are at sub resource level like database/table. This message is used
      # to capture such sub resource details.
      class SubResource
        include Google::Apis::Core::Hashable
      
        # Specifies where the resource is created. For Google Cloud resources, it is the
        # full name of the project.
        # Corresponds to the JSON property `container`
        # @return [String]
        attr_accessor :container
      
        # Optional. Resource name associated with the sub resource where backup settings
        # are configured. E.g."//spanner.googleapis.com/projects/project1/instances/
        # inst1/databases/db1" for Spanner where backup retention is configured on
        # database within an instance OPTIONAL
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Product specification for databasecenter resources.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::DatabasecenterV1beta::Product]
        attr_accessor :product
      
        # Optional. Resource type associated with the sub resource where backup settings
        # are configured. E.g. "spanner.googleapis.com/Database" for Spanner where
        # backup retention is configured on database within an instance OPTIONAL
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container = args[:container] if args.key?(:container)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @product = args[:product] if args.key?(:product)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Tag is a key value pair attached to a resource.
      class Tag
        include Google::Apis::Core::Hashable
      
        # Indicates the inheritance status of a tag value attached to the given resource.
        # If the tag value is inherited from one of the resource's ancestors, inherited
        # will be true. If false, then the tag value is directly attached to the
        # resource.
        # Corresponds to the JSON property `inherited`
        # @return [Boolean]
        attr_accessor :inherited
        alias_method :inherited?, :inherited
      
        # 
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The source of the tag. According to https://cloud.google.com/resource-manager/
        # docs/tags/tags-overview#tags_and_labels, tags can be created only at the
        # project or organization level. Tags can be inherited from different project as
        # well not just the current project where the database resource is present.
        # Format: "projects/`PROJECT_ID`", "projects/`PROJECT_NUMBER`", "organizations/`
        # ORGANIZATION_ID`"
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # The value part of the tag.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inherited = args[:inherited] if args.key?(:inherited)
          @key = args[:key] if args.key?(:key)
          @source = args[:source] if args.key?(:source)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of a day in 24 hour format. Must be greater than or equal to 0 and
        # typically must be less than or equal to 23. An API may choose to allow the
        # value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of an hour. Must be greater than or equal to 0 and less than or equal
        # to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and
        # less than or equal to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of a minute. Must be greater than or equal to 0 and typically must be
        # less than or equal to 59. An API may allow the value 60 if it allows leap-
        # seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # TypedValue represents the value of the metric based on data type.
      class TypedValue
        include Google::Apis::Core::Hashable
      
        # The value of the metric as double.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # The value of the metric as int.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
        end
      end
      
      # Upcoming maintenance window for the database resource.
      class UpcomingMaintenance
        include Google::Apis::Core::Hashable
      
        # Output only. End time of the upcoming maintenance. This is only populated for
        # an engine, if end time is public for the engine.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Start time of the upcoming maintenance. Start time is always
        # populated when an upcoming maintenance is scheduled.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
    end
  end
end
