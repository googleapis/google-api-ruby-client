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
    module DlpV2
      
      # A task to execute on the completion of a job. See https://cloud.google.com/
      # sensitive-data-protection/docs/concepts-actions to learn more.
      class GooglePrivacyDlpV2Action
        include Google::Apis::Core::Hashable
      
        # Create a de-identified copy of a storage bucket. Only compatible with Cloud
        # Storage buckets. A TransformationDetail will be created for each
        # transformation. Compatible with: Inspection of Cloud Storage
        # Corresponds to the JSON property `deidentify`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Deidentify]
        attr_accessor :deidentify
      
        # Sends an email when the job completes. The email goes to IAM project owners
        # and technical [Essential Contacts](https://cloud.google.com/resource-manager/
        # docs/managing-notification-contacts).
        # Corresponds to the JSON property `jobNotificationEmails`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2JobNotificationEmails]
        attr_accessor :job_notification_emails
      
        # Publish a message into a given Pub/Sub topic when DlpJob has completed. The
        # message contains a single field, `DlpJobName`, which is equal to the finished
        # job's [`DlpJob.name`](https://cloud.google.com/sensitive-data-protection/docs/
        # reference/rest/v2/projects.dlpJobs#DlpJob). Compatible with: Inspect, Risk
        # Corresponds to the JSON property `pubSub`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToPubSub]
        attr_accessor :pub_sub
      
        # Publish findings of a DlpJob to Data Catalog. In Data Catalog, tag templates
        # are applied to the resource that Cloud DLP scanned. Data Catalog tag templates
        # are stored in the same project and region where the BigQuery table exists. For
        # Cloud DLP to create and apply the tag template, the Cloud DLP service agent
        # must have the `roles/datacatalog.tagTemplateOwner` permission on the project.
        # The tag template contains fields summarizing the results of the DlpJob. Any
        # field values previously written by another DlpJob are deleted. InfoType naming
        # patterns are strictly enforced when using this feature. Findings are persisted
        # in Data Catalog storage and are governed by service-specific policies for Data
        # Catalog. For more information, see [Service Specific Terms](https://cloud.
        # google.com/terms/service-terms). Only a single instance of this action can be
        # specified. This action is allowed only if all resources being scanned are
        # BigQuery tables. Compatible with: Inspect
        # Corresponds to the JSON property `publishFindingsToCloudDataCatalog`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog]
        attr_accessor :publish_findings_to_cloud_data_catalog
      
        # Publish the result summary of a DlpJob to [Security Command Center](https://
        # cloud.google.com/security-command-center). This action is available for only
        # projects that belong to an organization. This action publishes the count of
        # finding instances and their infoTypes. The summary of findings are persisted
        # in Security Command Center and are governed by [service-specific policies for
        # Security Command Center](https://cloud.google.com/terms/service-terms). Only a
        # single instance of this action can be specified. Compatible with: Inspect
        # Corresponds to the JSON property `publishSummaryToCscc`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PublishSummaryToCscc]
        attr_accessor :publish_summary_to_cscc
      
        # Enable Stackdriver metric dlp.googleapis.com/finding_count. This will publish
        # a metric to stack driver on each infotype requested and how many findings were
        # found for it. CustomDetectors will be bucketed as 'Custom' under the
        # Stackdriver label 'info_type'.
        # Corresponds to the JSON property `publishToStackdriver`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToStackdriver]
        attr_accessor :publish_to_stackdriver
      
        # If set, the detailed findings will be persisted to the specified
        # OutputStorageConfig. Only a single instance of this action can be specified.
        # Compatible with: Inspect, Risk
        # Corresponds to the JSON property `saveFindings`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SaveFindings]
        attr_accessor :save_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify = args[:deidentify] if args.key?(:deidentify)
          @job_notification_emails = args[:job_notification_emails] if args.key?(:job_notification_emails)
          @pub_sub = args[:pub_sub] if args.key?(:pub_sub)
          @publish_findings_to_cloud_data_catalog = args[:publish_findings_to_cloud_data_catalog] if args.key?(:publish_findings_to_cloud_data_catalog)
          @publish_summary_to_cscc = args[:publish_summary_to_cscc] if args.key?(:publish_summary_to_cscc)
          @publish_to_stackdriver = args[:publish_to_stackdriver] if args.key?(:publish_to_stackdriver)
          @save_findings = args[:save_findings] if args.key?(:save_findings)
        end
      end
      
      # The results of an Action.
      class GooglePrivacyDlpV2ActionDetails
        include Google::Apis::Core::Hashable
      
        # The results of a Deidentify action from an inspect job.
        # Corresponds to the JSON property `deidentifyDetails`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyDataSourceDetails]
        attr_accessor :deidentify_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify_details = args[:deidentify_details] if args.key?(:deidentify_details)
        end
      end
      
      # Request message for ActivateJobTrigger.
      class GooglePrivacyDlpV2ActivateJobTriggerRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Apply transformation to all findings.
      class GooglePrivacyDlpV2AllInfoTypes
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Catch-all for all other tables not specified by other filters. Should always
      # be last, except for single-table configurations, which will only have a
      # TableReference target.
      class GooglePrivacyDlpV2AllOtherBigQueryTables
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Match database resources not covered by any other filter.
      class GooglePrivacyDlpV2AllOtherDatabaseResources
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Match discovery resources not covered by any other filter.
      class GooglePrivacyDlpV2AllOtherResources
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Apply to all text.
      class GooglePrivacyDlpV2AllText
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Amazon S3 bucket.
      class GooglePrivacyDlpV2AmazonS3Bucket
        include Google::Apis::Core::Hashable
      
        # AWS account.
        # Corresponds to the JSON property `awsAccount`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AwsAccount]
        attr_accessor :aws_account
      
        # Required. The bucket name.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_account = args[:aws_account] if args.key?(:aws_account)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
        end
      end
      
      # Amazon S3 bucket conditions.
      class GooglePrivacyDlpV2AmazonS3BucketConditions
        include Google::Apis::Core::Hashable
      
        # Optional. Bucket types that should be profiled. Optional. Defaults to
        # TYPE_ALL_SUPPORTED if unspecified.
        # Corresponds to the JSON property `bucketTypes`
        # @return [Array<String>]
        attr_accessor :bucket_types
      
        # Optional. Object classes that should be profiled. Optional. Defaults to
        # ALL_SUPPORTED_CLASSES if unspecified.
        # Corresponds to the JSON property `objectStorageClasses`
        # @return [Array<String>]
        attr_accessor :object_storage_classes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_types = args[:bucket_types] if args.key?(:bucket_types)
          @object_storage_classes = args[:object_storage_classes] if args.key?(:object_storage_classes)
        end
      end
      
      # Amazon S3 bucket regex.
      class GooglePrivacyDlpV2AmazonS3BucketRegex
        include Google::Apis::Core::Hashable
      
        # AWS account regex.
        # Corresponds to the JSON property `awsAccountRegex`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AwsAccountRegex]
        attr_accessor :aws_account_regex
      
        # Optional. Regex to test the bucket name against. If empty, all buckets match.
        # Corresponds to the JSON property `bucketNameRegex`
        # @return [String]
        attr_accessor :bucket_name_regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_account_regex = args[:aws_account_regex] if args.key?(:aws_account_regex)
          @bucket_name_regex = args[:bucket_name_regex] if args.key?(:bucket_name_regex)
        end
      end
      
      # Result of a risk analysis operation request.
      class GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
        include Google::Apis::Core::Hashable
      
        # Result of the categorical stats computation.
        # Corresponds to the JSON property `categoricalStatsResult`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CategoricalStatsResult]
        attr_accessor :categorical_stats_result
      
        # Result of the δ-presence computation. Note that these results are an
        # estimation, not exact values.
        # Corresponds to the JSON property `deltaPresenceEstimationResult`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeltaPresenceEstimationResult]
        attr_accessor :delta_presence_estimation_result
      
        # Result of the k-anonymity computation.
        # Corresponds to the JSON property `kAnonymityResult`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2KAnonymityResult]
        attr_accessor :k_anonymity_result
      
        # Result of the reidentifiability analysis. Note that these results are an
        # estimation, not exact values.
        # Corresponds to the JSON property `kMapEstimationResult`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2KMapEstimationResult]
        attr_accessor :k_map_estimation_result
      
        # Result of the l-diversity computation.
        # Corresponds to the JSON property `lDiversityResult`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2LDiversityResult]
        attr_accessor :l_diversity_result
      
        # Result of the numerical stats computation.
        # Corresponds to the JSON property `numericalStatsResult`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2NumericalStatsResult]
        attr_accessor :numerical_stats_result
      
        # Risk analysis options.
        # Corresponds to the JSON property `requestedOptions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RequestedRiskAnalysisOptions]
        attr_accessor :requested_options
      
        # Privacy metric to compute for reidentification risk analysis.
        # Corresponds to the JSON property `requestedPrivacyMetric`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PrivacyMetric]
        attr_accessor :requested_privacy_metric
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `requestedSourceTable`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :requested_source_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categorical_stats_result = args[:categorical_stats_result] if args.key?(:categorical_stats_result)
          @delta_presence_estimation_result = args[:delta_presence_estimation_result] if args.key?(:delta_presence_estimation_result)
          @k_anonymity_result = args[:k_anonymity_result] if args.key?(:k_anonymity_result)
          @k_map_estimation_result = args[:k_map_estimation_result] if args.key?(:k_map_estimation_result)
          @l_diversity_result = args[:l_diversity_result] if args.key?(:l_diversity_result)
          @numerical_stats_result = args[:numerical_stats_result] if args.key?(:numerical_stats_result)
          @requested_options = args[:requested_options] if args.key?(:requested_options)
          @requested_privacy_metric = args[:requested_privacy_metric] if args.key?(:requested_privacy_metric)
          @requested_source_table = args[:requested_source_table] if args.key?(:requested_source_table)
        end
      end
      
      # An auxiliary table contains statistical information on the relative frequency
      # of different quasi-identifiers values. It has one or several quasi-identifiers
      # columns, and one column that indicates the relative frequency of each quasi-
      # identifier tuple. If a tuple is present in the data but not in the auxiliary
      # table, the corresponding relative frequency is assumed to be zero (and thus,
      # the tuple is highly reidentifiable).
      class GooglePrivacyDlpV2AuxiliaryTable
        include Google::Apis::Core::Hashable
      
        # Required. Quasi-identifier columns.
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2QuasiIdField>]
        attr_accessor :quasi_ids
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `relativeFrequency`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :relative_frequency
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quasi_ids = args[:quasi_ids] if args.key?(:quasi_ids)
          @relative_frequency = args[:relative_frequency] if args.key?(:relative_frequency)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # AWS account.
      class GooglePrivacyDlpV2AwsAccount
        include Google::Apis::Core::Hashable
      
        # Required. AWS account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
        end
      end
      
      # AWS account regex.
      class GooglePrivacyDlpV2AwsAccountRegex
        include Google::Apis::Core::Hashable
      
        # Optional. Regex to test the AWS account ID against. If empty, all accounts
        # match.
        # Corresponds to the JSON property `accountIdRegex`
        # @return [String]
        attr_accessor :account_id_regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id_regex = args[:account_id_regex] if args.key?(:account_id_regex)
        end
      end
      
      # The AWS starting location for discovery.
      class GooglePrivacyDlpV2AwsDiscoveryStartingLocation
        include Google::Apis::Core::Hashable
      
        # The AWS account ID that this discovery config applies to. Within an AWS
        # organization, you can find the AWS account ID inside an AWS account ARN.
        # Example: arn:`partition`:organizations::`management_account_id`:account/`
        # org_id`/`account_id`
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # All AWS assets stored in Asset Inventory that didn't match other AWS discovery
        # configs.
        # Corresponds to the JSON property `allAssetInventoryAssets`
        # @return [Boolean]
        attr_accessor :all_asset_inventory_assets
        alias_method :all_asset_inventory_assets?, :all_asset_inventory_assets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @all_asset_inventory_assets = args[:all_asset_inventory_assets] if args.key?(:all_asset_inventory_assets)
        end
      end
      
      # Target used to match against for discovery with BigQuery tables
      class GooglePrivacyDlpV2BigQueryDiscoveryTarget
        include Google::Apis::Core::Hashable
      
        # What must take place for a profile to be updated and how frequently it should
        # occur. New tables are scanned as quickly as possible depending on system
        # capacity.
        # Corresponds to the JSON property `cadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryGenerationCadence]
        attr_accessor :cadence
      
        # Requirements that must be true before a table is scanned in discovery for the
        # first time. There is an AND relationship between the top-level attributes.
        # Additionally, minimum conditions with an OR relationship that must be met
        # before Cloud DLP scans a table can be set (like a minimum row count or a
        # minimum table age).
        # Corresponds to the JSON property `conditions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryBigQueryConditions]
        attr_accessor :conditions
      
        # Do not profile the tables.
        # Corresponds to the JSON property `disabled`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled]
        attr_accessor :disabled
      
        # Determines what tables will have profiles generated within an organization or
        # project. Includes the ability to filter by regular expression patterns on
        # project ID, dataset ID, and table ID.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryBigQueryFilter]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cadence = args[:cadence] if args.key?(:cadence)
          @conditions = args[:conditions] if args.key?(:conditions)
          @disabled = args[:disabled] if args.key?(:disabled)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Message defining a field of a BigQuery table.
      class GooglePrivacyDlpV2BigQueryField
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Row key for identifying a record in BigQuery table.
      class GooglePrivacyDlpV2BigQueryKey
        include Google::Apis::Core::Hashable
      
        # Row number inferred at the time the table was scanned. This value is
        # nondeterministic, cannot be queried, and may be null for inspection jobs. To
        # locate findings within a table, specify `inspect_job.storage_config.
        # big_query_options.identifying_fields` in `CreateDlpJobRequest`.
        # Corresponds to the JSON property `rowNumber`
        # @return [Fixnum]
        attr_accessor :row_number
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `tableReference`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :table_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row_number = args[:row_number] if args.key?(:row_number)
          @table_reference = args[:table_reference] if args.key?(:table_reference)
        end
      end
      
      # Options defining BigQuery table and row identifiers.
      class GooglePrivacyDlpV2BigQueryOptions
        include Google::Apis::Core::Hashable
      
        # References to fields excluded from scanning. This allows you to skip
        # inspection of entire columns which you know have no findings. When inspecting
        # a table, we recommend that you inspect all columns. Otherwise, findings might
        # be affected because hints from excluded columns will not be used.
        # Corresponds to the JSON property `excludedFields`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId>]
        attr_accessor :excluded_fields
      
        # Table fields that may uniquely identify a row within the table. When `actions.
        # saveFindings.outputConfig.table` is specified, the values of columns specified
        # here are available in the output table under `location.content_locations.
        # record_location.record_key.id_values`. Nested fields such as `person.birthdate.
        # year` are allowed.
        # Corresponds to the JSON property `identifyingFields`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId>]
        attr_accessor :identifying_fields
      
        # Limit scanning only to these fields. When inspecting a table, we recommend
        # that you inspect all columns. Otherwise, findings might be affected because
        # hints from excluded columns will not be used.
        # Corresponds to the JSON property `includedFields`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId>]
        attr_accessor :included_fields
      
        # Max number of rows to scan. If the table has more rows than this value, the
        # rest of the rows are omitted. If not set, or if set to 0, all rows will be
        # scanned. Only one of rows_limit and rows_limit_percent can be specified.
        # Cannot be used in conjunction with TimespanConfig.
        # Corresponds to the JSON property `rowsLimit`
        # @return [Fixnum]
        attr_accessor :rows_limit
      
        # Max percentage of rows to scan. The rest are omitted. The number of rows
        # scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and
        # 100 means no limit. Defaults to 0. Only one of rows_limit and
        # rows_limit_percent can be specified. Cannot be used in conjunction with
        # TimespanConfig. Caution: A [known issue](https://cloud.google.com/sensitive-
        # data-protection/docs/known-issues#bq-sampling) is causing the `
        # rowsLimitPercent` field to behave unexpectedly. We recommend using `rowsLimit`
        # instead.
        # Corresponds to the JSON property `rowsLimitPercent`
        # @return [Fixnum]
        attr_accessor :rows_limit_percent
      
        # How to sample the data.
        # Corresponds to the JSON property `sampleMethod`
        # @return [String]
        attr_accessor :sample_method
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `tableReference`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :table_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_fields = args[:excluded_fields] if args.key?(:excluded_fields)
          @identifying_fields = args[:identifying_fields] if args.key?(:identifying_fields)
          @included_fields = args[:included_fields] if args.key?(:included_fields)
          @rows_limit = args[:rows_limit] if args.key?(:rows_limit)
          @rows_limit_percent = args[:rows_limit_percent] if args.key?(:rows_limit_percent)
          @sample_method = args[:sample_method] if args.key?(:sample_method)
          @table_reference = args[:table_reference] if args.key?(:table_reference)
        end
      end
      
      # A pattern to match against one or more tables, datasets, or projects that
      # contain BigQuery tables. At least one pattern must be specified. Regular
      # expressions use RE2 [syntax](https://github.com/google/re2/wiki/Syntax); a
      # guide can be found under the google/re2 repository on GitHub.
      class GooglePrivacyDlpV2BigQueryRegex
        include Google::Apis::Core::Hashable
      
        # If unset, this property matches all datasets.
        # Corresponds to the JSON property `datasetIdRegex`
        # @return [String]
        attr_accessor :dataset_id_regex
      
        # For organizations, if unset, will match all projects. Has no effect for data
        # profile configurations created within a project.
        # Corresponds to the JSON property `projectIdRegex`
        # @return [String]
        attr_accessor :project_id_regex
      
        # If unset, this property matches all tables.
        # Corresponds to the JSON property `tableIdRegex`
        # @return [String]
        attr_accessor :table_id_regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id_regex = args[:dataset_id_regex] if args.key?(:dataset_id_regex)
          @project_id_regex = args[:project_id_regex] if args.key?(:project_id_regex)
          @table_id_regex = args[:table_id_regex] if args.key?(:table_id_regex)
        end
      end
      
      # A collection of regular expressions to determine what tables to match against.
      class GooglePrivacyDlpV2BigQueryRegexes
        include Google::Apis::Core::Hashable
      
        # A single BigQuery regular expression pattern to match against one or more
        # tables, datasets, or projects that contain BigQuery tables.
        # Corresponds to the JSON property `patterns`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryRegex>]
        attr_accessor :patterns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @patterns = args[:patterns] if args.key?(:patterns)
        end
      end
      
      # Message defining the location of a BigQuery table. A table is uniquely
      # identified by its project_id, dataset_id, and table_name. Within a query a
      # table is often referenced with a string in the format of: `:.` or `..`.
      class GooglePrivacyDlpV2BigQueryTable
        include Google::Apis::Core::Hashable
      
        # Dataset ID of the table.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The Google Cloud project ID of the project containing the table. If omitted,
        # project ID is inferred from the API call.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Name of the table.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # Specifies a collection of BigQuery tables. Used for Discovery.
      class GooglePrivacyDlpV2BigQueryTableCollection
        include Google::Apis::Core::Hashable
      
        # A collection of regular expressions to determine what tables to match against.
        # Corresponds to the JSON property `includeRegexes`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryRegexes]
        attr_accessor :include_regexes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_regexes = args[:include_regexes] if args.key?(:include_regexes)
        end
      end
      
      # The types of BigQuery tables supported by Cloud DLP.
      class GooglePrivacyDlpV2BigQueryTableTypes
        include Google::Apis::Core::Hashable
      
        # A set of BigQuery table types.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # Bounding box encompassing detected text within an image.
      class GooglePrivacyDlpV2BoundingBox
        include Google::Apis::Core::Hashable
      
        # Height of the bounding box in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Left coordinate of the bounding box. (0,0) is upper left.
        # Corresponds to the JSON property `left`
        # @return [Fixnum]
        attr_accessor :left
      
        # Top coordinate of the bounding box. (0,0) is upper left.
        # Corresponds to the JSON property `top`
        # @return [Fixnum]
        attr_accessor :top
      
        # Width of the bounding box in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @left = args[:left] if args.key?(:left)
          @top = args[:top] if args.key?(:top)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Bucket is represented as a range, along with replacement values.
      class GooglePrivacyDlpV2Bucket
        include Google::Apis::Core::Hashable
      
        # Set of primitive values supported by the system. Note that for the purposes of
        # inspection or transformation, the number of bytes considered to comprise a '
        # Value' is based on its representation as a UTF-8 encoded string. For example,
        # if 'integer_value' is set to 123456789, the number of bytes would be counted
        # as 9, even though an int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `max`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Value]
        attr_accessor :max
      
        # Set of primitive values supported by the system. Note that for the purposes of
        # inspection or transformation, the number of bytes considered to comprise a '
        # Value' is based on its representation as a UTF-8 encoded string. For example,
        # if 'integer_value' is set to 123456789, the number of bytes would be counted
        # as 9, even though an int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `min`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Value]
        attr_accessor :min
      
        # Set of primitive values supported by the system. Note that for the purposes of
        # inspection or transformation, the number of bytes considered to comprise a '
        # Value' is based on its representation as a UTF-8 encoded string. For example,
        # if 'integer_value' is set to 123456789, the number of bytes would be counted
        # as 9, even though an int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `replacementValue`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Value]
        attr_accessor :replacement_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
          @replacement_value = args[:replacement_value] if args.key?(:replacement_value)
        end
      end
      
      # Generalization function that buckets values based on ranges. The ranges and
      # replacement values are dynamically provided by the user for custom behavior,
      # such as 1-30 -> LOW, 31-65 -> MEDIUM, 66-100 -> HIGH. This can be used on data
      # of type: number, long, string, timestamp. If the bound `Value` type differs
      # from the type of data being transformed, we will first attempt converting the
      # type of the data to be transformed to match the type of the bound before
      # comparing. See https://cloud.google.com/sensitive-data-protection/docs/
      # concepts-bucketing to learn more.
      class GooglePrivacyDlpV2BucketingConfig
        include Google::Apis::Core::Hashable
      
        # Set of buckets. Ranges must be non-overlapping.
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Bucket>]
        attr_accessor :buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
        end
      end
      
      # Container for bytes to inspect or redact.
      class GooglePrivacyDlpV2ByteContentItem
        include Google::Apis::Core::Hashable
      
        # Content data to inspect or redact.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # The type of data stored in the bytes string. Default will be TEXT_UTF8.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The request message for canceling a DLP job.
      class GooglePrivacyDlpV2CancelDlpJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Compute numerical stats over an individual column, including number of
      # distinct values and value count distribution.
      class GooglePrivacyDlpV2CategoricalStatsConfig
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # Histogram of value frequencies in the column.
      class GooglePrivacyDlpV2CategoricalStatsHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Total number of values in this bucket.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Total number of distinct values in this bucket.
        # Corresponds to the JSON property `bucketValueCount`
        # @return [Fixnum]
        attr_accessor :bucket_value_count
      
        # Sample of value frequencies in this bucket. The total number of values
        # returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2ValueFrequency>]
        attr_accessor :bucket_values
      
        # Lower bound on the value frequency of the values in this bucket.
        # Corresponds to the JSON property `valueFrequencyLowerBound`
        # @return [Fixnum]
        attr_accessor :value_frequency_lower_bound
      
        # Upper bound on the value frequency of the values in this bucket.
        # Corresponds to the JSON property `valueFrequencyUpperBound`
        # @return [Fixnum]
        attr_accessor :value_frequency_upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_size = args[:bucket_size] if args.key?(:bucket_size)
          @bucket_value_count = args[:bucket_value_count] if args.key?(:bucket_value_count)
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @value_frequency_lower_bound = args[:value_frequency_lower_bound] if args.key?(:value_frequency_lower_bound)
          @value_frequency_upper_bound = args[:value_frequency_upper_bound] if args.key?(:value_frequency_upper_bound)
        end
      end
      
      # Result of the categorical stats computation.
      class GooglePrivacyDlpV2CategoricalStatsResult
        include Google::Apis::Core::Hashable
      
        # Histogram of value frequencies in the column.
        # Corresponds to the JSON property `valueFrequencyHistogramBuckets`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2CategoricalStatsHistogramBucket>]
        attr_accessor :value_frequency_histogram_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value_frequency_histogram_buckets = args[:value_frequency_histogram_buckets] if args.key?(:value_frequency_histogram_buckets)
        end
      end
      
      # Partially mask a string by replacing a given number of characters with a fixed
      # character. Masking can start from the beginning or end of the string. This can
      # be used on data of any type (numbers, longs, and so on) and when de-
      # identifying structured data we'll attempt to preserve the original data's type.
      # (This allows you to take a long like 123 and modify it to a string like **3.
      class GooglePrivacyDlpV2CharacterMaskConfig
        include Google::Apis::Core::Hashable
      
        # When masking a string, items in this list will be skipped when replacing
        # characters. For example, if the input string is `555-555-5555` and you
        # instruct Cloud DLP to skip `-` and mask 5 characters with `*`, Cloud DLP
        # returns `***-**5-5555`.
        # Corresponds to the JSON property `charactersToIgnore`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2CharsToIgnore>]
        attr_accessor :characters_to_ignore
      
        # Character to use to mask the sensitive values—for example, `*` for an
        # alphabetic string such as a name, or `0` for a numeric string such as ZIP code
        # or credit card number. This string must have a length of 1. If not supplied,
        # this value defaults to `*` for strings, and `0` for digits.
        # Corresponds to the JSON property `maskingCharacter`
        # @return [String]
        attr_accessor :masking_character
      
        # Number of characters to mask. If not set, all matching chars will be masked.
        # Skipped characters do not count towards this tally. If `number_to_mask` is
        # negative, this denotes inverse masking. Cloud DLP masks all but a number of
        # characters. For example, suppose you have the following values: - `
        # masking_character` is `*` - `number_to_mask` is `-4` - `reverse_order` is `
        # false` - `CharsToIgnore` includes `-` - Input string is `1234-5678-9012-3456`
        # The resulting de-identified string is `****-****-****-3456`. Cloud DLP masks
        # all but the last four characters. If `reverse_order` is `true`, all but the
        # first four characters are masked as `1234-****-****-****`.
        # Corresponds to the JSON property `numberToMask`
        # @return [Fixnum]
        attr_accessor :number_to_mask
      
        # Mask characters in reverse order. For example, if `masking_character` is `0`, `
        # number_to_mask` is `14`, and `reverse_order` is `false`, then the input string
        # `1234-5678-9012-3456` is masked as `00000000000000-3456`. If `
        # masking_character` is `*`, `number_to_mask` is `3`, and `reverse_order` is `
        # true`, then the string `12345` is masked as `12***`.
        # Corresponds to the JSON property `reverseOrder`
        # @return [Boolean]
        attr_accessor :reverse_order
        alias_method :reverse_order?, :reverse_order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @characters_to_ignore = args[:characters_to_ignore] if args.key?(:characters_to_ignore)
          @masking_character = args[:masking_character] if args.key?(:masking_character)
          @number_to_mask = args[:number_to_mask] if args.key?(:number_to_mask)
          @reverse_order = args[:reverse_order] if args.key?(:reverse_order)
        end
      end
      
      # Characters to skip when doing deidentification of a value. These will be left
      # alone and skipped.
      class GooglePrivacyDlpV2CharsToIgnore
        include Google::Apis::Core::Hashable
      
        # Characters to not transform when masking.
        # Corresponds to the JSON property `charactersToSkip`
        # @return [String]
        attr_accessor :characters_to_skip
      
        # Common characters to not transform when masking. Useful to avoid removing
        # punctuation.
        # Corresponds to the JSON property `commonCharactersToIgnore`
        # @return [String]
        attr_accessor :common_characters_to_ignore
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @characters_to_skip = args[:characters_to_skip] if args.key?(:characters_to_skip)
          @common_characters_to_ignore = args[:common_characters_to_ignore] if args.key?(:common_characters_to_ignore)
        end
      end
      
      # Target used to match against for discovery with Cloud SQL tables.
      class GooglePrivacyDlpV2CloudSqlDiscoveryTarget
        include Google::Apis::Core::Hashable
      
        # Requirements that must be true before a table is profiled for the first time.
        # Corresponds to the JSON property `conditions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudSqlConditions]
        attr_accessor :conditions
      
        # Do not profile the tables.
        # Corresponds to the JSON property `disabled`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled]
        attr_accessor :disabled
      
        # Determines what tables will have profiles generated within an organization or
        # project. Includes the ability to filter by regular expression patterns on
        # project ID, location, instance, database, and database resource name.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudSqlFilter]
        attr_accessor :filter
      
        # How often existing tables should have their profiles refreshed. New tables are
        # scanned as quickly as possible depending on system capacity.
        # Corresponds to the JSON property `generationCadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence]
        attr_accessor :generation_cadence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @disabled = args[:disabled] if args.key?(:disabled)
          @filter = args[:filter] if args.key?(:filter)
          @generation_cadence = args[:generation_cadence] if args.key?(:generation_cadence)
        end
      end
      
      # Use IAM authentication to connect. This requires the Cloud SQL IAM feature to
      # be enabled on the instance, which is not the default for Cloud SQL. See https:/
      # /cloud.google.com/sql/docs/postgres/authentication and https://cloud.google.
      # com/sql/docs/mysql/authentication.
      class GooglePrivacyDlpV2CloudSqlIamCredential
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Cloud SQL connection properties.
      class GooglePrivacyDlpV2CloudSqlProperties
        include Google::Apis::Core::Hashable
      
        # Use IAM authentication to connect. This requires the Cloud SQL IAM feature to
        # be enabled on the instance, which is not the default for Cloud SQL. See https:/
        # /cloud.google.com/sql/docs/postgres/authentication and https://cloud.google.
        # com/sql/docs/mysql/authentication.
        # Corresponds to the JSON property `cloudSqlIam`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CloudSqlIamCredential]
        attr_accessor :cloud_sql_iam
      
        # Optional. Immutable. The Cloud SQL instance for which the connection is
        # defined. Only one connection per instance is allowed. This can only be set at
        # creation time, and cannot be updated. It is an error to use a connection_name
        # from different project or region than the one that holds the connection. For
        # example, a Connection resource for Cloud SQL connection_name `project-id:us-
        # central1:sql-instance` must be created under the parent `projects/project-id/
        # locations/us-central1`
        # Corresponds to the JSON property `connectionName`
        # @return [String]
        attr_accessor :connection_name
      
        # Required. The database engine used by the Cloud SQL instance that this
        # connection configures.
        # Corresponds to the JSON property `databaseEngine`
        # @return [String]
        attr_accessor :database_engine
      
        # Required. The DLP API will limit its connections to max_connections. Must be 2
        # or greater.
        # Corresponds to the JSON property `maxConnections`
        # @return [Fixnum]
        attr_accessor :max_connections
      
        # A credential consisting of a username and password, where the password is
        # stored in a Secret Manager resource. Note: Secret Manager [charges apply](
        # https://cloud.google.com/secret-manager/pricing).
        # Corresponds to the JSON property `usernamePassword`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SecretManagerCredential]
        attr_accessor :username_password
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_sql_iam = args[:cloud_sql_iam] if args.key?(:cloud_sql_iam)
          @connection_name = args[:connection_name] if args.key?(:connection_name)
          @database_engine = args[:database_engine] if args.key?(:database_engine)
          @max_connections = args[:max_connections] if args.key?(:max_connections)
          @username_password = args[:username_password] if args.key?(:username_password)
        end
      end
      
      # Target used to match against for discovery with Cloud Storage buckets.
      class GooglePrivacyDlpV2CloudStorageDiscoveryTarget
        include Google::Apis::Core::Hashable
      
        # Requirements that must be true before a file store is scanned in discovery for
        # the first time. There is an AND relationship between the top-level attributes.
        # Corresponds to the JSON property `conditions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryFileStoreConditions]
        attr_accessor :conditions
      
        # Do not profile the tables.
        # Corresponds to the JSON property `disabled`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled]
        attr_accessor :disabled
      
        # Determines which buckets will have profiles generated within an organization
        # or project. Includes the ability to filter by regular expression patterns on
        # project ID and bucket name.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudStorageFilter]
        attr_accessor :filter
      
        # How often existing buckets should have their profiles refreshed. New buckets
        # are scanned as quickly as possible depending on system capacity.
        # Corresponds to the JSON property `generationCadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence]
        attr_accessor :generation_cadence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @disabled = args[:disabled] if args.key?(:disabled)
          @filter = args[:filter] if args.key?(:filter)
          @generation_cadence = args[:generation_cadence] if args.key?(:generation_cadence)
        end
      end
      
      # Message representing a set of files in Cloud Storage.
      class GooglePrivacyDlpV2CloudStorageFileSet
        include Google::Apis::Core::Hashable
      
        # The url, in the format `gs:///`. Trailing wildcard in the path is allowed.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Options defining a file or a set of files within a Cloud Storage bucket.
      class GooglePrivacyDlpV2CloudStorageOptions
        include Google::Apis::Core::Hashable
      
        # Max number of bytes to scan from a file. If a scanned file's size is bigger
        # than this value then the rest of the bytes are omitted. Only one of `
        # bytes_limit_per_file` and `bytes_limit_per_file_percent` can be specified.
        # This field can't be set if de-identification is requested. For certain file
        # types, setting this field has no effect. For more information, see [Limits on
        # bytes scanned per file](https://cloud.google.com/sensitive-data-protection/
        # docs/supported-file-types#max-byte-size-per-file).
        # Corresponds to the JSON property `bytesLimitPerFile`
        # @return [Fixnum]
        attr_accessor :bytes_limit_per_file
      
        # Max percentage of bytes to scan from a file. The rest are omitted. The number
        # of bytes scanned is rounded down. Must be between 0 and 100, inclusively. Both
        # 0 and 100 means no limit. Defaults to 0. Only one of bytes_limit_per_file and
        # bytes_limit_per_file_percent can be specified. This field can't be set if de-
        # identification is requested. For certain file types, setting this field has no
        # effect. For more information, see [Limits on bytes scanned per file](https://
        # cloud.google.com/sensitive-data-protection/docs/supported-file-types#max-byte-
        # size-per-file).
        # Corresponds to the JSON property `bytesLimitPerFilePercent`
        # @return [Fixnum]
        attr_accessor :bytes_limit_per_file_percent
      
        # Set of files to scan.
        # Corresponds to the JSON property `fileSet`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FileSet]
        attr_accessor :file_set
      
        # List of file type groups to include in the scan. If empty, all files are
        # scanned and available data format processors are applied. In addition, the
        # binary content of the selected files is always scanned as well. Images are
        # scanned only as binary if the specified region does not support image
        # inspection and no file_types were specified. Image inspection is restricted to
        # 'global', 'us', 'asia', and 'europe'.
        # Corresponds to the JSON property `fileTypes`
        # @return [Array<String>]
        attr_accessor :file_types
      
        # Limits the number of files to scan to this percentage of the input FileSet.
        # Number of files scanned is rounded down. Must be between 0 and 100,
        # inclusively. Both 0 and 100 means no limit. Defaults to 0.
        # Corresponds to the JSON property `filesLimitPercent`
        # @return [Fixnum]
        attr_accessor :files_limit_percent
      
        # How to sample the data.
        # Corresponds to the JSON property `sampleMethod`
        # @return [String]
        attr_accessor :sample_method
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_limit_per_file = args[:bytes_limit_per_file] if args.key?(:bytes_limit_per_file)
          @bytes_limit_per_file_percent = args[:bytes_limit_per_file_percent] if args.key?(:bytes_limit_per_file_percent)
          @file_set = args[:file_set] if args.key?(:file_set)
          @file_types = args[:file_types] if args.key?(:file_types)
          @files_limit_percent = args[:files_limit_percent] if args.key?(:files_limit_percent)
          @sample_method = args[:sample_method] if args.key?(:sample_method)
        end
      end
      
      # Message representing a single file or path in Cloud Storage.
      class GooglePrivacyDlpV2CloudStoragePath
        include Google::Apis::Core::Hashable
      
        # A URL representing a file or path (no wildcards) in Cloud Storage. Example: `
        # gs://[BUCKET_NAME]/dictionary.txt`
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # A pattern to match against one or more file stores. At least one pattern must
      # be specified. Regular expressions use RE2 [syntax](https://github.com/google/
      # re2/wiki/Syntax); a guide can be found under the google/re2 repository on
      # GitHub.
      class GooglePrivacyDlpV2CloudStorageRegex
        include Google::Apis::Core::Hashable
      
        # Optional. Regex to test the bucket name against. If empty, all buckets match.
        # Example: "marketing2021" or "(marketing)\d`4`" will both match the bucket gs://
        # marketing2021
        # Corresponds to the JSON property `bucketNameRegex`
        # @return [String]
        attr_accessor :bucket_name_regex
      
        # Optional. For organizations, if unset, will match all projects.
        # Corresponds to the JSON property `projectIdRegex`
        # @return [String]
        attr_accessor :project_id_regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name_regex = args[:bucket_name_regex] if args.key?(:bucket_name_regex)
          @project_id_regex = args[:project_id_regex] if args.key?(:project_id_regex)
        end
      end
      
      # Message representing a set of files in a Cloud Storage bucket. Regular
      # expressions are used to allow fine-grained control over which files in the
      # bucket to include. Included files are those that match at least one item in `
      # include_regex` and do not match any items in `exclude_regex`. Note that a file
      # that matches items from both lists will _not_ be included. For a match to
      # occur, the entire file path (i.e., everything in the url after the bucket name)
      # must match the regular expression. For example, given the input ``bucket_name:
      # "mybucket", include_regex: ["directory1/.*"], exclude_regex: ["directory1/
      # excluded.*"]``: * `gs://mybucket/directory1/myfile` will be included * `gs://
      # mybucket/directory1/directory2/myfile` will be included (`.*` matches across `/
      # `) * `gs://mybucket/directory0/directory1/myfile` will _not_ be included (the
      # full path doesn't match any items in `include_regex`) * `gs://mybucket/
      # directory1/excludedfile` will _not_ be included (the path matches an item in `
      # exclude_regex`) If `include_regex` is left empty, it will match all files by
      # default (this is equivalent to setting `include_regex: [".*"]`). Some other
      # common use cases: * ``bucket_name: "mybucket", exclude_regex: [".*\.pdf"]``
      # will include all files in `mybucket` except for .pdf files * ``bucket_name: "
      # mybucket", include_regex: ["directory/[^/]+"]`` will include all files
      # directly under `gs://mybucket/directory/`, without matching across `/`
      class GooglePrivacyDlpV2CloudStorageRegexFileSet
        include Google::Apis::Core::Hashable
      
        # The name of a Cloud Storage bucket. Required.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # A list of regular expressions matching file paths to exclude. All files in the
        # bucket that match at least one of these regular expressions will be excluded
        # from the scan. Regular expressions use RE2 [syntax](https://github.com/google/
        # re2/wiki/Syntax); a guide can be found under the google/re2 repository on
        # GitHub.
        # Corresponds to the JSON property `excludeRegex`
        # @return [Array<String>]
        attr_accessor :exclude_regex
      
        # A list of regular expressions matching file paths to include. All files in the
        # bucket that match at least one of these regular expressions will be included
        # in the set of files, except for those that also match an item in `
        # exclude_regex`. Leaving this field empty will match all files by default (this
        # is equivalent to including `.*` in the list). Regular expressions use RE2 [
        # syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found under
        # the google/re2 repository on GitHub.
        # Corresponds to the JSON property `includeRegex`
        # @return [Array<String>]
        attr_accessor :include_regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @exclude_regex = args[:exclude_regex] if args.key?(:exclude_regex)
          @include_regex = args[:include_regex] if args.key?(:include_regex)
        end
      end
      
      # Identifies a single Cloud Storage bucket.
      class GooglePrivacyDlpV2CloudStorageResourceReference
        include Google::Apis::Core::Hashable
      
        # Required. The bucket to scan.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # Required. If within a project-level config, then this must match the config's
        # project id.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Represents a color in the RGB color space.
      class GooglePrivacyDlpV2Color
        include Google::Apis::Core::Hashable
      
        # The amount of blue in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `blue`
        # @return [Float]
        attr_accessor :blue
      
        # The amount of green in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `green`
        # @return [Float]
        attr_accessor :green
      
        # The amount of red in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `red`
        # @return [Float]
        attr_accessor :red
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blue = args[:blue] if args.key?(:blue)
          @green = args[:green] if args.key?(:green)
          @red = args[:red] if args.key?(:red)
        end
      end
      
      # The profile for a scanned column within a table.
      class GooglePrivacyDlpV2ColumnDataProfile
        include Google::Apis::Core::Hashable
      
        # The name of the column.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # The infoType details for this column.
        # Corresponds to the JSON property `columnInfoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeSummary]
        attr_accessor :column_info_type
      
        # The data type of a given column.
        # Corresponds to the JSON property `columnType`
        # @return [String]
        attr_accessor :column_type
      
        # Score is a summary of all elements in the data profile. A higher number means
        # more risk.
        # Corresponds to the JSON property `dataRiskLevel`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel]
        attr_accessor :data_risk_level
      
        # The BigQuery dataset ID, if the resource profiled is a BigQuery table.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # If supported, the location where the dataset's data is stored. See https://
        # cloud.google.com/bigquery/docs/locations for supported BigQuery locations.
        # Corresponds to the JSON property `datasetLocation`
        # @return [String]
        attr_accessor :dataset_location
      
        # The Google Cloud project ID that owns the profiled resource.
        # Corresponds to the JSON property `datasetProjectId`
        # @return [String]
        attr_accessor :dataset_project_id
      
        # Approximate percentage of entries being null in the column.
        # Corresponds to the JSON property `estimatedNullPercentage`
        # @return [String]
        attr_accessor :estimated_null_percentage
      
        # Approximate uniqueness of the column.
        # Corresponds to the JSON property `estimatedUniquenessScore`
        # @return [String]
        attr_accessor :estimated_uniqueness_score
      
        # The likelihood that this column contains free-form text. A value close to 1
        # may indicate the column is likely to contain free-form or natural language
        # text. Range in 0-1.
        # Corresponds to the JSON property `freeTextScore`
        # @return [Float]
        attr_accessor :free_text_score
      
        # The name of the profile.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Other types found within this column. List will be unordered.
        # Corresponds to the JSON property `otherMatches`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2OtherInfoTypeSummary>]
        attr_accessor :other_matches
      
        # Indicates if a policy tag has been applied to the column.
        # Corresponds to the JSON property `policyState`
        # @return [String]
        attr_accessor :policy_state
      
        # The last time the profile was generated.
        # Corresponds to the JSON property `profileLastGenerated`
        # @return [String]
        attr_accessor :profile_last_generated
      
        # Success or errors for the profile generation.
        # Corresponds to the JSON property `profileStatus`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ProfileStatus]
        attr_accessor :profile_status
      
        # Score is calculated from of all elements in the data profile. A higher level
        # means the data is more sensitive.
        # Corresponds to the JSON property `sensitivityScore`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore]
        attr_accessor :sensitivity_score
      
        # State of a profile.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The resource name of the table data profile.
        # Corresponds to the JSON property `tableDataProfile`
        # @return [String]
        attr_accessor :table_data_profile
      
        # The resource name of the resource this column is within.
        # Corresponds to the JSON property `tableFullResource`
        # @return [String]
        attr_accessor :table_full_resource
      
        # The table ID.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @column_info_type = args[:column_info_type] if args.key?(:column_info_type)
          @column_type = args[:column_type] if args.key?(:column_type)
          @data_risk_level = args[:data_risk_level] if args.key?(:data_risk_level)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @dataset_location = args[:dataset_location] if args.key?(:dataset_location)
          @dataset_project_id = args[:dataset_project_id] if args.key?(:dataset_project_id)
          @estimated_null_percentage = args[:estimated_null_percentage] if args.key?(:estimated_null_percentage)
          @estimated_uniqueness_score = args[:estimated_uniqueness_score] if args.key?(:estimated_uniqueness_score)
          @free_text_score = args[:free_text_score] if args.key?(:free_text_score)
          @name = args[:name] if args.key?(:name)
          @other_matches = args[:other_matches] if args.key?(:other_matches)
          @policy_state = args[:policy_state] if args.key?(:policy_state)
          @profile_last_generated = args[:profile_last_generated] if args.key?(:profile_last_generated)
          @profile_status = args[:profile_status] if args.key?(:profile_status)
          @sensitivity_score = args[:sensitivity_score] if args.key?(:sensitivity_score)
          @state = args[:state] if args.key?(:state)
          @table_data_profile = args[:table_data_profile] if args.key?(:table_data_profile)
          @table_full_resource = args[:table_full_resource] if args.key?(:table_full_resource)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # The field type of `value` and `field` do not need to match to be considered
      # equal, but not all comparisons are possible. EQUAL_TO and NOT_EQUAL_TO attempt
      # to compare even with incompatible types, but all other comparisons are invalid
      # with incompatible types. A `value` of type: - `string` can be compared against
      # all other types - `boolean` can only be compared against other booleans - `
      # integer` can be compared against doubles or a string if the string value can
      # be parsed as an integer. - `double` can be compared against integers or a
      # string if the string can be parsed as a double. - `Timestamp` can be compared
      # against strings in RFC 3339 date string format. - `TimeOfDay` can be compared
      # against timestamps and strings in the format of 'HH:mm:ss'. If we fail to
      # compare do to type mismatch, a warning will be given and the condition will
      # evaluate to false.
      class GooglePrivacyDlpV2Condition
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field
      
        # Required. Operator used to compare the field or infoType to the value.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Set of primitive values supported by the system. Note that for the purposes of
        # inspection or transformation, the number of bytes considered to comprise a '
        # Value' is based on its representation as a UTF-8 encoded string. For example,
        # if 'integer_value' is set to 123456789, the number of bytes would be counted
        # as 9, even though an int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @operator = args[:operator] if args.key?(:operator)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A collection of conditions.
      class GooglePrivacyDlpV2Conditions
        include Google::Apis::Core::Hashable
      
        # A collection of conditions.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Condition>]
        attr_accessor :conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
        end
      end
      
      # A data connection to allow the DLP API to profile data in locations that
      # require additional configuration.
      class GooglePrivacyDlpV2Connection
        include Google::Apis::Core::Hashable
      
        # Cloud SQL connection properties.
        # Corresponds to the JSON property `cloudSql`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CloudSqlProperties]
        attr_accessor :cloud_sql
      
        # Output only. Set if status == ERROR, to provide additional details. Will store
        # the last 10 errors sorted with the most recent first.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Error>]
        attr_accessor :errors
      
        # Output only. Name of the connection: `projects/`project`/locations/`location`/
        # connections/`name``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The connection's state in its lifecycle.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_sql = args[:cloud_sql] if args.key?(:cloud_sql)
          @errors = args[:errors] if args.key?(:errors)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents a container that may contain DLP findings. Examples of a container
      # include a file, table, or database record.
      class GooglePrivacyDlpV2Container
        include Google::Apis::Core::Hashable
      
        # A string representation of the full container name. Examples: - BigQuery: '
        # Project:DataSetId.TableId' - Cloud Storage: 'gs://Bucket/folders/filename.txt'
        # Corresponds to the JSON property `fullPath`
        # @return [String]
        attr_accessor :full_path
      
        # Project where the finding was found. Can be different from the project that
        # owns the finding.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The rest of the path after the root. Examples: - For BigQuery table `
        # project_id:dataset_id.table_id`, the relative path is `table_id` - For Cloud
        # Storage file `gs://bucket/folder/filename.txt`, the relative path is `folder/
        # filename.txt`
        # Corresponds to the JSON property `relativePath`
        # @return [String]
        attr_accessor :relative_path
      
        # The root of the container. Examples: - For BigQuery table `project_id:
        # dataset_id.table_id`, the root is `dataset_id` - For Cloud Storage file `gs://
        # bucket/folder/filename.txt`, the root is `gs://bucket`
        # Corresponds to the JSON property `rootPath`
        # @return [String]
        attr_accessor :root_path
      
        # Container type, for example BigQuery or Cloud Storage.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Findings container modification timestamp, if applicable. For Cloud Storage,
        # this field contains the last file modification timestamp. For a BigQuery table,
        # this field contains the last_modified_time property. For Datastore, this
        # field isn't populated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Findings container version, if available ("generation" for Cloud Storage).
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_path = args[:full_path] if args.key?(:full_path)
          @project_id = args[:project_id] if args.key?(:project_id)
          @relative_path = args[:relative_path] if args.key?(:relative_path)
          @root_path = args[:root_path] if args.key?(:root_path)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Type of content to inspect.
      class GooglePrivacyDlpV2ContentItem
        include Google::Apis::Core::Hashable
      
        # Container for bytes to inspect or redact.
        # Corresponds to the JSON property `byteItem`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ByteContentItem]
        attr_accessor :byte_item
      
        # Structured content to inspect. Up to 50,000 `Value`s per request allowed. See
        # https://cloud.google.com/sensitive-data-protection/docs/inspecting-structured-
        # text#inspecting_a_table to learn more.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Table]
        attr_accessor :table
      
        # String data to inspect or redact.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @byte_item = args[:byte_item] if args.key?(:byte_item)
          @table = args[:table] if args.key?(:table)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Precise location of the finding within a document, record, image, or metadata
      # container.
      class GooglePrivacyDlpV2ContentLocation
        include Google::Apis::Core::Hashable
      
        # Name of the container where the finding is located. The top level name is the
        # source file name or table name. Names of some common storage containers are
        # formatted as follows: * BigQuery tables: ``project_id`:`dataset_id`.`table_id``
        # * Cloud Storage files: `gs://`bucket`/`path`` * Datastore namespace: `
        # namespace` Nested names could be absent if the embedded object has no string
        # identifier (for example, an image contained within a document).
        # Corresponds to the JSON property `containerName`
        # @return [String]
        attr_accessor :container_name
      
        # Finding container modification timestamp, if applicable. For Cloud Storage,
        # this field contains the last file modification timestamp. For a BigQuery table,
        # this field contains the last_modified_time property. For Datastore, this
        # field isn't populated.
        # Corresponds to the JSON property `containerTimestamp`
        # @return [String]
        attr_accessor :container_timestamp
      
        # Finding container version, if available ("generation" for Cloud Storage).
        # Corresponds to the JSON property `containerVersion`
        # @return [String]
        attr_accessor :container_version
      
        # Location of a finding within a document.
        # Corresponds to the JSON property `documentLocation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DocumentLocation]
        attr_accessor :document_location
      
        # Location of the finding within an image.
        # Corresponds to the JSON property `imageLocation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ImageLocation]
        attr_accessor :image_location
      
        # Metadata Location
        # Corresponds to the JSON property `metadataLocation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2MetadataLocation]
        attr_accessor :metadata_location
      
        # Location of a finding within a row or record.
        # Corresponds to the JSON property `recordLocation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RecordLocation]
        attr_accessor :record_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_name = args[:container_name] if args.key?(:container_name)
          @container_timestamp = args[:container_timestamp] if args.key?(:container_timestamp)
          @container_version = args[:container_version] if args.key?(:container_version)
          @document_location = args[:document_location] if args.key?(:document_location)
          @image_location = args[:image_location] if args.key?(:image_location)
          @metadata_location = args[:metadata_location] if args.key?(:metadata_location)
          @record_location = args[:record_location] if args.key?(:record_location)
        end
      end
      
      # Request message for CreateConnection.
      class GooglePrivacyDlpV2CreateConnectionRequest
        include Google::Apis::Core::Hashable
      
        # A data connection to allow the DLP API to profile data in locations that
        # require additional configuration.
        # Corresponds to the JSON property `connection`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection]
        attr_accessor :connection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection = args[:connection] if args.key?(:connection)
        end
      end
      
      # Request message for CreateDeidentifyTemplate.
      class GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
        include Google::Apis::Core::Hashable
      
        # DeidentifyTemplates contains instructions on how to de-identify content. See
        # https://cloud.google.com/sensitive-data-protection/docs/concepts-templates to
        # learn more.
        # Corresponds to the JSON property `deidentifyTemplate`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        attr_accessor :deidentify_template
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # The template id can contain uppercase and lowercase letters, numbers, and
        # hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The
        # maximum length is 100 characters. Can be empty to allow the system to generate
        # one.
        # Corresponds to the JSON property `templateId`
        # @return [String]
        attr_accessor :template_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify_template = args[:deidentify_template] if args.key?(:deidentify_template)
          @location_id = args[:location_id] if args.key?(:location_id)
          @template_id = args[:template_id] if args.key?(:template_id)
        end
      end
      
      # Request message for CreateDiscoveryConfig.
      class GooglePrivacyDlpV2CreateDiscoveryConfigRequest
        include Google::Apis::Core::Hashable
      
        # The config ID can contain uppercase and lowercase letters, numbers, and
        # hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The
        # maximum length is 100 characters. Can be empty to allow the system to generate
        # one.
        # Corresponds to the JSON property `configId`
        # @return [String]
        attr_accessor :config_id
      
        # Configuration for discovery to scan resources for profile generation. Only one
        # discovery configuration may exist per organization, folder, or project. The
        # generated data profiles are retained according to the [data retention policy] (
        # https://cloud.google.com/sensitive-data-protection/docs/data-profiles#
        # retention).
        # Corresponds to the JSON property `discoveryConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig]
        attr_accessor :discovery_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_id = args[:config_id] if args.key?(:config_id)
          @discovery_config = args[:discovery_config] if args.key?(:discovery_config)
        end
      end
      
      # Request message for CreateDlpJobRequest. Used to initiate long running jobs
      # such as calculating risk metrics or inspecting Google Cloud Storage.
      class GooglePrivacyDlpV2CreateDlpJobRequest
        include Google::Apis::Core::Hashable
      
        # Controls what and how to inspect for findings.
        # Corresponds to the JSON property `inspectJob`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectJobConfig]
        attr_accessor :inspect_job
      
        # The job id can contain uppercase and lowercase letters, numbers, and hyphens;
        # that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum
        # length is 100 characters. Can be empty to allow the system to generate one.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Configuration for a risk analysis job. See https://cloud.google.com/sensitive-
        # data-protection/docs/concepts-risk-analysis to learn more.
        # Corresponds to the JSON property `riskJob`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RiskAnalysisJobConfig]
        attr_accessor :risk_job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_job = args[:inspect_job] if args.key?(:inspect_job)
          @job_id = args[:job_id] if args.key?(:job_id)
          @location_id = args[:location_id] if args.key?(:location_id)
          @risk_job = args[:risk_job] if args.key?(:risk_job)
        end
      end
      
      # Request message for CreateInspectTemplate.
      class GooglePrivacyDlpV2CreateInspectTemplateRequest
        include Google::Apis::Core::Hashable
      
        # The inspectTemplate contains a configuration (set of types of sensitive data
        # to be detected) to be used anywhere you otherwise would normally specify
        # InspectConfig. See https://cloud.google.com/sensitive-data-protection/docs/
        # concepts-templates to learn more.
        # Corresponds to the JSON property `inspectTemplate`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        attr_accessor :inspect_template
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # The template id can contain uppercase and lowercase letters, numbers, and
        # hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The
        # maximum length is 100 characters. Can be empty to allow the system to generate
        # one.
        # Corresponds to the JSON property `templateId`
        # @return [String]
        attr_accessor :template_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_template = args[:inspect_template] if args.key?(:inspect_template)
          @location_id = args[:location_id] if args.key?(:location_id)
          @template_id = args[:template_id] if args.key?(:template_id)
        end
      end
      
      # Request message for CreateJobTrigger.
      class GooglePrivacyDlpV2CreateJobTriggerRequest
        include Google::Apis::Core::Hashable
      
        # Contains a configuration to make API calls on a repeating basis. See https://
        # cloud.google.com/sensitive-data-protection/docs/concepts-job-triggers to learn
        # more.
        # Corresponds to the JSON property `jobTrigger`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger]
        attr_accessor :job_trigger
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # The trigger id can contain uppercase and lowercase letters, numbers, and
        # hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The
        # maximum length is 100 characters. Can be empty to allow the system to generate
        # one.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_trigger = args[:job_trigger] if args.key?(:job_trigger)
          @location_id = args[:location_id] if args.key?(:location_id)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
        end
      end
      
      # Request message for CreateStoredInfoType.
      class GooglePrivacyDlpV2CreateStoredInfoTypeRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for stored infoTypes. All fields and subfield are provided by
        # the user. For more information, see https://cloud.google.com/sensitive-data-
        # protection/docs/creating-custom-infotypes.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeConfig]
        attr_accessor :config
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # The storedInfoType ID can contain uppercase and lowercase letters, numbers,
        # and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`.
        # The maximum length is 100 characters. Can be empty to allow the system to
        # generate one.
        # Corresponds to the JSON property `storedInfoTypeId`
        # @return [String]
        attr_accessor :stored_info_type_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @location_id = args[:location_id] if args.key?(:location_id)
          @stored_info_type_id = args[:stored_info_type_id] if args.key?(:stored_info_type_id)
        end
      end
      
      # Pseudonymization method that generates deterministic encryption for the given
      # input. Outputs a base64 encoded representation of the encrypted output. Uses
      # AES-SIV based on the RFC https://tools.ietf.org/html/rfc5297.
      class GooglePrivacyDlpV2CryptoDeterministicConfig
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :context
      
        # This is a data encryption key (DEK) (as opposed to a key encryption key (KEK)
        # stored by Cloud Key Management Service (Cloud KMS). When using Cloud KMS to
        # wrap or unwrap a DEK, be sure to set an appropriate IAM policy on the KEK to
        # ensure an attacker cannot unwrap the DEK.
        # Corresponds to the JSON property `cryptoKey`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoKey]
        attr_accessor :crypto_key
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `surrogateInfoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :surrogate_info_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @crypto_key = args[:crypto_key] if args.key?(:crypto_key)
          @surrogate_info_type = args[:surrogate_info_type] if args.key?(:surrogate_info_type)
        end
      end
      
      # Pseudonymization method that generates surrogates via cryptographic hashing.
      # Uses SHA-256. The key size must be either 32 or 64 bytes. Outputs a base64
      # encoded representation of the hashed output (for example,
      # L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=). Currently, only string and
      # integer values can be hashed. See https://cloud.google.com/sensitive-data-
      # protection/docs/pseudonymization to learn more.
      class GooglePrivacyDlpV2CryptoHashConfig
        include Google::Apis::Core::Hashable
      
        # This is a data encryption key (DEK) (as opposed to a key encryption key (KEK)
        # stored by Cloud Key Management Service (Cloud KMS). When using Cloud KMS to
        # wrap or unwrap a DEK, be sure to set an appropriate IAM policy on the KEK to
        # ensure an attacker cannot unwrap the DEK.
        # Corresponds to the JSON property `cryptoKey`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoKey]
        attr_accessor :crypto_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crypto_key = args[:crypto_key] if args.key?(:crypto_key)
        end
      end
      
      # This is a data encryption key (DEK) (as opposed to a key encryption key (KEK)
      # stored by Cloud Key Management Service (Cloud KMS). When using Cloud KMS to
      # wrap or unwrap a DEK, be sure to set an appropriate IAM policy on the KEK to
      # ensure an attacker cannot unwrap the DEK.
      class GooglePrivacyDlpV2CryptoKey
        include Google::Apis::Core::Hashable
      
        # Include to use an existing data crypto key wrapped by KMS. The wrapped key
        # must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM
        # permissions when sending a request to perform a crypto transformation using a
        # KMS-wrapped crypto key: dlp.kms.encrypt For more information, see [Creating a
        # wrapped key] (https://cloud.google.com/sensitive-data-protection/docs/create-
        # wrapped-key). Note: When you use Cloud KMS for cryptographic operations, [
        # charges apply](https://cloud.google.com/kms/pricing).
        # Corresponds to the JSON property `kmsWrapped`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2KmsWrappedCryptoKey]
        attr_accessor :kms_wrapped
      
        # Use this to have a random data crypto key generated. It will be discarded
        # after the request finishes.
        # Corresponds to the JSON property `transient`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TransientCryptoKey]
        attr_accessor :transient
      
        # Using raw keys is prone to security risks due to accidentally leaking the key.
        # Choose another type of key if possible.
        # Corresponds to the JSON property `unwrapped`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2UnwrappedCryptoKey]
        attr_accessor :unwrapped
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_wrapped = args[:kms_wrapped] if args.key?(:kms_wrapped)
          @transient = args[:transient] if args.key?(:transient)
          @unwrapped = args[:unwrapped] if args.key?(:unwrapped)
        end
      end
      
      # Replaces an identifier with a surrogate using Format Preserving Encryption (
      # FPE) with the FFX mode of operation; however when used in the `
      # ReidentifyContent` API method, it serves the opposite function by reversing
      # the surrogate back into the original identifier. The identifier must be
      # encoded as ASCII. For a given crypto key and context, the same identifier will
      # be replaced with the same surrogate. Identifiers must be at least two
      # characters long. In the case that the identifier is the empty string, it will
      # be skipped. See https://cloud.google.com/sensitive-data-protection/docs/
      # pseudonymization to learn more. Note: We recommend using
      # CryptoDeterministicConfig for all use cases which do not require preserving
      # the input alphabet space and size, plus warrant referential integrity. FPE
      # incurs significant latency costs.
      class GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
        include Google::Apis::Core::Hashable
      
        # Common alphabets.
        # Corresponds to the JSON property `commonAlphabet`
        # @return [String]
        attr_accessor :common_alphabet
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :context
      
        # This is a data encryption key (DEK) (as opposed to a key encryption key (KEK)
        # stored by Cloud Key Management Service (Cloud KMS). When using Cloud KMS to
        # wrap or unwrap a DEK, be sure to set an appropriate IAM policy on the KEK to
        # ensure an attacker cannot unwrap the DEK.
        # Corresponds to the JSON property `cryptoKey`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoKey]
        attr_accessor :crypto_key
      
        # This is supported by mapping these to the alphanumeric characters that the FFX
        # mode natively supports. This happens before/after encryption/decryption. Each
        # character listed must appear only once. Number of characters must be in the
        # range [2, 95]. This must be encoded as ASCII. The order of characters does not
        # matter. The full list of allowed characters is: ``
        # 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz~`!@#$%^&*()_-+=`
        # [`]|\:;"'<,>.?/``
        # Corresponds to the JSON property `customAlphabet`
        # @return [String]
        attr_accessor :custom_alphabet
      
        # The native way to select the alphabet. Must be in the range [2, 95].
        # Corresponds to the JSON property `radix`
        # @return [Fixnum]
        attr_accessor :radix
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `surrogateInfoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :surrogate_info_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_alphabet = args[:common_alphabet] if args.key?(:common_alphabet)
          @context = args[:context] if args.key?(:context)
          @crypto_key = args[:crypto_key] if args.key?(:crypto_key)
          @custom_alphabet = args[:custom_alphabet] if args.key?(:custom_alphabet)
          @radix = args[:radix] if args.key?(:radix)
          @surrogate_info_type = args[:surrogate_info_type] if args.key?(:surrogate_info_type)
        end
      end
      
      # Custom information type provided by the user. Used to find domain-specific
      # sensitive information configurable to the data in question.
      class GooglePrivacyDlpV2CustomInfoType
        include Google::Apis::Core::Hashable
      
        # Set of detection rules to apply to all findings of this CustomInfoType. Rules
        # are applied in order that they are specified. Not supported for the `
        # surrogate_type` CustomInfoType.
        # Corresponds to the JSON property `detectionRules`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2DetectionRule>]
        attr_accessor :detection_rules
      
        # Custom information type based on a dictionary of words or phrases. This can be
        # used to match sensitive information specific to the data, such as a list of
        # employee IDs or job titles. Dictionary words are case-insensitive and all
        # characters other than letters and digits in the unicode [Basic Multilingual
        # Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#
        # Basic_Multilingual_Plane) will be replaced with whitespace when scanning for
        # matches, so the dictionary phrase "Sam Johnson" will match all three phrases "
        # sam johnson", "Sam, Johnson", and "Sam (Johnson)". Additionally, the
        # characters surrounding any match must be of a different type than the adjacent
        # characters within the word, so letters must be next to non-letters and digits
        # next to non-digits. For example, the dictionary word "jen" will match the
        # first three letters of the text "jen123" but will return no matches for "
        # jennifer". Dictionary words containing a large number of characters that are
        # not letters or digits may result in unexpected findings because such
        # characters are treated as whitespace. The [limits](https://cloud.google.com/
        # sensitive-data-protection/limits) page contains details about the size limits
        # of dictionaries. For dictionaries that do not fit within these constraints,
        # consider using `LargeCustomDictionaryConfig` in the `StoredInfoType` API.
        # Corresponds to the JSON property `dictionary`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Dictionary]
        attr_accessor :dictionary
      
        # If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be
        # returned. It still can be used for rules matching.
        # Corresponds to the JSON property `exclusionType`
        # @return [String]
        attr_accessor :exclusion_type
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        # Likelihood to return for this CustomInfoType. This base value can be altered
        # by a detection rule if the finding meets the criteria specified by the rule.
        # Defaults to `VERY_LIKELY` if not specified.
        # Corresponds to the JSON property `likelihood`
        # @return [String]
        attr_accessor :likelihood
      
        # Message defining a custom regular expression.
        # Corresponds to the JSON property `regex`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Regex]
        attr_accessor :regex
      
        # Score is calculated from of all elements in the data profile. A higher level
        # means the data is more sensitive.
        # Corresponds to the JSON property `sensitivityScore`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore]
        attr_accessor :sensitivity_score
      
        # A reference to a StoredInfoType to use with scanning.
        # Corresponds to the JSON property `storedType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredType]
        attr_accessor :stored_type
      
        # Message for detecting output from deidentification transformations such as [`
        # CryptoReplaceFfxFpeConfig`](https://cloud.google.com/sensitive-data-protection/
        # docs/reference/rest/v2/organizations.deidentifyTemplates#
        # cryptoreplaceffxfpeconfig). These types of transformations are those that
        # perform pseudonymization, thereby producing a "surrogate" as output. This
        # should be used in conjunction with a field on the transformation such as `
        # surrogate_info_type`. This CustomInfoType does not support the use of `
        # detection_rules`.
        # Corresponds to the JSON property `surrogateType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SurrogateType]
        attr_accessor :surrogate_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detection_rules = args[:detection_rules] if args.key?(:detection_rules)
          @dictionary = args[:dictionary] if args.key?(:dictionary)
          @exclusion_type = args[:exclusion_type] if args.key?(:exclusion_type)
          @info_type = args[:info_type] if args.key?(:info_type)
          @likelihood = args[:likelihood] if args.key?(:likelihood)
          @regex = args[:regex] if args.key?(:regex)
          @sensitivity_score = args[:sensitivity_score] if args.key?(:sensitivity_score)
          @stored_type = args[:stored_type] if args.key?(:stored_type)
          @surrogate_type = args[:surrogate_type] if args.key?(:surrogate_type)
        end
      end
      
      # A task to execute when a data profile has been generated.
      class GooglePrivacyDlpV2DataProfileAction
        include Google::Apis::Core::Hashable
      
        # If set, the detailed data profiles will be persisted to the location of your
        # choice whenever updated.
        # Corresponds to the JSON property `exportData`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Export]
        attr_accessor :export_data
      
        # Send a Pub/Sub message into the given Pub/Sub topic to connect other systems
        # to data profile generation. The message payload data will be the byte
        # serialization of `DataProfilePubSubMessage`.
        # Corresponds to the JSON property `pubSubNotification`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PubSubNotification]
        attr_accessor :pub_sub_notification
      
        # Message expressing intention to publish to Google Security Operations.
        # Corresponds to the JSON property `publishToChronicle`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToChronicle]
        attr_accessor :publish_to_chronicle
      
        # Create Dataplex Catalog aspects for profiled resources with the aspect type
        # Sensitive Data Protection Profile. To learn more about aspects, see https://
        # cloud.google.com/sensitive-data-protection/docs/add-aspects.
        # Corresponds to the JSON property `publishToDataplexCatalog`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToDataplexCatalog]
        attr_accessor :publish_to_dataplex_catalog
      
        # If set, a summary finding will be created or updated in Security Command
        # Center for each profile.
        # Corresponds to the JSON property `publishToScc`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PublishToSecurityCommandCenter]
        attr_accessor :publish_to_scc
      
        # If set, attaches the [tags] (https://cloud.google.com/resource-manager/docs/
        # tags/tags-overview) provided to profiled resources. Tags support [access
        # control](https://cloud.google.com/iam/docs/tags-access-control). You can
        # conditionally grant or deny access to a resource based on whether the resource
        # has a specific tag.
        # Corresponds to the JSON property `tagResources`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TagResources]
        attr_accessor :tag_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_data = args[:export_data] if args.key?(:export_data)
          @pub_sub_notification = args[:pub_sub_notification] if args.key?(:pub_sub_notification)
          @publish_to_chronicle = args[:publish_to_chronicle] if args.key?(:publish_to_chronicle)
          @publish_to_dataplex_catalog = args[:publish_to_dataplex_catalog] if args.key?(:publish_to_dataplex_catalog)
          @publish_to_scc = args[:publish_to_scc] if args.key?(:publish_to_scc)
          @tag_resources = args[:tag_resources] if args.key?(:tag_resources)
        end
      end
      
      # The schema of data to be saved to the BigQuery table when the `
      # DataProfileAction` is enabled.
      class GooglePrivacyDlpV2DataProfileBigQueryRowSchema
        include Google::Apis::Core::Hashable
      
        # The profile for a scanned column within a table.
        # Corresponds to the JSON property `columnProfile`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile]
        attr_accessor :column_profile
      
        # The profile for a file store. * Cloud Storage: maps 1:1 with a bucket. *
        # Amazon S3: maps 1:1 with a bucket.
        # Corresponds to the JSON property `fileStoreProfile`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile]
        attr_accessor :file_store_profile
      
        # The profile for a scanned table.
        # Corresponds to the JSON property `tableProfile`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile]
        attr_accessor :table_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_profile = args[:column_profile] if args.key?(:column_profile)
          @file_store_profile = args[:file_store_profile] if args.key?(:file_store_profile)
          @table_profile = args[:table_profile] if args.key?(:table_profile)
        end
      end
      
      # Snapshot of the configurations used to generate the profile.
      class GooglePrivacyDlpV2DataProfileConfigSnapshot
        include Google::Apis::Core::Hashable
      
        # Configuration for setting up a job to scan resources for profile generation.
        # Only one data profile configuration may exist per organization, folder, or
        # project. The generated data profiles are retained according to the [data
        # retention policy] (https://cloud.google.com/sensitive-data-protection/docs/
        # data-profiles#retention).
        # Corresponds to the JSON property `dataProfileJob`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileJobConfig]
        attr_accessor :data_profile_job
      
        # Configuration for discovery to scan resources for profile generation. Only one
        # discovery configuration may exist per organization, folder, or project. The
        # generated data profiles are retained according to the [data retention policy] (
        # https://cloud.google.com/sensitive-data-protection/docs/data-profiles#
        # retention).
        # Corresponds to the JSON property `discoveryConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig]
        attr_accessor :discovery_config
      
        # Configuration description of the scanning process. When used with
        # redactContent only info_types and min_likelihood are currently used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig]
        attr_accessor :inspect_config
      
        # Timestamp when the template was modified
        # Corresponds to the JSON property `inspectTemplateModifiedTime`
        # @return [String]
        attr_accessor :inspect_template_modified_time
      
        # Name of the inspection template used to generate this profile
        # Corresponds to the JSON property `inspectTemplateName`
        # @return [String]
        attr_accessor :inspect_template_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_profile_job = args[:data_profile_job] if args.key?(:data_profile_job)
          @discovery_config = args[:discovery_config] if args.key?(:discovery_config)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
          @inspect_template_modified_time = args[:inspect_template_modified_time] if args.key?(:inspect_template_modified_time)
          @inspect_template_name = args[:inspect_template_name] if args.key?(:inspect_template_name)
        end
      end
      
      # Details about a piece of potentially sensitive information that was detected
      # when the data resource was profiled.
      class GooglePrivacyDlpV2DataProfileFinding
        include Google::Apis::Core::Hashable
      
        # Resource name of the data profile associated with the finding.
        # Corresponds to the JSON property `dataProfileResourceName`
        # @return [String]
        attr_accessor :data_profile_resource_name
      
        # Message used to identify the type of resource being profiled.
        # Corresponds to the JSON property `dataSourceType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataSourceType]
        attr_accessor :data_source_type
      
        # A unique identifier for the finding.
        # Corresponds to the JSON property `findingId`
        # @return [String]
        attr_accessor :finding_id
      
        # The [full resource name](https://cloud.google.com/apis/design/resource_names#
        # full_resource_name) of the resource profiled for this finding.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infotype`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :infotype
      
        # Location of a data profile finding within a resource.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileFindingLocation]
        attr_accessor :location
      
        # The content that was found. Even if the content is not textual, it may be
        # converted to a textual representation here. If the finding exceeds 4096 bytes
        # in length, the quote may be omitted.
        # Corresponds to the JSON property `quote`
        # @return [String]
        attr_accessor :quote
      
        # Message for infoType-dependent details parsed from quote.
        # Corresponds to the JSON property `quoteInfo`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2QuoteInfo]
        attr_accessor :quote_info
      
        # How broadly a resource has been shared.
        # Corresponds to the JSON property `resourceVisibility`
        # @return [String]
        attr_accessor :resource_visibility
      
        # Timestamp when the finding was detected.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_profile_resource_name = args[:data_profile_resource_name] if args.key?(:data_profile_resource_name)
          @data_source_type = args[:data_source_type] if args.key?(:data_source_type)
          @finding_id = args[:finding_id] if args.key?(:finding_id)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @infotype = args[:infotype] if args.key?(:infotype)
          @location = args[:location] if args.key?(:location)
          @quote = args[:quote] if args.key?(:quote)
          @quote_info = args[:quote_info] if args.key?(:quote_info)
          @resource_visibility = args[:resource_visibility] if args.key?(:resource_visibility)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # Location of a data profile finding within a resource.
      class GooglePrivacyDlpV2DataProfileFindingLocation
        include Google::Apis::Core::Hashable
      
        # Name of the container where the finding is located. The top-level name is the
        # source file name or table name. Names of some common storage containers are
        # formatted as follows: * BigQuery tables: ``project_id`:`dataset_id`.`table_id``
        # * Cloud Storage files: `gs://`bucket`/`path``
        # Corresponds to the JSON property `containerName`
        # @return [String]
        attr_accessor :container_name
      
        # Location of a finding within a resource that produces a table data profile.
        # Corresponds to the JSON property `dataProfileFindingRecordLocation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileFindingRecordLocation]
        attr_accessor :data_profile_finding_record_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_name = args[:container_name] if args.key?(:container_name)
          @data_profile_finding_record_location = args[:data_profile_finding_record_location] if args.key?(:data_profile_finding_record_location)
        end
      end
      
      # Location of a finding within a resource that produces a table data profile.
      class GooglePrivacyDlpV2DataProfileFindingRecordLocation
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # Configuration for setting up a job to scan resources for profile generation.
      # Only one data profile configuration may exist per organization, folder, or
      # project. The generated data profiles are retained according to the [data
      # retention policy] (https://cloud.google.com/sensitive-data-protection/docs/
      # data-profiles#retention).
      class GooglePrivacyDlpV2DataProfileJobConfig
        include Google::Apis::Core::Hashable
      
        # Actions to execute at the completion of the job.
        # Corresponds to the JSON property `dataProfileActions`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileAction>]
        attr_accessor :data_profile_actions
      
        # Detection logic for profile generation. Not all template features are used by
        # profiles. FindingLimits, include_quote and exclude_info_types have no impact
        # on data profiling. Multiple templates may be provided if there is data in
        # multiple regions. At most one template must be specified per-region (including
        # "global"). Each region is scanned using the applicable template. If no region-
        # specific template is specified, but a "global" template is specified, it will
        # be copied to that region and used instead. If no global or region-specific
        # template is provided for a region with data, that region's data will not be
        # scanned. For more information, see https://cloud.google.com/sensitive-data-
        # protection/docs/data-profiles#data-residency.
        # Corresponds to the JSON property `inspectTemplates`
        # @return [Array<String>]
        attr_accessor :inspect_templates
      
        # The data that will be profiled.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileLocation]
        attr_accessor :location
      
        # The other cloud starting location for discovery.
        # Corresponds to the JSON property `otherCloudStartingLocation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation]
        attr_accessor :other_cloud_starting_location
      
        # The project that will run the scan. The DLP service account that exists within
        # this project must have access to all resources that are profiled, and the DLP
        # API must be enabled.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_profile_actions = args[:data_profile_actions] if args.key?(:data_profile_actions)
          @inspect_templates = args[:inspect_templates] if args.key?(:inspect_templates)
          @location = args[:location] if args.key?(:location)
          @other_cloud_starting_location = args[:other_cloud_starting_location] if args.key?(:other_cloud_starting_location)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # The data that will be profiled.
      class GooglePrivacyDlpV2DataProfileLocation
        include Google::Apis::Core::Hashable
      
        # The ID of the folder within an organization to scan.
        # Corresponds to the JSON property `folderId`
        # @return [Fixnum]
        attr_accessor :folder_id
      
        # The ID of an organization to scan.
        # Corresponds to the JSON property `organizationId`
        # @return [Fixnum]
        attr_accessor :organization_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folder_id = args[:folder_id] if args.key?(:folder_id)
          @organization_id = args[:organization_id] if args.key?(:organization_id)
        end
      end
      
      # A condition for determining whether a Pub/Sub should be triggered.
      class GooglePrivacyDlpV2DataProfilePubSubCondition
        include Google::Apis::Core::Hashable
      
        # An expression, consisting of an operator and conditions.
        # Corresponds to the JSON property `expressions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PubSubExpressions]
        attr_accessor :expressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expressions = args[:expressions] if args.key?(:expressions)
        end
      end
      
      # Pub/Sub topic message for a DataProfileAction.PubSubNotification event. To
      # receive a message of protocol buffer schema type, convert the message data to
      # an object of this proto class.
      class GooglePrivacyDlpV2DataProfilePubSubMessage
        include Google::Apis::Core::Hashable
      
        # The event that caused the Pub/Sub message to be sent.
        # Corresponds to the JSON property `event`
        # @return [String]
        attr_accessor :event
      
        # The profile for a file store. * Cloud Storage: maps 1:1 with a bucket. *
        # Amazon S3: maps 1:1 with a bucket.
        # Corresponds to the JSON property `fileStoreProfile`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile]
        attr_accessor :file_store_profile
      
        # The profile for a scanned table.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile]
        attr_accessor :profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event = args[:event] if args.key?(:event)
          @file_store_profile = args[:file_store_profile] if args.key?(:file_store_profile)
          @profile = args[:profile] if args.key?(:profile)
        end
      end
      
      # Score is a summary of all elements in the data profile. A higher number means
      # more risk.
      class GooglePrivacyDlpV2DataRiskLevel
        include Google::Apis::Core::Hashable
      
        # The score applied to the resource.
        # Corresponds to the JSON property `score`
        # @return [String]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # Message used to identify the type of resource being profiled.
      class GooglePrivacyDlpV2DataSourceType
        include Google::Apis::Core::Hashable
      
        # Output only. An identifying string to the type of resource being profiled.
        # Current values: * google/bigquery/table * google/project * google/sql/table *
        # google/gcs/bucket
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source = args[:data_source] if args.key?(:data_source)
        end
      end
      
      # Match database resources using regex filters. Examples of database resources
      # are tables, views, and stored procedures.
      class GooglePrivacyDlpV2DatabaseResourceCollection
        include Google::Apis::Core::Hashable
      
        # A collection of regular expressions to determine what database resources to
        # match against.
        # Corresponds to the JSON property `includeRegexes`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DatabaseResourceRegexes]
        attr_accessor :include_regexes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_regexes = args[:include_regexes] if args.key?(:include_regexes)
        end
      end
      
      # Identifies a single database resource, like a table within a database.
      class GooglePrivacyDlpV2DatabaseResourceReference
        include Google::Apis::Core::Hashable
      
        # Required. Name of a database within the instance.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Required. Name of a database resource, for example, a table within the
        # database.
        # Corresponds to the JSON property `databaseResource`
        # @return [String]
        attr_accessor :database_resource
      
        # Required. The instance where this resource is located. For example: Cloud SQL
        # instance ID.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # Required. If within a project-level config, then this must match the config's
        # project ID.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @database_resource = args[:database_resource] if args.key?(:database_resource)
          @instance = args[:instance] if args.key?(:instance)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # A pattern to match against one or more database resources. At least one
      # pattern must be specified. Regular expressions use RE2 [syntax](https://github.
      # com/google/re2/wiki/Syntax); a guide can be found under the google/re2
      # repository on GitHub.
      class GooglePrivacyDlpV2DatabaseResourceRegex
        include Google::Apis::Core::Hashable
      
        # Regex to test the database name against. If empty, all databases match.
        # Corresponds to the JSON property `databaseRegex`
        # @return [String]
        attr_accessor :database_regex
      
        # Regex to test the database resource's name against. An example of a database
        # resource name is a table's name. Other database resource names like view names
        # could be included in the future. If empty, all database resources match.
        # Corresponds to the JSON property `databaseResourceNameRegex`
        # @return [String]
        attr_accessor :database_resource_name_regex
      
        # Regex to test the instance name against. If empty, all instances match.
        # Corresponds to the JSON property `instanceRegex`
        # @return [String]
        attr_accessor :instance_regex
      
        # For organizations, if unset, will match all projects. Has no effect for
        # configurations created within a project.
        # Corresponds to the JSON property `projectIdRegex`
        # @return [String]
        attr_accessor :project_id_regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_regex = args[:database_regex] if args.key?(:database_regex)
          @database_resource_name_regex = args[:database_resource_name_regex] if args.key?(:database_resource_name_regex)
          @instance_regex = args[:instance_regex] if args.key?(:instance_regex)
          @project_id_regex = args[:project_id_regex] if args.key?(:project_id_regex)
        end
      end
      
      # A collection of regular expressions to determine what database resources to
      # match against.
      class GooglePrivacyDlpV2DatabaseResourceRegexes
        include Google::Apis::Core::Hashable
      
        # A group of regular expression patterns to match against one or more database
        # resources. Maximum of 100 entries. The sum of all regular expression's length
        # can't exceed 10 KiB.
        # Corresponds to the JSON property `patterns`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2DatabaseResourceRegex>]
        attr_accessor :patterns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @patterns = args[:patterns] if args.key?(:patterns)
        end
      end
      
      # Record key for a finding in Cloud Datastore.
      class GooglePrivacyDlpV2DatastoreKey
        include Google::Apis::Core::Hashable
      
        # A unique identifier for a Datastore entity. If a key's partition ID or any of
        # its path kinds or names are reserved/read-only, the key is reserved/read-only.
        # A reserved/read-only key is forbidden in certain documented contexts.
        # Corresponds to the JSON property `entityKey`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Key]
        attr_accessor :entity_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_key = args[:entity_key] if args.key?(:entity_key)
        end
      end
      
      # Options defining a data set within Google Cloud Datastore.
      class GooglePrivacyDlpV2DatastoreOptions
        include Google::Apis::Core::Hashable
      
        # A representation of a Datastore kind.
        # Corresponds to the JSON property `kind`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2KindExpression]
        attr_accessor :kind
      
        # Datastore partition ID. A partition ID identifies a grouping of entities. The
        # grouping is always by project and namespace, however the namespace ID may be
        # empty. A partition ID contains several dimensions: project ID and namespace ID.
        # Corresponds to the JSON property `partitionId`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PartitionId]
        attr_accessor :partition_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @partition_id = args[:partition_id] if args.key?(:partition_id)
        end
      end
      
      # Shifts dates by random number of days, with option to be consistent for the
      # same context. See https://cloud.google.com/sensitive-data-protection/docs/
      # concepts-date-shifting to learn more.
      class GooglePrivacyDlpV2DateShiftConfig
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :context
      
        # This is a data encryption key (DEK) (as opposed to a key encryption key (KEK)
        # stored by Cloud Key Management Service (Cloud KMS). When using Cloud KMS to
        # wrap or unwrap a DEK, be sure to set an appropriate IAM policy on the KEK to
        # ensure an attacker cannot unwrap the DEK.
        # Corresponds to the JSON property `cryptoKey`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoKey]
        attr_accessor :crypto_key
      
        # Required. For example, -5 means shift date to at most 5 days back in the past.
        # Corresponds to the JSON property `lowerBoundDays`
        # @return [Fixnum]
        attr_accessor :lower_bound_days
      
        # Required. Range of shift in days. Actual shift will be selected at random
        # within this range (inclusive ends). Negative means shift to earlier in time.
        # Must not be more than 365250 days (1000 years) each direction. For example, 3
        # means shift date to at most 3 days into the future.
        # Corresponds to the JSON property `upperBoundDays`
        # @return [Fixnum]
        attr_accessor :upper_bound_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @crypto_key = args[:crypto_key] if args.key?(:crypto_key)
          @lower_bound_days = args[:lower_bound_days] if args.key?(:lower_bound_days)
          @upper_bound_days = args[:upper_bound_days] if args.key?(:upper_bound_days)
        end
      end
      
      # Message for a date time object. e.g. 2018-01-01, 5th August.
      class GooglePrivacyDlpV2DateTime
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::DlpV2::GoogleTypeDate]
        attr_accessor :date
      
        # Day of week
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `time`
        # @return [Google::Apis::DlpV2::GoogleTypeTimeOfDay]
        attr_accessor :time
      
        # Time zone of the date time object.
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TimeZone]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @time = args[:time] if args.key?(:time)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Create a de-identified copy of a storage bucket. Only compatible with Cloud
      # Storage buckets. A TransformationDetail will be created for each
      # transformation. Compatible with: Inspection of Cloud Storage
      class GooglePrivacyDlpV2Deidentify
        include Google::Apis::Core::Hashable
      
        # Required. User settable Cloud Storage bucket and folders to store de-
        # identified files. This field must be set for Cloud Storage deidentification.
        # The output Cloud Storage bucket must be different from the input bucket. De-
        # identified files will overwrite files in the output path. Form of: gs://bucket/
        # folder/ or gs://bucket
        # Corresponds to the JSON property `cloudStorageOutput`
        # @return [String]
        attr_accessor :cloud_storage_output
      
        # List of user-specified file type groups to transform. If specified, only the
        # files with these file types will be transformed. If empty, all supported files
        # will be transformed. Supported types may be automatically added over time. If
        # a file type is set in this field that isn't supported by the Deidentify action
        # then the job will fail and will not be successfully created/started. Currently
        # the only file types supported are: IMAGES, TEXT_FILES, CSV, TSV.
        # Corresponds to the JSON property `fileTypesToTransform`
        # @return [Array<String>]
        attr_accessor :file_types_to_transform
      
        # User specified templates and configs for how to deidentify structured,
        # unstructures, and image files. User must provide either a unstructured
        # deidentify template or at least one redact image config.
        # Corresponds to the JSON property `transformationConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationConfig]
        attr_accessor :transformation_config
      
        # Config for storing transformation details.
        # Corresponds to the JSON property `transformationDetailsStorageConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationDetailsStorageConfig]
        attr_accessor :transformation_details_storage_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_storage_output = args[:cloud_storage_output] if args.key?(:cloud_storage_output)
          @file_types_to_transform = args[:file_types_to_transform] if args.key?(:file_types_to_transform)
          @transformation_config = args[:transformation_config] if args.key?(:transformation_config)
          @transformation_details_storage_config = args[:transformation_details_storage_config] if args.key?(:transformation_details_storage_config)
        end
      end
      
      # The configuration that controls how the data will change.
      class GooglePrivacyDlpV2DeidentifyConfig
        include Google::Apis::Core::Hashable
      
        # A type of transformation that is applied over images.
        # Corresponds to the JSON property `imageTransformations`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ImageTransformations]
        attr_accessor :image_transformations
      
        # A type of transformation that will scan unstructured text and apply various `
        # PrimitiveTransformation`s to each finding, where the transformation is applied
        # to only values that were identified as a specific info_type.
        # Corresponds to the JSON property `infoTypeTransformations`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeTransformations]
        attr_accessor :info_type_transformations
      
        # A type of transformation that is applied over structured data such as a table.
        # Corresponds to the JSON property `recordTransformations`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RecordTransformations]
        attr_accessor :record_transformations
      
        # How to handle transformation errors during de-identification. A transformation
        # error occurs when the requested transformation is incompatible with the data.
        # For example, trying to de-identify an IP address using a `DateShift`
        # transformation would result in a transformation error, since date info cannot
        # be extracted from an IP address. Information about any incompatible
        # transformations, and how they were handled, is returned in the response as
        # part of the `TransformationOverviews`.
        # Corresponds to the JSON property `transformationErrorHandling`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationErrorHandling]
        attr_accessor :transformation_error_handling
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_transformations = args[:image_transformations] if args.key?(:image_transformations)
          @info_type_transformations = args[:info_type_transformations] if args.key?(:info_type_transformations)
          @record_transformations = args[:record_transformations] if args.key?(:record_transformations)
          @transformation_error_handling = args[:transformation_error_handling] if args.key?(:transformation_error_handling)
        end
      end
      
      # Request to de-identify a ContentItem.
      class GooglePrivacyDlpV2DeidentifyContentRequest
        include Google::Apis::Core::Hashable
      
        # The configuration that controls how the data will change.
        # Corresponds to the JSON property `deidentifyConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyConfig]
        attr_accessor :deidentify_config
      
        # Template to use. Any configuration directly specified in deidentify_config
        # will override those set in the template. Singular fields that are set in this
        # request will replace their corresponding fields in the template. Repeated
        # fields are appended. Singular sub-messages and groups are recursively merged.
        # Corresponds to the JSON property `deidentifyTemplateName`
        # @return [String]
        attr_accessor :deidentify_template_name
      
        # Configuration description of the scanning process. When used with
        # redactContent only info_types and min_likelihood are currently used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig]
        attr_accessor :inspect_config
      
        # Template to use. Any configuration directly specified in inspect_config will
        # override those set in the template. Singular fields that are set in this
        # request will replace their corresponding fields in the template. Repeated
        # fields are appended. Singular sub-messages and groups are recursively merged.
        # Corresponds to the JSON property `inspectTemplateName`
        # @return [String]
        attr_accessor :inspect_template_name
      
        # Type of content to inspect.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem]
        attr_accessor :item
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify_config = args[:deidentify_config] if args.key?(:deidentify_config)
          @deidentify_template_name = args[:deidentify_template_name] if args.key?(:deidentify_template_name)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
          @inspect_template_name = args[:inspect_template_name] if args.key?(:inspect_template_name)
          @item = args[:item] if args.key?(:item)
          @location_id = args[:location_id] if args.key?(:location_id)
        end
      end
      
      # Results of de-identifying a ContentItem.
      class GooglePrivacyDlpV2DeidentifyContentResponse
        include Google::Apis::Core::Hashable
      
        # Type of content to inspect.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem]
        attr_accessor :item
      
        # Overview of the modifications that occurred.
        # Corresponds to the JSON property `overview`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationOverview]
        attr_accessor :overview
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item = args[:item] if args.key?(:item)
          @overview = args[:overview] if args.key?(:overview)
        end
      end
      
      # The results of a Deidentify action from an inspect job.
      class GooglePrivacyDlpV2DeidentifyDataSourceDetails
        include Google::Apis::Core::Hashable
      
        # Summary of what was modified during a transformation.
        # Corresponds to the JSON property `deidentifyStats`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyDataSourceStats]
        attr_accessor :deidentify_stats
      
        # De-identification options.
        # Corresponds to the JSON property `requestedOptions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RequestedDeidentifyOptions]
        attr_accessor :requested_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify_stats = args[:deidentify_stats] if args.key?(:deidentify_stats)
          @requested_options = args[:requested_options] if args.key?(:requested_options)
        end
      end
      
      # Summary of what was modified during a transformation.
      class GooglePrivacyDlpV2DeidentifyDataSourceStats
        include Google::Apis::Core::Hashable
      
        # Number of successfully applied transformations.
        # Corresponds to the JSON property `transformationCount`
        # @return [Fixnum]
        attr_accessor :transformation_count
      
        # Number of errors encountered while trying to apply transformations.
        # Corresponds to the JSON property `transformationErrorCount`
        # @return [Fixnum]
        attr_accessor :transformation_error_count
      
        # Total size in bytes that were transformed in some way.
        # Corresponds to the JSON property `transformedBytes`
        # @return [Fixnum]
        attr_accessor :transformed_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transformation_count = args[:transformation_count] if args.key?(:transformation_count)
          @transformation_error_count = args[:transformation_error_count] if args.key?(:transformation_error_count)
          @transformed_bytes = args[:transformed_bytes] if args.key?(:transformed_bytes)
        end
      end
      
      # DeidentifyTemplates contains instructions on how to de-identify content. See
      # https://cloud.google.com/sensitive-data-protection/docs/concepts-templates to
      # learn more.
      class GooglePrivacyDlpV2DeidentifyTemplate
        include Google::Apis::Core::Hashable
      
        # Output only. The creation timestamp of an inspectTemplate.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The configuration that controls how the data will change.
        # Corresponds to the JSON property `deidentifyConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyConfig]
        attr_accessor :deidentify_config
      
        # Short description (max 256 chars).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name (max 256 chars).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The template name. The template will have one of the following
        # formats: `projects/PROJECT_ID/deidentifyTemplates/TEMPLATE_ID` OR `
        # organizations/ORGANIZATION_ID/deidentifyTemplates/TEMPLATE_ID`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The last update timestamp of an inspectTemplate.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deidentify_config = args[:deidentify_config] if args.key?(:deidentify_config)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # δ-presence metric, used to estimate how likely it is for an attacker to figure
      # out that one given individual appears in a de-identified dataset. Similarly to
      # the k-map metric, we cannot compute δ-presence exactly without knowing the
      # attack dataset, so we use a statistical model instead.
      class GooglePrivacyDlpV2DeltaPresenceEstimationConfig
        include Google::Apis::Core::Hashable
      
        # Several auxiliary tables can be used in the analysis. Each custom_tag used to
        # tag a quasi-identifiers field must appear in exactly one field of one
        # auxiliary table.
        # Corresponds to the JSON property `auxiliaryTables`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2StatisticalTable>]
        attr_accessor :auxiliary_tables
      
        # Required. Fields considered to be quasi-identifiers. No two fields can have
        # the same tag.
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2QuasiId>]
        attr_accessor :quasi_ids
      
        # ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no
        # column is tagged with a region-specific InfoType (like US_ZIP_5) or a region
        # code.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auxiliary_tables = args[:auxiliary_tables] if args.key?(:auxiliary_tables)
          @quasi_ids = args[:quasi_ids] if args.key?(:quasi_ids)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # A DeltaPresenceEstimationHistogramBucket message with the following values:
      # min_probability: 0.1 max_probability: 0.2 frequency: 42 means that there are
      # 42 records for which δ is in [0.1, 0.2). An important particular case is when
      # min_probability = max_probability = 1: then, every individual who shares this
      # quasi-identifier combination is in the dataset.
      class GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Number of records within these probability bounds.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Total number of distinct quasi-identifier tuple values in this bucket.
        # Corresponds to the JSON property `bucketValueCount`
        # @return [Fixnum]
        attr_accessor :bucket_value_count
      
        # Sample of quasi-identifier tuple values in this bucket. The total number of
        # classes returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues>]
        attr_accessor :bucket_values
      
        # Always greater than or equal to min_probability.
        # Corresponds to the JSON property `maxProbability`
        # @return [Float]
        attr_accessor :max_probability
      
        # Between 0 and 1.
        # Corresponds to the JSON property `minProbability`
        # @return [Float]
        attr_accessor :min_probability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_size = args[:bucket_size] if args.key?(:bucket_size)
          @bucket_value_count = args[:bucket_value_count] if args.key?(:bucket_value_count)
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @max_probability = args[:max_probability] if args.key?(:max_probability)
          @min_probability = args[:min_probability] if args.key?(:min_probability)
        end
      end
      
      # A tuple of values for the quasi-identifier columns.
      class GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
        include Google::Apis::Core::Hashable
      
        # The estimated probability that a given individual sharing these quasi-
        # identifier values is in the dataset. This value, typically called δ, is the
        # ratio between the number of records in the dataset with these quasi-identifier
        # values, and the total number of individuals (inside *and* outside the dataset)
        # with these quasi-identifier values. For example, if there are 15 individuals
        # in the dataset who share the same quasi-identifier values, and an estimated
        # 100 people in the entire population with these values, then δ is 0.15.
        # Corresponds to the JSON property `estimatedProbability`
        # @return [Float]
        attr_accessor :estimated_probability
      
        # The quasi-identifier values.
        # Corresponds to the JSON property `quasiIdsValues`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Value>]
        attr_accessor :quasi_ids_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_probability = args[:estimated_probability] if args.key?(:estimated_probability)
          @quasi_ids_values = args[:quasi_ids_values] if args.key?(:quasi_ids_values)
        end
      end
      
      # Result of the δ-presence computation. Note that these results are an
      # estimation, not exact values.
      class GooglePrivacyDlpV2DeltaPresenceEstimationResult
        include Google::Apis::Core::Hashable
      
        # The intervals [min_probability, max_probability) do not overlap. If a value
        # doesn't correspond to any such interval, the associated frequency is zero. For
        # example, the following records: `min_probability: 0, max_probability: 0.1,
        # frequency: 17` `min_probability: 0.2, max_probability: 0.3, frequency: 42` `
        # min_probability: 0.3, max_probability: 0.4, frequency: 99` mean that there are
        # no record with an estimated probability in [0.1, 0.2) nor larger or equal to 0.
        # 4.
        # Corresponds to the JSON property `deltaPresenceEstimationHistogram`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket>]
        attr_accessor :delta_presence_estimation_histogram
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delta_presence_estimation_histogram = args[:delta_presence_estimation_histogram] if args.key?(:delta_presence_estimation_histogram)
        end
      end
      
      # Deprecated; use `InspectionRuleSet` instead. Rule for modifying a `
      # CustomInfoType` to alter behavior under certain circumstances, depending on
      # the specific details of the rule. Not supported for the `surrogate_type`
      # custom infoType.
      class GooglePrivacyDlpV2DetectionRule
        include Google::Apis::Core::Hashable
      
        # The rule that adjusts the likelihood of findings within a certain proximity of
        # hotwords.
        # Corresponds to the JSON property `hotwordRule`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2HotwordRule]
        attr_accessor :hotword_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hotword_rule = args[:hotword_rule] if args.key?(:hotword_rule)
        end
      end
      
      # Custom information type based on a dictionary of words or phrases. This can be
      # used to match sensitive information specific to the data, such as a list of
      # employee IDs or job titles. Dictionary words are case-insensitive and all
      # characters other than letters and digits in the unicode [Basic Multilingual
      # Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#
      # Basic_Multilingual_Plane) will be replaced with whitespace when scanning for
      # matches, so the dictionary phrase "Sam Johnson" will match all three phrases "
      # sam johnson", "Sam, Johnson", and "Sam (Johnson)". Additionally, the
      # characters surrounding any match must be of a different type than the adjacent
      # characters within the word, so letters must be next to non-letters and digits
      # next to non-digits. For example, the dictionary word "jen" will match the
      # first three letters of the text "jen123" but will return no matches for "
      # jennifer". Dictionary words containing a large number of characters that are
      # not letters or digits may result in unexpected findings because such
      # characters are treated as whitespace. The [limits](https://cloud.google.com/
      # sensitive-data-protection/limits) page contains details about the size limits
      # of dictionaries. For dictionaries that do not fit within these constraints,
      # consider using `LargeCustomDictionaryConfig` in the `StoredInfoType` API.
      class GooglePrivacyDlpV2Dictionary
        include Google::Apis::Core::Hashable
      
        # Message representing a single file or path in Cloud Storage.
        # Corresponds to the JSON property `cloudStoragePath`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStoragePath]
        attr_accessor :cloud_storage_path
      
        # Message defining a list of words or phrases to search for in the data.
        # Corresponds to the JSON property `wordList`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2WordList]
        attr_accessor :word_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_storage_path = args[:cloud_storage_path] if args.key?(:cloud_storage_path)
          @word_list = args[:word_list] if args.key?(:word_list)
        end
      end
      
      # Do not profile the tables.
      class GooglePrivacyDlpV2Disabled
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Requirements that must be true before a table is scanned in discovery for the
      # first time. There is an AND relationship between the top-level attributes.
      # Additionally, minimum conditions with an OR relationship that must be met
      # before Cloud DLP scans a table can be set (like a minimum row count or a
      # minimum table age).
      class GooglePrivacyDlpV2DiscoveryBigQueryConditions
        include Google::Apis::Core::Hashable
      
        # BigQuery table must have been created after this date. Used to avoid
        # backfilling.
        # Corresponds to the JSON property `createdAfter`
        # @return [String]
        attr_accessor :created_after
      
        # There is an OR relationship between these attributes. They are used to
        # determine if a table should be scanned or not in Discovery.
        # Corresponds to the JSON property `orConditions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2OrConditions]
        attr_accessor :or_conditions
      
        # Restrict discovery to categories of table types.
        # Corresponds to the JSON property `typeCollection`
        # @return [String]
        attr_accessor :type_collection
      
        # The types of BigQuery tables supported by Cloud DLP.
        # Corresponds to the JSON property `types`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTableTypes]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_after = args[:created_after] if args.key?(:created_after)
          @or_conditions = args[:or_conditions] if args.key?(:or_conditions)
          @type_collection = args[:type_collection] if args.key?(:type_collection)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # Determines what tables will have profiles generated within an organization or
      # project. Includes the ability to filter by regular expression patterns on
      # project ID, dataset ID, and table ID.
      class GooglePrivacyDlpV2DiscoveryBigQueryFilter
        include Google::Apis::Core::Hashable
      
        # Catch-all for all other tables not specified by other filters. Should always
        # be last, except for single-table configurations, which will only have a
        # TableReference target.
        # Corresponds to the JSON property `otherTables`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherBigQueryTables]
        attr_accessor :other_tables
      
        # Message defining the location of a BigQuery table with the projectId inferred
        # from the parent project.
        # Corresponds to the JSON property `tableReference`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TableReference]
        attr_accessor :table_reference
      
        # Specifies a collection of BigQuery tables. Used for Discovery.
        # Corresponds to the JSON property `tables`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTableCollection]
        attr_accessor :tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @other_tables = args[:other_tables] if args.key?(:other_tables)
          @table_reference = args[:table_reference] if args.key?(:table_reference)
          @tables = args[:tables] if args.key?(:tables)
        end
      end
      
      # Requirements that must be true before a table is profiled for the first time.
      class GooglePrivacyDlpV2DiscoveryCloudSqlConditions
        include Google::Apis::Core::Hashable
      
        # Optional. Database engines that should be profiled. Optional. Defaults to
        # ALL_SUPPORTED_DATABASE_ENGINES if unspecified.
        # Corresponds to the JSON property `databaseEngines`
        # @return [Array<String>]
        attr_accessor :database_engines
      
        # Data profiles will only be generated for the database resource types specified
        # in this field. If not specified, defaults to [
        # DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES].
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_engines = args[:database_engines] if args.key?(:database_engines)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # Determines what tables will have profiles generated within an organization or
      # project. Includes the ability to filter by regular expression patterns on
      # project ID, location, instance, database, and database resource name.
      class GooglePrivacyDlpV2DiscoveryCloudSqlFilter
        include Google::Apis::Core::Hashable
      
        # Match database resources using regex filters. Examples of database resources
        # are tables, views, and stored procedures.
        # Corresponds to the JSON property `collection`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DatabaseResourceCollection]
        attr_accessor :collection
      
        # Identifies a single database resource, like a table within a database.
        # Corresponds to the JSON property `databaseResourceReference`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DatabaseResourceReference]
        attr_accessor :database_resource_reference
      
        # Match database resources not covered by any other filter.
        # Corresponds to the JSON property `others`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherDatabaseResources]
        attr_accessor :others
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection = args[:collection] if args.key?(:collection)
          @database_resource_reference = args[:database_resource_reference] if args.key?(:database_resource_reference)
          @others = args[:others] if args.key?(:others)
        end
      end
      
      # How often existing tables should have their profiles refreshed. New tables are
      # scanned as quickly as possible depending on system capacity.
      class GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence
        include Google::Apis::Core::Hashable
      
        # The cadence at which to update data profiles when the inspection rules defined
        # by the `InspectTemplate` change.
        # Corresponds to the JSON property `inspectTemplateModifiedCadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence]
        attr_accessor :inspect_template_modified_cadence
      
        # Data changes (non-schema changes) in Cloud SQL tables can't trigger
        # reprofiling. If you set this field, profiles are refreshed at this frequency
        # regardless of whether the underlying tables have changed. Defaults to never.
        # Corresponds to the JSON property `refreshFrequency`
        # @return [String]
        attr_accessor :refresh_frequency
      
        # How frequently to modify the profile when the table's schema is modified.
        # Corresponds to the JSON property `schemaModifiedCadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SchemaModifiedCadence]
        attr_accessor :schema_modified_cadence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_template_modified_cadence = args[:inspect_template_modified_cadence] if args.key?(:inspect_template_modified_cadence)
          @refresh_frequency = args[:refresh_frequency] if args.key?(:refresh_frequency)
          @schema_modified_cadence = args[:schema_modified_cadence] if args.key?(:schema_modified_cadence)
        end
      end
      
      # Requirements that must be true before a Cloud Storage bucket or object is
      # scanned in discovery for the first time. There is an AND relationship between
      # the top-level attributes.
      class GooglePrivacyDlpV2DiscoveryCloudStorageConditions
        include Google::Apis::Core::Hashable
      
        # Required. Only objects with the specified attributes will be scanned. Defaults
        # to [ALL_SUPPORTED_BUCKETS] if unset.
        # Corresponds to the JSON property `includedBucketAttributes`
        # @return [Array<String>]
        attr_accessor :included_bucket_attributes
      
        # Required. Only objects with the specified attributes will be scanned. If an
        # object has one of the specified attributes but is inside an excluded bucket,
        # it will not be scanned. Defaults to [ALL_SUPPORTED_OBJECTS]. A profile will be
        # created even if no objects match the included_object_attributes.
        # Corresponds to the JSON property `includedObjectAttributes`
        # @return [Array<String>]
        attr_accessor :included_object_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @included_bucket_attributes = args[:included_bucket_attributes] if args.key?(:included_bucket_attributes)
          @included_object_attributes = args[:included_object_attributes] if args.key?(:included_object_attributes)
        end
      end
      
      # Determines which buckets will have profiles generated within an organization
      # or project. Includes the ability to filter by regular expression patterns on
      # project ID and bucket name.
      class GooglePrivacyDlpV2DiscoveryCloudStorageFilter
        include Google::Apis::Core::Hashable
      
        # Identifies a single Cloud Storage bucket.
        # Corresponds to the JSON property `cloudStorageResourceReference`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageResourceReference]
        attr_accessor :cloud_storage_resource_reference
      
        # Match file stores (e.g. buckets) using filters.
        # Corresponds to the JSON property `collection`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreCollection]
        attr_accessor :collection
      
        # Match discovery resources not covered by any other filter.
        # Corresponds to the JSON property `others`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherResources]
        attr_accessor :others
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_storage_resource_reference = args[:cloud_storage_resource_reference] if args.key?(:cloud_storage_resource_reference)
          @collection = args[:collection] if args.key?(:collection)
          @others = args[:others] if args.key?(:others)
        end
      end
      
      # How often existing buckets should have their profiles refreshed. New buckets
      # are scanned as quickly as possible depending on system capacity.
      class GooglePrivacyDlpV2DiscoveryCloudStorageGenerationCadence
        include Google::Apis::Core::Hashable
      
        # The cadence at which to update data profiles when the inspection rules defined
        # by the `InspectTemplate` change.
        # Corresponds to the JSON property `inspectTemplateModifiedCadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence]
        attr_accessor :inspect_template_modified_cadence
      
        # Optional. Data changes in Cloud Storage can't trigger reprofiling. If you set
        # this field, profiles are refreshed at this frequency regardless of whether the
        # underlying buckets have changed. Defaults to never.
        # Corresponds to the JSON property `refreshFrequency`
        # @return [String]
        attr_accessor :refresh_frequency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_template_modified_cadence = args[:inspect_template_modified_cadence] if args.key?(:inspect_template_modified_cadence)
          @refresh_frequency = args[:refresh_frequency] if args.key?(:refresh_frequency)
        end
      end
      
      # Configuration for discovery to scan resources for profile generation. Only one
      # discovery configuration may exist per organization, folder, or project. The
      # generated data profiles are retained according to the [data retention policy] (
      # https://cloud.google.com/sensitive-data-protection/docs/data-profiles#
      # retention).
      class GooglePrivacyDlpV2DiscoveryConfig
        include Google::Apis::Core::Hashable
      
        # Actions to execute at the completion of scanning.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileAction>]
        attr_accessor :actions
      
        # Output only. The creation timestamp of a DiscoveryConfig.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Display name (max 100 chars)
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. A stream of errors encountered when the config was activated.
        # Repeated errors may result in the config automatically being paused. Output
        # only field. Will return the last 100 errors. Whenever the config is modified
        # this list will be cleared.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Error>]
        attr_accessor :errors
      
        # Detection logic for profile generation. Not all template features are used by
        # Discovery. FindingLimits, include_quote and exclude_info_types have no impact
        # on Discovery. Multiple templates may be provided if there is data in multiple
        # regions. At most one template must be specified per-region (including "global")
        # . Each region is scanned using the applicable template. If no region-specific
        # template is specified, but a "global" template is specified, it will be copied
        # to that region and used instead. If no global or region-specific template is
        # provided for a region with data, that region's data will not be scanned. For
        # more information, see https://cloud.google.com/sensitive-data-protection/docs/
        # data-profiles#data-residency.
        # Corresponds to the JSON property `inspectTemplates`
        # @return [Array<String>]
        attr_accessor :inspect_templates
      
        # Output only. The timestamp of the last time this config was executed.
        # Corresponds to the JSON property `lastRunTime`
        # @return [String]
        attr_accessor :last_run_time
      
        # Unique resource name for the DiscoveryConfig, assigned by the service when the
        # DiscoveryConfig is created, for example `projects/dlp-test-project/locations/
        # global/discoveryConfigs/53234423`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Project and scan location information. Only set when the parent is an org.
        # Corresponds to the JSON property `orgConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2OrgConfig]
        attr_accessor :org_config
      
        # The other cloud starting location for discovery.
        # Corresponds to the JSON property `otherCloudStartingLocation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation]
        attr_accessor :other_cloud_starting_location
      
        # Configure processing location for discovery and inspection. For example, image
        # OCR is only provided in limited regions but configuring ProcessingLocation
        # will redirect OCR to a location where OCR is provided.
        # Corresponds to the JSON property `processingLocation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ProcessingLocation]
        attr_accessor :processing_location
      
        # Required. A status for this configuration.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Target to match against for determining what to scan and how frequently.
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryTarget>]
        attr_accessor :targets
      
        # Output only. The last update timestamp of a DiscoveryConfig.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @errors = args[:errors] if args.key?(:errors)
          @inspect_templates = args[:inspect_templates] if args.key?(:inspect_templates)
          @last_run_time = args[:last_run_time] if args.key?(:last_run_time)
          @name = args[:name] if args.key?(:name)
          @org_config = args[:org_config] if args.key?(:org_config)
          @other_cloud_starting_location = args[:other_cloud_starting_location] if args.key?(:other_cloud_starting_location)
          @processing_location = args[:processing_location] if args.key?(:processing_location)
          @status = args[:status] if args.key?(:status)
          @targets = args[:targets] if args.key?(:targets)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Requirements that must be true before a file store is scanned in discovery for
      # the first time. There is an AND relationship between the top-level attributes.
      class GooglePrivacyDlpV2DiscoveryFileStoreConditions
        include Google::Apis::Core::Hashable
      
        # Requirements that must be true before a Cloud Storage bucket or object is
        # scanned in discovery for the first time. There is an AND relationship between
        # the top-level attributes.
        # Corresponds to the JSON property `cloudStorageConditions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryCloudStorageConditions]
        attr_accessor :cloud_storage_conditions
      
        # Optional. File store must have been created after this date. Used to avoid
        # backfilling.
        # Corresponds to the JSON property `createdAfter`
        # @return [String]
        attr_accessor :created_after
      
        # Optional. Minimum age a file store must have. If set, the value must be 1 hour
        # or greater.
        # Corresponds to the JSON property `minAge`
        # @return [String]
        attr_accessor :min_age
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_storage_conditions = args[:cloud_storage_conditions] if args.key?(:cloud_storage_conditions)
          @created_after = args[:created_after] if args.key?(:created_after)
          @min_age = args[:min_age] if args.key?(:min_age)
        end
      end
      
      # What must take place for a profile to be updated and how frequently it should
      # occur. New tables are scanned as quickly as possible depending on system
      # capacity.
      class GooglePrivacyDlpV2DiscoveryGenerationCadence
        include Google::Apis::Core::Hashable
      
        # The cadence at which to update data profiles when the inspection rules defined
        # by the `InspectTemplate` change.
        # Corresponds to the JSON property `inspectTemplateModifiedCadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence]
        attr_accessor :inspect_template_modified_cadence
      
        # Frequency at which profiles should be updated, regardless of whether the
        # underlying resource has changed. Defaults to never.
        # Corresponds to the JSON property `refreshFrequency`
        # @return [String]
        attr_accessor :refresh_frequency
      
        # The cadence at which to update data profiles when a schema is modified.
        # Corresponds to the JSON property `schemaModifiedCadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoverySchemaModifiedCadence]
        attr_accessor :schema_modified_cadence
      
        # The cadence at which to update data profiles when a table is modified.
        # Corresponds to the JSON property `tableModifiedCadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryTableModifiedCadence]
        attr_accessor :table_modified_cadence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_template_modified_cadence = args[:inspect_template_modified_cadence] if args.key?(:inspect_template_modified_cadence)
          @refresh_frequency = args[:refresh_frequency] if args.key?(:refresh_frequency)
          @schema_modified_cadence = args[:schema_modified_cadence] if args.key?(:schema_modified_cadence)
          @table_modified_cadence = args[:table_modified_cadence] if args.key?(:table_modified_cadence)
        end
      end
      
      # The cadence at which to update data profiles when the inspection rules defined
      # by the `InspectTemplate` change.
      class GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence
        include Google::Apis::Core::Hashable
      
        # How frequently data profiles can be updated when the template is modified.
        # Defaults to never.
        # Corresponds to the JSON property `frequency`
        # @return [String]
        attr_accessor :frequency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequency = args[:frequency] if args.key?(:frequency)
        end
      end
      
      # Requirements that must be true before a resource is profiled for the first
      # time.
      class GooglePrivacyDlpV2DiscoveryOtherCloudConditions
        include Google::Apis::Core::Hashable
      
        # Amazon S3 bucket conditions.
        # Corresponds to the JSON property `amazonS3BucketConditions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AmazonS3BucketConditions]
        attr_accessor :amazon_s3_bucket_conditions
      
        # Minimum age a resource must be before Cloud DLP can profile it. Value must be
        # 1 hour or greater.
        # Corresponds to the JSON property `minAge`
        # @return [String]
        attr_accessor :min_age
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amazon_s3_bucket_conditions = args[:amazon_s3_bucket_conditions] if args.key?(:amazon_s3_bucket_conditions)
          @min_age = args[:min_age] if args.key?(:min_age)
        end
      end
      
      # Determines which resources from the other cloud will have profiles generated.
      # Includes the ability to filter by resource names.
      class GooglePrivacyDlpV2DiscoveryOtherCloudFilter
        include Google::Apis::Core::Hashable
      
        # Match resources using regex filters.
        # Corresponds to the JSON property `collection`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudResourceCollection]
        attr_accessor :collection
      
        # Match discovery resources not covered by any other filter.
        # Corresponds to the JSON property `others`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherResources]
        attr_accessor :others
      
        # Identifies a single resource, like a single Amazon S3 bucket.
        # Corresponds to the JSON property `singleResource`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudSingleResourceReference]
        attr_accessor :single_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection = args[:collection] if args.key?(:collection)
          @others = args[:others] if args.key?(:others)
          @single_resource = args[:single_resource] if args.key?(:single_resource)
        end
      end
      
      # How often existing resources should have their profiles refreshed. New
      # resources are scanned as quickly as possible depending on system capacity.
      class GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence
        include Google::Apis::Core::Hashable
      
        # The cadence at which to update data profiles when the inspection rules defined
        # by the `InspectTemplate` change.
        # Corresponds to the JSON property `inspectTemplateModifiedCadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence]
        attr_accessor :inspect_template_modified_cadence
      
        # Optional. Frequency to update profiles regardless of whether the underlying
        # resource has changes. Defaults to never.
        # Corresponds to the JSON property `refreshFrequency`
        # @return [String]
        attr_accessor :refresh_frequency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_template_modified_cadence = args[:inspect_template_modified_cadence] if args.key?(:inspect_template_modified_cadence)
          @refresh_frequency = args[:refresh_frequency] if args.key?(:refresh_frequency)
        end
      end
      
      # The cadence at which to update data profiles when a schema is modified.
      class GooglePrivacyDlpV2DiscoverySchemaModifiedCadence
        include Google::Apis::Core::Hashable
      
        # How frequently profiles may be updated when schemas are modified. Defaults to
        # monthly.
        # Corresponds to the JSON property `frequency`
        # @return [String]
        attr_accessor :frequency
      
        # The type of events to consider when deciding if the table's schema has been
        # modified and should have the profile updated. Defaults to NEW_COLUMNS.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequency = args[:frequency] if args.key?(:frequency)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # The location to begin a discovery scan. Denotes an organization ID or folder
      # ID within an organization.
      class GooglePrivacyDlpV2DiscoveryStartingLocation
        include Google::Apis::Core::Hashable
      
        # The ID of the folder within an organization to be scanned.
        # Corresponds to the JSON property `folderId`
        # @return [Fixnum]
        attr_accessor :folder_id
      
        # The ID of an organization to scan.
        # Corresponds to the JSON property `organizationId`
        # @return [Fixnum]
        attr_accessor :organization_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folder_id = args[:folder_id] if args.key?(:folder_id)
          @organization_id = args[:organization_id] if args.key?(:organization_id)
        end
      end
      
      # The cadence at which to update data profiles when a table is modified.
      class GooglePrivacyDlpV2DiscoveryTableModifiedCadence
        include Google::Apis::Core::Hashable
      
        # How frequently data profiles can be updated when tables are modified. Defaults
        # to never.
        # Corresponds to the JSON property `frequency`
        # @return [String]
        attr_accessor :frequency
      
        # The type of events to consider when deciding if the table has been modified
        # and should have the profile updated. Defaults to MODIFIED_TIMESTAMP.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequency = args[:frequency] if args.key?(:frequency)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # Target used to match against for Discovery.
      class GooglePrivacyDlpV2DiscoveryTarget
        include Google::Apis::Core::Hashable
      
        # Target used to match against for discovery with BigQuery tables
        # Corresponds to the JSON property `bigQueryTarget`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryDiscoveryTarget]
        attr_accessor :big_query_target
      
        # Target used to match against for discovery with Cloud SQL tables.
        # Corresponds to the JSON property `cloudSqlTarget`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CloudSqlDiscoveryTarget]
        attr_accessor :cloud_sql_target
      
        # Target used to match against for discovery with Cloud Storage buckets.
        # Corresponds to the JSON property `cloudStorageTarget`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageDiscoveryTarget]
        attr_accessor :cloud_storage_target
      
        # Target used to match against for discovery of resources from other clouds. An [
        # AWS connector in Security Command Center (Enterprise](https://cloud.google.com/
        # security-command-center/docs/connect-scc-to-aws) is required to use this
        # feature.
        # Corresponds to the JSON property `otherCloudTarget`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudDiscoveryTarget]
        attr_accessor :other_cloud_target
      
        # Discovery target for credentials and secrets in cloud resource metadata. This
        # target does not include any filtering or frequency controls. Cloud DLP will
        # scan cloud resource metadata for secrets daily. No inspect template should be
        # included in the discovery config for a security benchmarks scan. Instead, the
        # built-in list of secrets and credentials infoTypes will be used (see https://
        # cloud.google.com/sensitive-data-protection/docs/infotypes-reference#
        # credentials_and_secrets). Credentials and secrets discovered will be reported
        # as vulnerabilities to Security Command Center.
        # Corresponds to the JSON property `secretsTarget`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SecretsDiscoveryTarget]
        attr_accessor :secrets_target
      
        # Target used to match against for discovery with Vertex AI datasets.
        # Corresponds to the JSON property `vertexDatasetTarget`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetDiscoveryTarget]
        attr_accessor :vertex_dataset_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_target = args[:big_query_target] if args.key?(:big_query_target)
          @cloud_sql_target = args[:cloud_sql_target] if args.key?(:cloud_sql_target)
          @cloud_storage_target = args[:cloud_storage_target] if args.key?(:cloud_storage_target)
          @other_cloud_target = args[:other_cloud_target] if args.key?(:other_cloud_target)
          @secrets_target = args[:secrets_target] if args.key?(:secrets_target)
          @vertex_dataset_target = args[:vertex_dataset_target] if args.key?(:vertex_dataset_target)
        end
      end
      
      # Requirements that must be true before a dataset is profiled for the first time.
      class GooglePrivacyDlpV2DiscoveryVertexDatasetConditions
        include Google::Apis::Core::Hashable
      
        # Vertex AI dataset must have been created after this date. Used to avoid
        # backfilling.
        # Corresponds to the JSON property `createdAfter`
        # @return [String]
        attr_accessor :created_after
      
        # Minimum age a Vertex AI dataset must have. If set, the value must be 1 hour or
        # greater.
        # Corresponds to the JSON property `minAge`
        # @return [String]
        attr_accessor :min_age
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_after = args[:created_after] if args.key?(:created_after)
          @min_age = args[:min_age] if args.key?(:min_age)
        end
      end
      
      # Determines what datasets will have profiles generated within an organization
      # or project. Includes the ability to filter by regular expression patterns on
      # project ID or dataset regex.
      class GooglePrivacyDlpV2DiscoveryVertexDatasetFilter
        include Google::Apis::Core::Hashable
      
        # Match dataset resources using regex filters.
        # Corresponds to the JSON property `collection`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetCollection]
        attr_accessor :collection
      
        # Match discovery resources not covered by any other filter.
        # Corresponds to the JSON property `others`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AllOtherResources]
        attr_accessor :others
      
        # Identifies a single Vertex AI dataset.
        # Corresponds to the JSON property `vertexDatasetResourceReference`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetResourceReference]
        attr_accessor :vertex_dataset_resource_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection = args[:collection] if args.key?(:collection)
          @others = args[:others] if args.key?(:others)
          @vertex_dataset_resource_reference = args[:vertex_dataset_resource_reference] if args.key?(:vertex_dataset_resource_reference)
        end
      end
      
      # How often existing datasets should have their profiles refreshed. New datasets
      # are scanned as quickly as possible depending on system capacity.
      class GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence
        include Google::Apis::Core::Hashable
      
        # The cadence at which to update data profiles when the inspection rules defined
        # by the `InspectTemplate` change.
        # Corresponds to the JSON property `inspectTemplateModifiedCadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryInspectTemplateModifiedCadence]
        attr_accessor :inspect_template_modified_cadence
      
        # If you set this field, profiles are refreshed at this frequency regardless of
        # whether the underlying datasets have changed. Defaults to never.
        # Corresponds to the JSON property `refreshFrequency`
        # @return [String]
        attr_accessor :refresh_frequency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_template_modified_cadence = args[:inspect_template_modified_cadence] if args.key?(:inspect_template_modified_cadence)
          @refresh_frequency = args[:refresh_frequency] if args.key?(:refresh_frequency)
        end
      end
      
      # Combines all of the information about a DLP job.
      class GooglePrivacyDlpV2DlpJob
        include Google::Apis::Core::Hashable
      
        # Events that should occur after the job has completed.
        # Corresponds to the JSON property `actionDetails`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2ActionDetails>]
        attr_accessor :action_details
      
        # Time when the job was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Time when the job finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # A stream of errors encountered running the job.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Error>]
        attr_accessor :errors
      
        # The results of an inspect DataSource job.
        # Corresponds to the JSON property `inspectDetails`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectDataSourceDetails]
        attr_accessor :inspect_details
      
        # If created by a job trigger, the resource name of the trigger that
        # instantiated the job.
        # Corresponds to the JSON property `jobTriggerName`
        # @return [String]
        attr_accessor :job_trigger_name
      
        # Time when the job was last modified by the system.
        # Corresponds to the JSON property `lastModified`
        # @return [String]
        attr_accessor :last_modified
      
        # The server-assigned name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Result of a risk analysis operation request.
        # Corresponds to the JSON property `riskDetails`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails]
        attr_accessor :risk_details
      
        # Time when the job started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # State of a job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The type of job.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_details = args[:action_details] if args.key?(:action_details)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @errors = args[:errors] if args.key?(:errors)
          @inspect_details = args[:inspect_details] if args.key?(:inspect_details)
          @job_trigger_name = args[:job_trigger_name] if args.key?(:job_trigger_name)
          @last_modified = args[:last_modified] if args.key?(:last_modified)
          @name = args[:name] if args.key?(:name)
          @risk_details = args[:risk_details] if args.key?(:risk_details)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Location of a finding within a document.
      class GooglePrivacyDlpV2DocumentLocation
        include Google::Apis::Core::Hashable
      
        # Offset of the line, from the beginning of the file, where the finding is
        # located.
        # Corresponds to the JSON property `fileOffset`
        # @return [Fixnum]
        attr_accessor :file_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_offset = args[:file_offset] if args.key?(:file_offset)
        end
      end
      
      # A domain represents a thematic category that a data profile can fall under.
      class GooglePrivacyDlpV2Domain
        include Google::Apis::Core::Hashable
      
        # A domain category that this profile is related to.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The collection of signals that influenced selection of the category.
        # Corresponds to the JSON property `signals`
        # @return [Array<String>]
        attr_accessor :signals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @signals = args[:signals] if args.key?(:signals)
        end
      end
      
      # An entity in a dataset is a field or set of fields that correspond to a single
      # person. For example, in medical records the `EntityId` might be a patient
      # identifier, or for financial records it might be an account identifier. This
      # message is used when generalizations or analysis must take into account that
      # multiple rows correspond to the same entity.
      class GooglePrivacyDlpV2EntityId
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # Details information about an error encountered during job execution or the
      # results of an unsuccessful activation of the JobTrigger.
      class GooglePrivacyDlpV2Error
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `details`
        # @return [Google::Apis::DlpV2::GoogleRpcStatus]
        attr_accessor :details
      
        # Additional information about the error.
        # Corresponds to the JSON property `extraInfo`
        # @return [String]
        attr_accessor :extra_info
      
        # The times the error occurred. List includes the oldest timestamp and the last
        # 9 timestamps.
        # Corresponds to the JSON property `timestamps`
        # @return [Array<String>]
        attr_accessor :timestamps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @extra_info = args[:extra_info] if args.key?(:extra_info)
          @timestamps = args[:timestamps] if args.key?(:timestamps)
        end
      end
      
      # The rule to exclude findings based on a hotword. For record inspection of
      # tables, column names are considered hotwords. An example of this is to exclude
      # a finding if it belongs to a BigQuery column that matches a specific pattern.
      class GooglePrivacyDlpV2ExcludeByHotword
        include Google::Apis::Core::Hashable
      
        # Message defining a custom regular expression.
        # Corresponds to the JSON property `hotwordRegex`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Regex]
        attr_accessor :hotword_regex
      
        # Message for specifying a window around a finding to apply a detection rule.
        # Corresponds to the JSON property `proximity`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Proximity]
        attr_accessor :proximity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hotword_regex = args[:hotword_regex] if args.key?(:hotword_regex)
          @proximity = args[:proximity] if args.key?(:proximity)
        end
      end
      
      # List of excluded infoTypes.
      class GooglePrivacyDlpV2ExcludeInfoTypes
        include Google::Apis::Core::Hashable
      
        # InfoType list in ExclusionRule rule drops a finding when it overlaps or
        # contained within with a finding of an infoType from this list. For example,
        # for `InspectionRuleSet.info_types` containing "PHONE_NUMBER"` and `
        # exclusion_rule` containing `exclude_info_types.info_types` with "EMAIL_ADDRESS"
        # the phone number findings are dropped if they overlap with EMAIL_ADDRESS
        # finding. That leads to "555-222-2222@example.org" to generate only a single
        # finding, namely email address.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType>]
        attr_accessor :info_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_types = args[:info_types] if args.key?(:info_types)
        end
      end
      
      # The rule that specifies conditions when findings of infoTypes specified in `
      # InspectionRuleSet` are removed from results.
      class GooglePrivacyDlpV2ExclusionRule
        include Google::Apis::Core::Hashable
      
        # Custom information type based on a dictionary of words or phrases. This can be
        # used to match sensitive information specific to the data, such as a list of
        # employee IDs or job titles. Dictionary words are case-insensitive and all
        # characters other than letters and digits in the unicode [Basic Multilingual
        # Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#
        # Basic_Multilingual_Plane) will be replaced with whitespace when scanning for
        # matches, so the dictionary phrase "Sam Johnson" will match all three phrases "
        # sam johnson", "Sam, Johnson", and "Sam (Johnson)". Additionally, the
        # characters surrounding any match must be of a different type than the adjacent
        # characters within the word, so letters must be next to non-letters and digits
        # next to non-digits. For example, the dictionary word "jen" will match the
        # first three letters of the text "jen123" but will return no matches for "
        # jennifer". Dictionary words containing a large number of characters that are
        # not letters or digits may result in unexpected findings because such
        # characters are treated as whitespace. The [limits](https://cloud.google.com/
        # sensitive-data-protection/limits) page contains details about the size limits
        # of dictionaries. For dictionaries that do not fit within these constraints,
        # consider using `LargeCustomDictionaryConfig` in the `StoredInfoType` API.
        # Corresponds to the JSON property `dictionary`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Dictionary]
        attr_accessor :dictionary
      
        # The rule to exclude findings based on a hotword. For record inspection of
        # tables, column names are considered hotwords. An example of this is to exclude
        # a finding if it belongs to a BigQuery column that matches a specific pattern.
        # Corresponds to the JSON property `excludeByHotword`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ExcludeByHotword]
        attr_accessor :exclude_by_hotword
      
        # List of excluded infoTypes.
        # Corresponds to the JSON property `excludeInfoTypes`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ExcludeInfoTypes]
        attr_accessor :exclude_info_types
      
        # How the rule is applied, see MatchingType documentation for details.
        # Corresponds to the JSON property `matchingType`
        # @return [String]
        attr_accessor :matching_type
      
        # Message defining a custom regular expression.
        # Corresponds to the JSON property `regex`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Regex]
        attr_accessor :regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dictionary = args[:dictionary] if args.key?(:dictionary)
          @exclude_by_hotword = args[:exclude_by_hotword] if args.key?(:exclude_by_hotword)
          @exclude_info_types = args[:exclude_info_types] if args.key?(:exclude_info_types)
          @matching_type = args[:matching_type] if args.key?(:matching_type)
          @regex = args[:regex] if args.key?(:regex)
        end
      end
      
      # If set, the detailed data profiles will be persisted to the location of your
      # choice whenever updated.
      class GooglePrivacyDlpV2Export
        include Google::Apis::Core::Hashable
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `profileTable`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :profile_table
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `sampleFindingsTable`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :sample_findings_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @profile_table = args[:profile_table] if args.key?(:profile_table)
          @sample_findings_table = args[:sample_findings_table] if args.key?(:sample_findings_table)
        end
      end
      
      # An expression, consisting of an operator and conditions.
      class GooglePrivacyDlpV2Expressions
        include Google::Apis::Core::Hashable
      
        # A collection of conditions.
        # Corresponds to the JSON property `conditions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Conditions]
        attr_accessor :conditions
      
        # The operator to apply to the result of conditions. Default and currently only
        # supported value is `AND`.
        # Corresponds to the JSON property `logicalOperator`
        # @return [String]
        attr_accessor :logical_operator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @logical_operator = args[:logical_operator] if args.key?(:logical_operator)
        end
      end
      
      # General identifier of a data field in a storage service.
      class GooglePrivacyDlpV2FieldId
        include Google::Apis::Core::Hashable
      
        # Name describing the field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The transformation to apply to the field.
      class GooglePrivacyDlpV2FieldTransformation
        include Google::Apis::Core::Hashable
      
        # A condition for determining whether a transformation should be applied to a
        # field.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RecordCondition]
        attr_accessor :condition
      
        # Required. Input field(s) to apply the transformation to. When you have columns
        # that reference their position within a list, omit the index from the FieldId.
        # FieldId name matching ignores the index. For example, instead of "contact.nums[
        # 0].type", use "contact.nums.type".
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId>]
        attr_accessor :fields
      
        # A type of transformation that will scan unstructured text and apply various `
        # PrimitiveTransformation`s to each finding, where the transformation is applied
        # to only values that were identified as a specific info_type.
        # Corresponds to the JSON property `infoTypeTransformations`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeTransformations]
        attr_accessor :info_type_transformations
      
        # A rule for transforming a value.
        # Corresponds to the JSON property `primitiveTransformation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PrimitiveTransformation]
        attr_accessor :primitive_transformation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @fields = args[:fields] if args.key?(:fields)
          @info_type_transformations = args[:info_type_transformations] if args.key?(:info_type_transformations)
          @primitive_transformation = args[:primitive_transformation] if args.key?(:primitive_transformation)
        end
      end
      
      # The file cluster summary.
      class GooglePrivacyDlpV2FileClusterSummary
        include Google::Apis::Core::Hashable
      
        # Score is a summary of all elements in the data profile. A higher number means
        # more risk.
        # Corresponds to the JSON property `dataRiskLevel`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel]
        attr_accessor :data_risk_level
      
        # A list of errors detected while scanning this cluster. The list is truncated
        # to 10 per cluster.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Error>]
        attr_accessor :errors
      
        # Message used to identify file cluster type being profiled.
        # Corresponds to the JSON property `fileClusterType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FileClusterType]
        attr_accessor :file_cluster_type
      
        # A sample of file types scanned in this cluster. Empty if no files were scanned.
        # File extensions can be derived from the file name or the file content.
        # Corresponds to the JSON property `fileExtensionsScanned`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FileExtensionInfo>]
        attr_accessor :file_extensions_scanned
      
        # A sample of file types seen in this cluster. Empty if no files were seen. File
        # extensions can be derived from the file name or the file content.
        # Corresponds to the JSON property `fileExtensionsSeen`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FileExtensionInfo>]
        attr_accessor :file_extensions_seen
      
        # InfoTypes detected in this cluster.
        # Corresponds to the JSON property `fileStoreInfoTypeSummaries`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreInfoTypeSummary>]
        attr_accessor :file_store_info_type_summaries
      
        # True if no files exist in this cluster. If the file store had more files than
        # could be listed, this will be false even if no files for this cluster were
        # seen and file_extensions_seen is empty.
        # Corresponds to the JSON property `noFilesExist`
        # @return [Boolean]
        attr_accessor :no_files_exist
        alias_method :no_files_exist?, :no_files_exist
      
        # Score is calculated from of all elements in the data profile. A higher level
        # means the data is more sensitive.
        # Corresponds to the JSON property `sensitivityScore`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore]
        attr_accessor :sensitivity_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_risk_level = args[:data_risk_level] if args.key?(:data_risk_level)
          @errors = args[:errors] if args.key?(:errors)
          @file_cluster_type = args[:file_cluster_type] if args.key?(:file_cluster_type)
          @file_extensions_scanned = args[:file_extensions_scanned] if args.key?(:file_extensions_scanned)
          @file_extensions_seen = args[:file_extensions_seen] if args.key?(:file_extensions_seen)
          @file_store_info_type_summaries = args[:file_store_info_type_summaries] if args.key?(:file_store_info_type_summaries)
          @no_files_exist = args[:no_files_exist] if args.key?(:no_files_exist)
          @sensitivity_score = args[:sensitivity_score] if args.key?(:sensitivity_score)
        end
      end
      
      # Message used to identify file cluster type being profiled.
      class GooglePrivacyDlpV2FileClusterType
        include Google::Apis::Core::Hashable
      
        # Cluster type.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
        end
      end
      
      # Information regarding the discovered file extension.
      class GooglePrivacyDlpV2FileExtensionInfo
        include Google::Apis::Core::Hashable
      
        # The file extension if set. (aka .pdf, .jpg, .txt)
        # Corresponds to the JSON property `fileExtension`
        # @return [String]
        attr_accessor :file_extension
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_extension = args[:file_extension] if args.key?(:file_extension)
        end
      end
      
      # Set of files to scan.
      class GooglePrivacyDlpV2FileSet
        include Google::Apis::Core::Hashable
      
        # Message representing a set of files in a Cloud Storage bucket. Regular
        # expressions are used to allow fine-grained control over which files in the
        # bucket to include. Included files are those that match at least one item in `
        # include_regex` and do not match any items in `exclude_regex`. Note that a file
        # that matches items from both lists will _not_ be included. For a match to
        # occur, the entire file path (i.e., everything in the url after the bucket name)
        # must match the regular expression. For example, given the input ``bucket_name:
        # "mybucket", include_regex: ["directory1/.*"], exclude_regex: ["directory1/
        # excluded.*"]``: * `gs://mybucket/directory1/myfile` will be included * `gs://
        # mybucket/directory1/directory2/myfile` will be included (`.*` matches across `/
        # `) * `gs://mybucket/directory0/directory1/myfile` will _not_ be included (the
        # full path doesn't match any items in `include_regex`) * `gs://mybucket/
        # directory1/excludedfile` will _not_ be included (the path matches an item in `
        # exclude_regex`) If `include_regex` is left empty, it will match all files by
        # default (this is equivalent to setting `include_regex: [".*"]`). Some other
        # common use cases: * ``bucket_name: "mybucket", exclude_regex: [".*\.pdf"]``
        # will include all files in `mybucket` except for .pdf files * ``bucket_name: "
        # mybucket", include_regex: ["directory/[^/]+"]`` will include all files
        # directly under `gs://mybucket/directory/`, without matching across `/`
        # Corresponds to the JSON property `regexFileSet`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageRegexFileSet]
        attr_accessor :regex_file_set
      
        # The Cloud Storage url of the file(s) to scan, in the format `gs:///`. Trailing
        # wildcard in the path is allowed. If the url ends in a trailing slash, the
        # bucket or directory represented by the url will be scanned non-recursively (
        # content in sub-directories will not be scanned). This means that `gs://
        # mybucket/` is equivalent to `gs://mybucket/*`, and `gs://mybucket/directory/`
        # is equivalent to `gs://mybucket/directory/*`. Exactly one of `url` or `
        # regex_file_set` must be set.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regex_file_set = args[:regex_file_set] if args.key?(:regex_file_set)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Match file stores (e.g. buckets) using filters.
      class GooglePrivacyDlpV2FileStoreCollection
        include Google::Apis::Core::Hashable
      
        # A collection of regular expressions to determine what file store to match
        # against.
        # Corresponds to the JSON property `includeRegexes`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreRegexes]
        attr_accessor :include_regexes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_regexes = args[:include_regexes] if args.key?(:include_regexes)
        end
      end
      
      # The profile for a file store. * Cloud Storage: maps 1:1 with a bucket. *
      # Amazon S3: maps 1:1 with a bucket.
      class GooglePrivacyDlpV2FileStoreDataProfile
        include Google::Apis::Core::Hashable
      
        # Snapshot of the configurations used to generate the profile.
        # Corresponds to the JSON property `configSnapshot`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileConfigSnapshot]
        attr_accessor :config_snapshot
      
        # The time the file store was first created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Score is a summary of all elements in the data profile. A higher number means
        # more risk.
        # Corresponds to the JSON property `dataRiskLevel`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel]
        attr_accessor :data_risk_level
      
        # Message used to identify the type of resource being profiled.
        # Corresponds to the JSON property `dataSourceType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataSourceType]
        attr_accessor :data_source_type
      
        # For resources that have multiple storage locations, these are those regions.
        # For Cloud Storage this is the list of regions chosen for dual-region storage. `
        # file_store_location` will normally be the corresponding multi-region for the
        # list of individual locations. The first region is always picked as the
        # processing and storage location for the data profile.
        # Corresponds to the JSON property `dataStorageLocations`
        # @return [Array<String>]
        attr_accessor :data_storage_locations
      
        # Domains associated with the profile.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Domain>]
        attr_accessor :domains
      
        # FileClusterSummary per each cluster.
        # Corresponds to the JSON property `fileClusterSummaries`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FileClusterSummary>]
        attr_accessor :file_cluster_summaries
      
        # InfoTypes detected in this file store.
        # Corresponds to the JSON property `fileStoreInfoTypeSummaries`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreInfoTypeSummary>]
        attr_accessor :file_store_info_type_summaries
      
        # The file store does not have any files. If the profiling operation failed,
        # this is false.
        # Corresponds to the JSON property `fileStoreIsEmpty`
        # @return [Boolean]
        attr_accessor :file_store_is_empty
        alias_method :file_store_is_empty?, :file_store_is_empty
      
        # The location of the file store. * Cloud Storage: https://cloud.google.com/
        # storage/docs/locations#available-locations * Amazon S3: https://docs.aws.
        # amazon.com/general/latest/gr/rande.html#regional-endpoints
        # Corresponds to the JSON property `fileStoreLocation`
        # @return [String]
        attr_accessor :file_store_location
      
        # The file store path. * Cloud Storage: `gs://`bucket`` * Amazon S3: `s3://`
        # bucket`` * Vertex AI dataset: `projects/`project_number`/locations/`location`/
        # datasets/`dataset_id``
        # Corresponds to the JSON property `fileStorePath`
        # @return [String]
        attr_accessor :file_store_path
      
        # The resource name of the resource profiled. https://cloud.google.com/apis/
        # design/resource_names#full_resource_name Example format of an S3 bucket full
        # resource name: `//cloudasset.googleapis.com/organizations/`org_id`/
        # otherCloudConnections/aws/arn:aws:s3:::`bucket_name``
        # Corresponds to the JSON property `fullResource`
        # @return [String]
        attr_accessor :full_resource
      
        # The time the file store was last modified.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # The location type of the file store (region, dual-region, multi-region, etc).
        # If dual-region, expect data_storage_locations to be populated.
        # Corresponds to the JSON property `locationType`
        # @return [String]
        attr_accessor :location_type
      
        # The name of the profile.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The last time the profile was generated.
        # Corresponds to the JSON property `profileLastGenerated`
        # @return [String]
        attr_accessor :profile_last_generated
      
        # Success or errors for the profile generation.
        # Corresponds to the JSON property `profileStatus`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ProfileStatus]
        attr_accessor :profile_status
      
        # The resource name of the project data profile for this file store.
        # Corresponds to the JSON property `projectDataProfile`
        # @return [String]
        attr_accessor :project_data_profile
      
        # The Google Cloud project ID that owns the resource. For Amazon S3 buckets,
        # this is the AWS Account Id.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Resources related to this profile.
        # Corresponds to the JSON property `relatedResources`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2RelatedResource>]
        attr_accessor :related_resources
      
        # Attributes of the resource being profiled. Currently used attributes: *
        # customer_managed_encryption: boolean - true: the resource is encrypted with a
        # customer-managed key. - false: the resource is encrypted with a provider-
        # managed key.
        # Corresponds to the JSON property `resourceAttributes`
        # @return [Hash<String,Google::Apis::DlpV2::GooglePrivacyDlpV2Value>]
        attr_accessor :resource_attributes
      
        # The labels applied to the resource at the time the profile was generated.
        # Corresponds to the JSON property `resourceLabels`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels
      
        # How broadly a resource has been shared.
        # Corresponds to the JSON property `resourceVisibility`
        # @return [String]
        attr_accessor :resource_visibility
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `sampleFindingsTable`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :sample_findings_table
      
        # Score is calculated from of all elements in the data profile. A higher level
        # means the data is more sensitive.
        # Corresponds to the JSON property `sensitivityScore`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore]
        attr_accessor :sensitivity_score
      
        # State of a profile.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The tags attached to the resource, including any tags attached during
        # profiling.
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Tag>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_snapshot = args[:config_snapshot] if args.key?(:config_snapshot)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_risk_level = args[:data_risk_level] if args.key?(:data_risk_level)
          @data_source_type = args[:data_source_type] if args.key?(:data_source_type)
          @data_storage_locations = args[:data_storage_locations] if args.key?(:data_storage_locations)
          @domains = args[:domains] if args.key?(:domains)
          @file_cluster_summaries = args[:file_cluster_summaries] if args.key?(:file_cluster_summaries)
          @file_store_info_type_summaries = args[:file_store_info_type_summaries] if args.key?(:file_store_info_type_summaries)
          @file_store_is_empty = args[:file_store_is_empty] if args.key?(:file_store_is_empty)
          @file_store_location = args[:file_store_location] if args.key?(:file_store_location)
          @file_store_path = args[:file_store_path] if args.key?(:file_store_path)
          @full_resource = args[:full_resource] if args.key?(:full_resource)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @location_type = args[:location_type] if args.key?(:location_type)
          @name = args[:name] if args.key?(:name)
          @profile_last_generated = args[:profile_last_generated] if args.key?(:profile_last_generated)
          @profile_status = args[:profile_status] if args.key?(:profile_status)
          @project_data_profile = args[:project_data_profile] if args.key?(:project_data_profile)
          @project_id = args[:project_id] if args.key?(:project_id)
          @related_resources = args[:related_resources] if args.key?(:related_resources)
          @resource_attributes = args[:resource_attributes] if args.key?(:resource_attributes)
          @resource_labels = args[:resource_labels] if args.key?(:resource_labels)
          @resource_visibility = args[:resource_visibility] if args.key?(:resource_visibility)
          @sample_findings_table = args[:sample_findings_table] if args.key?(:sample_findings_table)
          @sensitivity_score = args[:sensitivity_score] if args.key?(:sensitivity_score)
          @state = args[:state] if args.key?(:state)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Information regarding the discovered InfoType.
      class GooglePrivacyDlpV2FileStoreInfoTypeSummary
        include Google::Apis::Core::Hashable
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_type = args[:info_type] if args.key?(:info_type)
        end
      end
      
      # A pattern to match against one or more file stores.
      class GooglePrivacyDlpV2FileStoreRegex
        include Google::Apis::Core::Hashable
      
        # A pattern to match against one or more file stores. At least one pattern must
        # be specified. Regular expressions use RE2 [syntax](https://github.com/google/
        # re2/wiki/Syntax); a guide can be found under the google/re2 repository on
        # GitHub.
        # Corresponds to the JSON property `cloudStorageRegex`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageRegex]
        attr_accessor :cloud_storage_regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_storage_regex = args[:cloud_storage_regex] if args.key?(:cloud_storage_regex)
        end
      end
      
      # A collection of regular expressions to determine what file store to match
      # against.
      class GooglePrivacyDlpV2FileStoreRegexes
        include Google::Apis::Core::Hashable
      
        # Required. The group of regular expression patterns to match against one or
        # more file stores. Maximum of 100 entries. The sum of all regular expression's
        # length can't exceed 10 KiB.
        # Corresponds to the JSON property `patterns`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreRegex>]
        attr_accessor :patterns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @patterns = args[:patterns] if args.key?(:patterns)
        end
      end
      
      # Represents a piece of potentially sensitive content.
      class GooglePrivacyDlpV2Finding
        include Google::Apis::Core::Hashable
      
        # Timestamp when finding was detected.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The unique finding id.
        # Corresponds to the JSON property `findingId`
        # @return [String]
        attr_accessor :finding_id
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        # Time the job started that produced this finding.
        # Corresponds to the JSON property `jobCreateTime`
        # @return [String]
        attr_accessor :job_create_time
      
        # The job that stored the finding.
        # Corresponds to the JSON property `jobName`
        # @return [String]
        attr_accessor :job_name
      
        # The labels associated with this `Finding`. Label keys must be between 1 and 63
        # characters long and must conform to the following regular expression: `[a-z]([-
        # a-z0-9]*[a-z0-9])?`. Label values must be between 0 and 63 characters long and
        # must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. No
        # more than 10 labels can be associated with a given finding. Examples: * `"
        # environment" : "production"` * `"pipeline" : "etl"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Confidence of how likely it is that the `info_type` is correct.
        # Corresponds to the JSON property `likelihood`
        # @return [String]
        attr_accessor :likelihood
      
        # Specifies the location of the finding.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Location]
        attr_accessor :location
      
        # Resource name in format projects/`project`/locations/`location`/findings/`
        # finding` Populated only when viewing persisted findings.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The content that was found. Even if the content is not textual, it may be
        # converted to a textual representation here. Provided if `include_quote` is
        # true and the finding is less than or equal to 4096 bytes long. If the finding
        # exceeds 4096 bytes in length, the quote may be omitted.
        # Corresponds to the JSON property `quote`
        # @return [String]
        attr_accessor :quote
      
        # Message for infoType-dependent details parsed from quote.
        # Corresponds to the JSON property `quoteInfo`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2QuoteInfo]
        attr_accessor :quote_info
      
        # The job that stored the finding.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Job trigger name, if applicable, for this finding.
        # Corresponds to the JSON property `triggerName`
        # @return [String]
        attr_accessor :trigger_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @finding_id = args[:finding_id] if args.key?(:finding_id)
          @info_type = args[:info_type] if args.key?(:info_type)
          @job_create_time = args[:job_create_time] if args.key?(:job_create_time)
          @job_name = args[:job_name] if args.key?(:job_name)
          @labels = args[:labels] if args.key?(:labels)
          @likelihood = args[:likelihood] if args.key?(:likelihood)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @quote = args[:quote] if args.key?(:quote)
          @quote_info = args[:quote_info] if args.key?(:quote_info)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @trigger_name = args[:trigger_name] if args.key?(:trigger_name)
        end
      end
      
      # Configuration to control the number of findings returned for inspection. This
      # is not used for de-identification or data profiling. When redacting sensitive
      # data from images, finding limits don't apply. They can cause unexpected or
      # inconsistent results, where only some data is redacted. Don't include finding
      # limits in RedactImage requests. Otherwise, Cloud DLP returns an error.
      class GooglePrivacyDlpV2FindingLimits
        include Google::Apis::Core::Hashable
      
        # Configuration of findings limit given for specified infoTypes.
        # Corresponds to the JSON property `maxFindingsPerInfoType`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeLimit>]
        attr_accessor :max_findings_per_info_type
      
        # Max number of findings that are returned for each item scanned. When set
        # within an InspectContentRequest, this field is ignored. This value isn't a
        # hard limit. If the number of findings for an item reaches this limit, the
        # inspection of that item ends gradually, not abruptly. Therefore, the actual
        # number of findings that Cloud DLP returns for the item can be multiple times
        # higher than this value.
        # Corresponds to the JSON property `maxFindingsPerItem`
        # @return [Fixnum]
        attr_accessor :max_findings_per_item
      
        # Max number of findings that are returned per request or job. If you set this
        # field in an InspectContentRequest, the resulting maximum value is the value
        # that you set or 3,000, whichever is lower. This value isn't a hard limit. If
        # an inspection reaches this limit, the inspection ends gradually, not abruptly.
        # Therefore, the actual number of findings that Cloud DLP returns can be
        # multiple times higher than this value.
        # Corresponds to the JSON property `maxFindingsPerRequest`
        # @return [Fixnum]
        attr_accessor :max_findings_per_request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_findings_per_info_type = args[:max_findings_per_info_type] if args.key?(:max_findings_per_info_type)
          @max_findings_per_item = args[:max_findings_per_item] if args.key?(:max_findings_per_item)
          @max_findings_per_request = args[:max_findings_per_request] if args.key?(:max_findings_per_request)
        end
      end
      
      # The request message for finishing a DLP hybrid job.
      class GooglePrivacyDlpV2FinishDlpJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Buckets values based on fixed size ranges. The Bucketing transformation can
      # provide all of this functionality, but requires more configuration. This
      # message is provided as a convenience to the user for simple bucketing
      # strategies. The transformed value will be a hyphenated string of `lower_bound`-
      # `upper_bound`. For example, if lower_bound = 10 and upper_bound = 20, all
      # values that are within this bucket will be replaced with "10-20". This can be
      # used on data of type: double, long. If the bound Value type differs from the
      # type of data being transformed, we will first attempt converting the type of
      # the data to be transformed to match the type of the bound before comparing.
      # See https://cloud.google.com/sensitive-data-protection/docs/concepts-bucketing
      # to learn more.
      class GooglePrivacyDlpV2FixedSizeBucketingConfig
        include Google::Apis::Core::Hashable
      
        # Required. Size of each bucket (except for minimum and maximum buckets). So if `
        # lower_bound` = 10, `upper_bound` = 89, and `bucket_size` = 10, then the
        # following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60, 60-70,
        # 70-80, 80-89, 89+. Precision up to 2 decimals works.
        # Corresponds to the JSON property `bucketSize`
        # @return [Float]
        attr_accessor :bucket_size
      
        # Set of primitive values supported by the system. Note that for the purposes of
        # inspection or transformation, the number of bytes considered to comprise a '
        # Value' is based on its representation as a UTF-8 encoded string. For example,
        # if 'integer_value' is set to 123456789, the number of bytes would be counted
        # as 9, even though an int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `lowerBound`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Value]
        attr_accessor :lower_bound
      
        # Set of primitive values supported by the system. Note that for the purposes of
        # inspection or transformation, the number of bytes considered to comprise a '
        # Value' is based on its representation as a UTF-8 encoded string. For example,
        # if 'integer_value' is set to 123456789, the number of bytes would be counted
        # as 9, even though an int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `upperBound`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Value]
        attr_accessor :upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_size = args[:bucket_size] if args.key?(:bucket_size)
          @lower_bound = args[:lower_bound] if args.key?(:lower_bound)
          @upper_bound = args[:upper_bound] if args.key?(:upper_bound)
        end
      end
      
      # Processing will happen in the global region.
      class GooglePrivacyDlpV2GlobalProcessing
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The rule that adjusts the likelihood of findings within a certain proximity of
      # hotwords.
      class GooglePrivacyDlpV2HotwordRule
        include Google::Apis::Core::Hashable
      
        # Message defining a custom regular expression.
        # Corresponds to the JSON property `hotwordRegex`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Regex]
        attr_accessor :hotword_regex
      
        # Message for specifying an adjustment to the likelihood of a finding as part of
        # a detection rule.
        # Corresponds to the JSON property `likelihoodAdjustment`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2LikelihoodAdjustment]
        attr_accessor :likelihood_adjustment
      
        # Message for specifying a window around a finding to apply a detection rule.
        # Corresponds to the JSON property `proximity`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Proximity]
        attr_accessor :proximity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hotword_regex = args[:hotword_regex] if args.key?(:hotword_regex)
          @likelihood_adjustment = args[:likelihood_adjustment] if args.key?(:likelihood_adjustment)
          @proximity = args[:proximity] if args.key?(:proximity)
        end
      end
      
      # An individual hybrid item to inspect. Will be stored temporarily during
      # processing.
      class GooglePrivacyDlpV2HybridContentItem
        include Google::Apis::Core::Hashable
      
        # Populate to associate additional data with each finding.
        # Corresponds to the JSON property `findingDetails`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2HybridFindingDetails]
        attr_accessor :finding_details
      
        # Type of content to inspect.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem]
        attr_accessor :item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding_details = args[:finding_details] if args.key?(:finding_details)
          @item = args[:item] if args.key?(:item)
        end
      end
      
      # Populate to associate additional data with each finding.
      class GooglePrivacyDlpV2HybridFindingDetails
        include Google::Apis::Core::Hashable
      
        # Represents a container that may contain DLP findings. Examples of a container
        # include a file, table, or database record.
        # Corresponds to the JSON property `containerDetails`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Container]
        attr_accessor :container_details
      
        # Offset in bytes of the line, from the beginning of the file, where the finding
        # is located. Populate if the item being scanned is only part of a bigger item,
        # such as a shard of a file and you want to track the absolute position of the
        # finding.
        # Corresponds to the JSON property `fileOffset`
        # @return [Fixnum]
        attr_accessor :file_offset
      
        # Labels to represent user provided metadata about the data being inspected. If
        # configured by the job, some key values may be required. The labels associated
        # with `Finding`'s produced by hybrid inspection. Label keys must be between 1
        # and 63 characters long and must conform to the following regular expression: `[
        # a-z]([-a-z0-9]*[a-z0-9])?`. Label values must be between 0 and 63 characters
        # long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`
        # . No more than 10 labels can be associated with a given finding. Examples: * `"
        # environment" : "production"` * `"pipeline" : "etl"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Offset of the row for tables. Populate if the row(s) being scanned are part of
        # a bigger dataset and you want to keep track of their absolute position.
        # Corresponds to the JSON property `rowOffset`
        # @return [Fixnum]
        attr_accessor :row_offset
      
        # Instructions regarding the table content being inspected.
        # Corresponds to the JSON property `tableOptions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TableOptions]
        attr_accessor :table_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_details = args[:container_details] if args.key?(:container_details)
          @file_offset = args[:file_offset] if args.key?(:file_offset)
          @labels = args[:labels] if args.key?(:labels)
          @row_offset = args[:row_offset] if args.key?(:row_offset)
          @table_options = args[:table_options] if args.key?(:table_options)
        end
      end
      
      # Request to search for potentially sensitive info in a custom location.
      class GooglePrivacyDlpV2HybridInspectDlpJobRequest
        include Google::Apis::Core::Hashable
      
        # An individual hybrid item to inspect. Will be stored temporarily during
        # processing.
        # Corresponds to the JSON property `hybridItem`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2HybridContentItem]
        attr_accessor :hybrid_item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hybrid_item = args[:hybrid_item] if args.key?(:hybrid_item)
        end
      end
      
      # Request to search for potentially sensitive info in a custom location.
      class GooglePrivacyDlpV2HybridInspectJobTriggerRequest
        include Google::Apis::Core::Hashable
      
        # An individual hybrid item to inspect. Will be stored temporarily during
        # processing.
        # Corresponds to the JSON property `hybridItem`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2HybridContentItem]
        attr_accessor :hybrid_item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hybrid_item = args[:hybrid_item] if args.key?(:hybrid_item)
        end
      end
      
      # Quota exceeded errors will be thrown once quota has been met.
      class GooglePrivacyDlpV2HybridInspectResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Statistics related to processing hybrid inspect requests.
      class GooglePrivacyDlpV2HybridInspectStatistics
        include Google::Apis::Core::Hashable
      
        # The number of hybrid inspection requests aborted because the job ran out of
        # quota or was ended before they could be processed.
        # Corresponds to the JSON property `abortedCount`
        # @return [Fixnum]
        attr_accessor :aborted_count
      
        # The number of hybrid requests currently being processed. Only populated when
        # called via method `getDlpJob`. A burst of traffic may cause hybrid inspect
        # requests to be enqueued. Processing will take place as quickly as possible,
        # but resource limitations may impact how long a request is enqueued for.
        # Corresponds to the JSON property `pendingCount`
        # @return [Fixnum]
        attr_accessor :pending_count
      
        # The number of hybrid inspection requests processed within this job.
        # Corresponds to the JSON property `processedCount`
        # @return [Fixnum]
        attr_accessor :processed_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aborted_count = args[:aborted_count] if args.key?(:aborted_count)
          @pending_count = args[:pending_count] if args.key?(:pending_count)
          @processed_count = args[:processed_count] if args.key?(:processed_count)
        end
      end
      
      # Configuration to control jobs where the content being inspected is outside of
      # Google Cloud Platform.
      class GooglePrivacyDlpV2HybridOptions
        include Google::Apis::Core::Hashable
      
        # A short description of where the data is coming from. Will be stored once in
        # the job. 256 max length.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # To organize findings, these labels will be added to each finding. Label keys
        # must be between 1 and 63 characters long and must conform to the following
        # regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. Label values must be between
        # 0 and 63 characters long and must conform to the regular expression `([a-z]([-
        # a-z0-9]*[a-z0-9])?)?`. No more than 10 labels can be associated with a given
        # finding. Examples: * `"environment" : "production"` * `"pipeline" : "etl"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # These are labels that each inspection request must include within their '
        # finding_labels' map. Request may contain others, but any missing one of these
        # will be rejected. Label keys must be between 1 and 63 characters long and must
        # conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. No
        # more than 10 keys can be required.
        # Corresponds to the JSON property `requiredFindingLabelKeys`
        # @return [Array<String>]
        attr_accessor :required_finding_label_keys
      
        # Instructions regarding the table content being inspected.
        # Corresponds to the JSON property `tableOptions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TableOptions]
        attr_accessor :table_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @required_finding_label_keys = args[:required_finding_label_keys] if args.key?(:required_finding_label_keys)
          @table_options = args[:table_options] if args.key?(:table_options)
        end
      end
      
      # Configure image processing to fall back to the configured processing option
      # below if unavailable in the request location.
      class GooglePrivacyDlpV2ImageFallbackLocation
        include Google::Apis::Core::Hashable
      
        # Processing will happen in the global region.
        # Corresponds to the JSON property `globalProcessing`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2GlobalProcessing]
        attr_accessor :global_processing
      
        # Processing will happen in a multi-region that contains the current region if
        # available.
        # Corresponds to the JSON property `multiRegionProcessing`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2MultiRegionProcessing]
        attr_accessor :multi_region_processing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @global_processing = args[:global_processing] if args.key?(:global_processing)
          @multi_region_processing = args[:multi_region_processing] if args.key?(:multi_region_processing)
        end
      end
      
      # Location of the finding within an image.
      class GooglePrivacyDlpV2ImageLocation
        include Google::Apis::Core::Hashable
      
        # Bounding boxes locating the pixels within the image containing the finding.
        # Corresponds to the JSON property `boundingBoxes`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2BoundingBox>]
        attr_accessor :bounding_boxes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_boxes = args[:bounding_boxes] if args.key?(:bounding_boxes)
        end
      end
      
      # Configuration for determining how redaction of images should occur.
      class GooglePrivacyDlpV2ImageRedactionConfig
        include Google::Apis::Core::Hashable
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        # If true, all text found in the image, regardless whether it matches an
        # info_type, is redacted. Only one should be provided.
        # Corresponds to the JSON property `redactAllText`
        # @return [Boolean]
        attr_accessor :redact_all_text
        alias_method :redact_all_text?, :redact_all_text
      
        # Represents a color in the RGB color space.
        # Corresponds to the JSON property `redactionColor`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Color]
        attr_accessor :redaction_color
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_type = args[:info_type] if args.key?(:info_type)
          @redact_all_text = args[:redact_all_text] if args.key?(:redact_all_text)
          @redaction_color = args[:redaction_color] if args.key?(:redaction_color)
        end
      end
      
      # Configuration for determining how redaction of images should occur.
      class GooglePrivacyDlpV2ImageTransformation
        include Google::Apis::Core::Hashable
      
        # Apply transformation to all findings.
        # Corresponds to the JSON property `allInfoTypes`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AllInfoTypes]
        attr_accessor :all_info_types
      
        # Apply to all text.
        # Corresponds to the JSON property `allText`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AllText]
        attr_accessor :all_text
      
        # Represents a color in the RGB color space.
        # Corresponds to the JSON property `redactionColor`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Color]
        attr_accessor :redaction_color
      
        # Apply transformation to the selected info_types.
        # Corresponds to the JSON property `selectedInfoTypes`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SelectedInfoTypes]
        attr_accessor :selected_info_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_info_types = args[:all_info_types] if args.key?(:all_info_types)
          @all_text = args[:all_text] if args.key?(:all_text)
          @redaction_color = args[:redaction_color] if args.key?(:redaction_color)
          @selected_info_types = args[:selected_info_types] if args.key?(:selected_info_types)
        end
      end
      
      # A type of transformation that is applied over images.
      class GooglePrivacyDlpV2ImageTransformations
        include Google::Apis::Core::Hashable
      
        # List of transforms to make.
        # Corresponds to the JSON property `transforms`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2ImageTransformation>]
        attr_accessor :transforms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transforms = args[:transforms] if args.key?(:transforms)
        end
      end
      
      # Type of information detected by the API.
      class GooglePrivacyDlpV2InfoType
        include Google::Apis::Core::Hashable
      
        # Name of the information type. Either a name of your choosing when creating a
        # CustomInfoType, or one of the names listed at https://cloud.google.com/
        # sensitive-data-protection/docs/infotypes-reference when specifying a built-in
        # type. When sending Cloud DLP results to Data Catalog, infoType names should
        # conform to the pattern `[A-Za-z0-9$_-]`1,64``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Score is calculated from of all elements in the data profile. A higher level
        # means the data is more sensitive.
        # Corresponds to the JSON property `sensitivityScore`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore]
        attr_accessor :sensitivity_score
      
        # Optional version name for this InfoType.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @sensitivity_score = args[:sensitivity_score] if args.key?(:sensitivity_score)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Classification of infoTypes to organize them according to geographic location,
      # industry, and data type.
      class GooglePrivacyDlpV2InfoTypeCategory
        include Google::Apis::Core::Hashable
      
        # The group of relevant businesses where this infoType is commonly used
        # Corresponds to the JSON property `industryCategory`
        # @return [String]
        attr_accessor :industry_category
      
        # The region or country that issued the ID or document represented by the
        # infoType.
        # Corresponds to the JSON property `locationCategory`
        # @return [String]
        attr_accessor :location_category
      
        # The class of identifiers where this infoType belongs
        # Corresponds to the JSON property `typeCategory`
        # @return [String]
        attr_accessor :type_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @industry_category = args[:industry_category] if args.key?(:industry_category)
          @location_category = args[:location_category] if args.key?(:location_category)
          @type_category = args[:type_category] if args.key?(:type_category)
        end
      end
      
      # InfoType description.
      class GooglePrivacyDlpV2InfoTypeDescription
        include Google::Apis::Core::Hashable
      
        # The category of the infoType.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeCategory>]
        attr_accessor :categories
      
        # Description of the infotype. Translated when language is provided in the
        # request.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Human readable form of the infoType name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A sample that is a true positive for this infoType.
        # Corresponds to the JSON property `example`
        # @return [String]
        attr_accessor :example
      
        # Internal name of the infoType.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Score is calculated from of all elements in the data profile. A higher level
        # means the data is more sensitive.
        # Corresponds to the JSON property `sensitivityScore`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore]
        attr_accessor :sensitivity_score
      
        # If this field is set, this infoType is a general infoType and these specific
        # infoTypes are contained within it. General infoTypes are infoTypes that
        # encompass multiple specific infoTypes. For example, the "GEOGRAPHIC_DATA"
        # general infoType would have set for this field "LOCATION", "
        # LOCATION_COORDINATES", and "STREET_ADDRESS".
        # Corresponds to the JSON property `specificInfoTypes`
        # @return [Array<String>]
        attr_accessor :specific_info_types
      
        # Which parts of the API supports this InfoType.
        # Corresponds to the JSON property `supportedBy`
        # @return [Array<String>]
        attr_accessor :supported_by
      
        # A list of available versions for the infotype.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2VersionDescription>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @example = args[:example] if args.key?(:example)
          @name = args[:name] if args.key?(:name)
          @sensitivity_score = args[:sensitivity_score] if args.key?(:sensitivity_score)
          @specific_info_types = args[:specific_info_types] if args.key?(:specific_info_types)
          @supported_by = args[:supported_by] if args.key?(:supported_by)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # Configuration for setting a minimum likelihood per infotype. Used to customize
      # the minimum likelihood level for specific infotypes in the request. For
      # example, use this if you want to lower the precision for PERSON_NAME without
      # lowering the precision for the other infotypes in the request.
      class GooglePrivacyDlpV2InfoTypeLikelihood
        include Google::Apis::Core::Hashable
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        # Only returns findings equal to or above this threshold. This field is required
        # or else the configuration fails.
        # Corresponds to the JSON property `minLikelihood`
        # @return [String]
        attr_accessor :min_likelihood
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_type = args[:info_type] if args.key?(:info_type)
          @min_likelihood = args[:min_likelihood] if args.key?(:min_likelihood)
        end
      end
      
      # Max findings configuration per infoType, per content item or long running
      # DlpJob.
      class GooglePrivacyDlpV2InfoTypeLimit
        include Google::Apis::Core::Hashable
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        # Max findings limit for the given infoType.
        # Corresponds to the JSON property `maxFindings`
        # @return [Fixnum]
        attr_accessor :max_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_type = args[:info_type] if args.key?(:info_type)
          @max_findings = args[:max_findings] if args.key?(:max_findings)
        end
      end
      
      # Statistics regarding a specific InfoType.
      class GooglePrivacyDlpV2InfoTypeStats
        include Google::Apis::Core::Hashable
      
        # Number of findings for this infoType.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @info_type = args[:info_type] if args.key?(:info_type)
        end
      end
      
      # The infoType details for this column.
      class GooglePrivacyDlpV2InfoTypeSummary
        include Google::Apis::Core::Hashable
      
        # Not populated for predicted infotypes.
        # Corresponds to the JSON property `estimatedPrevalence`
        # @return [Fixnum]
        attr_accessor :estimated_prevalence
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_prevalence = args[:estimated_prevalence] if args.key?(:estimated_prevalence)
          @info_type = args[:info_type] if args.key?(:info_type)
        end
      end
      
      # A transformation to apply to text that is identified as a specific info_type.
      class GooglePrivacyDlpV2InfoTypeTransformation
        include Google::Apis::Core::Hashable
      
        # InfoTypes to apply the transformation to. An empty list will cause this
        # transformation to apply to all findings that correspond to infoTypes that were
        # requested in `InspectConfig`.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType>]
        attr_accessor :info_types
      
        # A rule for transforming a value.
        # Corresponds to the JSON property `primitiveTransformation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PrimitiveTransformation]
        attr_accessor :primitive_transformation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_types = args[:info_types] if args.key?(:info_types)
          @primitive_transformation = args[:primitive_transformation] if args.key?(:primitive_transformation)
        end
      end
      
      # A type of transformation that will scan unstructured text and apply various `
      # PrimitiveTransformation`s to each finding, where the transformation is applied
      # to only values that were identified as a specific info_type.
      class GooglePrivacyDlpV2InfoTypeTransformations
        include Google::Apis::Core::Hashable
      
        # Required. Transformation for each infoType. Cannot specify more than one for a
        # given infoType.
        # Corresponds to the JSON property `transformations`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeTransformation>]
        attr_accessor :transformations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transformations = args[:transformations] if args.key?(:transformations)
        end
      end
      
      # Configuration description of the scanning process. When used with
      # redactContent only info_types and min_likelihood are currently used.
      class GooglePrivacyDlpV2InspectConfig
        include Google::Apis::Core::Hashable
      
        # Deprecated and unused.
        # Corresponds to the JSON property `contentOptions`
        # @return [Array<String>]
        attr_accessor :content_options
      
        # CustomInfoTypes provided by the user. See https://cloud.google.com/sensitive-
        # data-protection/docs/creating-custom-infotypes to learn more.
        # Corresponds to the JSON property `customInfoTypes`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2CustomInfoType>]
        attr_accessor :custom_info_types
      
        # When true, excludes type information of the findings. This is not used for
        # data profiling.
        # Corresponds to the JSON property `excludeInfoTypes`
        # @return [Boolean]
        attr_accessor :exclude_info_types
        alias_method :exclude_info_types?, :exclude_info_types
      
        # When true, a contextual quote from the data that triggered a finding is
        # included in the response; see Finding.quote. This is not used for data
        # profiling.
        # Corresponds to the JSON property `includeQuote`
        # @return [Boolean]
        attr_accessor :include_quote
        alias_method :include_quote?, :include_quote
      
        # Restricts what info_types to look for. The values must correspond to InfoType
        # values returned by ListInfoTypes or listed at https://cloud.google.com/
        # sensitive-data-protection/docs/infotypes-reference. When no InfoTypes or
        # CustomInfoTypes are specified in a request, the system may automatically
        # choose a default list of detectors to run, which may change over time. If you
        # need precise control and predictability as to what detectors are run you
        # should specify specific InfoTypes listed in the reference, otherwise a default
        # list will be used, which may change over time.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType>]
        attr_accessor :info_types
      
        # Configuration to control the number of findings returned for inspection. This
        # is not used for de-identification or data profiling. When redacting sensitive
        # data from images, finding limits don't apply. They can cause unexpected or
        # inconsistent results, where only some data is redacted. Don't include finding
        # limits in RedactImage requests. Otherwise, Cloud DLP returns an error.
        # Corresponds to the JSON property `limits`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FindingLimits]
        attr_accessor :limits
      
        # Only returns findings equal to or above this threshold. The default is
        # POSSIBLE. In general, the highest likelihood setting yields the fewest
        # findings in results and the lowest chance of a false positive. For more
        # information, see [Match likelihood](https://cloud.google.com/sensitive-data-
        # protection/docs/likelihood).
        # Corresponds to the JSON property `minLikelihood`
        # @return [String]
        attr_accessor :min_likelihood
      
        # Minimum likelihood per infotype. For each infotype, a user can specify a
        # minimum likelihood. The system only returns a finding if its likelihood is
        # above this threshold. If this field is not set, the system uses the
        # InspectConfig min_likelihood.
        # Corresponds to the JSON property `minLikelihoodPerInfoType`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeLikelihood>]
        attr_accessor :min_likelihood_per_info_type
      
        # Set of rules to apply to the findings for this InspectConfig. Exclusion rules,
        # contained in the set are executed in the end, other rules are executed in the
        # order they are specified for each info type.
        # Corresponds to the JSON property `ruleSet`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InspectionRuleSet>]
        attr_accessor :rule_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_options = args[:content_options] if args.key?(:content_options)
          @custom_info_types = args[:custom_info_types] if args.key?(:custom_info_types)
          @exclude_info_types = args[:exclude_info_types] if args.key?(:exclude_info_types)
          @include_quote = args[:include_quote] if args.key?(:include_quote)
          @info_types = args[:info_types] if args.key?(:info_types)
          @limits = args[:limits] if args.key?(:limits)
          @min_likelihood = args[:min_likelihood] if args.key?(:min_likelihood)
          @min_likelihood_per_info_type = args[:min_likelihood_per_info_type] if args.key?(:min_likelihood_per_info_type)
          @rule_set = args[:rule_set] if args.key?(:rule_set)
        end
      end
      
      # Request to search for potentially sensitive info in a ContentItem.
      class GooglePrivacyDlpV2InspectContentRequest
        include Google::Apis::Core::Hashable
      
        # Configuration description of the scanning process. When used with
        # redactContent only info_types and min_likelihood are currently used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig]
        attr_accessor :inspect_config
      
        # Template to use. Any configuration directly specified in inspect_config will
        # override those set in the template. Singular fields that are set in this
        # request will replace their corresponding fields in the template. Repeated
        # fields are appended. Singular sub-messages and groups are recursively merged.
        # Corresponds to the JSON property `inspectTemplateName`
        # @return [String]
        attr_accessor :inspect_template_name
      
        # Type of content to inspect.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem]
        attr_accessor :item
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
          @inspect_template_name = args[:inspect_template_name] if args.key?(:inspect_template_name)
          @item = args[:item] if args.key?(:item)
          @location_id = args[:location_id] if args.key?(:location_id)
        end
      end
      
      # Results of inspecting an item.
      class GooglePrivacyDlpV2InspectContentResponse
        include Google::Apis::Core::Hashable
      
        # All the findings for a single scanned item.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectResult]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # The results of an inspect DataSource job.
      class GooglePrivacyDlpV2InspectDataSourceDetails
        include Google::Apis::Core::Hashable
      
        # Snapshot of the inspection configuration.
        # Corresponds to the JSON property `requestedOptions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RequestedOptions]
        attr_accessor :requested_options
      
        # All result fields mentioned below are updated while the job is processing.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Result]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_options = args[:requested_options] if args.key?(:requested_options)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # Controls what and how to inspect for findings.
      class GooglePrivacyDlpV2InspectJobConfig
        include Google::Apis::Core::Hashable
      
        # Actions to execute at the completion of the job.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Action>]
        attr_accessor :actions
      
        # Configuration description of the scanning process. When used with
        # redactContent only info_types and min_likelihood are currently used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig]
        attr_accessor :inspect_config
      
        # If provided, will be used as the default for all values in InspectConfig. `
        # inspect_config` will be merged into the values persisted as part of the
        # template.
        # Corresponds to the JSON property `inspectTemplateName`
        # @return [String]
        attr_accessor :inspect_template_name
      
        # Shared message indicating Cloud storage type.
        # Corresponds to the JSON property `storageConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StorageConfig]
        attr_accessor :storage_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
          @inspect_template_name = args[:inspect_template_name] if args.key?(:inspect_template_name)
          @storage_config = args[:storage_config] if args.key?(:storage_config)
        end
      end
      
      # All the findings for a single scanned item.
      class GooglePrivacyDlpV2InspectResult
        include Google::Apis::Core::Hashable
      
        # List of findings for an item.
        # Corresponds to the JSON property `findings`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Finding>]
        attr_accessor :findings
      
        # If true, then this item might have more findings than were returned, and the
        # findings returned are an arbitrary subset of all findings. The findings list
        # might be truncated because the input items were too large, or because the
        # server reached the maximum amount of resources allowed for a single API call.
        # For best results, divide the input into smaller batches.
        # Corresponds to the JSON property `findingsTruncated`
        # @return [Boolean]
        attr_accessor :findings_truncated
        alias_method :findings_truncated?, :findings_truncated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @findings = args[:findings] if args.key?(:findings)
          @findings_truncated = args[:findings_truncated] if args.key?(:findings_truncated)
        end
      end
      
      # The inspectTemplate contains a configuration (set of types of sensitive data
      # to be detected) to be used anywhere you otherwise would normally specify
      # InspectConfig. See https://cloud.google.com/sensitive-data-protection/docs/
      # concepts-templates to learn more.
      class GooglePrivacyDlpV2InspectTemplate
        include Google::Apis::Core::Hashable
      
        # Output only. The creation timestamp of an inspectTemplate.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Short description (max 256 chars).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name (max 256 chars).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Configuration description of the scanning process. When used with
        # redactContent only info_types and min_likelihood are currently used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig]
        attr_accessor :inspect_config
      
        # Output only. The template name. The template will have one of the following
        # formats: `projects/PROJECT_ID/inspectTemplates/TEMPLATE_ID` OR `organizations/
        # ORGANIZATION_ID/inspectTemplates/TEMPLATE_ID`;
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The last update timestamp of an inspectTemplate.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A single inspection rule to be applied to infoTypes, specified in `
      # InspectionRuleSet`.
      class GooglePrivacyDlpV2InspectionRule
        include Google::Apis::Core::Hashable
      
        # The rule that specifies conditions when findings of infoTypes specified in `
        # InspectionRuleSet` are removed from results.
        # Corresponds to the JSON property `exclusionRule`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ExclusionRule]
        attr_accessor :exclusion_rule
      
        # The rule that adjusts the likelihood of findings within a certain proximity of
        # hotwords.
        # Corresponds to the JSON property `hotwordRule`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2HotwordRule]
        attr_accessor :hotword_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusion_rule = args[:exclusion_rule] if args.key?(:exclusion_rule)
          @hotword_rule = args[:hotword_rule] if args.key?(:hotword_rule)
        end
      end
      
      # Rule set for modifying a set of infoTypes to alter behavior under certain
      # circumstances, depending on the specific details of the rules within the set.
      class GooglePrivacyDlpV2InspectionRuleSet
        include Google::Apis::Core::Hashable
      
        # List of infoTypes this rule set is applied to.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType>]
        attr_accessor :info_types
      
        # Set of rules to be applied to infoTypes. The rules are applied in order.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InspectionRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_types = args[:info_types] if args.key?(:info_types)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Sends an email when the job completes. The email goes to IAM project owners
      # and technical [Essential Contacts](https://cloud.google.com/resource-manager/
      # docs/managing-notification-contacts).
      class GooglePrivacyDlpV2JobNotificationEmails
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Contains a configuration to make API calls on a repeating basis. See https://
      # cloud.google.com/sensitive-data-protection/docs/concepts-job-triggers to learn
      # more.
      class GooglePrivacyDlpV2JobTrigger
        include Google::Apis::Core::Hashable
      
        # Output only. The creation timestamp of a triggeredJob.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # User provided description (max 256 chars)
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name (max 100 chars)
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. A stream of errors encountered when the trigger was activated.
        # Repeated errors may result in the JobTrigger automatically being paused. Will
        # return the last 100 errors. Whenever the JobTrigger is modified this list will
        # be cleared.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Error>]
        attr_accessor :errors
      
        # Controls what and how to inspect for findings.
        # Corresponds to the JSON property `inspectJob`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectJobConfig]
        attr_accessor :inspect_job
      
        # Output only. The timestamp of the last time this trigger executed.
        # Corresponds to the JSON property `lastRunTime`
        # @return [String]
        attr_accessor :last_run_time
      
        # Unique resource name for the triggeredJob, assigned by the service when the
        # triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/
        # 53234423`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. A status for this trigger.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # A list of triggers which will be OR'ed together. Only one in the list needs to
        # trigger for a job to be started. The list may contain only a single Schedule
        # trigger and must have at least one object.
        # Corresponds to the JSON property `triggers`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Trigger>]
        attr_accessor :triggers
      
        # Output only. The last update timestamp of a triggeredJob.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @errors = args[:errors] if args.key?(:errors)
          @inspect_job = args[:inspect_job] if args.key?(:inspect_job)
          @last_run_time = args[:last_run_time] if args.key?(:last_run_time)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
          @triggers = args[:triggers] if args.key?(:triggers)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # k-anonymity metric, used for analysis of reidentification risk.
      class GooglePrivacyDlpV2KAnonymityConfig
        include Google::Apis::Core::Hashable
      
        # An entity in a dataset is a field or set of fields that correspond to a single
        # person. For example, in medical records the `EntityId` might be a patient
        # identifier, or for financial records it might be an account identifier. This
        # message is used when generalizations or analysis must take into account that
        # multiple rows correspond to the same entity.
        # Corresponds to the JSON property `entityId`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2EntityId]
        attr_accessor :entity_id
      
        # Set of fields to compute k-anonymity over. When multiple fields are specified,
        # they are considered a single composite key. Structs and repeated data types
        # are not supported; however, nested fields are supported so long as they are
        # not structs themselves or nested within a repeated field.
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId>]
        attr_accessor :quasi_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
          @quasi_ids = args[:quasi_ids] if args.key?(:quasi_ids)
        end
      end
      
      # The set of columns' values that share the same ldiversity value
      class GooglePrivacyDlpV2KAnonymityEquivalenceClass
        include Google::Apis::Core::Hashable
      
        # Size of the equivalence class, for example number of rows with the above set
        # of values.
        # Corresponds to the JSON property `equivalenceClassSize`
        # @return [Fixnum]
        attr_accessor :equivalence_class_size
      
        # Set of values defining the equivalence class. One value per quasi-identifier
        # column in the original KAnonymity metric message. The order is always the same
        # as the original request.
        # Corresponds to the JSON property `quasiIdsValues`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Value>]
        attr_accessor :quasi_ids_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @equivalence_class_size = args[:equivalence_class_size] if args.key?(:equivalence_class_size)
          @quasi_ids_values = args[:quasi_ids_values] if args.key?(:quasi_ids_values)
        end
      end
      
      # Histogram of k-anonymity equivalence classes.
      class GooglePrivacyDlpV2KAnonymityHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Total number of equivalence classes in this bucket.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Total number of distinct equivalence classes in this bucket.
        # Corresponds to the JSON property `bucketValueCount`
        # @return [Fixnum]
        attr_accessor :bucket_value_count
      
        # Sample of equivalence classes in this bucket. The total number of classes
        # returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2KAnonymityEquivalenceClass>]
        attr_accessor :bucket_values
      
        # Lower bound on the size of the equivalence classes in this bucket.
        # Corresponds to the JSON property `equivalenceClassSizeLowerBound`
        # @return [Fixnum]
        attr_accessor :equivalence_class_size_lower_bound
      
        # Upper bound on the size of the equivalence classes in this bucket.
        # Corresponds to the JSON property `equivalenceClassSizeUpperBound`
        # @return [Fixnum]
        attr_accessor :equivalence_class_size_upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_size = args[:bucket_size] if args.key?(:bucket_size)
          @bucket_value_count = args[:bucket_value_count] if args.key?(:bucket_value_count)
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @equivalence_class_size_lower_bound = args[:equivalence_class_size_lower_bound] if args.key?(:equivalence_class_size_lower_bound)
          @equivalence_class_size_upper_bound = args[:equivalence_class_size_upper_bound] if args.key?(:equivalence_class_size_upper_bound)
        end
      end
      
      # Result of the k-anonymity computation.
      class GooglePrivacyDlpV2KAnonymityResult
        include Google::Apis::Core::Hashable
      
        # Histogram of k-anonymity equivalence classes.
        # Corresponds to the JSON property `equivalenceClassHistogramBuckets`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2KAnonymityHistogramBucket>]
        attr_accessor :equivalence_class_histogram_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @equivalence_class_histogram_buckets = args[:equivalence_class_histogram_buckets] if args.key?(:equivalence_class_histogram_buckets)
        end
      end
      
      # Reidentifiability metric. This corresponds to a risk model similar to what is
      # called "journalist risk" in the literature, except the attack dataset is
      # statistically modeled instead of being perfectly known. This can be done using
      # publicly available data (like the US Census), or using a custom statistical
      # model (indicated as one or several BigQuery tables), or by extrapolating from
      # the distribution of values in the input dataset.
      class GooglePrivacyDlpV2KMapEstimationConfig
        include Google::Apis::Core::Hashable
      
        # Several auxiliary tables can be used in the analysis. Each custom_tag used to
        # tag a quasi-identifiers column must appear in exactly one column of one
        # auxiliary table.
        # Corresponds to the JSON property `auxiliaryTables`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2AuxiliaryTable>]
        attr_accessor :auxiliary_tables
      
        # Required. Fields considered to be quasi-identifiers. No two columns can have
        # the same tag.
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2TaggedField>]
        attr_accessor :quasi_ids
      
        # ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no
        # column is tagged with a region-specific InfoType (like US_ZIP_5) or a region
        # code.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auxiliary_tables = args[:auxiliary_tables] if args.key?(:auxiliary_tables)
          @quasi_ids = args[:quasi_ids] if args.key?(:quasi_ids)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # A KMapEstimationHistogramBucket message with the following values:
      # min_anonymity: 3 max_anonymity: 5 frequency: 42 means that there are 42
      # records whose quasi-identifier values correspond to 3, 4 or 5 people in the
      # overlying population. An important particular case is when min_anonymity =
      # max_anonymity = 1: the frequency field then corresponds to the number of
      # uniquely identifiable records.
      class GooglePrivacyDlpV2KMapEstimationHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Number of records within these anonymity bounds.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Total number of distinct quasi-identifier tuple values in this bucket.
        # Corresponds to the JSON property `bucketValueCount`
        # @return [Fixnum]
        attr_accessor :bucket_value_count
      
        # Sample of quasi-identifier tuple values in this bucket. The total number of
        # classes returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2KMapEstimationQuasiIdValues>]
        attr_accessor :bucket_values
      
        # Always greater than or equal to min_anonymity.
        # Corresponds to the JSON property `maxAnonymity`
        # @return [Fixnum]
        attr_accessor :max_anonymity
      
        # Always positive.
        # Corresponds to the JSON property `minAnonymity`
        # @return [Fixnum]
        attr_accessor :min_anonymity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_size = args[:bucket_size] if args.key?(:bucket_size)
          @bucket_value_count = args[:bucket_value_count] if args.key?(:bucket_value_count)
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @max_anonymity = args[:max_anonymity] if args.key?(:max_anonymity)
          @min_anonymity = args[:min_anonymity] if args.key?(:min_anonymity)
        end
      end
      
      # A tuple of values for the quasi-identifier columns.
      class GooglePrivacyDlpV2KMapEstimationQuasiIdValues
        include Google::Apis::Core::Hashable
      
        # The estimated anonymity for these quasi-identifier values.
        # Corresponds to the JSON property `estimatedAnonymity`
        # @return [Fixnum]
        attr_accessor :estimated_anonymity
      
        # The quasi-identifier values.
        # Corresponds to the JSON property `quasiIdsValues`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Value>]
        attr_accessor :quasi_ids_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_anonymity = args[:estimated_anonymity] if args.key?(:estimated_anonymity)
          @quasi_ids_values = args[:quasi_ids_values] if args.key?(:quasi_ids_values)
        end
      end
      
      # Result of the reidentifiability analysis. Note that these results are an
      # estimation, not exact values.
      class GooglePrivacyDlpV2KMapEstimationResult
        include Google::Apis::Core::Hashable
      
        # The intervals [min_anonymity, max_anonymity] do not overlap. If a value doesn'
        # t correspond to any such interval, the associated frequency is zero. For
        # example, the following records: `min_anonymity: 1, max_anonymity: 1, frequency:
        # 17` `min_anonymity: 2, max_anonymity: 3, frequency: 42` `min_anonymity: 5,
        # max_anonymity: 10, frequency: 99` mean that there are no record with an
        # estimated anonymity of 4, 5, or larger than 10.
        # Corresponds to the JSON property `kMapEstimationHistogram`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2KMapEstimationHistogramBucket>]
        attr_accessor :k_map_estimation_histogram
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @k_map_estimation_histogram = args[:k_map_estimation_histogram] if args.key?(:k_map_estimation_histogram)
        end
      end
      
      # A unique identifier for a Datastore entity. If a key's partition ID or any of
      # its path kinds or names are reserved/read-only, the key is reserved/read-only.
      # A reserved/read-only key is forbidden in certain documented contexts.
      class GooglePrivacyDlpV2Key
        include Google::Apis::Core::Hashable
      
        # Datastore partition ID. A partition ID identifies a grouping of entities. The
        # grouping is always by project and namespace, however the namespace ID may be
        # empty. A partition ID contains several dimensions: project ID and namespace ID.
        # Corresponds to the JSON property `partitionId`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PartitionId]
        attr_accessor :partition_id
      
        # The entity path. An entity path consists of one or more elements composed of a
        # kind and a string or numerical identifier, which identify entities. The first
        # element identifies a _root entity_, the second element identifies a _child_ of
        # the root entity, the third element identifies a child of the second entity,
        # and so forth. The entities identified by all prefixes of the path are called
        # the element's _ancestors_. A path can never be empty, and a path can have at
        # most 100 elements.
        # Corresponds to the JSON property `path`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2PathElement>]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_id = args[:partition_id] if args.key?(:partition_id)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # A representation of a Datastore kind.
      class GooglePrivacyDlpV2KindExpression
        include Google::Apis::Core::Hashable
      
        # The name of the kind.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Include to use an existing data crypto key wrapped by KMS. The wrapped key
      # must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM
      # permissions when sending a request to perform a crypto transformation using a
      # KMS-wrapped crypto key: dlp.kms.encrypt For more information, see [Creating a
      # wrapped key] (https://cloud.google.com/sensitive-data-protection/docs/create-
      # wrapped-key). Note: When you use Cloud KMS for cryptographic operations, [
      # charges apply](https://cloud.google.com/kms/pricing).
      class GooglePrivacyDlpV2KmsWrappedCryptoKey
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the KMS CryptoKey to use for unwrapping.
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        # Required. The wrapped data crypto key.
        # Corresponds to the JSON property `wrappedKey`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :wrapped_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crypto_key_name = args[:crypto_key_name] if args.key?(:crypto_key_name)
          @wrapped_key = args[:wrapped_key] if args.key?(:wrapped_key)
        end
      end
      
      # l-diversity metric, used for analysis of reidentification risk.
      class GooglePrivacyDlpV2LDiversityConfig
        include Google::Apis::Core::Hashable
      
        # Set of quasi-identifiers indicating how equivalence classes are defined for
        # the l-diversity computation. When multiple fields are specified, they are
        # considered a single composite key.
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId>]
        attr_accessor :quasi_ids
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `sensitiveAttribute`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :sensitive_attribute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quasi_ids = args[:quasi_ids] if args.key?(:quasi_ids)
          @sensitive_attribute = args[:sensitive_attribute] if args.key?(:sensitive_attribute)
        end
      end
      
      # The set of columns' values that share the same ldiversity value.
      class GooglePrivacyDlpV2LDiversityEquivalenceClass
        include Google::Apis::Core::Hashable
      
        # Size of the k-anonymity equivalence class.
        # Corresponds to the JSON property `equivalenceClassSize`
        # @return [Fixnum]
        attr_accessor :equivalence_class_size
      
        # Number of distinct sensitive values in this equivalence class.
        # Corresponds to the JSON property `numDistinctSensitiveValues`
        # @return [Fixnum]
        attr_accessor :num_distinct_sensitive_values
      
        # Quasi-identifier values defining the k-anonymity equivalence class. The order
        # is always the same as the original request.
        # Corresponds to the JSON property `quasiIdsValues`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Value>]
        attr_accessor :quasi_ids_values
      
        # Estimated frequencies of top sensitive values.
        # Corresponds to the JSON property `topSensitiveValues`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2ValueFrequency>]
        attr_accessor :top_sensitive_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @equivalence_class_size = args[:equivalence_class_size] if args.key?(:equivalence_class_size)
          @num_distinct_sensitive_values = args[:num_distinct_sensitive_values] if args.key?(:num_distinct_sensitive_values)
          @quasi_ids_values = args[:quasi_ids_values] if args.key?(:quasi_ids_values)
          @top_sensitive_values = args[:top_sensitive_values] if args.key?(:top_sensitive_values)
        end
      end
      
      # Histogram of l-diversity equivalence class sensitive value frequencies.
      class GooglePrivacyDlpV2LDiversityHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Total number of equivalence classes in this bucket.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Total number of distinct equivalence classes in this bucket.
        # Corresponds to the JSON property `bucketValueCount`
        # @return [Fixnum]
        attr_accessor :bucket_value_count
      
        # Sample of equivalence classes in this bucket. The total number of classes
        # returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2LDiversityEquivalenceClass>]
        attr_accessor :bucket_values
      
        # Lower bound on the sensitive value frequencies of the equivalence classes in
        # this bucket.
        # Corresponds to the JSON property `sensitiveValueFrequencyLowerBound`
        # @return [Fixnum]
        attr_accessor :sensitive_value_frequency_lower_bound
      
        # Upper bound on the sensitive value frequencies of the equivalence classes in
        # this bucket.
        # Corresponds to the JSON property `sensitiveValueFrequencyUpperBound`
        # @return [Fixnum]
        attr_accessor :sensitive_value_frequency_upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_size = args[:bucket_size] if args.key?(:bucket_size)
          @bucket_value_count = args[:bucket_value_count] if args.key?(:bucket_value_count)
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @sensitive_value_frequency_lower_bound = args[:sensitive_value_frequency_lower_bound] if args.key?(:sensitive_value_frequency_lower_bound)
          @sensitive_value_frequency_upper_bound = args[:sensitive_value_frequency_upper_bound] if args.key?(:sensitive_value_frequency_upper_bound)
        end
      end
      
      # Result of the l-diversity computation.
      class GooglePrivacyDlpV2LDiversityResult
        include Google::Apis::Core::Hashable
      
        # Histogram of l-diversity equivalence class sensitive value frequencies.
        # Corresponds to the JSON property `sensitiveValueFrequencyHistogramBuckets`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2LDiversityHistogramBucket>]
        attr_accessor :sensitive_value_frequency_histogram_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sensitive_value_frequency_histogram_buckets = args[:sensitive_value_frequency_histogram_buckets] if args.key?(:sensitive_value_frequency_histogram_buckets)
        end
      end
      
      # Configuration for a custom dictionary created from a data source of any size
      # up to the maximum size defined in the [limits](https://cloud.google.com/
      # sensitive-data-protection/limits) page. The artifacts of dictionary creation
      # are stored in the specified Cloud Storage location. Consider using `
      # CustomInfoType.Dictionary` for smaller dictionaries that satisfy the size
      # requirements.
      class GooglePrivacyDlpV2LargeCustomDictionaryConfig
        include Google::Apis::Core::Hashable
      
        # Message defining a field of a BigQuery table.
        # Corresponds to the JSON property `bigQueryField`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryField]
        attr_accessor :big_query_field
      
        # Message representing a set of files in Cloud Storage.
        # Corresponds to the JSON property `cloudStorageFileSet`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageFileSet]
        attr_accessor :cloud_storage_file_set
      
        # Message representing a single file or path in Cloud Storage.
        # Corresponds to the JSON property `outputPath`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStoragePath]
        attr_accessor :output_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_field = args[:big_query_field] if args.key?(:big_query_field)
          @cloud_storage_file_set = args[:cloud_storage_file_set] if args.key?(:cloud_storage_file_set)
          @output_path = args[:output_path] if args.key?(:output_path)
        end
      end
      
      # Summary statistics of a custom dictionary.
      class GooglePrivacyDlpV2LargeCustomDictionaryStats
        include Google::Apis::Core::Hashable
      
        # Approximate number of distinct phrases in the dictionary.
        # Corresponds to the JSON property `approxNumPhrases`
        # @return [Fixnum]
        attr_accessor :approx_num_phrases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approx_num_phrases = args[:approx_num_phrases] if args.key?(:approx_num_phrases)
        end
      end
      
      # Skips the data without modifying it if the requested transformation would
      # cause an error. For example, if a `DateShift` transformation were applied an
      # an IP address, this mode would leave the IP address unchanged in the response.
      class GooglePrivacyDlpV2LeaveUntransformed
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for specifying an adjustment to the likelihood of a finding as part of
      # a detection rule.
      class GooglePrivacyDlpV2LikelihoodAdjustment
        include Google::Apis::Core::Hashable
      
        # Set the likelihood of a finding to a fixed value.
        # Corresponds to the JSON property `fixedLikelihood`
        # @return [String]
        attr_accessor :fixed_likelihood
      
        # Increase or decrease the likelihood by the specified number of levels. For
        # example, if a finding would be `POSSIBLE` without the detection rule and `
        # relative_likelihood` is 1, then it is upgraded to `LIKELY`, while a value of -
        # 1 would downgrade it to `UNLIKELY`. Likelihood may never drop below `
        # VERY_UNLIKELY` or exceed `VERY_LIKELY`, so applying an adjustment of 1
        # followed by an adjustment of -1 when base likelihood is `VERY_LIKELY` will
        # result in a final likelihood of `LIKELY`.
        # Corresponds to the JSON property `relativeLikelihood`
        # @return [Fixnum]
        attr_accessor :relative_likelihood
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_likelihood = args[:fixed_likelihood] if args.key?(:fixed_likelihood)
          @relative_likelihood = args[:relative_likelihood] if args.key?(:relative_likelihood)
        end
      end
      
      # List of profiles generated for a given organization or project.
      class GooglePrivacyDlpV2ListColumnDataProfilesResponse
        include Google::Apis::Core::Hashable
      
        # List of data profiles.
        # Corresponds to the JSON property `columnDataProfiles`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2ColumnDataProfile>]
        attr_accessor :column_data_profiles
      
        # The next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_data_profiles = args[:column_data_profiles] if args.key?(:column_data_profiles)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListConnections.
      class GooglePrivacyDlpV2ListConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # List of connections.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Connection>]
        attr_accessor :connections
      
        # Token to retrieve the next page of results. An empty value means there are no
        # more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connections = args[:connections] if args.key?(:connections)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListDeidentifyTemplates.
      class GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
        include Google::Apis::Core::Hashable
      
        # List of deidentify templates, up to page_size in
        # ListDeidentifyTemplatesRequest.
        # Corresponds to the JSON property `deidentifyTemplates`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate>]
        attr_accessor :deidentify_templates
      
        # If the next page is available then the next page token to be used in the
        # following ListDeidentifyTemplates request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify_templates = args[:deidentify_templates] if args.key?(:deidentify_templates)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListDiscoveryConfigs.
      class GooglePrivacyDlpV2ListDiscoveryConfigsResponse
        include Google::Apis::Core::Hashable
      
        # List of configs, up to page_size in ListDiscoveryConfigsRequest.
        # Corresponds to the JSON property `discoveryConfigs`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig>]
        attr_accessor :discovery_configs
      
        # If the next page is available then this value is the next page token to be
        # used in the following ListDiscoveryConfigs request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discovery_configs = args[:discovery_configs] if args.key?(:discovery_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for listing DLP jobs.
      class GooglePrivacyDlpV2ListDlpJobsResponse
        include Google::Apis::Core::Hashable
      
        # A list of DlpJobs that matches the specified filter in the request.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2DlpJob>]
        attr_accessor :jobs
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # List of file store data profiles generated for a given organization or project.
      class GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
        include Google::Apis::Core::Hashable
      
        # List of data profiles.
        # Corresponds to the JSON property `fileStoreDataProfiles`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FileStoreDataProfile>]
        attr_accessor :file_store_data_profiles
      
        # The next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_store_data_profiles = args[:file_store_data_profiles] if args.key?(:file_store_data_profiles)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response to the ListInfoTypes request.
      class GooglePrivacyDlpV2ListInfoTypesResponse
        include Google::Apis::Core::Hashable
      
        # Set of sensitive infoTypes.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeDescription>]
        attr_accessor :info_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_types = args[:info_types] if args.key?(:info_types)
        end
      end
      
      # Response message for ListInspectTemplates.
      class GooglePrivacyDlpV2ListInspectTemplatesResponse
        include Google::Apis::Core::Hashable
      
        # List of inspectTemplates, up to page_size in ListInspectTemplatesRequest.
        # Corresponds to the JSON property `inspectTemplates`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate>]
        attr_accessor :inspect_templates
      
        # If the next page is available then the next page token to be used in the
        # following ListInspectTemplates request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_templates = args[:inspect_templates] if args.key?(:inspect_templates)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListJobTriggers.
      class GooglePrivacyDlpV2ListJobTriggersResponse
        include Google::Apis::Core::Hashable
      
        # List of triggeredJobs, up to page_size in ListJobTriggersRequest.
        # Corresponds to the JSON property `jobTriggers`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger>]
        attr_accessor :job_triggers
      
        # If the next page is available then this value is the next page token to be
        # used in the following ListJobTriggers request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_triggers = args[:job_triggers] if args.key?(:job_triggers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # List of profiles generated for a given organization or project.
      class GooglePrivacyDlpV2ListProjectDataProfilesResponse
        include Google::Apis::Core::Hashable
      
        # The next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of data profiles.
        # Corresponds to the JSON property `projectDataProfiles`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2ProjectDataProfile>]
        attr_accessor :project_data_profiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @project_data_profiles = args[:project_data_profiles] if args.key?(:project_data_profiles)
        end
      end
      
      # Response message for ListStoredInfoTypes.
      class GooglePrivacyDlpV2ListStoredInfoTypesResponse
        include Google::Apis::Core::Hashable
      
        # If the next page is available then the next page token to be used in the
        # following ListStoredInfoTypes request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of storedInfoTypes, up to page_size in ListStoredInfoTypesRequest.
        # Corresponds to the JSON property `storedInfoTypes`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoType>]
        attr_accessor :stored_info_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @stored_info_types = args[:stored_info_types] if args.key?(:stored_info_types)
        end
      end
      
      # List of profiles generated for a given organization or project.
      class GooglePrivacyDlpV2ListTableDataProfilesResponse
        include Google::Apis::Core::Hashable
      
        # The next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of data profiles.
        # Corresponds to the JSON property `tableDataProfiles`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2TableDataProfile>]
        attr_accessor :table_data_profiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @table_data_profiles = args[:table_data_profiles] if args.key?(:table_data_profiles)
        end
      end
      
      # Specifies the location of the finding.
      class GooglePrivacyDlpV2Location
        include Google::Apis::Core::Hashable
      
        # Generic half-open interval [start, end)
        # Corresponds to the JSON property `byteRange`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Range]
        attr_accessor :byte_range
      
        # Generic half-open interval [start, end)
        # Corresponds to the JSON property `codepointRange`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Range]
        attr_accessor :codepoint_range
      
        # Represents a container that may contain DLP findings. Examples of a container
        # include a file, table, or database record.
        # Corresponds to the JSON property `container`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Container]
        attr_accessor :container
      
        # List of nested objects pointing to the precise location of the finding within
        # the file or record.
        # Corresponds to the JSON property `contentLocations`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2ContentLocation>]
        attr_accessor :content_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @byte_range = args[:byte_range] if args.key?(:byte_range)
          @codepoint_range = args[:codepoint_range] if args.key?(:codepoint_range)
          @container = args[:container] if args.key?(:container)
          @content_locations = args[:content_locations] if args.key?(:content_locations)
        end
      end
      
      # Job trigger option for hybrid jobs. Jobs must be manually created and finished.
      class GooglePrivacyDlpV2Manual
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata Location
      class GooglePrivacyDlpV2MetadataLocation
        include Google::Apis::Core::Hashable
      
        # Storage metadata label to indicate which metadata entry contains findings.
        # Corresponds to the JSON property `storageLabel`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StorageMetadataLabel]
        attr_accessor :storage_label
      
        # Type of metadata containing the finding.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @storage_label = args[:storage_label] if args.key?(:storage_label)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Processing will happen in a multi-region that contains the current region if
      # available.
      class GooglePrivacyDlpV2MultiRegionProcessing
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Compute numerical stats over an individual column, including min, max, and
      # quantiles.
      class GooglePrivacyDlpV2NumericalStatsConfig
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # Result of the numerical stats computation.
      class GooglePrivacyDlpV2NumericalStatsResult
        include Google::Apis::Core::Hashable
      
        # Set of primitive values supported by the system. Note that for the purposes of
        # inspection or transformation, the number of bytes considered to comprise a '
        # Value' is based on its representation as a UTF-8 encoded string. For example,
        # if 'integer_value' is set to 123456789, the number of bytes would be counted
        # as 9, even though an int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `maxValue`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Value]
        attr_accessor :max_value
      
        # Set of primitive values supported by the system. Note that for the purposes of
        # inspection or transformation, the number of bytes considered to comprise a '
        # Value' is based on its representation as a UTF-8 encoded string. For example,
        # if 'integer_value' is set to 123456789, the number of bytes would be counted
        # as 9, even though an int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `minValue`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Value]
        attr_accessor :min_value
      
        # List of 99 values that partition the set of field values into 100 equal sized
        # buckets.
        # Corresponds to the JSON property `quantileValues`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Value>]
        attr_accessor :quantile_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @quantile_values = args[:quantile_values] if args.key?(:quantile_values)
        end
      end
      
      # There is an OR relationship between these attributes. They are used to
      # determine if a table should be scanned or not in Discovery.
      class GooglePrivacyDlpV2OrConditions
        include Google::Apis::Core::Hashable
      
        # Minimum age a table must have before Cloud DLP can profile it. Value must be 1
        # hour or greater.
        # Corresponds to the JSON property `minAge`
        # @return [String]
        attr_accessor :min_age
      
        # Minimum number of rows that should be present before Cloud DLP profiles a
        # table
        # Corresponds to the JSON property `minRowCount`
        # @return [Fixnum]
        attr_accessor :min_row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_age = args[:min_age] if args.key?(:min_age)
          @min_row_count = args[:min_row_count] if args.key?(:min_row_count)
        end
      end
      
      # Project and scan location information. Only set when the parent is an org.
      class GooglePrivacyDlpV2OrgConfig
        include Google::Apis::Core::Hashable
      
        # The location to begin a discovery scan. Denotes an organization ID or folder
        # ID within an organization.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryStartingLocation]
        attr_accessor :location
      
        # The project that will run the scan. The DLP service account that exists within
        # this project must have access to all resources that are profiled, and the DLP
        # API must be enabled.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # The other cloud starting location for discovery.
      class GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation
        include Google::Apis::Core::Hashable
      
        # The AWS starting location for discovery.
        # Corresponds to the JSON property `awsLocation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AwsDiscoveryStartingLocation]
        attr_accessor :aws_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_location = args[:aws_location] if args.key?(:aws_location)
        end
      end
      
      # Target used to match against for discovery of resources from other clouds. An [
      # AWS connector in Security Command Center (Enterprise](https://cloud.google.com/
      # security-command-center/docs/connect-scc-to-aws) is required to use this
      # feature.
      class GooglePrivacyDlpV2OtherCloudDiscoveryTarget
        include Google::Apis::Core::Hashable
      
        # Requirements that must be true before a resource is profiled for the first
        # time.
        # Corresponds to the JSON property `conditions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryOtherCloudConditions]
        attr_accessor :conditions
      
        # Message used to identify the type of resource being profiled.
        # Corresponds to the JSON property `dataSourceType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataSourceType]
        attr_accessor :data_source_type
      
        # Do not profile the tables.
        # Corresponds to the JSON property `disabled`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled]
        attr_accessor :disabled
      
        # Determines which resources from the other cloud will have profiles generated.
        # Includes the ability to filter by resource names.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryOtherCloudFilter]
        attr_accessor :filter
      
        # How often existing resources should have their profiles refreshed. New
        # resources are scanned as quickly as possible depending on system capacity.
        # Corresponds to the JSON property `generationCadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryOtherCloudGenerationCadence]
        attr_accessor :generation_cadence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @data_source_type = args[:data_source_type] if args.key?(:data_source_type)
          @disabled = args[:disabled] if args.key?(:disabled)
          @filter = args[:filter] if args.key?(:filter)
          @generation_cadence = args[:generation_cadence] if args.key?(:generation_cadence)
        end
      end
      
      # Match resources using regex filters.
      class GooglePrivacyDlpV2OtherCloudResourceCollection
        include Google::Apis::Core::Hashable
      
        # A collection of regular expressions to determine what resources to match
        # against.
        # Corresponds to the JSON property `includeRegexes`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudResourceRegexes]
        attr_accessor :include_regexes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_regexes = args[:include_regexes] if args.key?(:include_regexes)
        end
      end
      
      # A pattern to match against one or more resources. At least one pattern must be
      # specified. Regular expressions use RE2 [syntax](https://github.com/google/re2/
      # wiki/Syntax); a guide can be found under the google/re2 repository on GitHub.
      class GooglePrivacyDlpV2OtherCloudResourceRegex
        include Google::Apis::Core::Hashable
      
        # Amazon S3 bucket regex.
        # Corresponds to the JSON property `amazonS3BucketRegex`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AmazonS3BucketRegex]
        attr_accessor :amazon_s3_bucket_regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amazon_s3_bucket_regex = args[:amazon_s3_bucket_regex] if args.key?(:amazon_s3_bucket_regex)
        end
      end
      
      # A collection of regular expressions to determine what resources to match
      # against.
      class GooglePrivacyDlpV2OtherCloudResourceRegexes
        include Google::Apis::Core::Hashable
      
        # A group of regular expression patterns to match against one or more resources.
        # Maximum of 100 entries. The sum of all regular expression's length can't
        # exceed 10 KiB.
        # Corresponds to the JSON property `patterns`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2OtherCloudResourceRegex>]
        attr_accessor :patterns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @patterns = args[:patterns] if args.key?(:patterns)
        end
      end
      
      # Identifies a single resource, like a single Amazon S3 bucket.
      class GooglePrivacyDlpV2OtherCloudSingleResourceReference
        include Google::Apis::Core::Hashable
      
        # Amazon S3 bucket.
        # Corresponds to the JSON property `amazonS3Bucket`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2AmazonS3Bucket]
        attr_accessor :amazon_s3_bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amazon_s3_bucket = args[:amazon_s3_bucket] if args.key?(:amazon_s3_bucket)
        end
      end
      
      # Infotype details for other infoTypes found within a column.
      class GooglePrivacyDlpV2OtherInfoTypeSummary
        include Google::Apis::Core::Hashable
      
        # Approximate percentage of non-null rows that contained data detected by this
        # infotype.
        # Corresponds to the JSON property `estimatedPrevalence`
        # @return [Fixnum]
        attr_accessor :estimated_prevalence
      
        # Whether this infoType was excluded from sensitivity and risk analysis due to
        # factors such as low prevalence (subject to change).
        # Corresponds to the JSON property `excludedFromAnalysis`
        # @return [Boolean]
        attr_accessor :excluded_from_analysis
        alias_method :excluded_from_analysis?, :excluded_from_analysis
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_prevalence = args[:estimated_prevalence] if args.key?(:estimated_prevalence)
          @excluded_from_analysis = args[:excluded_from_analysis] if args.key?(:excluded_from_analysis)
          @info_type = args[:info_type] if args.key?(:info_type)
        end
      end
      
      # Cloud repository for storing output.
      class GooglePrivacyDlpV2OutputStorageConfig
        include Google::Apis::Core::Hashable
      
        # Schema used for writing the findings for Inspect jobs. This field is only used
        # for Inspect and must be unspecified for Risk jobs. Columns are derived from
        # the `Finding` object. If appending to an existing table, any columns from the
        # predefined schema that are missing will be added. No columns in the existing
        # table will be deleted. If unspecified, then all available columns will be used
        # for a new table or an (existing) table with no schema, and no changes will be
        # made to an existing table that has a schema. Only for use with external
        # storage.
        # Corresponds to the JSON property `outputSchema`
        # @return [String]
        attr_accessor :output_schema
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_schema = args[:output_schema] if args.key?(:output_schema)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Datastore partition ID. A partition ID identifies a grouping of entities. The
      # grouping is always by project and namespace, however the namespace ID may be
      # empty. A partition ID contains several dimensions: project ID and namespace ID.
      class GooglePrivacyDlpV2PartitionId
        include Google::Apis::Core::Hashable
      
        # If not empty, the ID of the namespace to which the entities belong.
        # Corresponds to the JSON property `namespaceId`
        # @return [String]
        attr_accessor :namespace_id
      
        # The ID of the project to which the entities belong.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @namespace_id = args[:namespace_id] if args.key?(:namespace_id)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # A (kind, ID/name) pair used to construct a key path. If either name or ID is
      # set, the element is complete. If neither is set, the element is incomplete.
      class GooglePrivacyDlpV2PathElement
        include Google::Apis::Core::Hashable
      
        # The auto-allocated ID of the entity. Never equal to zero. Values less than
        # zero are discouraged and may not be supported in the future.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The kind of the entity. A kind matching regex `__.*__` is reserved/read-only.
        # A kind must not contain more than 1500 bytes when UTF-8 encoded. Cannot be `""`
        # .
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the entity. A name matching regex `__.*__` is reserved/read-only.
        # A name must not be more than 1500 bytes when UTF-8 encoded. Cannot be `""`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A rule for transforming a value.
      class GooglePrivacyDlpV2PrimitiveTransformation
        include Google::Apis::Core::Hashable
      
        # Generalization function that buckets values based on ranges. The ranges and
        # replacement values are dynamically provided by the user for custom behavior,
        # such as 1-30 -> LOW, 31-65 -> MEDIUM, 66-100 -> HIGH. This can be used on data
        # of type: number, long, string, timestamp. If the bound `Value` type differs
        # from the type of data being transformed, we will first attempt converting the
        # type of the data to be transformed to match the type of the bound before
        # comparing. See https://cloud.google.com/sensitive-data-protection/docs/
        # concepts-bucketing to learn more.
        # Corresponds to the JSON property `bucketingConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BucketingConfig]
        attr_accessor :bucketing_config
      
        # Partially mask a string by replacing a given number of characters with a fixed
        # character. Masking can start from the beginning or end of the string. This can
        # be used on data of any type (numbers, longs, and so on) and when de-
        # identifying structured data we'll attempt to preserve the original data's type.
        # (This allows you to take a long like 123 and modify it to a string like **3.
        # Corresponds to the JSON property `characterMaskConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CharacterMaskConfig]
        attr_accessor :character_mask_config
      
        # Pseudonymization method that generates deterministic encryption for the given
        # input. Outputs a base64 encoded representation of the encrypted output. Uses
        # AES-SIV based on the RFC https://tools.ietf.org/html/rfc5297.
        # Corresponds to the JSON property `cryptoDeterministicConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoDeterministicConfig]
        attr_accessor :crypto_deterministic_config
      
        # Pseudonymization method that generates surrogates via cryptographic hashing.
        # Uses SHA-256. The key size must be either 32 or 64 bytes. Outputs a base64
        # encoded representation of the hashed output (for example,
        # L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=). Currently, only string and
        # integer values can be hashed. See https://cloud.google.com/sensitive-data-
        # protection/docs/pseudonymization to learn more.
        # Corresponds to the JSON property `cryptoHashConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoHashConfig]
        attr_accessor :crypto_hash_config
      
        # Replaces an identifier with a surrogate using Format Preserving Encryption (
        # FPE) with the FFX mode of operation; however when used in the `
        # ReidentifyContent` API method, it serves the opposite function by reversing
        # the surrogate back into the original identifier. The identifier must be
        # encoded as ASCII. For a given crypto key and context, the same identifier will
        # be replaced with the same surrogate. Identifiers must be at least two
        # characters long. In the case that the identifier is the empty string, it will
        # be skipped. See https://cloud.google.com/sensitive-data-protection/docs/
        # pseudonymization to learn more. Note: We recommend using
        # CryptoDeterministicConfig for all use cases which do not require preserving
        # the input alphabet space and size, plus warrant referential integrity. FPE
        # incurs significant latency costs.
        # Corresponds to the JSON property `cryptoReplaceFfxFpeConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig]
        attr_accessor :crypto_replace_ffx_fpe_config
      
        # Shifts dates by random number of days, with option to be consistent for the
        # same context. See https://cloud.google.com/sensitive-data-protection/docs/
        # concepts-date-shifting to learn more.
        # Corresponds to the JSON property `dateShiftConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DateShiftConfig]
        attr_accessor :date_shift_config
      
        # Buckets values based on fixed size ranges. The Bucketing transformation can
        # provide all of this functionality, but requires more configuration. This
        # message is provided as a convenience to the user for simple bucketing
        # strategies. The transformed value will be a hyphenated string of `lower_bound`-
        # `upper_bound`. For example, if lower_bound = 10 and upper_bound = 20, all
        # values that are within this bucket will be replaced with "10-20". This can be
        # used on data of type: double, long. If the bound Value type differs from the
        # type of data being transformed, we will first attempt converting the type of
        # the data to be transformed to match the type of the bound before comparing.
        # See https://cloud.google.com/sensitive-data-protection/docs/concepts-bucketing
        # to learn more.
        # Corresponds to the JSON property `fixedSizeBucketingConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FixedSizeBucketingConfig]
        attr_accessor :fixed_size_bucketing_config
      
        # Redact a given value. For example, if used with an `InfoTypeTransformation`
        # transforming PHONE_NUMBER, and input 'My phone number is 206-555-0123', the
        # output would be 'My phone number is '.
        # Corresponds to the JSON property `redactConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RedactConfig]
        attr_accessor :redact_config
      
        # Replace each input value with a given `Value`.
        # Corresponds to the JSON property `replaceConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ReplaceValueConfig]
        attr_accessor :replace_config
      
        # Replace each input value with a value randomly selected from the dictionary.
        # Corresponds to the JSON property `replaceDictionaryConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ReplaceDictionaryConfig]
        attr_accessor :replace_dictionary_config
      
        # Replace each matching finding with the name of the info_type.
        # Corresponds to the JSON property `replaceWithInfoTypeConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ReplaceWithInfoTypeConfig]
        attr_accessor :replace_with_info_type_config
      
        # For use with `Date`, `Timestamp`, and `TimeOfDay`, extract or preserve a
        # portion of the value.
        # Corresponds to the JSON property `timePartConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TimePartConfig]
        attr_accessor :time_part_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucketing_config = args[:bucketing_config] if args.key?(:bucketing_config)
          @character_mask_config = args[:character_mask_config] if args.key?(:character_mask_config)
          @crypto_deterministic_config = args[:crypto_deterministic_config] if args.key?(:crypto_deterministic_config)
          @crypto_hash_config = args[:crypto_hash_config] if args.key?(:crypto_hash_config)
          @crypto_replace_ffx_fpe_config = args[:crypto_replace_ffx_fpe_config] if args.key?(:crypto_replace_ffx_fpe_config)
          @date_shift_config = args[:date_shift_config] if args.key?(:date_shift_config)
          @fixed_size_bucketing_config = args[:fixed_size_bucketing_config] if args.key?(:fixed_size_bucketing_config)
          @redact_config = args[:redact_config] if args.key?(:redact_config)
          @replace_config = args[:replace_config] if args.key?(:replace_config)
          @replace_dictionary_config = args[:replace_dictionary_config] if args.key?(:replace_dictionary_config)
          @replace_with_info_type_config = args[:replace_with_info_type_config] if args.key?(:replace_with_info_type_config)
          @time_part_config = args[:time_part_config] if args.key?(:time_part_config)
        end
      end
      
      # Privacy metric to compute for reidentification risk analysis.
      class GooglePrivacyDlpV2PrivacyMetric
        include Google::Apis::Core::Hashable
      
        # Compute numerical stats over an individual column, including number of
        # distinct values and value count distribution.
        # Corresponds to the JSON property `categoricalStatsConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CategoricalStatsConfig]
        attr_accessor :categorical_stats_config
      
        # δ-presence metric, used to estimate how likely it is for an attacker to figure
        # out that one given individual appears in a de-identified dataset. Similarly to
        # the k-map metric, we cannot compute δ-presence exactly without knowing the
        # attack dataset, so we use a statistical model instead.
        # Corresponds to the JSON property `deltaPresenceEstimationConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeltaPresenceEstimationConfig]
        attr_accessor :delta_presence_estimation_config
      
        # k-anonymity metric, used for analysis of reidentification risk.
        # Corresponds to the JSON property `kAnonymityConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2KAnonymityConfig]
        attr_accessor :k_anonymity_config
      
        # Reidentifiability metric. This corresponds to a risk model similar to what is
        # called "journalist risk" in the literature, except the attack dataset is
        # statistically modeled instead of being perfectly known. This can be done using
        # publicly available data (like the US Census), or using a custom statistical
        # model (indicated as one or several BigQuery tables), or by extrapolating from
        # the distribution of values in the input dataset.
        # Corresponds to the JSON property `kMapEstimationConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2KMapEstimationConfig]
        attr_accessor :k_map_estimation_config
      
        # l-diversity metric, used for analysis of reidentification risk.
        # Corresponds to the JSON property `lDiversityConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2LDiversityConfig]
        attr_accessor :l_diversity_config
      
        # Compute numerical stats over an individual column, including min, max, and
        # quantiles.
        # Corresponds to the JSON property `numericalStatsConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2NumericalStatsConfig]
        attr_accessor :numerical_stats_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categorical_stats_config = args[:categorical_stats_config] if args.key?(:categorical_stats_config)
          @delta_presence_estimation_config = args[:delta_presence_estimation_config] if args.key?(:delta_presence_estimation_config)
          @k_anonymity_config = args[:k_anonymity_config] if args.key?(:k_anonymity_config)
          @k_map_estimation_config = args[:k_map_estimation_config] if args.key?(:k_map_estimation_config)
          @l_diversity_config = args[:l_diversity_config] if args.key?(:l_diversity_config)
          @numerical_stats_config = args[:numerical_stats_config] if args.key?(:numerical_stats_config)
        end
      end
      
      # Configure processing location for discovery and inspection. For example, image
      # OCR is only provided in limited regions but configuring ProcessingLocation
      # will redirect OCR to a location where OCR is provided.
      class GooglePrivacyDlpV2ProcessingLocation
        include Google::Apis::Core::Hashable
      
        # Configure image processing to fall back to the configured processing option
        # below if unavailable in the request location.
        # Corresponds to the JSON property `imageFallbackLocation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ImageFallbackLocation]
        attr_accessor :image_fallback_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_fallback_location = args[:image_fallback_location] if args.key?(:image_fallback_location)
        end
      end
      
      # Success or errors for the profile generation.
      class GooglePrivacyDlpV2ProfileStatus
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DlpV2::GoogleRpcStatus]
        attr_accessor :status
      
        # Time when the profile generation status was updated
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # An aggregated profile for this project, based on the resources profiled within
      # it.
      class GooglePrivacyDlpV2ProjectDataProfile
        include Google::Apis::Core::Hashable
      
        # Score is a summary of all elements in the data profile. A higher number means
        # more risk.
        # Corresponds to the JSON property `dataRiskLevel`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel]
        attr_accessor :data_risk_level
      
        # The number of file store data profiles generated for this project.
        # Corresponds to the JSON property `fileStoreDataProfileCount`
        # @return [Fixnum]
        attr_accessor :file_store_data_profile_count
      
        # The resource name of the profile.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The last time the profile was generated.
        # Corresponds to the JSON property `profileLastGenerated`
        # @return [String]
        attr_accessor :profile_last_generated
      
        # Success or errors for the profile generation.
        # Corresponds to the JSON property `profileStatus`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ProfileStatus]
        attr_accessor :profile_status
      
        # Project ID or account that was profiled.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Score is calculated from of all elements in the data profile. A higher level
        # means the data is more sensitive.
        # Corresponds to the JSON property `sensitivityScore`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore]
        attr_accessor :sensitivity_score
      
        # The number of table data profiles generated for this project.
        # Corresponds to the JSON property `tableDataProfileCount`
        # @return [Fixnum]
        attr_accessor :table_data_profile_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_risk_level = args[:data_risk_level] if args.key?(:data_risk_level)
          @file_store_data_profile_count = args[:file_store_data_profile_count] if args.key?(:file_store_data_profile_count)
          @name = args[:name] if args.key?(:name)
          @profile_last_generated = args[:profile_last_generated] if args.key?(:profile_last_generated)
          @profile_status = args[:profile_status] if args.key?(:profile_status)
          @project_id = args[:project_id] if args.key?(:project_id)
          @sensitivity_score = args[:sensitivity_score] if args.key?(:sensitivity_score)
          @table_data_profile_count = args[:table_data_profile_count] if args.key?(:table_data_profile_count)
        end
      end
      
      # Message for specifying a window around a finding to apply a detection rule.
      class GooglePrivacyDlpV2Proximity
        include Google::Apis::Core::Hashable
      
        # Number of characters after the finding to consider.
        # Corresponds to the JSON property `windowAfter`
        # @return [Fixnum]
        attr_accessor :window_after
      
        # Number of characters before the finding to consider. For tabular data, if you
        # want to modify the likelihood of an entire column of findngs, set this to 1.
        # For more information, see [Hotword example: Set the match likelihood of a
        # table column] (https://cloud.google.com/sensitive-data-protection/docs/
        # creating-custom-infotypes-likelihood#match-column-values).
        # Corresponds to the JSON property `windowBefore`
        # @return [Fixnum]
        attr_accessor :window_before
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @window_after = args[:window_after] if args.key?(:window_after)
          @window_before = args[:window_before] if args.key?(:window_before)
        end
      end
      
      # A condition consisting of a value.
      class GooglePrivacyDlpV2PubSubCondition
        include Google::Apis::Core::Hashable
      
        # The minimum data risk score that triggers the condition.
        # Corresponds to the JSON property `minimumRiskScore`
        # @return [String]
        attr_accessor :minimum_risk_score
      
        # The minimum sensitivity level that triggers the condition.
        # Corresponds to the JSON property `minimumSensitivityScore`
        # @return [String]
        attr_accessor :minimum_sensitivity_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @minimum_risk_score = args[:minimum_risk_score] if args.key?(:minimum_risk_score)
          @minimum_sensitivity_score = args[:minimum_sensitivity_score] if args.key?(:minimum_sensitivity_score)
        end
      end
      
      # An expression, consisting of an operator and conditions.
      class GooglePrivacyDlpV2PubSubExpressions
        include Google::Apis::Core::Hashable
      
        # Conditions to apply to the expression.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2PubSubCondition>]
        attr_accessor :conditions
      
        # The operator to apply to the collection of conditions.
        # Corresponds to the JSON property `logicalOperator`
        # @return [String]
        attr_accessor :logical_operator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @logical_operator = args[:logical_operator] if args.key?(:logical_operator)
        end
      end
      
      # Send a Pub/Sub message into the given Pub/Sub topic to connect other systems
      # to data profile generation. The message payload data will be the byte
      # serialization of `DataProfilePubSubMessage`.
      class GooglePrivacyDlpV2PubSubNotification
        include Google::Apis::Core::Hashable
      
        # How much data to include in the Pub/Sub message. If the user wishes to limit
        # the size of the message, they can use resource_name and fetch the profile
        # fields they wish to. Per table profile (not per column).
        # Corresponds to the JSON property `detailOfMessage`
        # @return [String]
        attr_accessor :detail_of_message
      
        # The type of event that triggers a Pub/Sub. At most one `PubSubNotification`
        # per EventType is permitted.
        # Corresponds to the JSON property `event`
        # @return [String]
        attr_accessor :event
      
        # A condition for determining whether a Pub/Sub should be triggered.
        # Corresponds to the JSON property `pubsubCondition`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfilePubSubCondition]
        attr_accessor :pubsub_condition
      
        # Cloud Pub/Sub topic to send notifications to. Format is projects/`project`/
        # topics/`topic`.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail_of_message = args[:detail_of_message] if args.key?(:detail_of_message)
          @event = args[:event] if args.key?(:event)
          @pubsub_condition = args[:pubsub_condition] if args.key?(:pubsub_condition)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Publish findings of a DlpJob to Data Catalog. In Data Catalog, tag templates
      # are applied to the resource that Cloud DLP scanned. Data Catalog tag templates
      # are stored in the same project and region where the BigQuery table exists. For
      # Cloud DLP to create and apply the tag template, the Cloud DLP service agent
      # must have the `roles/datacatalog.tagTemplateOwner` permission on the project.
      # The tag template contains fields summarizing the results of the DlpJob. Any
      # field values previously written by another DlpJob are deleted. InfoType naming
      # patterns are strictly enforced when using this feature. Findings are persisted
      # in Data Catalog storage and are governed by service-specific policies for Data
      # Catalog. For more information, see [Service Specific Terms](https://cloud.
      # google.com/terms/service-terms). Only a single instance of this action can be
      # specified. This action is allowed only if all resources being scanned are
      # BigQuery tables. Compatible with: Inspect
      class GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Publish the result summary of a DlpJob to [Security Command Center](https://
      # cloud.google.com/security-command-center). This action is available for only
      # projects that belong to an organization. This action publishes the count of
      # finding instances and their infoTypes. The summary of findings are persisted
      # in Security Command Center and are governed by [service-specific policies for
      # Security Command Center](https://cloud.google.com/terms/service-terms). Only a
      # single instance of this action can be specified. Compatible with: Inspect
      class GooglePrivacyDlpV2PublishSummaryToCscc
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message expressing intention to publish to Google Security Operations.
      class GooglePrivacyDlpV2PublishToChronicle
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Create Dataplex Catalog aspects for profiled resources with the aspect type
      # Sensitive Data Protection Profile. To learn more about aspects, see https://
      # cloud.google.com/sensitive-data-protection/docs/add-aspects.
      class GooglePrivacyDlpV2PublishToDataplexCatalog
        include Google::Apis::Core::Hashable
      
        # Whether creating a Dataplex Catalog aspect for a profiled resource should
        # lower the risk of the profile for that resource. This also lowers the data
        # risk of resources at the lower levels of the resource hierarchy. For example,
        # reducing the data risk of a table data profile also reduces the data risk of
        # the constituent column data profiles.
        # Corresponds to the JSON property `lowerDataRiskToLow`
        # @return [Boolean]
        attr_accessor :lower_data_risk_to_low
        alias_method :lower_data_risk_to_low?, :lower_data_risk_to_low
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lower_data_risk_to_low = args[:lower_data_risk_to_low] if args.key?(:lower_data_risk_to_low)
        end
      end
      
      # Publish a message into a given Pub/Sub topic when DlpJob has completed. The
      # message contains a single field, `DlpJobName`, which is equal to the finished
      # job's [`DlpJob.name`](https://cloud.google.com/sensitive-data-protection/docs/
      # reference/rest/v2/projects.dlpJobs#DlpJob). Compatible with: Inspect, Risk
      class GooglePrivacyDlpV2PublishToPubSub
        include Google::Apis::Core::Hashable
      
        # Cloud Pub/Sub topic to send notifications to. The topic must have given
        # publishing access rights to the DLP API service account executing the long
        # running DlpJob sending the notifications. Format is projects/`project`/topics/`
        # topic`.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # If set, a summary finding will be created or updated in Security Command
      # Center for each profile.
      class GooglePrivacyDlpV2PublishToSecurityCommandCenter
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Enable Stackdriver metric dlp.googleapis.com/finding_count. This will publish
      # a metric to stack driver on each infotype requested and how many findings were
      # found for it. CustomDetectors will be bucketed as 'Custom' under the
      # Stackdriver label 'info_type'.
      class GooglePrivacyDlpV2PublishToStackdriver
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A column with a semantic tag attached.
      class GooglePrivacyDlpV2QuasiId
        include Google::Apis::Core::Hashable
      
        # A column can be tagged with a custom tag. In this case, the user must indicate
        # an auxiliary table that contains statistical information on the possible
        # values of this column (below).
        # Corresponds to the JSON property `customTag`
        # @return [String]
        attr_accessor :custom_tag
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field
      
        # A generic empty message that you can re-use to avoid defining duplicated empty
        # messages in your APIs. A typical example is to use it as the request or the
        # response type of an API method. For instance: service Foo ` rpc Bar(google.
        # protobuf.Empty) returns (google.protobuf.Empty); `
        # Corresponds to the JSON property `inferred`
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        attr_accessor :inferred
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_tag = args[:custom_tag] if args.key?(:custom_tag)
          @field = args[:field] if args.key?(:field)
          @inferred = args[:inferred] if args.key?(:inferred)
          @info_type = args[:info_type] if args.key?(:info_type)
        end
      end
      
      # A quasi-identifier column has a custom_tag, used to know which column in the
      # data corresponds to which column in the statistical model.
      class GooglePrivacyDlpV2QuasiIdField
        include Google::Apis::Core::Hashable
      
        # A auxiliary field.
        # Corresponds to the JSON property `customTag`
        # @return [String]
        attr_accessor :custom_tag
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_tag = args[:custom_tag] if args.key?(:custom_tag)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # A quasi-identifier column has a custom_tag, used to know which column in the
      # data corresponds to which column in the statistical model.
      class GooglePrivacyDlpV2QuasiIdentifierField
        include Google::Apis::Core::Hashable
      
        # A column can be tagged with a custom tag. In this case, the user must indicate
        # an auxiliary table that contains statistical information on the possible
        # values of this column (below).
        # Corresponds to the JSON property `customTag`
        # @return [String]
        attr_accessor :custom_tag
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_tag = args[:custom_tag] if args.key?(:custom_tag)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # Message for infoType-dependent details parsed from quote.
      class GooglePrivacyDlpV2QuoteInfo
        include Google::Apis::Core::Hashable
      
        # Message for a date time object. e.g. 2018-01-01, 5th August.
        # Corresponds to the JSON property `dateTime`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DateTime]
        attr_accessor :date_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_time = args[:date_time] if args.key?(:date_time)
        end
      end
      
      # Generic half-open interval [start, end)
      class GooglePrivacyDlpV2Range
        include Google::Apis::Core::Hashable
      
        # Index of the last character of the range (exclusive).
        # Corresponds to the JSON property `end`
        # @return [Fixnum]
        attr_accessor :end
      
        # Index of the first character of the range (inclusive).
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # A condition for determining whether a transformation should be applied to a
      # field.
      class GooglePrivacyDlpV2RecordCondition
        include Google::Apis::Core::Hashable
      
        # An expression, consisting of an operator and conditions.
        # Corresponds to the JSON property `expressions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Expressions]
        attr_accessor :expressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expressions = args[:expressions] if args.key?(:expressions)
        end
      end
      
      # Message for a unique key indicating a record that contains a finding.
      class GooglePrivacyDlpV2RecordKey
        include Google::Apis::Core::Hashable
      
        # Row key for identifying a record in BigQuery table.
        # Corresponds to the JSON property `bigQueryKey`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryKey]
        attr_accessor :big_query_key
      
        # Record key for a finding in Cloud Datastore.
        # Corresponds to the JSON property `datastoreKey`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DatastoreKey]
        attr_accessor :datastore_key
      
        # Values of identifying columns in the given row. Order of values matches the
        # order of `identifying_fields` specified in the scanning request.
        # Corresponds to the JSON property `idValues`
        # @return [Array<String>]
        attr_accessor :id_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_key = args[:big_query_key] if args.key?(:big_query_key)
          @datastore_key = args[:datastore_key] if args.key?(:datastore_key)
          @id_values = args[:id_values] if args.key?(:id_values)
        end
      end
      
      # Location of a finding within a row or record.
      class GooglePrivacyDlpV2RecordLocation
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `fieldId`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field_id
      
        # Message for a unique key indicating a record that contains a finding.
        # Corresponds to the JSON property `recordKey`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RecordKey]
        attr_accessor :record_key
      
        # Location of a finding within a table.
        # Corresponds to the JSON property `tableLocation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TableLocation]
        attr_accessor :table_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_id = args[:field_id] if args.key?(:field_id)
          @record_key = args[:record_key] if args.key?(:record_key)
          @table_location = args[:table_location] if args.key?(:table_location)
        end
      end
      
      # Configuration to suppress records whose suppression conditions evaluate to
      # true.
      class GooglePrivacyDlpV2RecordSuppression
        include Google::Apis::Core::Hashable
      
        # A condition for determining whether a transformation should be applied to a
        # field.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RecordCondition]
        attr_accessor :condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
        end
      end
      
      # The field in a record to transform.
      class GooglePrivacyDlpV2RecordTransformation
        include Google::Apis::Core::Hashable
      
        # Findings container modification timestamp, if applicable.
        # Corresponds to the JSON property `containerTimestamp`
        # @return [String]
        attr_accessor :container_timestamp
      
        # Container version, if available ("generation" for Cloud Storage).
        # Corresponds to the JSON property `containerVersion`
        # @return [String]
        attr_accessor :container_version
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `fieldId`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_timestamp = args[:container_timestamp] if args.key?(:container_timestamp)
          @container_version = args[:container_version] if args.key?(:container_version)
          @field_id = args[:field_id] if args.key?(:field_id)
        end
      end
      
      # A type of transformation that is applied over structured data such as a table.
      class GooglePrivacyDlpV2RecordTransformations
        include Google::Apis::Core::Hashable
      
        # Transform the record by applying various field transformations.
        # Corresponds to the JSON property `fieldTransformations`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FieldTransformation>]
        attr_accessor :field_transformations
      
        # Configuration defining which records get suppressed entirely. Records that
        # match any suppression rule are omitted from the output.
        # Corresponds to the JSON property `recordSuppressions`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2RecordSuppression>]
        attr_accessor :record_suppressions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_transformations = args[:field_transformations] if args.key?(:field_transformations)
          @record_suppressions = args[:record_suppressions] if args.key?(:record_suppressions)
        end
      end
      
      # Redact a given value. For example, if used with an `InfoTypeTransformation`
      # transforming PHONE_NUMBER, and input 'My phone number is 206-555-0123', the
      # output would be 'My phone number is '.
      class GooglePrivacyDlpV2RedactConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request to search for potentially sensitive info in an image and redact it by
      # covering it with a colored rectangle.
      class GooglePrivacyDlpV2RedactImageRequest
        include Google::Apis::Core::Hashable
      
        # Container for bytes to inspect or redact.
        # Corresponds to the JSON property `byteItem`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ByteContentItem]
        attr_accessor :byte_item
      
        # The configuration for specifying what content to redact from images.
        # Corresponds to the JSON property `imageRedactionConfigs`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2ImageRedactionConfig>]
        attr_accessor :image_redaction_configs
      
        # Whether the response should include findings along with the redacted image.
        # Corresponds to the JSON property `includeFindings`
        # @return [Boolean]
        attr_accessor :include_findings
        alias_method :include_findings?, :include_findings
      
        # Configuration description of the scanning process. When used with
        # redactContent only info_types and min_likelihood are currently used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig]
        attr_accessor :inspect_config
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @byte_item = args[:byte_item] if args.key?(:byte_item)
          @image_redaction_configs = args[:image_redaction_configs] if args.key?(:image_redaction_configs)
          @include_findings = args[:include_findings] if args.key?(:include_findings)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
          @location_id = args[:location_id] if args.key?(:location_id)
        end
      end
      
      # Results of redacting an image.
      class GooglePrivacyDlpV2RedactImageResponse
        include Google::Apis::Core::Hashable
      
        # If an image was being inspected and the InspectConfig's include_quote was set
        # to true, then this field will include all text, if any, that was found in the
        # image.
        # Corresponds to the JSON property `extractedText`
        # @return [String]
        attr_accessor :extracted_text
      
        # All the findings for a single scanned item.
        # Corresponds to the JSON property `inspectResult`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectResult]
        attr_accessor :inspect_result
      
        # The redacted image. The type will be the same as the original image.
        # Corresponds to the JSON property `redactedImage`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :redacted_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extracted_text = args[:extracted_text] if args.key?(:extracted_text)
          @inspect_result = args[:inspect_result] if args.key?(:inspect_result)
          @redacted_image = args[:redacted_image] if args.key?(:redacted_image)
        end
      end
      
      # Message defining a custom regular expression.
      class GooglePrivacyDlpV2Regex
        include Google::Apis::Core::Hashable
      
        # The index of the submatch to extract as findings. When not specified, the
        # entire match is returned. No more than 3 may be included.
        # Corresponds to the JSON property `groupIndexes`
        # @return [Array<Fixnum>]
        attr_accessor :group_indexes
      
        # Pattern defining the regular expression. Its syntax (https://github.com/google/
        # re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_indexes = args[:group_indexes] if args.key?(:group_indexes)
          @pattern = args[:pattern] if args.key?(:pattern)
        end
      end
      
      # Request to re-identify an item.
      class GooglePrivacyDlpV2ReidentifyContentRequest
        include Google::Apis::Core::Hashable
      
        # Configuration description of the scanning process. When used with
        # redactContent only info_types and min_likelihood are currently used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectConfig]
        attr_accessor :inspect_config
      
        # Template to use. Any configuration directly specified in `inspect_config` will
        # override those set in the template. Singular fields that are set in this
        # request will replace their corresponding fields in the template. Repeated
        # fields are appended. Singular sub-messages and groups are recursively merged.
        # Corresponds to the JSON property `inspectTemplateName`
        # @return [String]
        attr_accessor :inspect_template_name
      
        # Type of content to inspect.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem]
        attr_accessor :item
      
        # Deprecated. This field has no effect.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # The configuration that controls how the data will change.
        # Corresponds to the JSON property `reidentifyConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyConfig]
        attr_accessor :reidentify_config
      
        # Template to use. References an instance of `DeidentifyTemplate`. Any
        # configuration directly specified in `reidentify_config` or `inspect_config`
        # will override those set in the template. The `DeidentifyTemplate` used must
        # include only reversible transformations. Singular fields that are set in this
        # request will replace their corresponding fields in the template. Repeated
        # fields are appended. Singular sub-messages and groups are recursively merged.
        # Corresponds to the JSON property `reidentifyTemplateName`
        # @return [String]
        attr_accessor :reidentify_template_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
          @inspect_template_name = args[:inspect_template_name] if args.key?(:inspect_template_name)
          @item = args[:item] if args.key?(:item)
          @location_id = args[:location_id] if args.key?(:location_id)
          @reidentify_config = args[:reidentify_config] if args.key?(:reidentify_config)
          @reidentify_template_name = args[:reidentify_template_name] if args.key?(:reidentify_template_name)
        end
      end
      
      # Results of re-identifying an item.
      class GooglePrivacyDlpV2ReidentifyContentResponse
        include Google::Apis::Core::Hashable
      
        # Type of content to inspect.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ContentItem]
        attr_accessor :item
      
        # Overview of the modifications that occurred.
        # Corresponds to the JSON property `overview`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationOverview]
        attr_accessor :overview
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item = args[:item] if args.key?(:item)
          @overview = args[:overview] if args.key?(:overview)
        end
      end
      
      # A related resource. Examples: * The source BigQuery table for a Vertex AI
      # dataset. * The source Cloud Storage bucket for a Vertex AI dataset.
      class GooglePrivacyDlpV2RelatedResource
        include Google::Apis::Core::Hashable
      
        # The full resource name of the related resource.
        # Corresponds to the JSON property `fullResource`
        # @return [String]
        attr_accessor :full_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource = args[:full_resource] if args.key?(:full_resource)
        end
      end
      
      # Replace each input value with a value randomly selected from the dictionary.
      class GooglePrivacyDlpV2ReplaceDictionaryConfig
        include Google::Apis::Core::Hashable
      
        # Message defining a list of words or phrases to search for in the data.
        # Corresponds to the JSON property `wordList`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2WordList]
        attr_accessor :word_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @word_list = args[:word_list] if args.key?(:word_list)
        end
      end
      
      # Replace each input value with a given `Value`.
      class GooglePrivacyDlpV2ReplaceValueConfig
        include Google::Apis::Core::Hashable
      
        # Set of primitive values supported by the system. Note that for the purposes of
        # inspection or transformation, the number of bytes considered to comprise a '
        # Value' is based on its representation as a UTF-8 encoded string. For example,
        # if 'integer_value' is set to 123456789, the number of bytes would be counted
        # as 9, even though an int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `newValue`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Value]
        attr_accessor :new_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_value = args[:new_value] if args.key?(:new_value)
        end
      end
      
      # Replace each matching finding with the name of the info_type.
      class GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # De-identification options.
      class GooglePrivacyDlpV2RequestedDeidentifyOptions
        include Google::Apis::Core::Hashable
      
        # DeidentifyTemplates contains instructions on how to de-identify content. See
        # https://cloud.google.com/sensitive-data-protection/docs/concepts-templates to
        # learn more.
        # Corresponds to the JSON property `snapshotDeidentifyTemplate`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        attr_accessor :snapshot_deidentify_template
      
        # DeidentifyTemplates contains instructions on how to de-identify content. See
        # https://cloud.google.com/sensitive-data-protection/docs/concepts-templates to
        # learn more.
        # Corresponds to the JSON property `snapshotImageRedactTemplate`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        attr_accessor :snapshot_image_redact_template
      
        # DeidentifyTemplates contains instructions on how to de-identify content. See
        # https://cloud.google.com/sensitive-data-protection/docs/concepts-templates to
        # learn more.
        # Corresponds to the JSON property `snapshotStructuredDeidentifyTemplate`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        attr_accessor :snapshot_structured_deidentify_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snapshot_deidentify_template = args[:snapshot_deidentify_template] if args.key?(:snapshot_deidentify_template)
          @snapshot_image_redact_template = args[:snapshot_image_redact_template] if args.key?(:snapshot_image_redact_template)
          @snapshot_structured_deidentify_template = args[:snapshot_structured_deidentify_template] if args.key?(:snapshot_structured_deidentify_template)
        end
      end
      
      # Snapshot of the inspection configuration.
      class GooglePrivacyDlpV2RequestedOptions
        include Google::Apis::Core::Hashable
      
        # Controls what and how to inspect for findings.
        # Corresponds to the JSON property `jobConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectJobConfig]
        attr_accessor :job_config
      
        # The inspectTemplate contains a configuration (set of types of sensitive data
        # to be detected) to be used anywhere you otherwise would normally specify
        # InspectConfig. See https://cloud.google.com/sensitive-data-protection/docs/
        # concepts-templates to learn more.
        # Corresponds to the JSON property `snapshotInspectTemplate`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        attr_accessor :snapshot_inspect_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_config = args[:job_config] if args.key?(:job_config)
          @snapshot_inspect_template = args[:snapshot_inspect_template] if args.key?(:snapshot_inspect_template)
        end
      end
      
      # Risk analysis options.
      class GooglePrivacyDlpV2RequestedRiskAnalysisOptions
        include Google::Apis::Core::Hashable
      
        # Configuration for a risk analysis job. See https://cloud.google.com/sensitive-
        # data-protection/docs/concepts-risk-analysis to learn more.
        # Corresponds to the JSON property `jobConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RiskAnalysisJobConfig]
        attr_accessor :job_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_config = args[:job_config] if args.key?(:job_config)
        end
      end
      
      # All result fields mentioned below are updated while the job is processing.
      class GooglePrivacyDlpV2Result
        include Google::Apis::Core::Hashable
      
        # Statistics related to processing hybrid inspect requests.
        # Corresponds to the JSON property `hybridStats`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2HybridInspectStatistics]
        attr_accessor :hybrid_stats
      
        # Statistics of how many instances of each info type were found during inspect
        # job.
        # Corresponds to the JSON property `infoTypeStats`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeStats>]
        attr_accessor :info_type_stats
      
        # Number of rows scanned after sampling and time filtering (applicable for row
        # based stores such as BigQuery).
        # Corresponds to the JSON property `numRowsProcessed`
        # @return [Fixnum]
        attr_accessor :num_rows_processed
      
        # Total size in bytes that were processed.
        # Corresponds to the JSON property `processedBytes`
        # @return [Fixnum]
        attr_accessor :processed_bytes
      
        # Estimate of the number of bytes to process.
        # Corresponds to the JSON property `totalEstimatedBytes`
        # @return [Fixnum]
        attr_accessor :total_estimated_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hybrid_stats = args[:hybrid_stats] if args.key?(:hybrid_stats)
          @info_type_stats = args[:info_type_stats] if args.key?(:info_type_stats)
          @num_rows_processed = args[:num_rows_processed] if args.key?(:num_rows_processed)
          @processed_bytes = args[:processed_bytes] if args.key?(:processed_bytes)
          @total_estimated_bytes = args[:total_estimated_bytes] if args.key?(:total_estimated_bytes)
        end
      end
      
      # Configuration for a risk analysis job. See https://cloud.google.com/sensitive-
      # data-protection/docs/concepts-risk-analysis to learn more.
      class GooglePrivacyDlpV2RiskAnalysisJobConfig
        include Google::Apis::Core::Hashable
      
        # Actions to execute at the completion of the job. Are executed in the order
        # provided.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Action>]
        attr_accessor :actions
      
        # Privacy metric to compute for reidentification risk analysis.
        # Corresponds to the JSON property `privacyMetric`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PrivacyMetric]
        attr_accessor :privacy_metric
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `sourceTable`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :source_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @privacy_metric = args[:privacy_metric] if args.key?(:privacy_metric)
          @source_table = args[:source_table] if args.key?(:source_table)
        end
      end
      
      # Values of the row.
      class GooglePrivacyDlpV2Row
        include Google::Apis::Core::Hashable
      
        # Individual cells.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Value>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # If set, the detailed findings will be persisted to the specified
      # OutputStorageConfig. Only a single instance of this action can be specified.
      # Compatible with: Inspect, Risk
      class GooglePrivacyDlpV2SaveFindings
        include Google::Apis::Core::Hashable
      
        # Cloud repository for storing output.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2OutputStorageConfig]
        attr_accessor :output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_config = args[:output_config] if args.key?(:output_config)
        end
      end
      
      # Collection of findings saved to a Cloud Storage bucket. This is used as the
      # proto schema for textproto files created when specifying a cloud storage path
      # to save Inspect findings.
      class GooglePrivacyDlpV2SaveToGcsFindingsOutput
        include Google::Apis::Core::Hashable
      
        # List of findings.
        # Corresponds to the JSON property `findings`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Finding>]
        attr_accessor :findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @findings = args[:findings] if args.key?(:findings)
        end
      end
      
      # Schedule for inspect job triggers.
      class GooglePrivacyDlpV2Schedule
        include Google::Apis::Core::Hashable
      
        # With this option a job is started on a regular periodic basis. For example:
        # every day (86400 seconds). A scheduled start time will be skipped if the
        # previous execution has not ended when its scheduled time occurs. This value
        # must be set to a time duration greater than or equal to 1 day and can be no
        # longer than 60 days.
        # Corresponds to the JSON property `recurrencePeriodDuration`
        # @return [String]
        attr_accessor :recurrence_period_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recurrence_period_duration = args[:recurrence_period_duration] if args.key?(:recurrence_period_duration)
        end
      end
      
      # How frequently to modify the profile when the table's schema is modified.
      class GooglePrivacyDlpV2SchemaModifiedCadence
        include Google::Apis::Core::Hashable
      
        # Frequency to regenerate data profiles when the schema is modified. Defaults to
        # monthly.
        # Corresponds to the JSON property `frequency`
        # @return [String]
        attr_accessor :frequency
      
        # The types of schema modifications to consider. Defaults to NEW_COLUMNS.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frequency = args[:frequency] if args.key?(:frequency)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # Response message for SearchConnections.
      class GooglePrivacyDlpV2SearchConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # List of connections that match the search query. Note that only a subset of
        # the fields will be populated, and only "name" is guaranteed to be set. For
        # full details of a Connection, call GetConnection with the name.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Connection>]
        attr_accessor :connections
      
        # Token to retrieve the next page of results. An empty value means there are no
        # more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connections = args[:connections] if args.key?(:connections)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A credential consisting of a username and password, where the password is
      # stored in a Secret Manager resource. Note: Secret Manager [charges apply](
      # https://cloud.google.com/secret-manager/pricing).
      class GooglePrivacyDlpV2SecretManagerCredential
        include Google::Apis::Core::Hashable
      
        # Required. The name of the Secret Manager resource that stores the password, in
        # the form `projects/project-id/secrets/secret-name/versions/version`.
        # Corresponds to the JSON property `passwordSecretVersionName`
        # @return [String]
        attr_accessor :password_secret_version_name
      
        # Required. The username.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password_secret_version_name = args[:password_secret_version_name] if args.key?(:password_secret_version_name)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Discovery target for credentials and secrets in cloud resource metadata. This
      # target does not include any filtering or frequency controls. Cloud DLP will
      # scan cloud resource metadata for secrets daily. No inspect template should be
      # included in the discovery config for a security benchmarks scan. Instead, the
      # built-in list of secrets and credentials infoTypes will be used (see https://
      # cloud.google.com/sensitive-data-protection/docs/infotypes-reference#
      # credentials_and_secrets). Credentials and secrets discovered will be reported
      # as vulnerabilities to Security Command Center.
      class GooglePrivacyDlpV2SecretsDiscoveryTarget
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Apply transformation to the selected info_types.
      class GooglePrivacyDlpV2SelectedInfoTypes
        include Google::Apis::Core::Hashable
      
        # Required. InfoTypes to apply the transformation to. Required. Provided
        # InfoType must be unique within the ImageTransformations message.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType>]
        attr_accessor :info_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_types = args[:info_types] if args.key?(:info_types)
        end
      end
      
      # Score is calculated from of all elements in the data profile. A higher level
      # means the data is more sensitive.
      class GooglePrivacyDlpV2SensitivityScore
        include Google::Apis::Core::Hashable
      
        # The sensitivity score applied to the resource.
        # Corresponds to the JSON property `score`
        # @return [String]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # An auxiliary table containing statistical information on the relative
      # frequency of different quasi-identifiers values. It has one or several quasi-
      # identifiers columns, and one column that indicates the relative frequency of
      # each quasi-identifier tuple. If a tuple is present in the data but not in the
      # auxiliary table, the corresponding relative frequency is assumed to be zero (
      # and thus, the tuple is highly reidentifiable).
      class GooglePrivacyDlpV2StatisticalTable
        include Google::Apis::Core::Hashable
      
        # Required. Quasi-identifier columns.
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2QuasiIdentifierField>]
        attr_accessor :quasi_ids
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `relativeFrequency`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :relative_frequency
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quasi_ids = args[:quasi_ids] if args.key?(:quasi_ids)
          @relative_frequency = args[:relative_frequency] if args.key?(:relative_frequency)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Shared message indicating Cloud storage type.
      class GooglePrivacyDlpV2StorageConfig
        include Google::Apis::Core::Hashable
      
        # Options defining BigQuery table and row identifiers.
        # Corresponds to the JSON property `bigQueryOptions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryOptions]
        attr_accessor :big_query_options
      
        # Options defining a file or a set of files within a Cloud Storage bucket.
        # Corresponds to the JSON property `cloudStorageOptions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2CloudStorageOptions]
        attr_accessor :cloud_storage_options
      
        # Options defining a data set within Google Cloud Datastore.
        # Corresponds to the JSON property `datastoreOptions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DatastoreOptions]
        attr_accessor :datastore_options
      
        # Configuration to control jobs where the content being inspected is outside of
        # Google Cloud Platform.
        # Corresponds to the JSON property `hybridOptions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2HybridOptions]
        attr_accessor :hybrid_options
      
        # Configuration of the timespan of the items to include in scanning. Currently
        # only supported when inspecting Cloud Storage and BigQuery.
        # Corresponds to the JSON property `timespanConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TimespanConfig]
        attr_accessor :timespan_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_options = args[:big_query_options] if args.key?(:big_query_options)
          @cloud_storage_options = args[:cloud_storage_options] if args.key?(:cloud_storage_options)
          @datastore_options = args[:datastore_options] if args.key?(:datastore_options)
          @hybrid_options = args[:hybrid_options] if args.key?(:hybrid_options)
          @timespan_config = args[:timespan_config] if args.key?(:timespan_config)
        end
      end
      
      # Storage metadata label to indicate which metadata entry contains findings.
      class GooglePrivacyDlpV2StorageMetadataLabel
        include Google::Apis::Core::Hashable
      
        # Label name.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # StoredInfoType resource message that contains information about the current
      # version and any pending updates.
      class GooglePrivacyDlpV2StoredInfoType
        include Google::Apis::Core::Hashable
      
        # Version of a StoredInfoType, including the configuration used to build it,
        # create timestamp, and current state.
        # Corresponds to the JSON property `currentVersion`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeVersion]
        attr_accessor :current_version
      
        # Resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Pending versions of the stored info type. Empty if no versions are pending.
        # Corresponds to the JSON property `pendingVersions`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeVersion>]
        attr_accessor :pending_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_version = args[:current_version] if args.key?(:current_version)
          @name = args[:name] if args.key?(:name)
          @pending_versions = args[:pending_versions] if args.key?(:pending_versions)
        end
      end
      
      # Configuration for stored infoTypes. All fields and subfield are provided by
      # the user. For more information, see https://cloud.google.com/sensitive-data-
      # protection/docs/creating-custom-infotypes.
      class GooglePrivacyDlpV2StoredInfoTypeConfig
        include Google::Apis::Core::Hashable
      
        # Description of the StoredInfoType (max 256 characters).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Custom information type based on a dictionary of words or phrases. This can be
        # used to match sensitive information specific to the data, such as a list of
        # employee IDs or job titles. Dictionary words are case-insensitive and all
        # characters other than letters and digits in the unicode [Basic Multilingual
        # Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#
        # Basic_Multilingual_Plane) will be replaced with whitespace when scanning for
        # matches, so the dictionary phrase "Sam Johnson" will match all three phrases "
        # sam johnson", "Sam, Johnson", and "Sam (Johnson)". Additionally, the
        # characters surrounding any match must be of a different type than the adjacent
        # characters within the word, so letters must be next to non-letters and digits
        # next to non-digits. For example, the dictionary word "jen" will match the
        # first three letters of the text "jen123" but will return no matches for "
        # jennifer". Dictionary words containing a large number of characters that are
        # not letters or digits may result in unexpected findings because such
        # characters are treated as whitespace. The [limits](https://cloud.google.com/
        # sensitive-data-protection/limits) page contains details about the size limits
        # of dictionaries. For dictionaries that do not fit within these constraints,
        # consider using `LargeCustomDictionaryConfig` in the `StoredInfoType` API.
        # Corresponds to the JSON property `dictionary`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Dictionary]
        attr_accessor :dictionary
      
        # Display name of the StoredInfoType (max 256 characters).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Configuration for a custom dictionary created from a data source of any size
        # up to the maximum size defined in the [limits](https://cloud.google.com/
        # sensitive-data-protection/limits) page. The artifacts of dictionary creation
        # are stored in the specified Cloud Storage location. Consider using `
        # CustomInfoType.Dictionary` for smaller dictionaries that satisfy the size
        # requirements.
        # Corresponds to the JSON property `largeCustomDictionary`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2LargeCustomDictionaryConfig]
        attr_accessor :large_custom_dictionary
      
        # Message defining a custom regular expression.
        # Corresponds to the JSON property `regex`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Regex]
        attr_accessor :regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @dictionary = args[:dictionary] if args.key?(:dictionary)
          @display_name = args[:display_name] if args.key?(:display_name)
          @large_custom_dictionary = args[:large_custom_dictionary] if args.key?(:large_custom_dictionary)
          @regex = args[:regex] if args.key?(:regex)
        end
      end
      
      # Statistics for a StoredInfoType.
      class GooglePrivacyDlpV2StoredInfoTypeStats
        include Google::Apis::Core::Hashable
      
        # Summary statistics of a custom dictionary.
        # Corresponds to the JSON property `largeCustomDictionary`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2LargeCustomDictionaryStats]
        attr_accessor :large_custom_dictionary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @large_custom_dictionary = args[:large_custom_dictionary] if args.key?(:large_custom_dictionary)
        end
      end
      
      # Version of a StoredInfoType, including the configuration used to build it,
      # create timestamp, and current state.
      class GooglePrivacyDlpV2StoredInfoTypeVersion
        include Google::Apis::Core::Hashable
      
        # Configuration for stored infoTypes. All fields and subfield are provided by
        # the user. For more information, see https://cloud.google.com/sensitive-data-
        # protection/docs/creating-custom-infotypes.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeConfig]
        attr_accessor :config
      
        # Create timestamp of the version. Read-only, determined by the system when the
        # version is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Errors that occurred when creating this storedInfoType version, or anomalies
        # detected in the storedInfoType data that render it unusable. Only the five
        # most recent errors will be displayed, with the most recent error appearing
        # first. For example, some of the data for stored custom dictionaries is put in
        # the user's Cloud Storage bucket, and if this data is modified or deleted by
        # the user or another system, the dictionary becomes invalid. If any errors
        # occur, fix the problem indicated by the error message and use the
        # UpdateStoredInfoType API method to create another version of the
        # storedInfoType to continue using it, reusing the same `config` if it was not
        # the source of the error.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Error>]
        attr_accessor :errors
      
        # Stored info type version state. Read-only, updated by the system during
        # dictionary creation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Statistics for a StoredInfoType.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeStats]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @errors = args[:errors] if args.key?(:errors)
          @state = args[:state] if args.key?(:state)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # A reference to a StoredInfoType to use with scanning.
      class GooglePrivacyDlpV2StoredType
        include Google::Apis::Core::Hashable
      
        # Timestamp indicating when the version of the `StoredInfoType` used for
        # inspection was created. Output-only field, populated by the system.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Resource name of the requested `StoredInfoType`, for example `organizations/
        # 433245324/storedInfoTypes/432452342` or `projects/project-id/storedInfoTypes/
        # 432452342`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A collection that informs the user the number of times a particular `
      # TransformationResultCode` and error details occurred.
      class GooglePrivacyDlpV2SummaryResult
        include Google::Apis::Core::Hashable
      
        # Outcome of the transformation.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Number of transformations counted by this result.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # A place for warnings or errors to show up if a transformation didn't work as
        # expected.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @count = args[:count] if args.key?(:count)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # Message for detecting output from deidentification transformations such as [`
      # CryptoReplaceFfxFpeConfig`](https://cloud.google.com/sensitive-data-protection/
      # docs/reference/rest/v2/organizations.deidentifyTemplates#
      # cryptoreplaceffxfpeconfig). These types of transformations are those that
      # perform pseudonymization, thereby producing a "surrogate" as output. This
      # should be used in conjunction with a field on the transformation such as `
      # surrogate_info_type`. This CustomInfoType does not support the use of `
      # detection_rules`.
      class GooglePrivacyDlpV2SurrogateType
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Structured content to inspect. Up to 50,000 `Value`s per request allowed. See
      # https://cloud.google.com/sensitive-data-protection/docs/inspecting-structured-
      # text#inspecting_a_table to learn more.
      class GooglePrivacyDlpV2Table
        include Google::Apis::Core::Hashable
      
        # Headers of the table.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId>]
        attr_accessor :headers
      
        # Rows of the table.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headers = args[:headers] if args.key?(:headers)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # The profile for a scanned table.
      class GooglePrivacyDlpV2TableDataProfile
        include Google::Apis::Core::Hashable
      
        # Snapshot of the configurations used to generate the profile.
        # Corresponds to the JSON property `configSnapshot`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataProfileConfigSnapshot]
        attr_accessor :config_snapshot
      
        # The time at which the table was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Score is a summary of all elements in the data profile. A higher number means
        # more risk.
        # Corresponds to the JSON property `dataRiskLevel`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataRiskLevel]
        attr_accessor :data_risk_level
      
        # Message used to identify the type of resource being profiled.
        # Corresponds to the JSON property `dataSourceType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DataSourceType]
        attr_accessor :data_source_type
      
        # If the resource is BigQuery, the dataset ID.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # If supported, the location where the dataset's data is stored. See https://
        # cloud.google.com/bigquery/docs/locations for supported locations.
        # Corresponds to the JSON property `datasetLocation`
        # @return [String]
        attr_accessor :dataset_location
      
        # The Google Cloud project ID that owns the resource.
        # Corresponds to the JSON property `datasetProjectId`
        # @return [String]
        attr_accessor :dataset_project_id
      
        # Domains associated with the profile.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Domain>]
        attr_accessor :domains
      
        # How the table is encrypted.
        # Corresponds to the JSON property `encryptionStatus`
        # @return [String]
        attr_accessor :encryption_status
      
        # Optional. The time when this table expires.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # The number of columns skipped in the table because of an error.
        # Corresponds to the JSON property `failedColumnCount`
        # @return [Fixnum]
        attr_accessor :failed_column_count
      
        # The Cloud Asset Inventory resource that was profiled in order to generate this
        # TableDataProfile. https://cloud.google.com/apis/design/resource_names#
        # full_resource_name
        # Corresponds to the JSON property `fullResource`
        # @return [String]
        attr_accessor :full_resource
      
        # The time when this table was last modified
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # The name of the profile.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Other infoTypes found in this table's data.
        # Corresponds to the JSON property `otherInfoTypes`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2OtherInfoTypeSummary>]
        attr_accessor :other_info_types
      
        # The infoTypes predicted from this table's data.
        # Corresponds to the JSON property `predictedInfoTypes`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2InfoTypeSummary>]
        attr_accessor :predicted_info_types
      
        # The last time the profile was generated.
        # Corresponds to the JSON property `profileLastGenerated`
        # @return [String]
        attr_accessor :profile_last_generated
      
        # Success or errors for the profile generation.
        # Corresponds to the JSON property `profileStatus`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ProfileStatus]
        attr_accessor :profile_status
      
        # The resource name of the project data profile for this table.
        # Corresponds to the JSON property `projectDataProfile`
        # @return [String]
        attr_accessor :project_data_profile
      
        # Resources related to this profile.
        # Corresponds to the JSON property `relatedResources`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2RelatedResource>]
        attr_accessor :related_resources
      
        # The labels applied to the resource at the time the profile was generated.
        # Corresponds to the JSON property `resourceLabels`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels
      
        # How broadly a resource has been shared.
        # Corresponds to the JSON property `resourceVisibility`
        # @return [String]
        attr_accessor :resource_visibility
      
        # Number of rows in the table when the profile was generated. This will not be
        # populated for BigLake tables.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `sampleFindingsTable`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :sample_findings_table
      
        # The number of columns profiled in the table.
        # Corresponds to the JSON property `scannedColumnCount`
        # @return [Fixnum]
        attr_accessor :scanned_column_count
      
        # Score is calculated from of all elements in the data profile. A higher level
        # means the data is more sensitive.
        # Corresponds to the JSON property `sensitivityScore`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore]
        attr_accessor :sensitivity_score
      
        # State of a profile. This will always be set to DONE when the table data
        # profile is written to another service like BigQuery or Pub/Sub.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The table ID.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        # The size of the table when the profile was generated.
        # Corresponds to the JSON property `tableSizeBytes`
        # @return [Fixnum]
        attr_accessor :table_size_bytes
      
        # The tags attached to the table, including any tags attached during profiling.
        # Because tags are attached to Cloud SQL instances rather than Cloud SQL tables,
        # this field is empty for Cloud SQL table profiles.
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2Tag>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_snapshot = args[:config_snapshot] if args.key?(:config_snapshot)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_risk_level = args[:data_risk_level] if args.key?(:data_risk_level)
          @data_source_type = args[:data_source_type] if args.key?(:data_source_type)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @dataset_location = args[:dataset_location] if args.key?(:dataset_location)
          @dataset_project_id = args[:dataset_project_id] if args.key?(:dataset_project_id)
          @domains = args[:domains] if args.key?(:domains)
          @encryption_status = args[:encryption_status] if args.key?(:encryption_status)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @failed_column_count = args[:failed_column_count] if args.key?(:failed_column_count)
          @full_resource = args[:full_resource] if args.key?(:full_resource)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @name = args[:name] if args.key?(:name)
          @other_info_types = args[:other_info_types] if args.key?(:other_info_types)
          @predicted_info_types = args[:predicted_info_types] if args.key?(:predicted_info_types)
          @profile_last_generated = args[:profile_last_generated] if args.key?(:profile_last_generated)
          @profile_status = args[:profile_status] if args.key?(:profile_status)
          @project_data_profile = args[:project_data_profile] if args.key?(:project_data_profile)
          @related_resources = args[:related_resources] if args.key?(:related_resources)
          @resource_labels = args[:resource_labels] if args.key?(:resource_labels)
          @resource_visibility = args[:resource_visibility] if args.key?(:resource_visibility)
          @row_count = args[:row_count] if args.key?(:row_count)
          @sample_findings_table = args[:sample_findings_table] if args.key?(:sample_findings_table)
          @scanned_column_count = args[:scanned_column_count] if args.key?(:scanned_column_count)
          @sensitivity_score = args[:sensitivity_score] if args.key?(:sensitivity_score)
          @state = args[:state] if args.key?(:state)
          @table_id = args[:table_id] if args.key?(:table_id)
          @table_size_bytes = args[:table_size_bytes] if args.key?(:table_size_bytes)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Location of a finding within a table.
      class GooglePrivacyDlpV2TableLocation
        include Google::Apis::Core::Hashable
      
        # The zero-based index of the row where the finding is located. Only populated
        # for resources that have a natural ordering, not BigQuery. In BigQuery, to
        # identify the row a finding came from, populate BigQueryOptions.
        # identifying_fields with your primary key column names and when you store the
        # findings the value of those columns will be stored inside of Finding.
        # Corresponds to the JSON property `rowIndex`
        # @return [Fixnum]
        attr_accessor :row_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row_index = args[:row_index] if args.key?(:row_index)
        end
      end
      
      # Instructions regarding the table content being inspected.
      class GooglePrivacyDlpV2TableOptions
        include Google::Apis::Core::Hashable
      
        # The columns that are the primary keys for table objects included in
        # ContentItem. A copy of this cell's value will stored alongside alongside each
        # finding so that the finding can be traced to the specific row it came from. No
        # more than 3 may be provided.
        # Corresponds to the JSON property `identifyingFields`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId>]
        attr_accessor :identifying_fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identifying_fields = args[:identifying_fields] if args.key?(:identifying_fields)
        end
      end
      
      # Message defining the location of a BigQuery table with the projectId inferred
      # from the parent project.
      class GooglePrivacyDlpV2TableReference
        include Google::Apis::Core::Hashable
      
        # Dataset ID of the table.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The Google Cloud project ID of the project containing the table. If omitted,
        # the project ID is inferred from the parent project. This field is required if
        # the parent resource is an organization.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Name of the table.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # A tag associated with a resource.
      class GooglePrivacyDlpV2Tag
        include Google::Apis::Core::Hashable
      
        # The key of a tag key-value pair. For Google Cloud resources, this is the
        # resource name of the key, for example, "tagKeys/123456".
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The namespaced name for the tag value to attach to Google Cloud resources.
        # Must be in the format ``parent_id`/`tag_key_short_name`/`short_name``, for
        # example, "123456/environment/prod". This is only set for Google Cloud
        # resources.
        # Corresponds to the JSON property `namespacedTagValue`
        # @return [String]
        attr_accessor :namespaced_tag_value
      
        # The value of a tag key-value pair. For Google Cloud resources, this is the
        # resource name of the value, for example, "tagValues/123456".
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @namespaced_tag_value = args[:namespaced_tag_value] if args.key?(:namespaced_tag_value)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The tag to attach to profiles matching the condition. At most one `
      # TagCondition` can be specified per sensitivity level.
      class GooglePrivacyDlpV2TagCondition
        include Google::Apis::Core::Hashable
      
        # Score is calculated from of all elements in the data profile. A higher level
        # means the data is more sensitive.
        # Corresponds to the JSON property `sensitivityScore`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2SensitivityScore]
        attr_accessor :sensitivity_score
      
        # A value of a tag.
        # Corresponds to the JSON property `tag`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TagValue]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sensitivity_score = args[:sensitivity_score] if args.key?(:sensitivity_score)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # If set, attaches the [tags] (https://cloud.google.com/resource-manager/docs/
      # tags/tags-overview) provided to profiled resources. Tags support [access
      # control](https://cloud.google.com/iam/docs/tags-access-control). You can
      # conditionally grant or deny access to a resource based on whether the resource
      # has a specific tag.
      class GooglePrivacyDlpV2TagResources
        include Google::Apis::Core::Hashable
      
        # Whether applying a tag to a resource should lower the risk of the profile for
        # that resource. For example, in conjunction with an [IAM deny policy](https://
        # cloud.google.com/iam/docs/deny-overview), you can deny all principals a
        # permission if a tag value is present, mitigating the risk of the resource.
        # This also lowers the data risk of resources at the lower levels of the
        # resource hierarchy. For example, reducing the data risk of a table data
        # profile also reduces the data risk of the constituent column data profiles.
        # Corresponds to the JSON property `lowerDataRiskToLow`
        # @return [Boolean]
        attr_accessor :lower_data_risk_to_low
        alias_method :lower_data_risk_to_low?, :lower_data_risk_to_low
      
        # The profile generations for which the tag should be attached to resources. If
        # you attach a tag to only new profiles, then if the sensitivity score of a
        # profile subsequently changes, its tag doesn't change. By default, this field
        # includes only new profiles. To include both new and updated profiles for
        # tagging, this field should explicitly include both `PROFILE_GENERATION_NEW`
        # and `PROFILE_GENERATION_UPDATE`.
        # Corresponds to the JSON property `profileGenerationsToTag`
        # @return [Array<String>]
        attr_accessor :profile_generations_to_tag
      
        # The tags to associate with different conditions.
        # Corresponds to the JSON property `tagConditions`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2TagCondition>]
        attr_accessor :tag_conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lower_data_risk_to_low = args[:lower_data_risk_to_low] if args.key?(:lower_data_risk_to_low)
          @profile_generations_to_tag = args[:profile_generations_to_tag] if args.key?(:profile_generations_to_tag)
          @tag_conditions = args[:tag_conditions] if args.key?(:tag_conditions)
        end
      end
      
      # A value of a tag.
      class GooglePrivacyDlpV2TagValue
        include Google::Apis::Core::Hashable
      
        # The namespaced name for the tag value to attach to resources. Must be in the
        # format ``parent_id`/`tag_key_short_name`/`short_name``, for example, "123456/
        # environment/prod".
        # Corresponds to the JSON property `namespacedValue`
        # @return [String]
        attr_accessor :namespaced_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @namespaced_value = args[:namespaced_value] if args.key?(:namespaced_value)
        end
      end
      
      # A column with a semantic tag attached.
      class GooglePrivacyDlpV2TaggedField
        include Google::Apis::Core::Hashable
      
        # A column can be tagged with a custom tag. In this case, the user must indicate
        # an auxiliary table that contains statistical information on the possible
        # values of this column (below).
        # Corresponds to the JSON property `customTag`
        # @return [String]
        attr_accessor :custom_tag
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field
      
        # A generic empty message that you can re-use to avoid defining duplicated empty
        # messages in your APIs. A typical example is to use it as the request or the
        # response type of an API method. For instance: service Foo ` rpc Bar(google.
        # protobuf.Empty) returns (google.protobuf.Empty); `
        # Corresponds to the JSON property `inferred`
        # @return [Google::Apis::DlpV2::GoogleProtobufEmpty]
        attr_accessor :inferred
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_tag = args[:custom_tag] if args.key?(:custom_tag)
          @field = args[:field] if args.key?(:field)
          @inferred = args[:inferred] if args.key?(:inferred)
          @info_type = args[:info_type] if args.key?(:info_type)
        end
      end
      
      # Throw an error and fail the request when a transformation error occurs.
      class GooglePrivacyDlpV2ThrowError
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # For use with `Date`, `Timestamp`, and `TimeOfDay`, extract or preserve a
      # portion of the value.
      class GooglePrivacyDlpV2TimePartConfig
        include Google::Apis::Core::Hashable
      
        # The part of the time to keep.
        # Corresponds to the JSON property `partToExtract`
        # @return [String]
        attr_accessor :part_to_extract
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @part_to_extract = args[:part_to_extract] if args.key?(:part_to_extract)
        end
      end
      
      # Time zone of the date time object.
      class GooglePrivacyDlpV2TimeZone
        include Google::Apis::Core::Hashable
      
        # Set only if the offset can be determined. Positive for time ahead of UTC. E.g.
        # For "UTC-9", this value is -540.
        # Corresponds to the JSON property `offsetMinutes`
        # @return [Fixnum]
        attr_accessor :offset_minutes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @offset_minutes = args[:offset_minutes] if args.key?(:offset_minutes)
        end
      end
      
      # Configuration of the timespan of the items to include in scanning. Currently
      # only supported when inspecting Cloud Storage and BigQuery.
      class GooglePrivacyDlpV2TimespanConfig
        include Google::Apis::Core::Hashable
      
        # When the job is started by a JobTrigger we will automatically figure out a
        # valid start_time to avoid scanning files that have not been modified since the
        # last time the JobTrigger executed. This will be based on the time of the
        # execution of the last run of the JobTrigger or the timespan end_time used in
        # the last run of the JobTrigger. **For BigQuery** Inspect jobs triggered by
        # automatic population will scan data that is at least three hours old when the
        # job starts. This is because streaming buffer rows are not read during
        # inspection and reading up to the current timestamp will result in skipped rows.
        # See the [known issue](https://cloud.google.com/sensitive-data-protection/docs/
        # known-issues#recently-streamed-data) related to this operation.
        # Corresponds to the JSON property `enableAutoPopulationOfTimespanConfig`
        # @return [Boolean]
        attr_accessor :enable_auto_population_of_timespan_config
        alias_method :enable_auto_population_of_timespan_config?, :enable_auto_population_of_timespan_config
      
        # Exclude files, tables, or rows newer than this value. If not set, no upper
        # time limit is applied.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Exclude files, tables, or rows older than this value. If not set, no lower
        # time limit is applied.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `timestampField`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :timestamp_field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_auto_population_of_timespan_config = args[:enable_auto_population_of_timespan_config] if args.key?(:enable_auto_population_of_timespan_config)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @timestamp_field = args[:timestamp_field] if args.key?(:timestamp_field)
        end
      end
      
      # User specified templates and configs for how to deidentify structured,
      # unstructures, and image files. User must provide either a unstructured
      # deidentify template or at least one redact image config.
      class GooglePrivacyDlpV2TransformationConfig
        include Google::Apis::Core::Hashable
      
        # De-identify template. If this template is specified, it will serve as the
        # default de-identify template. This template cannot contain `
        # record_transformations` since it can be used for unstructured content such as
        # free-form text files. If this template is not set, a default `
        # ReplaceWithInfoTypeConfig` will be used to de-identify unstructured content.
        # Corresponds to the JSON property `deidentifyTemplate`
        # @return [String]
        attr_accessor :deidentify_template
      
        # Image redact template. If this template is specified, it will serve as the de-
        # identify template for images. If this template is not set, all findings in the
        # image will be redacted with a black box.
        # Corresponds to the JSON property `imageRedactTemplate`
        # @return [String]
        attr_accessor :image_redact_template
      
        # Structured de-identify template. If this template is specified, it will serve
        # as the de-identify template for structured content such as delimited files and
        # tables. If this template is not set but the `deidentify_template` is set, then
        # `deidentify_template` will also apply to the structured content. If neither
        # template is set, a default `ReplaceWithInfoTypeConfig` will be used to de-
        # identify structured content.
        # Corresponds to the JSON property `structuredDeidentifyTemplate`
        # @return [String]
        attr_accessor :structured_deidentify_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify_template = args[:deidentify_template] if args.key?(:deidentify_template)
          @image_redact_template = args[:image_redact_template] if args.key?(:image_redact_template)
          @structured_deidentify_template = args[:structured_deidentify_template] if args.key?(:structured_deidentify_template)
        end
      end
      
      # A flattened description of a `PrimitiveTransformation` or `RecordSuppression`.
      class GooglePrivacyDlpV2TransformationDescription
        include Google::Apis::Core::Hashable
      
        # A human-readable string representation of the `RecordCondition` corresponding
        # to this transformation. Set if a `RecordCondition` was used to determine
        # whether or not to apply this transformation. Examples: * (age_field > 85) * (
        # age_field <= 18) * (zip_field exists) * (zip_field == 01234) && (city_field !=
        # "Springville") * (zip_field == 01234) && (age_field <= 18) && (city_field
        # exists)
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # A description of the transformation. This is empty for a RECORD_SUPPRESSION,
        # or is the output of calling toString() on the `PrimitiveTransformation`
        # protocol buffer message for any other type of transformation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        # The transformation type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @description = args[:description] if args.key?(:description)
          @info_type = args[:info_type] if args.key?(:info_type)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Details about a single transformation. This object contains a description of
      # the transformation, information about whether the transformation was
      # successfully applied, and the precise location where the transformation
      # occurred. These details are stored in a user-specified BigQuery table.
      class GooglePrivacyDlpV2TransformationDetails
        include Google::Apis::Core::Hashable
      
        # The top level name of the container where the transformation is located (this
        # will be the source file name or table name).
        # Corresponds to the JSON property `containerName`
        # @return [String]
        attr_accessor :container_name
      
        # The name of the job that completed the transformation.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The outcome of a transformation.
        # Corresponds to the JSON property `statusDetails`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationResultStatus]
        attr_accessor :status_details
      
        # Description of transformation. This would only contain more than one element
        # if there were multiple matching transformations and which one to apply was
        # ambiguous. Not set for states that contain no transformation, currently only
        # state that contains no transformation is TransformationResultStateType.
        # METADATA_UNRETRIEVABLE.
        # Corresponds to the JSON property `transformation`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationDescription>]
        attr_accessor :transformation
      
        # Specifies the location of a transformation.
        # Corresponds to the JSON property `transformationLocation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationLocation]
        attr_accessor :transformation_location
      
        # The number of bytes that were transformed. If transformation was unsuccessful
        # or did not take place because there was no content to transform, this will be
        # zero.
        # Corresponds to the JSON property `transformedBytes`
        # @return [Fixnum]
        attr_accessor :transformed_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_name = args[:container_name] if args.key?(:container_name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @status_details = args[:status_details] if args.key?(:status_details)
          @transformation = args[:transformation] if args.key?(:transformation)
          @transformation_location = args[:transformation_location] if args.key?(:transformation_location)
          @transformed_bytes = args[:transformed_bytes] if args.key?(:transformed_bytes)
        end
      end
      
      # Config for storing transformation details.
      class GooglePrivacyDlpV2TransformationDetailsStorageConfig
        include Google::Apis::Core::Hashable
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified by its project_id, dataset_id, and table_name. Within a query a
        # table is often referenced with a string in the format of: `:.` or `..`.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2BigQueryTable]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # How to handle transformation errors during de-identification. A transformation
      # error occurs when the requested transformation is incompatible with the data.
      # For example, trying to de-identify an IP address using a `DateShift`
      # transformation would result in a transformation error, since date info cannot
      # be extracted from an IP address. Information about any incompatible
      # transformations, and how they were handled, is returned in the response as
      # part of the `TransformationOverviews`.
      class GooglePrivacyDlpV2TransformationErrorHandling
        include Google::Apis::Core::Hashable
      
        # Skips the data without modifying it if the requested transformation would
        # cause an error. For example, if a `DateShift` transformation were applied an
        # an IP address, this mode would leave the IP address unchanged in the response.
        # Corresponds to the JSON property `leaveUntransformed`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2LeaveUntransformed]
        attr_accessor :leave_untransformed
      
        # Throw an error and fail the request when a transformation error occurs.
        # Corresponds to the JSON property `throwError`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2ThrowError]
        attr_accessor :throw_error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @leave_untransformed = args[:leave_untransformed] if args.key?(:leave_untransformed)
          @throw_error = args[:throw_error] if args.key?(:throw_error)
        end
      end
      
      # Specifies the location of a transformation.
      class GooglePrivacyDlpV2TransformationLocation
        include Google::Apis::Core::Hashable
      
        # Information about the functionality of the container where this finding
        # occurred, if available.
        # Corresponds to the JSON property `containerType`
        # @return [String]
        attr_accessor :container_type
      
        # For infotype transformations, link to the corresponding findings ID so that
        # location information does not need to be duplicated. Each findings ID
        # correlates to an entry in the findings output table, this table only gets
        # created when users specify to save findings (add the save findings action to
        # the request).
        # Corresponds to the JSON property `findingId`
        # @return [String]
        attr_accessor :finding_id
      
        # The field in a record to transform.
        # Corresponds to the JSON property `recordTransformation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RecordTransformation]
        attr_accessor :record_transformation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_type = args[:container_type] if args.key?(:container_type)
          @finding_id = args[:finding_id] if args.key?(:finding_id)
          @record_transformation = args[:record_transformation] if args.key?(:record_transformation)
        end
      end
      
      # Overview of the modifications that occurred.
      class GooglePrivacyDlpV2TransformationOverview
        include Google::Apis::Core::Hashable
      
        # Transformations applied to the dataset.
        # Corresponds to the JSON property `transformationSummaries`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2TransformationSummary>]
        attr_accessor :transformation_summaries
      
        # Total size in bytes that were transformed in some way.
        # Corresponds to the JSON property `transformedBytes`
        # @return [Fixnum]
        attr_accessor :transformed_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transformation_summaries = args[:transformation_summaries] if args.key?(:transformation_summaries)
          @transformed_bytes = args[:transformed_bytes] if args.key?(:transformed_bytes)
        end
      end
      
      # The outcome of a transformation.
      class GooglePrivacyDlpV2TransformationResultStatus
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `details`
        # @return [Google::Apis::DlpV2::GoogleRpcStatus]
        attr_accessor :details
      
        # Transformation result status type, this will be either SUCCESS, or it will be
        # the reason for why the transformation was not completely successful.
        # Corresponds to the JSON property `resultStatusType`
        # @return [String]
        attr_accessor :result_status_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @result_status_type = args[:result_status_type] if args.key?(:result_status_type)
        end
      end
      
      # Summary of a single transformation. Only one of 'transformation', '
      # field_transformation', or 'record_suppress' will be set.
      class GooglePrivacyDlpV2TransformationSummary
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2FieldId]
        attr_accessor :field
      
        # The field transformation that was applied. If multiple field transformations
        # are requested for a single field, this list will contain all of them;
        # otherwise, only one is supplied.
        # Corresponds to the JSON property `fieldTransformations`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2FieldTransformation>]
        attr_accessor :field_transformations
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InfoType]
        attr_accessor :info_type
      
        # Configuration to suppress records whose suppression conditions evaluate to
        # true.
        # Corresponds to the JSON property `recordSuppress`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2RecordSuppression]
        attr_accessor :record_suppress
      
        # Collection of all transformations that took place or had an error.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2SummaryResult>]
        attr_accessor :results
      
        # A rule for transforming a value.
        # Corresponds to the JSON property `transformation`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2PrimitiveTransformation]
        attr_accessor :transformation
      
        # Total size in bytes that were transformed in some way.
        # Corresponds to the JSON property `transformedBytes`
        # @return [Fixnum]
        attr_accessor :transformed_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @field_transformations = args[:field_transformations] if args.key?(:field_transformations)
          @info_type = args[:info_type] if args.key?(:info_type)
          @record_suppress = args[:record_suppress] if args.key?(:record_suppress)
          @results = args[:results] if args.key?(:results)
          @transformation = args[:transformation] if args.key?(:transformation)
          @transformed_bytes = args[:transformed_bytes] if args.key?(:transformed_bytes)
        end
      end
      
      # Use this to have a random data crypto key generated. It will be discarded
      # after the request finishes.
      class GooglePrivacyDlpV2TransientCryptoKey
        include Google::Apis::Core::Hashable
      
        # Required. Name of the key. This is an arbitrary string used to differentiate
        # different keys. A unique key is generated per name: two separate `
        # TransientCryptoKey` protos share the same generated key if their names are the
        # same. When the data crypto key is generated, this name is not used in any way (
        # repeating the api call will result in a different key being generated).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # What event needs to occur for a new job to be started.
      class GooglePrivacyDlpV2Trigger
        include Google::Apis::Core::Hashable
      
        # Job trigger option for hybrid jobs. Jobs must be manually created and finished.
        # Corresponds to the JSON property `manual`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Manual]
        attr_accessor :manual
      
        # Schedule for inspect job triggers.
        # Corresponds to the JSON property `schedule`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Schedule]
        attr_accessor :schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manual = args[:manual] if args.key?(:manual)
          @schedule = args[:schedule] if args.key?(:schedule)
        end
      end
      
      # Using raw keys is prone to security risks due to accidentally leaking the key.
      # Choose another type of key if possible.
      class GooglePrivacyDlpV2UnwrappedCryptoKey
        include Google::Apis::Core::Hashable
      
        # Required. A 128/192/256 bit key.
        # Corresponds to the JSON property `key`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # Request message for UpdateConnection.
      class GooglePrivacyDlpV2UpdateConnectionRequest
        include Google::Apis::Core::Hashable
      
        # A data connection to allow the DLP API to profile data in locations that
        # require additional configuration.
        # Corresponds to the JSON property `connection`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Connection]
        attr_accessor :connection
      
        # Optional. Mask to control which fields get updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection = args[:connection] if args.key?(:connection)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for UpdateDeidentifyTemplate.
      class GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
        include Google::Apis::Core::Hashable
      
        # DeidentifyTemplates contains instructions on how to de-identify content. See
        # https://cloud.google.com/sensitive-data-protection/docs/concepts-templates to
        # learn more.
        # Corresponds to the JSON property `deidentifyTemplate`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DeidentifyTemplate]
        attr_accessor :deidentify_template
      
        # Mask to control which fields get updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify_template = args[:deidentify_template] if args.key?(:deidentify_template)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for UpdateDiscoveryConfig.
      class GooglePrivacyDlpV2UpdateDiscoveryConfigRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for discovery to scan resources for profile generation. Only one
        # discovery configuration may exist per organization, folder, or project. The
        # generated data profiles are retained according to the [data retention policy] (
        # https://cloud.google.com/sensitive-data-protection/docs/data-profiles#
        # retention).
        # Corresponds to the JSON property `discoveryConfig`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryConfig]
        attr_accessor :discovery_config
      
        # Mask to control which fields get updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discovery_config = args[:discovery_config] if args.key?(:discovery_config)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for UpdateInspectTemplate.
      class GooglePrivacyDlpV2UpdateInspectTemplateRequest
        include Google::Apis::Core::Hashable
      
        # The inspectTemplate contains a configuration (set of types of sensitive data
        # to be detected) to be used anywhere you otherwise would normally specify
        # InspectConfig. See https://cloud.google.com/sensitive-data-protection/docs/
        # concepts-templates to learn more.
        # Corresponds to the JSON property `inspectTemplate`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2InspectTemplate]
        attr_accessor :inspect_template
      
        # Mask to control which fields get updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_template = args[:inspect_template] if args.key?(:inspect_template)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for UpdateJobTrigger.
      class GooglePrivacyDlpV2UpdateJobTriggerRequest
        include Google::Apis::Core::Hashable
      
        # Contains a configuration to make API calls on a repeating basis. See https://
        # cloud.google.com/sensitive-data-protection/docs/concepts-job-triggers to learn
        # more.
        # Corresponds to the JSON property `jobTrigger`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2JobTrigger]
        attr_accessor :job_trigger
      
        # Mask to control which fields get updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_trigger = args[:job_trigger] if args.key?(:job_trigger)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for UpdateStoredInfoType.
      class GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for stored infoTypes. All fields and subfield are provided by
        # the user. For more information, see https://cloud.google.com/sensitive-data-
        # protection/docs/creating-custom-infotypes.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2StoredInfoTypeConfig]
        attr_accessor :config
      
        # Mask to control which fields get updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Set of primitive values supported by the system. Note that for the purposes of
      # inspection or transformation, the number of bytes considered to comprise a '
      # Value' is based on its representation as a UTF-8 encoded string. For example,
      # if 'integer_value' is set to 123456789, the number of bytes would be counted
      # as 9, even though an int64 only holds up to 8 bytes of data.
      class GooglePrivacyDlpV2Value
        include Google::Apis::Core::Hashable
      
        # boolean
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::DlpV2::GoogleTypeDate]
        attr_accessor :date_value
      
        # day of week
        # Corresponds to the JSON property `dayOfWeekValue`
        # @return [String]
        attr_accessor :day_of_week_value
      
        # float
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # integer
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # string
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `timeValue`
        # @return [Google::Apis::DlpV2::GoogleTypeTimeOfDay]
        attr_accessor :time_value
      
        # timestamp
        # Corresponds to the JSON property `timestampValue`
        # @return [String]
        attr_accessor :timestamp_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @date_value = args[:date_value] if args.key?(:date_value)
          @day_of_week_value = args[:day_of_week_value] if args.key?(:day_of_week_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @time_value = args[:time_value] if args.key?(:time_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
      
      # A value of a field, including its frequency.
      class GooglePrivacyDlpV2ValueFrequency
        include Google::Apis::Core::Hashable
      
        # How many times the value is contained in the field.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Set of primitive values supported by the system. Note that for the purposes of
        # inspection or transformation, the number of bytes considered to comprise a '
        # Value' is based on its representation as a UTF-8 encoded string. For example,
        # if 'integer_value' is set to 123456789, the number of bytes would be counted
        # as 9, even though an int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Details about each available version for an infotype.
      class GooglePrivacyDlpV2VersionDescription
        include Google::Apis::Core::Hashable
      
        # Description of the version.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name of the version
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Match dataset resources using regex filters.
      class GooglePrivacyDlpV2VertexDatasetCollection
        include Google::Apis::Core::Hashable
      
        # A collection of regular expressions to determine what datasets to match
        # against.
        # Corresponds to the JSON property `vertexDatasetRegexes`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetRegexes]
        attr_accessor :vertex_dataset_regexes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vertex_dataset_regexes = args[:vertex_dataset_regexes] if args.key?(:vertex_dataset_regexes)
        end
      end
      
      # Target used to match against for discovery with Vertex AI datasets.
      class GooglePrivacyDlpV2VertexDatasetDiscoveryTarget
        include Google::Apis::Core::Hashable
      
        # Requirements that must be true before a dataset is profiled for the first time.
        # Corresponds to the JSON property `conditions`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryVertexDatasetConditions]
        attr_accessor :conditions
      
        # Do not profile the tables.
        # Corresponds to the JSON property `disabled`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2Disabled]
        attr_accessor :disabled
      
        # Determines what datasets will have profiles generated within an organization
        # or project. Includes the ability to filter by regular expression patterns on
        # project ID or dataset regex.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryVertexDatasetFilter]
        attr_accessor :filter
      
        # How often existing datasets should have their profiles refreshed. New datasets
        # are scanned as quickly as possible depending on system capacity.
        # Corresponds to the JSON property `generationCadence`
        # @return [Google::Apis::DlpV2::GooglePrivacyDlpV2DiscoveryVertexDatasetGenerationCadence]
        attr_accessor :generation_cadence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @disabled = args[:disabled] if args.key?(:disabled)
          @filter = args[:filter] if args.key?(:filter)
          @generation_cadence = args[:generation_cadence] if args.key?(:generation_cadence)
        end
      end
      
      # A pattern to match against one or more dataset resources.
      class GooglePrivacyDlpV2VertexDatasetRegex
        include Google::Apis::Core::Hashable
      
        # For organizations, if unset, will match all projects. Has no effect for
        # configurations created within a project.
        # Corresponds to the JSON property `projectIdRegex`
        # @return [String]
        attr_accessor :project_id_regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id_regex = args[:project_id_regex] if args.key?(:project_id_regex)
        end
      end
      
      # A collection of regular expressions to determine what datasets to match
      # against.
      class GooglePrivacyDlpV2VertexDatasetRegexes
        include Google::Apis::Core::Hashable
      
        # Required. The group of regular expression patterns to match against one or
        # more datasets. Maximum of 100 entries. The sum of the lengths of all regular
        # expressions can't exceed 10 KiB.
        # Corresponds to the JSON property `patterns`
        # @return [Array<Google::Apis::DlpV2::GooglePrivacyDlpV2VertexDatasetRegex>]
        attr_accessor :patterns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @patterns = args[:patterns] if args.key?(:patterns)
        end
      end
      
      # Identifies a single Vertex AI dataset.
      class GooglePrivacyDlpV2VertexDatasetResourceReference
        include Google::Apis::Core::Hashable
      
        # Required. The name of the dataset resource. If set within a project-level
        # configuration, the specified resource must be within the project.
        # Corresponds to the JSON property `datasetResourceName`
        # @return [String]
        attr_accessor :dataset_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_resource_name = args[:dataset_resource_name] if args.key?(:dataset_resource_name)
        end
      end
      
      # Message defining a list of words or phrases to search for in the data.
      class GooglePrivacyDlpV2WordList
        include Google::Apis::Core::Hashable
      
        # Words or phrases defining the dictionary. The dictionary must contain at least
        # one phrase and every phrase must contain at least 2 characters that are
        # letters or digits. [required]
        # Corresponds to the JSON property `words`
        # @return [Array<String>]
        attr_accessor :words
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @words = args[:words] if args.key?(:words)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class GoogleTypeDate
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
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class GoogleTypeTimeOfDay
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
    end
  end
end
