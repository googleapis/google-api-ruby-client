# Copyright 2015 Google Inc.
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
    module DlpV2beta2
      
      # An auxiliary table contains statistical information on the relative
      # frequency of different quasi-identifiers values. It has one or several
      # quasi-identifiers columns, and one column that indicates the relative
      # frequency of each quasi-identifier tuple.
      # If a tuple is present in the data but not in the auxiliary table, the
      # corresponding relative frequency is assumed to be zero (and thus, the
      # tuple is highly reidentifiable).
      class GooglePrivacyDlpV2beta1AuxiliaryTable
        include Google::Apis::Core::Hashable
      
        # Quasi-identifier columns. [required]
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1QuasiIdField>]
        attr_accessor :quasi_ids
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `relativeFrequency`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId]
        attr_accessor :relative_frequency
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified  by its project_id, dataset_id, and table_name. Within a query
        # a table is often referenced with a string in the format of:
        # `<project_id>:<dataset_id>.<table_id>` or
        # `<project_id>.<dataset_id>.<table_id>`.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryTable]
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
      
      # Options defining BigQuery table and row identifiers.
      class GooglePrivacyDlpV2beta1BigQueryOptions
        include Google::Apis::Core::Hashable
      
        # References to fields uniquely identifying rows within the table.
        # Nested fields in the format, like `person.birthdate.year`, are allowed.
        # Corresponds to the JSON property `identifyingFields`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId>]
        attr_accessor :identifying_fields
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified  by its project_id, dataset_id, and table_name. Within a query
        # a table is often referenced with a string in the format of:
        # `<project_id>:<dataset_id>.<table_id>` or
        # `<project_id>.<dataset_id>.<table_id>`.
        # Corresponds to the JSON property `tableReference`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryTable]
        attr_accessor :table_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identifying_fields = args[:identifying_fields] if args.key?(:identifying_fields)
          @table_reference = args[:table_reference] if args.key?(:table_reference)
        end
      end
      
      # Message defining the location of a BigQuery table. A table is uniquely
      # identified  by its project_id, dataset_id, and table_name. Within a query
      # a table is often referenced with a string in the format of:
      # `<project_id>:<dataset_id>.<table_id>` or
      # `<project_id>.<dataset_id>.<table_id>`.
      class GooglePrivacyDlpV2beta1BigQueryTable
        include Google::Apis::Core::Hashable
      
        # Dataset ID of the table.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The Google Cloud Platform project ID of the project containing the table.
        # If omitted, project ID is inferred from the API call.
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
      
      # Compute numerical stats over an individual column, including
      # number of distinct values and value count distribution.
      class GooglePrivacyDlpV2beta1CategoricalStatsConfig
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # Histogram bucket of value frequencies in the column.
      class GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Total number of records in this bucket.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Sample of value frequencies in this bucket. The total number of
        # values returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1ValueFrequency>]
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
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @value_frequency_lower_bound = args[:value_frequency_lower_bound] if args.key?(:value_frequency_lower_bound)
          @value_frequency_upper_bound = args[:value_frequency_upper_bound] if args.key?(:value_frequency_upper_bound)
        end
      end
      
      # Result of the categorical stats computation.
      class GooglePrivacyDlpV2beta1CategoricalStatsResult
        include Google::Apis::Core::Hashable
      
        # Histogram of value frequencies in the column.
        # Corresponds to the JSON property `valueFrequencyHistogramBuckets`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket>]
        attr_accessor :value_frequency_histogram_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value_frequency_histogram_buckets = args[:value_frequency_histogram_buckets] if args.key?(:value_frequency_histogram_buckets)
        end
      end
      
      # Options defining a file or a set of files (path ending with *) within
      # a Google Cloud Storage bucket.
      class GooglePrivacyDlpV2beta1CloudStorageOptions
        include Google::Apis::Core::Hashable
      
        # Set of files to scan.
        # Corresponds to the JSON property `fileSet`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FileSet]
        attr_accessor :file_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_set = args[:file_set] if args.key?(:file_set)
        end
      end
      
      # A location in Cloud Storage.
      class GooglePrivacyDlpV2beta1CloudStoragePath
        include Google::Apis::Core::Hashable
      
        # The url, in the format of `gs://bucket/<path>`.
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
      
      # Custom information type provided by the user. Used to find domain-specific
      # sensitive information configurable to the data in question.
      class GooglePrivacyDlpV2beta1CustomInfoType
        include Google::Apis::Core::Hashable
      
        # Custom information type based on a dictionary of words or phrases. This can
        # be used to match sensitive information specific to the data, such as a list
        # of employee IDs or job titles.
        # Dictionary words are case-insensitive and all characters other than letters
        # and digits in the unicode [Basic Multilingual
        # Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#
        # Basic_Multilingual_Plane)
        # will be replaced with whitespace when scanning for matches, so the
        # dictionary phrase "Sam Johnson" will match all three phrases "sam johnson",
        # "Sam, Johnson", and "Sam (Johnson)". Additionally, the characters
        # surrounding any match must be of a different type than the adjacent
        # characters within the word, so letters must be next to non-letters and
        # digits next to non-digits. For example, the dictionary word "jen" will
        # match the first three letters of the text "jen123" but will return no
        # matches for "jennifer".
        # Dictionary words containing a large number of characters that are not
        # letters or digits may result in unexpected findings because such characters
        # are treated as whitespace.
        # Corresponds to the JSON property `dictionary`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Dictionary]
        attr_accessor :dictionary
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType]
        attr_accessor :info_type
      
        # Message for detecting output from deidentification transformations
        # such as
        # [`CryptoReplaceFfxFpeConfig`](/dlp/docs/reference/rest/v2beta1/content/
        # deidentify#CryptoReplaceFfxFpeConfig).
        # These types of transformations are
        # those that perform pseudonymization, thereby producing a "surrogate" as
        # output. This should be used in conjunction with a field on the
        # transformation such as `surrogate_info_type`. This custom info type does
        # not support the use of `detection_rules`.
        # Corresponds to the JSON property `surrogateType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1SurrogateType]
        attr_accessor :surrogate_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dictionary = args[:dictionary] if args.key?(:dictionary)
          @info_type = args[:info_type] if args.key?(:info_type)
          @surrogate_type = args[:surrogate_type] if args.key?(:surrogate_type)
        end
      end
      
      # Options defining a data set within Google Cloud Datastore.
      class GooglePrivacyDlpV2beta1DatastoreOptions
        include Google::Apis::Core::Hashable
      
        # A representation of a Datastore kind.
        # Corresponds to the JSON property `kind`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KindExpression]
        attr_accessor :kind
      
        # Datastore partition ID.
        # A partition ID identifies a grouping of entities. The grouping is always
        # by project and namespace, however the namespace ID may be empty.
        # A partition ID contains several dimensions:
        # project ID and namespace ID.
        # Corresponds to the JSON property `partitionId`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1PartitionId]
        attr_accessor :partition_id
      
        # Properties to scan. If none are specified, all properties will be scanned
        # by default.
        # Corresponds to the JSON property `projection`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Projection>]
        attr_accessor :projection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @partition_id = args[:partition_id] if args.key?(:partition_id)
          @projection = args[:projection] if args.key?(:projection)
        end
      end
      
      # Custom information type based on a dictionary of words or phrases. This can
      # be used to match sensitive information specific to the data, such as a list
      # of employee IDs or job titles.
      # Dictionary words are case-insensitive and all characters other than letters
      # and digits in the unicode [Basic Multilingual
      # Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#
      # Basic_Multilingual_Plane)
      # will be replaced with whitespace when scanning for matches, so the
      # dictionary phrase "Sam Johnson" will match all three phrases "sam johnson",
      # "Sam, Johnson", and "Sam (Johnson)". Additionally, the characters
      # surrounding any match must be of a different type than the adjacent
      # characters within the word, so letters must be next to non-letters and
      # digits next to non-digits. For example, the dictionary word "jen" will
      # match the first three letters of the text "jen123" but will return no
      # matches for "jennifer".
      # Dictionary words containing a large number of characters that are not
      # letters or digits may result in unexpected findings because such characters
      # are treated as whitespace.
      class GooglePrivacyDlpV2beta1Dictionary
        include Google::Apis::Core::Hashable
      
        # Message defining a list of words or phrases to search for in the data.
        # Corresponds to the JSON property `wordList`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1WordList]
        attr_accessor :word_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @word_list = args[:word_list] if args.key?(:word_list)
        end
      end
      
      # An entity in a dataset is a field or set of fields that correspond to a
      # single person. For example, in medical records the `EntityId` might be
      # a patient identifier, or for financial records it might be an account
      # identifier. This message is used when generalizations or analysis must be
      # consistent across multiple rows pertaining to the same entity.
      class GooglePrivacyDlpV2beta1EntityId
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # General identifier of a data field in a storage service.
      class GooglePrivacyDlpV2beta1FieldId
        include Google::Apis::Core::Hashable
      
        # Name describing the field.
        # Corresponds to the JSON property `columnName`
        # @return [String]
        attr_accessor :column_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_name = args[:column_name] if args.key?(:column_name)
        end
      end
      
      # Set of files to scan.
      class GooglePrivacyDlpV2beta1FileSet
        include Google::Apis::Core::Hashable
      
        # The url, in the format `gs://<bucket>/<path>`. Trailing wildcard in the
        # path is allowed.
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
      
      # Type of information detected by the API.
      class GooglePrivacyDlpV2beta1InfoType
        include Google::Apis::Core::Hashable
      
        # Name of the information type.
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
      
      # Max findings configuration per info type, per content item or long running
      # operation.
      class GooglePrivacyDlpV2beta1InfoTypeLimit
        include Google::Apis::Core::Hashable
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType]
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
      class GooglePrivacyDlpV2beta1InfoTypeStatistics
        include Google::Apis::Core::Hashable
      
        # Number of findings for this info type.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType]
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
      
      # Configuration description of the scanning process.
      # When used with redactContent only info_types and min_likelihood are currently
      # used.
      class GooglePrivacyDlpV2beta1InspectConfig
        include Google::Apis::Core::Hashable
      
        # Custom info types provided by the user.
        # Corresponds to the JSON property `customInfoTypes`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CustomInfoType>]
        attr_accessor :custom_info_types
      
        # When true, excludes type information of the findings.
        # Corresponds to the JSON property `excludeTypes`
        # @return [Boolean]
        attr_accessor :exclude_types
        alias_method :exclude_types?, :exclude_types
      
        # When true, a contextual quote from the data that triggered a finding is
        # included in the response; see Finding.quote.
        # Corresponds to the JSON property `includeQuote`
        # @return [Boolean]
        attr_accessor :include_quote
        alias_method :include_quote?, :include_quote
      
        # Configuration of findings limit given for specified info types.
        # Corresponds to the JSON property `infoTypeLimits`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoTypeLimit>]
        attr_accessor :info_type_limits
      
        # Restricts what info_types to look for. The values must correspond to
        # InfoType values returned by ListInfoTypes or found in documentation.
        # Empty info_types runs all enabled detectors.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType>]
        attr_accessor :info_types
      
        # Limits the number of findings per content item or long running operation.
        # Corresponds to the JSON property `maxFindings`
        # @return [Fixnum]
        attr_accessor :max_findings
      
        # Only returns findings equal or above this threshold.
        # Corresponds to the JSON property `minLikelihood`
        # @return [String]
        attr_accessor :min_likelihood
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_info_types = args[:custom_info_types] if args.key?(:custom_info_types)
          @exclude_types = args[:exclude_types] if args.key?(:exclude_types)
          @include_quote = args[:include_quote] if args.key?(:include_quote)
          @info_type_limits = args[:info_type_limits] if args.key?(:info_type_limits)
          @info_types = args[:info_types] if args.key?(:info_types)
          @max_findings = args[:max_findings] if args.key?(:max_findings)
          @min_likelihood = args[:min_likelihood] if args.key?(:min_likelihood)
        end
      end
      
      # Metadata returned within GetOperation for an inspect request.
      class GooglePrivacyDlpV2beta1InspectOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The time which this request was started.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `infoTypeStats`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoTypeStatistics>]
        attr_accessor :info_type_stats
      
        # Total size in bytes that were processed.
        # Corresponds to the JSON property `processedBytes`
        # @return [Fixnum]
        attr_accessor :processed_bytes
      
        # Configuration description of the scanning process.
        # When used with redactContent only info_types and min_likelihood are currently
        # used.
        # Corresponds to the JSON property `requestInspectConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InspectConfig]
        attr_accessor :request_inspect_config
      
        # Cloud repository for storing output.
        # Corresponds to the JSON property `requestOutputConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1OutputStorageConfig]
        attr_accessor :request_output_config
      
        # Shared message indicating Cloud storage type.
        # Corresponds to the JSON property `requestStorageConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1StorageConfig]
        attr_accessor :request_storage_config
      
        # Estimate of the number of bytes to process.
        # Corresponds to the JSON property `totalEstimatedBytes`
        # @return [Fixnum]
        attr_accessor :total_estimated_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @info_type_stats = args[:info_type_stats] if args.key?(:info_type_stats)
          @processed_bytes = args[:processed_bytes] if args.key?(:processed_bytes)
          @request_inspect_config = args[:request_inspect_config] if args.key?(:request_inspect_config)
          @request_output_config = args[:request_output_config] if args.key?(:request_output_config)
          @request_storage_config = args[:request_storage_config] if args.key?(:request_storage_config)
          @total_estimated_bytes = args[:total_estimated_bytes] if args.key?(:total_estimated_bytes)
        end
      end
      
      # The operational data.
      class GooglePrivacyDlpV2beta1InspectOperationResult
        include Google::Apis::Core::Hashable
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should have the format of `inspect/results/`id``.
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
      
      # k-anonymity metric, used for analysis of reidentification risk.
      class GooglePrivacyDlpV2beta1KAnonymityConfig
        include Google::Apis::Core::Hashable
      
        # An entity in a dataset is a field or set of fields that correspond to a
        # single person. For example, in medical records the `EntityId` might be
        # a patient identifier, or for financial records it might be an account
        # identifier. This message is used when generalizations or analysis must be
        # consistent across multiple rows pertaining to the same entity.
        # Corresponds to the JSON property `entityId`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1EntityId]
        attr_accessor :entity_id
      
        # Set of fields to compute k-anonymity over. When multiple fields are
        # specified, they are considered a single composite key. Structs and
        # repeated data types are not supported; however, nested fields are
        # supported so long as they are not structs themselves or nested within
        # a repeated field.
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId>]
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
      
      # The set of columns' values that share the same k-anonymity value.
      class GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass
        include Google::Apis::Core::Hashable
      
        # Size of the equivalence class, for example number of rows with the
        # above set of values.
        # Corresponds to the JSON property `equivalenceClassSize`
        # @return [Fixnum]
        attr_accessor :equivalence_class_size
      
        # Set of values defining the equivalence class. One value per
        # quasi-identifier column in the original KAnonymity metric message.
        # The order is always the same as the original request.
        # Corresponds to the JSON property `quasiIdsValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value>]
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
      
      # Histogram bucket of equivalence class sizes in the table.
      class GooglePrivacyDlpV2beta1KAnonymityHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Total number of records in this bucket.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Sample of equivalence classes in this bucket. The total number of
        # classes returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass>]
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
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @equivalence_class_size_lower_bound = args[:equivalence_class_size_lower_bound] if args.key?(:equivalence_class_size_lower_bound)
          @equivalence_class_size_upper_bound = args[:equivalence_class_size_upper_bound] if args.key?(:equivalence_class_size_upper_bound)
        end
      end
      
      # Result of the k-anonymity computation.
      class GooglePrivacyDlpV2beta1KAnonymityResult
        include Google::Apis::Core::Hashable
      
        # Histogram of k-anonymity equivalence classes.
        # Corresponds to the JSON property `equivalenceClassHistogramBuckets`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KAnonymityHistogramBucket>]
        attr_accessor :equivalence_class_histogram_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @equivalence_class_histogram_buckets = args[:equivalence_class_histogram_buckets] if args.key?(:equivalence_class_histogram_buckets)
        end
      end
      
      # Reidentifiability metric. This corresponds to a risk model similar to what
      # is called "journalist risk" in the literature, except the attack dataset is
      # statistically modeled instead of being perfectly known. This can be done
      # using publicly available data (like the US Census), or using a custom
      # statistical model (indicated as one or several BigQuery tables), or by
      # extrapolating from the distribution of values in the input dataset.
      class GooglePrivacyDlpV2beta1KMapEstimationConfig
        include Google::Apis::Core::Hashable
      
        # Several auxiliary tables can be used in the analysis. Each custom_tag
        # used to tag a quasi-identifiers column must appear in exactly one column
        # of one auxiliary table.
        # Corresponds to the JSON property `auxiliaryTables`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1AuxiliaryTable>]
        attr_accessor :auxiliary_tables
      
        # Fields considered to be quasi-identifiers. No two columns can have the
        # same tag. [required]
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1TaggedField>]
        attr_accessor :quasi_ids
      
        # ISO 3166-1 alpha-2 region code to use in the statistical modeling.
        # Required if no column is tagged with a region-specific InfoType (like
        # US_ZIP_5) or a region code.
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
      # min_anonymity: 3
      # max_anonymity: 5
      # frequency: 42
      # means that there are 42 records whose quasi-identifier values correspond
      # to 3, 4 or 5 people in the overlying population. An important particular
      # case is when min_anonymity = max_anonymity = 1: the frequency field then
      # corresponds to the number of uniquely identifiable records.
      class GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Number of records within these anonymity bounds.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Sample of quasi-identifier tuple values in this bucket. The total
        # number of classes returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues>]
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
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @max_anonymity = args[:max_anonymity] if args.key?(:max_anonymity)
          @min_anonymity = args[:min_anonymity] if args.key?(:min_anonymity)
        end
      end
      
      # A tuple of values for the quasi-identifier columns.
      class GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues
        include Google::Apis::Core::Hashable
      
        # The estimated anonymity for these quasi-identifier values.
        # Corresponds to the JSON property `estimatedAnonymity`
        # @return [Fixnum]
        attr_accessor :estimated_anonymity
      
        # The quasi-identifier values.
        # Corresponds to the JSON property `quasiIdsValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value>]
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
      class GooglePrivacyDlpV2beta1KMapEstimationResult
        include Google::Apis::Core::Hashable
      
        # The intervals [min_anonymity, max_anonymity] do not overlap. If a value
        # doesn't correspond to any such interval, the associated frequency is
        # zero. For example, the following records:
        # `min_anonymity: 1, max_anonymity: 1, frequency: 17`
        # `min_anonymity: 2, max_anonymity: 3, frequency: 42`
        # `min_anonymity: 5, max_anonymity: 10, frequency: 99`
        # mean that there are no record with an estimated anonymity of 4, 5, or
        # larger than 10.
        # Corresponds to the JSON property `kMapEstimationHistogram`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket>]
        attr_accessor :k_map_estimation_histogram
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @k_map_estimation_histogram = args[:k_map_estimation_histogram] if args.key?(:k_map_estimation_histogram)
        end
      end
      
      # A representation of a Datastore kind.
      class GooglePrivacyDlpV2beta1KindExpression
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
      
      # l-diversity metric, used for analysis of reidentification risk.
      class GooglePrivacyDlpV2beta1LDiversityConfig
        include Google::Apis::Core::Hashable
      
        # Set of quasi-identifiers indicating how equivalence classes are
        # defined for the l-diversity computation. When multiple fields are
        # specified, they are considered a single composite key.
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId>]
        attr_accessor :quasi_ids
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `sensitiveAttribute`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId]
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
      
      # The set of columns' values that share the same l-diversity value.
      class GooglePrivacyDlpV2beta1LDiversityEquivalenceClass
        include Google::Apis::Core::Hashable
      
        # Size of the k-anonymity equivalence class.
        # Corresponds to the JSON property `equivalenceClassSize`
        # @return [Fixnum]
        attr_accessor :equivalence_class_size
      
        # Number of distinct sensitive values in this equivalence class.
        # Corresponds to the JSON property `numDistinctSensitiveValues`
        # @return [Fixnum]
        attr_accessor :num_distinct_sensitive_values
      
        # Quasi-identifier values defining the k-anonymity equivalence
        # class. The order is always the same as the original request.
        # Corresponds to the JSON property `quasiIdsValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value>]
        attr_accessor :quasi_ids_values
      
        # Estimated frequencies of top sensitive values.
        # Corresponds to the JSON property `topSensitiveValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1ValueFrequency>]
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
      
      # Histogram bucket of sensitive value frequencies in the table.
      class GooglePrivacyDlpV2beta1LDiversityHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Total number of records in this bucket.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Sample of equivalence classes in this bucket. The total number of
        # classes returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1LDiversityEquivalenceClass>]
        attr_accessor :bucket_values
      
        # Lower bound on the sensitive value frequencies of the equivalence
        # classes in this bucket.
        # Corresponds to the JSON property `sensitiveValueFrequencyLowerBound`
        # @return [Fixnum]
        attr_accessor :sensitive_value_frequency_lower_bound
      
        # Upper bound on the sensitive value frequencies of the equivalence
        # classes in this bucket.
        # Corresponds to the JSON property `sensitiveValueFrequencyUpperBound`
        # @return [Fixnum]
        attr_accessor :sensitive_value_frequency_upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_size = args[:bucket_size] if args.key?(:bucket_size)
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @sensitive_value_frequency_lower_bound = args[:sensitive_value_frequency_lower_bound] if args.key?(:sensitive_value_frequency_lower_bound)
          @sensitive_value_frequency_upper_bound = args[:sensitive_value_frequency_upper_bound] if args.key?(:sensitive_value_frequency_upper_bound)
        end
      end
      
      # Result of the l-diversity computation.
      class GooglePrivacyDlpV2beta1LDiversityResult
        include Google::Apis::Core::Hashable
      
        # Histogram of l-diversity equivalence class sensitive value frequencies.
        # Corresponds to the JSON property `sensitiveValueFrequencyHistogramBuckets`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1LDiversityHistogramBucket>]
        attr_accessor :sensitive_value_frequency_histogram_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sensitive_value_frequency_histogram_buckets = args[:sensitive_value_frequency_histogram_buckets] if args.key?(:sensitive_value_frequency_histogram_buckets)
        end
      end
      
      # Compute numerical stats over an individual column, including
      # min, max, and quantiles.
      class GooglePrivacyDlpV2beta1NumericalStatsConfig
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId]
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
      class GooglePrivacyDlpV2beta1NumericalStatsResult
        include Google::Apis::Core::Hashable
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `maxValue`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value]
        attr_accessor :max_value
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `minValue`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value]
        attr_accessor :min_value
      
        # List of 99 values that partition the set of field values into 100 equal
        # sized buckets.
        # Corresponds to the JSON property `quantileValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value>]
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
      
      # Cloud repository for storing output.
      class GooglePrivacyDlpV2beta1OutputStorageConfig
        include Google::Apis::Core::Hashable
      
        # A location in Cloud Storage.
        # Corresponds to the JSON property `storagePath`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CloudStoragePath]
        attr_accessor :storage_path
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified  by its project_id, dataset_id, and table_name. Within a query
        # a table is often referenced with a string in the format of:
        # `<project_id>:<dataset_id>.<table_id>` or
        # `<project_id>.<dataset_id>.<table_id>`.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryTable]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @storage_path = args[:storage_path] if args.key?(:storage_path)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Datastore partition ID.
      # A partition ID identifies a grouping of entities. The grouping is always
      # by project and namespace, however the namespace ID may be empty.
      # A partition ID contains several dimensions:
      # project ID and namespace ID.
      class GooglePrivacyDlpV2beta1PartitionId
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
      
      # Privacy metric to compute for reidentification risk analysis.
      class GooglePrivacyDlpV2beta1PrivacyMetric
        include Google::Apis::Core::Hashable
      
        # Compute numerical stats over an individual column, including
        # number of distinct values and value count distribution.
        # Corresponds to the JSON property `categoricalStatsConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CategoricalStatsConfig]
        attr_accessor :categorical_stats_config
      
        # k-anonymity metric, used for analysis of reidentification risk.
        # Corresponds to the JSON property `kAnonymityConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KAnonymityConfig]
        attr_accessor :k_anonymity_config
      
        # Reidentifiability metric. This corresponds to a risk model similar to what
        # is called "journalist risk" in the literature, except the attack dataset is
        # statistically modeled instead of being perfectly known. This can be done
        # using publicly available data (like the US Census), or using a custom
        # statistical model (indicated as one or several BigQuery tables), or by
        # extrapolating from the distribution of values in the input dataset.
        # Corresponds to the JSON property `kMapEstimationConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KMapEstimationConfig]
        attr_accessor :k_map_estimation_config
      
        # l-diversity metric, used for analysis of reidentification risk.
        # Corresponds to the JSON property `lDiversityConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1LDiversityConfig]
        attr_accessor :l_diversity_config
      
        # Compute numerical stats over an individual column, including
        # min, max, and quantiles.
        # Corresponds to the JSON property `numericalStatsConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1NumericalStatsConfig]
        attr_accessor :numerical_stats_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categorical_stats_config = args[:categorical_stats_config] if args.key?(:categorical_stats_config)
          @k_anonymity_config = args[:k_anonymity_config] if args.key?(:k_anonymity_config)
          @k_map_estimation_config = args[:k_map_estimation_config] if args.key?(:k_map_estimation_config)
          @l_diversity_config = args[:l_diversity_config] if args.key?(:l_diversity_config)
          @numerical_stats_config = args[:numerical_stats_config] if args.key?(:numerical_stats_config)
        end
      end
      
      # A representation of a Datastore property in a projection.
      class GooglePrivacyDlpV2beta1Projection
        include Google::Apis::Core::Hashable
      
        # A reference to a property relative to the Datastore kind expressions.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1PropertyReference]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # A reference to a property relative to the Datastore kind expressions.
      class GooglePrivacyDlpV2beta1PropertyReference
        include Google::Apis::Core::Hashable
      
        # The name of the property.
        # If name includes "."s, it may be interpreted as a property name path.
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
      
      # A quasi-identifier column has a custom_tag, used to know which column
      # in the data corresponds to which column in the statistical model.
      class GooglePrivacyDlpV2beta1QuasiIdField
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `customTag`
        # @return [String]
        attr_accessor :custom_tag
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId]
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
      
      # Metadata returned within the
      # [`riskAnalysis.operations.get`](/dlp/docs/reference/rest/v2beta1/riskAnalysis.
      # operations/get)
      # for risk analysis.
      class GooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The time which this request was started.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Privacy metric to compute for reidentification risk analysis.
        # Corresponds to the JSON property `requestedPrivacyMetric`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1PrivacyMetric]
        attr_accessor :requested_privacy_metric
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified  by its project_id, dataset_id, and table_name. Within a query
        # a table is often referenced with a string in the format of:
        # `<project_id>:<dataset_id>.<table_id>` or
        # `<project_id>.<dataset_id>.<table_id>`.
        # Corresponds to the JSON property `requestedSourceTable`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryTable]
        attr_accessor :requested_source_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @requested_privacy_metric = args[:requested_privacy_metric] if args.key?(:requested_privacy_metric)
          @requested_source_table = args[:requested_source_table] if args.key?(:requested_source_table)
        end
      end
      
      # Result of a risk analysis
      # [`Operation`](/dlp/docs/reference/rest/v2beta1/inspect.operations)
      # request.
      class GooglePrivacyDlpV2beta1RiskAnalysisOperationResult
        include Google::Apis::Core::Hashable
      
        # Result of the categorical stats computation.
        # Corresponds to the JSON property `categoricalStatsResult`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CategoricalStatsResult]
        attr_accessor :categorical_stats_result
      
        # Result of the k-anonymity computation.
        # Corresponds to the JSON property `kAnonymityResult`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KAnonymityResult]
        attr_accessor :k_anonymity_result
      
        # Result of the reidentifiability analysis. Note that these results are an
        # estimation, not exact values.
        # Corresponds to the JSON property `kMapEstimationResult`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KMapEstimationResult]
        attr_accessor :k_map_estimation_result
      
        # Result of the l-diversity computation.
        # Corresponds to the JSON property `lDiversityResult`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1LDiversityResult]
        attr_accessor :l_diversity_result
      
        # Result of the numerical stats computation.
        # Corresponds to the JSON property `numericalStatsResult`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1NumericalStatsResult]
        attr_accessor :numerical_stats_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categorical_stats_result = args[:categorical_stats_result] if args.key?(:categorical_stats_result)
          @k_anonymity_result = args[:k_anonymity_result] if args.key?(:k_anonymity_result)
          @k_map_estimation_result = args[:k_map_estimation_result] if args.key?(:k_map_estimation_result)
          @l_diversity_result = args[:l_diversity_result] if args.key?(:l_diversity_result)
          @numerical_stats_result = args[:numerical_stats_result] if args.key?(:numerical_stats_result)
        end
      end
      
      # Shared message indicating Cloud storage type.
      class GooglePrivacyDlpV2beta1StorageConfig
        include Google::Apis::Core::Hashable
      
        # Options defining BigQuery table and row identifiers.
        # Corresponds to the JSON property `bigQueryOptions`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryOptions]
        attr_accessor :big_query_options
      
        # Options defining a file or a set of files (path ending with *) within
        # a Google Cloud Storage bucket.
        # Corresponds to the JSON property `cloudStorageOptions`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CloudStorageOptions]
        attr_accessor :cloud_storage_options
      
        # Options defining a data set within Google Cloud Datastore.
        # Corresponds to the JSON property `datastoreOptions`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1DatastoreOptions]
        attr_accessor :datastore_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_options = args[:big_query_options] if args.key?(:big_query_options)
          @cloud_storage_options = args[:cloud_storage_options] if args.key?(:cloud_storage_options)
          @datastore_options = args[:datastore_options] if args.key?(:datastore_options)
        end
      end
      
      # Message for detecting output from deidentification transformations
      # such as
      # [`CryptoReplaceFfxFpeConfig`](/dlp/docs/reference/rest/v2beta1/content/
      # deidentify#CryptoReplaceFfxFpeConfig).
      # These types of transformations are
      # those that perform pseudonymization, thereby producing a "surrogate" as
      # output. This should be used in conjunction with a field on the
      # transformation such as `surrogate_info_type`. This custom info type does
      # not support the use of `detection_rules`.
      class GooglePrivacyDlpV2beta1SurrogateType
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A column with a semantic tag attached.
      class GooglePrivacyDlpV2beta1TaggedField
        include Google::Apis::Core::Hashable
      
        # A column can be tagged with a custom tag. In this case, the user must
        # indicate an auxiliary table that contains statistical information on
        # the possible values of this column (below).
        # Corresponds to the JSON property `customTag`
        # @return [String]
        attr_accessor :custom_tag
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId]
        attr_accessor :field
      
        # A generic empty message that you can re-use to avoid defining duplicated
        # empty messages in your APIs. A typical example is to use it as the request
        # or the response type of an API method. For instance:
        # service Foo `
        # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
        # `
        # The JSON representation for `Empty` is empty JSON object ````.
        # Corresponds to the JSON property `inferred`
        # @return [Google::Apis::DlpV2beta2::GoogleProtobufEmpty]
        attr_accessor :inferred
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType]
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
      
      # Set of primitive values supported by the system.
      # Note that for the purposes of inspection or transformation, the number
      # of bytes considered to comprise a 'Value' is based on its representation
      # as a UTF-8 encoded string. For example, if 'integer_value' is set to
      # 123456789, the number of bytes would be counted as 9, even though an
      # int64 only holds up to 8 bytes of data.
      class GooglePrivacyDlpV2beta1Value
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::DlpV2beta2::GoogleTypeDate]
        attr_accessor :date_value
      
        # 
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # 
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # 
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # Represents a time of day. The date and time zone are either not significant
        # or are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `timeValue`
        # @return [Google::Apis::DlpV2beta2::GoogleTypeTimeOfDay]
        attr_accessor :time_value
      
        # 
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
          @float_value = args[:float_value] if args.key?(:float_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @time_value = args[:time_value] if args.key?(:time_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
      
      # A value of a field, including its frequency.
      class GooglePrivacyDlpV2beta1ValueFrequency
        include Google::Apis::Core::Hashable
      
        # How many times the value is contained in the field.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value]
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
      
      # Message defining a list of words or phrases to search for in the data.
      class GooglePrivacyDlpV2beta1WordList
        include Google::Apis::Core::Hashable
      
        # Words or phrases defining the dictionary. The dictionary must contain
        # at least one phrase and every phrase must contain at least 2 characters
        # that are letters or digits. [required]
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
      
      # A task to execute on the completion of a job.
      class GooglePrivacyDlpV2beta2Action
        include Google::Apis::Core::Hashable
      
        # Publish the results of a DlpJob to a pub sub channel.
        # Compatible with: Inpect, Risk
        # Corresponds to the JSON property `pubSub`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PublishToPubSub]
        attr_accessor :pub_sub
      
        # If set, the detailed findings will be persisted to the specified
        # OutputStorageConfig. Compatible with: Inspect
        # Corresponds to the JSON property `saveFindings`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2SaveFindings]
        attr_accessor :save_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pub_sub = args[:pub_sub] if args.key?(:pub_sub)
          @save_findings = args[:save_findings] if args.key?(:save_findings)
        end
      end
      
      # Result of a risk analysis operation request.
      class GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails
        include Google::Apis::Core::Hashable
      
        # Result of the categorical stats computation.
        # Corresponds to the JSON property `categoricalStatsResult`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CategoricalStatsResult]
        attr_accessor :categorical_stats_result
      
        # Result of the k-anonymity computation.
        # Corresponds to the JSON property `kAnonymityResult`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KAnonymityResult]
        attr_accessor :k_anonymity_result
      
        # Result of the reidentifiability analysis. Note that these results are an
        # estimation, not exact values.
        # Corresponds to the JSON property `kMapEstimationResult`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KMapEstimationResult]
        attr_accessor :k_map_estimation_result
      
        # Result of the l-diversity computation.
        # Corresponds to the JSON property `lDiversityResult`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LDiversityResult]
        attr_accessor :l_diversity_result
      
        # Result of the numerical stats computation.
        # Corresponds to the JSON property `numericalStatsResult`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2NumericalStatsResult]
        attr_accessor :numerical_stats_result
      
        # Privacy metric to compute for reidentification risk analysis.
        # Corresponds to the JSON property `requestedPrivacyMetric`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrivacyMetric]
        attr_accessor :requested_privacy_metric
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified  by its project_id, dataset_id, and table_name. Within a query
        # a table is often referenced with a string in the format of:
        # `<project_id>:<dataset_id>.<table_id>` or
        # `<project_id>.<dataset_id>.<table_id>`.
        # Corresponds to the JSON property `requestedSourceTable`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable]
        attr_accessor :requested_source_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categorical_stats_result = args[:categorical_stats_result] if args.key?(:categorical_stats_result)
          @k_anonymity_result = args[:k_anonymity_result] if args.key?(:k_anonymity_result)
          @k_map_estimation_result = args[:k_map_estimation_result] if args.key?(:k_map_estimation_result)
          @l_diversity_result = args[:l_diversity_result] if args.key?(:l_diversity_result)
          @numerical_stats_result = args[:numerical_stats_result] if args.key?(:numerical_stats_result)
          @requested_privacy_metric = args[:requested_privacy_metric] if args.key?(:requested_privacy_metric)
          @requested_source_table = args[:requested_source_table] if args.key?(:requested_source_table)
        end
      end
      
      # Request for creating a risk analysis DlpJob.
      class GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for a risk analysis job.
        # Corresponds to the JSON property `jobConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RiskAnalysisJobConfig]
        attr_accessor :job_config
      
        # Optional job ID to use for the created job. If not provided, a job ID will
        # automatically be generated. Must be unique within the project. The job ID
        # can contain uppercase and lowercase letters, numbers, and hyphens; that is,
        # it must match the regular expression: `[a-zA-Z\\d-]+`. The maximum length
        # is 100 characters. Can be empty to allow the system to generate one.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_config = args[:job_config] if args.key?(:job_config)
          @job_id = args[:job_id] if args.key?(:job_id)
        end
      end
      
      # An auxiliary table contains statistical information on the relative
      # frequency of different quasi-identifiers values. It has one or several
      # quasi-identifiers columns, and one column that indicates the relative
      # frequency of each quasi-identifier tuple.
      # If a tuple is present in the data but not in the auxiliary table, the
      # corresponding relative frequency is assumed to be zero (and thus, the
      # tuple is highly reidentifiable).
      class GooglePrivacyDlpV2beta2AuxiliaryTable
        include Google::Apis::Core::Hashable
      
        # Quasi-identifier columns. [required]
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2QuasiIdField>]
        attr_accessor :quasi_ids
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `relativeFrequency`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId]
        attr_accessor :relative_frequency
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified  by its project_id, dataset_id, and table_name. Within a query
        # a table is often referenced with a string in the format of:
        # `<project_id>:<dataset_id>.<table_id>` or
        # `<project_id>.<dataset_id>.<table_id>`.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable]
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
      
      # Options defining BigQuery table and row identifiers.
      class GooglePrivacyDlpV2beta2BigQueryOptions
        include Google::Apis::Core::Hashable
      
        # References to fields uniquely identifying rows within the table.
        # Nested fields in the format, like `person.birthdate.year`, are allowed.
        # Corresponds to the JSON property `identifyingFields`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId>]
        attr_accessor :identifying_fields
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified  by its project_id, dataset_id, and table_name. Within a query
        # a table is often referenced with a string in the format of:
        # `<project_id>:<dataset_id>.<table_id>` or
        # `<project_id>.<dataset_id>.<table_id>`.
        # Corresponds to the JSON property `tableReference`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable]
        attr_accessor :table_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identifying_fields = args[:identifying_fields] if args.key?(:identifying_fields)
          @table_reference = args[:table_reference] if args.key?(:table_reference)
        end
      end
      
      # Message defining the location of a BigQuery table. A table is uniquely
      # identified  by its project_id, dataset_id, and table_name. Within a query
      # a table is often referenced with a string in the format of:
      # `<project_id>:<dataset_id>.<table_id>` or
      # `<project_id>.<dataset_id>.<table_id>`.
      class GooglePrivacyDlpV2beta2BigQueryTable
        include Google::Apis::Core::Hashable
      
        # Dataset ID of the table.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The Google Cloud Platform project ID of the project containing the table.
        # If omitted, project ID is inferred from the API call.
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
      
      # Bucket is represented as a range, along with replacement values.
      class GooglePrivacyDlpV2beta2Bucket
        include Google::Apis::Core::Hashable
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `max`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value]
        attr_accessor :max
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `min`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value]
        attr_accessor :min
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `replacementValue`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value]
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
      # such as 1-30 -> LOW 31-65 -> MEDIUM 66-100 -> HIGH
      # This can be used on
      # data of type: number, long, string, timestamp.
      # If the bound `Value` type differs from the type of data being transformed, we
      # will first attempt converting the type of the data to be transformed to match
      # the type of the bound before comparing.
      class GooglePrivacyDlpV2beta2BucketingConfig
        include Google::Apis::Core::Hashable
      
        # Set of buckets. Ranges must be non-overlapping.
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Bucket>]
        attr_accessor :buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
        end
      end
      
      # The request message for canceling a DLP job.
      class GooglePrivacyDlpV2beta2CancelDlpJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Compute numerical stats over an individual column, including
      # number of distinct values and value count distribution.
      class GooglePrivacyDlpV2beta2CategoricalStatsConfig
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # 
      class GooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Total number of values in this bucket.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Sample of value frequencies in this bucket. The total number of
        # values returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ValueFrequency>]
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
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @value_frequency_lower_bound = args[:value_frequency_lower_bound] if args.key?(:value_frequency_lower_bound)
          @value_frequency_upper_bound = args[:value_frequency_upper_bound] if args.key?(:value_frequency_upper_bound)
        end
      end
      
      # Result of the categorical stats computation.
      class GooglePrivacyDlpV2beta2CategoricalStatsResult
        include Google::Apis::Core::Hashable
      
        # Histogram of value frequencies in the column.
        # Corresponds to the JSON property `valueFrequencyHistogramBuckets`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket>]
        attr_accessor :value_frequency_histogram_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value_frequency_histogram_buckets = args[:value_frequency_histogram_buckets] if args.key?(:value_frequency_histogram_buckets)
        end
      end
      
      # Partially mask a string by replacing a given number of characters with a
      # fixed character. Masking can start from the beginning or end of the string.
      # This can be used on data of any type (numbers, longs, and so on) and when
      # de-identifying structured data we'll attempt to preserve the original data's
      # type. (This allows you to take a long like 123 and modify it to a string like
      # **3.
      class GooglePrivacyDlpV2beta2CharacterMaskConfig
        include Google::Apis::Core::Hashable
      
        # When masking a string, items in this list will be skipped when replacing.
        # For example, if your string is 555-555-5555 and you ask us to skip `-` and
        # mask 5 chars with * we would produce ***-*55-5555.
        # Corresponds to the JSON property `charactersToIgnore`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CharsToIgnore>]
        attr_accessor :characters_to_ignore
      
        # Character to mask the sensitive values&mdash;for example, "*" for an
        # alphabetic string such as name, or "0" for a numeric string such as ZIP
        # code or credit card number. String must have length 1. If not supplied, we
        # will default to "*" for strings, 0 for digits.
        # Corresponds to the JSON property `maskingCharacter`
        # @return [String]
        attr_accessor :masking_character
      
        # Number of characters to mask. If not set, all matching chars will be
        # masked. Skipped characters do not count towards this tally.
        # Corresponds to the JSON property `numberToMask`
        # @return [Fixnum]
        attr_accessor :number_to_mask
      
        # Mask characters in reverse order. For example, if `masking_character` is
        # '0', number_to_mask is 14, and `reverse_order` is false, then
        # 1234-5678-9012-3456 -> 00000000000000-3456
        # If `masking_character` is '*', `number_to_mask` is 3, and `reverse_order`
        # is true, then 12345 -> 12***
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
      class GooglePrivacyDlpV2beta2CharsToIgnore
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `charactersToSkip`
        # @return [String]
        attr_accessor :characters_to_skip
      
        # 
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
      
      # Record key for a finding in a Cloud Storage file.
      class GooglePrivacyDlpV2beta2CloudStorageKey
        include Google::Apis::Core::Hashable
      
        # Path to the file.
        # Corresponds to the JSON property `filePath`
        # @return [String]
        attr_accessor :file_path
      
        # Byte offset of the referenced data in the file.
        # Corresponds to the JSON property `startOffset`
        # @return [Fixnum]
        attr_accessor :start_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_path = args[:file_path] if args.key?(:file_path)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
        end
      end
      
      # Options defining a file or a set of files (path ending with *) within
      # a Google Cloud Storage bucket.
      class GooglePrivacyDlpV2beta2CloudStorageOptions
        include Google::Apis::Core::Hashable
      
        # Max number of bytes to scan from a file. If a scanned file's size is bigger
        # than this value then the rest of the bytes are omitted.
        # Corresponds to the JSON property `bytesLimitPerFile`
        # @return [Fixnum]
        attr_accessor :bytes_limit_per_file
      
        # Set of files to scan.
        # Corresponds to the JSON property `fileSet`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FileSet]
        attr_accessor :file_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_limit_per_file = args[:bytes_limit_per_file] if args.key?(:bytes_limit_per_file)
          @file_set = args[:file_set] if args.key?(:file_set)
        end
      end
      
      # Represents a color in the RGB color space.
      class GooglePrivacyDlpV2beta2Color
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
      
      # The field type of `value` and `field` do not need to match to be
      # considered equal, but not all comparisons are possible.
      # A `value` of type:
      # - `string` can be compared against all other types
      # - `boolean` can only be compared against other booleans
      # - `integer` can be compared against doubles or a string if the string value
      # can be parsed as an integer.
      # - `double` can be compared against integers or a string if the string can
      # be parsed as a double.
      # - `Timestamp` can be compared against strings in RFC 3339 date string
      # format.
      # - `TimeOfDay` can be compared against timestamps and strings in the format
      # of 'HH:mm:ss'.
      # If we fail to compare do to type mismatch, a warning will be given and
      # the condition will evaluate to false.
      class GooglePrivacyDlpV2beta2Condition
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId]
        attr_accessor :field
      
        # Operator used to compare the field or infoType to the value. [required]
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value]
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
      class GooglePrivacyDlpV2beta2Conditions
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Condition>]
        attr_accessor :conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
        end
      end
      
      # Container structure for the content to inspect.
      class GooglePrivacyDlpV2beta2ContentItem
        include Google::Apis::Core::Hashable
      
        # Content data to inspect or redact.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Structured content to inspect. Up to 50,000 `Value`s per request allowed.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Table]
        attr_accessor :table
      
        # Type of the content, as defined in Content-Type HTTP header.
        # Supported types are: all "text" types, octet streams, PNG images,
        # JPEG images.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # String data to inspect or redact.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @table = args[:table] if args.key?(:table)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Request message for CreateDeidentifyTemplate.
      class GooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest
        include Google::Apis::Core::Hashable
      
        # The DeidentifyTemplates contains instructions on how to deidentify content.
        # Corresponds to the JSON property `deidentifyTemplate`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyTemplate]
        attr_accessor :deidentify_template
      
        # The template id can contain uppercase and lowercase letters,
        # numbers, and hyphens; that is, it must match the regular
        # expression: `[a-zA-Z\\d-]+`. The maximum length is 100
        # characters. Can be empty to allow the system to generate one.
        # Corresponds to the JSON property `templateId`
        # @return [String]
        attr_accessor :template_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify_template = args[:deidentify_template] if args.key?(:deidentify_template)
          @template_id = args[:template_id] if args.key?(:template_id)
        end
      end
      
      # Request message for CreateInspectTemplate.
      class GooglePrivacyDlpV2beta2CreateInspectTemplateRequest
        include Google::Apis::Core::Hashable
      
        # The inspectTemplate contains a configuration (set of types of sensitive data
        # to be detected) to be used anywhere you otherwise would normally specify
        # InspectConfig.
        # Corresponds to the JSON property `inspectTemplate`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectTemplate]
        attr_accessor :inspect_template
      
        # The template id can contain uppercase and lowercase letters,
        # numbers, and hyphens; that is, it must match the regular
        # expression: `[a-zA-Z\\d-]+`. The maximum length is 100
        # characters. Can be empty to allow the system to generate one.
        # Corresponds to the JSON property `templateId`
        # @return [String]
        attr_accessor :template_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_template = args[:inspect_template] if args.key?(:inspect_template)
          @template_id = args[:template_id] if args.key?(:template_id)
        end
      end
      
      # Request message for CreateJobTrigger.
      class GooglePrivacyDlpV2beta2CreateJobTriggerRequest
        include Google::Apis::Core::Hashable
      
        # Contains a configuration to make dlp api calls on a repeating basis.
        # Corresponds to the JSON property `jobTrigger`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2JobTrigger]
        attr_accessor :job_trigger
      
        # The trigger id can contain uppercase and lowercase letters,
        # numbers, and hyphens; that is, it must match the regular
        # expression: `[a-zA-Z\\d-]+`. The maximum length is 100
        # characters. Can be empty to allow the system to generate one.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_trigger = args[:job_trigger] if args.key?(:job_trigger)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
        end
      end
      
      # Pseudonymization method that generates surrogates via cryptographic hashing.
      # Uses SHA-256.
      # The key size must be either 32 or 64 bytes.
      # Outputs a 32 byte digest as an uppercase hex string
      # (for example, 41D1567F7F99F1DC2A5FAB886DEE5BEE).
      # Currently, only string and integer values can be hashed.
      class GooglePrivacyDlpV2beta2CryptoHashConfig
        include Google::Apis::Core::Hashable
      
        # This is a data encryption key (DEK) (as opposed to
        # a key encryption key (KEK) stored by KMS).
        # When using KMS to wrap/unwrap DEKs, be sure to set an appropriate
        # IAM policy on the KMS CryptoKey (KEK) to ensure an attacker cannot
        # unwrap the data crypto key.
        # Corresponds to the JSON property `cryptoKey`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CryptoKey]
        attr_accessor :crypto_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crypto_key = args[:crypto_key] if args.key?(:crypto_key)
        end
      end
      
      # This is a data encryption key (DEK) (as opposed to
      # a key encryption key (KEK) stored by KMS).
      # When using KMS to wrap/unwrap DEKs, be sure to set an appropriate
      # IAM policy on the KMS CryptoKey (KEK) to ensure an attacker cannot
      # unwrap the data crypto key.
      class GooglePrivacyDlpV2beta2CryptoKey
        include Google::Apis::Core::Hashable
      
        # Include to use an existing data crypto key wrapped by KMS.
        # Authorization requires the following IAM permissions when sending a request
        # to perform a crypto transformation using a kms-wrapped crypto key:
        # dlp.kms.encrypt
        # Corresponds to the JSON property `kmsWrapped`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KmsWrappedCryptoKey]
        attr_accessor :kms_wrapped
      
        # Use this to have a random data crypto key generated.
        # It will be discarded after the request finishes.
        # Corresponds to the JSON property `transient`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TransientCryptoKey]
        attr_accessor :transient
      
        # Using raw keys is prone to security risks due to accidentally
        # leaking the key. Choose another type of key if possible.
        # Corresponds to the JSON property `unwrapped`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2UnwrappedCryptoKey]
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
      
      # Replaces an identifier with a surrogate using FPE with the FFX
      # mode of operation; however when used in the `ReidentifyContent` API method,
      # it serves the opposite function by reversing the surrogate back into
      # the original identifier.
      # The identifier must be encoded as ASCII.
      # For a given crypto key and context, the same identifier will be
      # replaced with the same surrogate.
      # Identifiers must be at least two characters long.
      # In the case that the identifier is the empty string, it will be skipped.
      class GooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `commonAlphabet`
        # @return [String]
        attr_accessor :common_alphabet
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId]
        attr_accessor :context
      
        # This is a data encryption key (DEK) (as opposed to
        # a key encryption key (KEK) stored by KMS).
        # When using KMS to wrap/unwrap DEKs, be sure to set an appropriate
        # IAM policy on the KMS CryptoKey (KEK) to ensure an attacker cannot
        # unwrap the data crypto key.
        # Corresponds to the JSON property `cryptoKey`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CryptoKey]
        attr_accessor :crypto_key
      
        # This is supported by mapping these to the alphanumeric characters
        # that the FFX mode natively supports. This happens before/after
        # encryption/decryption.
        # Each character listed must appear only once.
        # Number of characters must be in the range [2, 62].
        # This must be encoded as ASCII.
        # The order of characters does not matter.
        # Corresponds to the JSON property `customAlphabet`
        # @return [String]
        attr_accessor :custom_alphabet
      
        # The native way to select the alphabet. Must be in the range [2, 62].
        # Corresponds to the JSON property `radix`
        # @return [Fixnum]
        attr_accessor :radix
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `surrogateInfoType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType]
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
      class GooglePrivacyDlpV2beta2CustomInfoType
        include Google::Apis::Core::Hashable
      
        # Set of detection rules to apply to all findings of this custom info type.
        # Rules are applied in order that they are specified. Not supported for the
        # `surrogate_type` custom info type.
        # Corresponds to the JSON property `detectionRules`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DetectionRule>]
        attr_accessor :detection_rules
      
        # Custom information type based on a dictionary of words or phrases. This can
        # be used to match sensitive information specific to the data, such as a list
        # of employee IDs or job titles.
        # Dictionary words are case-insensitive and all characters other than letters
        # and digits in the unicode [Basic Multilingual
        # Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#
        # Basic_Multilingual_Plane)
        # will be replaced with whitespace when scanning for matches, so the
        # dictionary phrase "Sam Johnson" will match all three phrases "sam johnson",
        # "Sam, Johnson", and "Sam (Johnson)". Additionally, the characters
        # surrounding any match must be of a different type than the adjacent
        # characters within the word, so letters must be next to non-letters and
        # digits next to non-digits. For example, the dictionary word "jen" will
        # match the first three letters of the text "jen123" but will return no
        # matches for "jennifer".
        # Dictionary words containing a large number of characters that are not
        # letters or digits may result in unexpected findings because such characters
        # are treated as whitespace.
        # Corresponds to the JSON property `dictionary`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Dictionary]
        attr_accessor :dictionary
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType]
        attr_accessor :info_type
      
        # Likelihood to return for this custom info type. This base value can be
        # altered by a detection rule if the finding meets the criteria specified by
        # the rule. Defaults to `VERY_LIKELY` if not specified.
        # Corresponds to the JSON property `likelihood`
        # @return [String]
        attr_accessor :likelihood
      
        # Message defining a custom regular expression.
        # Corresponds to the JSON property `regex`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Regex]
        attr_accessor :regex
      
        # Message for detecting output from deidentification transformations
        # such as
        # [`CryptoReplaceFfxFpeConfig`](/dlp/docs/reference/rest/v2beta1/content/
        # deidentify#CryptoReplaceFfxFpeConfig).
        # These types of transformations are
        # those that perform pseudonymization, thereby producing a "surrogate" as
        # output. This should be used in conjunction with a field on the
        # transformation such as `surrogate_info_type`. This custom info type does
        # not support the use of `detection_rules`.
        # Corresponds to the JSON property `surrogateType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2SurrogateType]
        attr_accessor :surrogate_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detection_rules = args[:detection_rules] if args.key?(:detection_rules)
          @dictionary = args[:dictionary] if args.key?(:dictionary)
          @info_type = args[:info_type] if args.key?(:info_type)
          @likelihood = args[:likelihood] if args.key?(:likelihood)
          @regex = args[:regex] if args.key?(:regex)
          @surrogate_type = args[:surrogate_type] if args.key?(:surrogate_type)
        end
      end
      
      # Record key for a finding in Cloud Datastore.
      class GooglePrivacyDlpV2beta2DatastoreKey
        include Google::Apis::Core::Hashable
      
        # A unique identifier for a Datastore entity.
        # If a key's partition ID or any of its path kinds or names are
        # reserved/read-only, the key is reserved/read-only.
        # A reserved/read-only key is forbidden in certain documented contexts.
        # Corresponds to the JSON property `entityKey`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Key]
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
      class GooglePrivacyDlpV2beta2DatastoreOptions
        include Google::Apis::Core::Hashable
      
        # A representation of a Datastore kind.
        # Corresponds to the JSON property `kind`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KindExpression]
        attr_accessor :kind
      
        # Datastore partition ID.
        # A partition ID identifies a grouping of entities. The grouping is always
        # by project and namespace, however the namespace ID may be empty.
        # A partition ID contains several dimensions:
        # project ID and namespace ID.
        # Corresponds to the JSON property `partitionId`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PartitionId]
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
      
      # The configuration that controls how the data will change.
      class GooglePrivacyDlpV2beta2DeidentifyConfig
        include Google::Apis::Core::Hashable
      
        # A type of transformation that will scan unstructured text and
        # apply various `PrimitiveTransformation`s to each finding, where the
        # transformation is applied to only values that were identified as a specific
        # info_type.
        # Corresponds to the JSON property `infoTypeTransformations`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeTransformations]
        attr_accessor :info_type_transformations
      
        # A type of transformation that is applied over structured data such as a
        # table.
        # Corresponds to the JSON property `recordTransformations`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordTransformations]
        attr_accessor :record_transformations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_type_transformations = args[:info_type_transformations] if args.key?(:info_type_transformations)
          @record_transformations = args[:record_transformations] if args.key?(:record_transformations)
        end
      end
      
      # Request to de-identify a list of items.
      class GooglePrivacyDlpV2beta2DeidentifyContentRequest
        include Google::Apis::Core::Hashable
      
        # The configuration that controls how the data will change.
        # Corresponds to the JSON property `deidentifyConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyConfig]
        attr_accessor :deidentify_config
      
        # Optional template to use. Any configuration directly specified in
        # deidentify_config will override those set in the template. Singular fields
        # that are set in this request will replace their corresponding fields in the
        # template. Repeated fields are appended. Singular sub-messages and groups
        # are recursively merged.
        # Corresponds to the JSON property `deidentifyTemplateName`
        # @return [String]
        attr_accessor :deidentify_template_name
      
        # Configuration description of the scanning process.
        # When used with redactContent only info_types and min_likelihood are currently
        # used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig]
        attr_accessor :inspect_config
      
        # Optional template to use. Any configuration directly specified in
        # inspect_config will override those set in the template. Singular fields
        # that are set in this request will replace their corresponding fields in the
        # template. Repeated fields are appended. Singular sub-messages and groups
        # are recursively merged.
        # Corresponds to the JSON property `inspectTemplateName`
        # @return [String]
        attr_accessor :inspect_template_name
      
        # Container structure for the content to inspect.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem]
        attr_accessor :item
      
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
        end
      end
      
      # Results of de-identifying a ContentItem.
      class GooglePrivacyDlpV2beta2DeidentifyContentResponse
        include Google::Apis::Core::Hashable
      
        # Container structure for the content to inspect.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem]
        attr_accessor :item
      
        # Overview of the modifications that occurred.
        # Corresponds to the JSON property `overview`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TransformationOverview]
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
      
      # The DeidentifyTemplates contains instructions on how to deidentify content.
      class GooglePrivacyDlpV2beta2DeidentifyTemplate
        include Google::Apis::Core::Hashable
      
        # The creation timestamp of a inspectTemplate, output only field.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The configuration that controls how the data will change.
        # Corresponds to the JSON property `deidentifyConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyConfig]
        attr_accessor :deidentify_config
      
        # Short description (max 256 chars).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name (max 256 chars).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The template name. Output only.
        # The template will have one of the following formats:
        # `projects/PROJECT_ID/deidentifyTemplates/TEMPLATE_ID` OR
        # `organizations/ORGANIZATION_ID/deidentifyTemplates/TEMPLATE_ID`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The last update timestamp of a inspectTemplate, output only field.
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
      
      # Rule for modifying a custom info type to alter behavior under certain
      # circumstances, depending on the specific details of the rule. Not supported
      # for the `surrogate_type` custom info type.
      class GooglePrivacyDlpV2beta2DetectionRule
        include Google::Apis::Core::Hashable
      
        # Detection rule that adjusts the likelihood of findings within a certain
        # proximity of hotwords.
        # Corresponds to the JSON property `hotwordRule`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2HotwordRule]
        attr_accessor :hotword_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hotword_rule = args[:hotword_rule] if args.key?(:hotword_rule)
        end
      end
      
      # Custom information type based on a dictionary of words or phrases. This can
      # be used to match sensitive information specific to the data, such as a list
      # of employee IDs or job titles.
      # Dictionary words are case-insensitive and all characters other than letters
      # and digits in the unicode [Basic Multilingual
      # Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#
      # Basic_Multilingual_Plane)
      # will be replaced with whitespace when scanning for matches, so the
      # dictionary phrase "Sam Johnson" will match all three phrases "sam johnson",
      # "Sam, Johnson", and "Sam (Johnson)". Additionally, the characters
      # surrounding any match must be of a different type than the adjacent
      # characters within the word, so letters must be next to non-letters and
      # digits next to non-digits. For example, the dictionary word "jen" will
      # match the first three letters of the text "jen123" but will return no
      # matches for "jennifer".
      # Dictionary words containing a large number of characters that are not
      # letters or digits may result in unexpected findings because such characters
      # are treated as whitespace.
      class GooglePrivacyDlpV2beta2Dictionary
        include Google::Apis::Core::Hashable
      
        # Message defining a list of words or phrases to search for in the data.
        # Corresponds to the JSON property `wordList`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2WordList]
        attr_accessor :word_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @word_list = args[:word_list] if args.key?(:word_list)
        end
      end
      
      # Combines all of the information about a DLP job.
      class GooglePrivacyDlpV2beta2DlpJob
        include Google::Apis::Core::Hashable
      
        # Time when the job was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Time when the job finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # A stream of errors encountered running the job.
        # Corresponds to the JSON property `errorResults`
        # @return [Array<Google::Apis::DlpV2beta2::GoogleRpcStatus>]
        attr_accessor :error_results
      
        # The results of an inspect DataSource job.
        # Corresponds to the JSON property `inspectDetails`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectDataSourceDetails]
        attr_accessor :inspect_details
      
        # If created by a job trigger, the resource name of the trigger that
        # instantiated the job.
        # Corresponds to the JSON property `jobTriggerName`
        # @return [String]
        attr_accessor :job_trigger_name
      
        # The server-assigned name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Result of a risk analysis operation request.
        # Corresponds to the JSON property `riskDetails`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails]
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
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error_results = args[:error_results] if args.key?(:error_results)
          @inspect_details = args[:inspect_details] if args.key?(:inspect_details)
          @job_trigger_name = args[:job_trigger_name] if args.key?(:job_trigger_name)
          @name = args[:name] if args.key?(:name)
          @risk_details = args[:risk_details] if args.key?(:risk_details)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An entity in a dataset is a field or set of fields that correspond to a
      # single person. For example, in medical records the `EntityId` might be
      # a patient identifier, or for financial records it might be an account
      # identifier. This message is used when generalizations or analysis must be
      # consistent across multiple rows pertaining to the same entity.
      class GooglePrivacyDlpV2beta2EntityId
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # The results of an unsuccessful activation of the JobTrigger.
      class GooglePrivacyDlpV2beta2Error
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `details`
        # @return [Google::Apis::DlpV2beta2::GoogleRpcStatus]
        attr_accessor :details
      
        # The times the error occurred.
        # Corresponds to the JSON property `timestamps`
        # @return [Array<String>]
        attr_accessor :timestamps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @timestamps = args[:timestamps] if args.key?(:timestamps)
        end
      end
      
      # An expression, consisting or an operator and conditions.
      class GooglePrivacyDlpV2beta2Expressions
        include Google::Apis::Core::Hashable
      
        # A collection of conditions.
        # Corresponds to the JSON property `conditions`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Conditions]
        attr_accessor :conditions
      
        # The operator to apply to the result of conditions. Default and currently
        # only supported value is `AND`.
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
      class GooglePrivacyDlpV2beta2FieldId
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
      class GooglePrivacyDlpV2beta2FieldTransformation
        include Google::Apis::Core::Hashable
      
        # A condition for determining whether a transformation should be applied to
        # a field.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordCondition]
        attr_accessor :condition
      
        # Input field(s) to apply the transformation to. [required]
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId>]
        attr_accessor :fields
      
        # A type of transformation that will scan unstructured text and
        # apply various `PrimitiveTransformation`s to each finding, where the
        # transformation is applied to only values that were identified as a specific
        # info_type.
        # Corresponds to the JSON property `infoTypeTransformations`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeTransformations]
        attr_accessor :info_type_transformations
      
        # A rule for transforming a value.
        # Corresponds to the JSON property `primitiveTransformation`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrimitiveTransformation]
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
      
      # Set of files to scan.
      class GooglePrivacyDlpV2beta2FileSet
        include Google::Apis::Core::Hashable
      
        # The url, in the format `gs://<bucket>/<path>`. Trailing wildcard in the
        # path is allowed.
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
      
      # Represents a piece of potentially sensitive content.
      class GooglePrivacyDlpV2beta2Finding
        include Google::Apis::Core::Hashable
      
        # Timestamp when finding was detected.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType]
        attr_accessor :info_type
      
        # Estimate of how likely it is that the `info_type` is correct.
        # Corresponds to the JSON property `likelihood`
        # @return [String]
        attr_accessor :likelihood
      
        # Specifies the location of the finding.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Location]
        attr_accessor :location
      
        # The content that was found. Even if the content is not textual, it
        # may be converted to a textual representation here.
        # Provided if requested by the `InspectConfig` and the finding is
        # less than or equal to 4096 bytes long. If the finding exceeds 4096 bytes
        # in length, the quote may be omitted.
        # Corresponds to the JSON property `quote`
        # @return [String]
        attr_accessor :quote
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @info_type = args[:info_type] if args.key?(:info_type)
          @likelihood = args[:likelihood] if args.key?(:likelihood)
          @location = args[:location] if args.key?(:location)
          @quote = args[:quote] if args.key?(:quote)
        end
      end
      
      # 
      class GooglePrivacyDlpV2beta2FindingLimits
        include Google::Apis::Core::Hashable
      
        # Configuration of findings limit given for specified infoTypes.
        # Corresponds to the JSON property `maxFindingsPerInfoType`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeLimit>]
        attr_accessor :max_findings_per_info_type
      
        # Max number of findings that will be returned for each item scanned.
        # Corresponds to the JSON property `maxFindingsPerItem`
        # @return [Fixnum]
        attr_accessor :max_findings_per_item
      
        # Max total number of findings that will be returned per request/job.
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
      
      # Buckets values based on fixed size ranges. The
      # Bucketing transformation can provide all of this functionality,
      # but requires more configuration. This message is provided as a convenience to
      # the user for simple bucketing strategies.
      # The transformed value will be a hyphenated string of
      # <lower_bound>-<upper_bound>, i.e if lower_bound = 10 and upper_bound = 20
      # all values that are within this bucket will be replaced with "10-20".
      # This can be used on data of type: double, long.
      # If the bound Value type differs from the type of data
      # being transformed, we will first attempt converting the type of the data to
      # be transformed to match the type of the bound before comparing.
      class GooglePrivacyDlpV2beta2FixedSizeBucketingConfig
        include Google::Apis::Core::Hashable
      
        # Size of each bucket (except for minimum and maximum buckets). So if
        # `lower_bound` = 10, `upper_bound` = 89, and `bucket_size` = 10, then the
        # following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60,
        # 60-70, 70-80, 80-89, 89+. Precision up to 2 decimals works. [Required].
        # Corresponds to the JSON property `bucketSize`
        # @return [Float]
        attr_accessor :bucket_size
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `lowerBound`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value]
        attr_accessor :lower_bound
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `upperBound`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value]
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
      
      # Detection rule that adjusts the likelihood of findings within a certain
      # proximity of hotwords.
      class GooglePrivacyDlpV2beta2HotwordRule
        include Google::Apis::Core::Hashable
      
        # Message defining a custom regular expression.
        # Corresponds to the JSON property `hotwordRegex`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Regex]
        attr_accessor :hotword_regex
      
        # Message for specifying an adjustment to the likelihood of a finding as
        # part of a detection rule.
        # Corresponds to the JSON property `likelihoodAdjustment`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LikelihoodAdjustment]
        attr_accessor :likelihood_adjustment
      
        # Message for specifying a window around a finding to apply a detection
        # rule.
        # Corresponds to the JSON property `proximity`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Proximity]
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
      
      # Bounding box encompassing detected text within an image.
      class GooglePrivacyDlpV2beta2ImageLocation
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
      
      # Configuration for determining how redaction of images should occur.
      class GooglePrivacyDlpV2beta2ImageRedactionConfig
        include Google::Apis::Core::Hashable
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType]
        attr_accessor :info_type
      
        # If true, all text found in the image, regardless whether it matches an
        # info_type, is redacted.
        # Corresponds to the JSON property `redactAllText`
        # @return [Boolean]
        attr_accessor :redact_all_text
        alias_method :redact_all_text?, :redact_all_text
      
        # Represents a color in the RGB color space.
        # Corresponds to the JSON property `redactionColor`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Color]
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
      
      # Type of information detected by the API.
      class GooglePrivacyDlpV2beta2InfoType
        include Google::Apis::Core::Hashable
      
        # Name of the information type.
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
      
      # InfoType description.
      class GooglePrivacyDlpV2beta2InfoTypeDescription
        include Google::Apis::Core::Hashable
      
        # Human readable form of the infoType name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Internal name of the infoType.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Which parts of the API supports this InfoType.
        # Corresponds to the JSON property `supportedBy`
        # @return [Array<String>]
        attr_accessor :supported_by
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @supported_by = args[:supported_by] if args.key?(:supported_by)
        end
      end
      
      # Max findings configuration per infoType, per content item or long
      # running DlpJob.
      class GooglePrivacyDlpV2beta2InfoTypeLimit
        include Google::Apis::Core::Hashable
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType]
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
      class GooglePrivacyDlpV2beta2InfoTypeStatistics
        include Google::Apis::Core::Hashable
      
        # Number of findings for this infoType.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType]
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
      
      # A transformation to apply to text that is identified as a specific
      # info_type.
      class GooglePrivacyDlpV2beta2InfoTypeTransformation
        include Google::Apis::Core::Hashable
      
        # InfoTypes to apply the transformation to. Empty list will match all
        # available infoTypes for this transformation.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType>]
        attr_accessor :info_types
      
        # A rule for transforming a value.
        # Corresponds to the JSON property `primitiveTransformation`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrimitiveTransformation]
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
      
      # A type of transformation that will scan unstructured text and
      # apply various `PrimitiveTransformation`s to each finding, where the
      # transformation is applied to only values that were identified as a specific
      # info_type.
      class GooglePrivacyDlpV2beta2InfoTypeTransformations
        include Google::Apis::Core::Hashable
      
        # Transformation for each infoType. Cannot specify more than one
        # for a given infoType. [required]
        # Corresponds to the JSON property `transformations`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeTransformation>]
        attr_accessor :transformations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transformations = args[:transformations] if args.key?(:transformations)
        end
      end
      
      # Configuration description of the scanning process.
      # When used with redactContent only info_types and min_likelihood are currently
      # used.
      class GooglePrivacyDlpV2beta2InspectConfig
        include Google::Apis::Core::Hashable
      
        # Custom infoTypes provided by the user.
        # Corresponds to the JSON property `customInfoTypes`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CustomInfoType>]
        attr_accessor :custom_info_types
      
        # When true, excludes type information of the findings.
        # Corresponds to the JSON property `excludeInfoTypes`
        # @return [Boolean]
        attr_accessor :exclude_info_types
        alias_method :exclude_info_types?, :exclude_info_types
      
        # When true, a contextual quote from the data that triggered a finding is
        # included in the response; see Finding.quote.
        # Corresponds to the JSON property `includeQuote`
        # @return [Boolean]
        attr_accessor :include_quote
        alias_method :include_quote?, :include_quote
      
        # Restricts what info_types to look for. The values must correspond to
        # InfoType values returned by ListInfoTypes or found in documentation.
        # Empty info_types runs all enabled detectors.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType>]
        attr_accessor :info_types
      
        # 
        # Corresponds to the JSON property `limits`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FindingLimits]
        attr_accessor :limits
      
        # Only returns findings equal or above this threshold. The default is
        # POSSIBLE.
        # Corresponds to the JSON property `minLikelihood`
        # @return [String]
        attr_accessor :min_likelihood
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_info_types = args[:custom_info_types] if args.key?(:custom_info_types)
          @exclude_info_types = args[:exclude_info_types] if args.key?(:exclude_info_types)
          @include_quote = args[:include_quote] if args.key?(:include_quote)
          @info_types = args[:info_types] if args.key?(:info_types)
          @limits = args[:limits] if args.key?(:limits)
          @min_likelihood = args[:min_likelihood] if args.key?(:min_likelihood)
        end
      end
      
      # Request to search for potentially sensitive info in a ContentItem.
      class GooglePrivacyDlpV2beta2InspectContentRequest
        include Google::Apis::Core::Hashable
      
        # Configuration description of the scanning process.
        # When used with redactContent only info_types and min_likelihood are currently
        # used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig]
        attr_accessor :inspect_config
      
        # Optional template to use. Any configuration directly specified in
        # inspect_config will override those set in the template. Singular fields
        # that are set in this request will replace their corresponding fields in the
        # template. Repeated fields are appended. Singular sub-messages and groups
        # are recursively merged.
        # Corresponds to the JSON property `inspectTemplateName`
        # @return [String]
        attr_accessor :inspect_template_name
      
        # Container structure for the content to inspect.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem]
        attr_accessor :item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
          @inspect_template_name = args[:inspect_template_name] if args.key?(:inspect_template_name)
          @item = args[:item] if args.key?(:item)
        end
      end
      
      # Results of inspecting an item.
      class GooglePrivacyDlpV2beta2InspectContentResponse
        include Google::Apis::Core::Hashable
      
        # All the findings for a single scanned item.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectResult]
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
      class GooglePrivacyDlpV2beta2InspectDataSourceDetails
        include Google::Apis::Core::Hashable
      
        # The configuration used for this job.
        # Corresponds to the JSON property `requestedOptions`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RequestedOptions]
        attr_accessor :requested_options
      
        # A summary of the outcome of this inspect job.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Result]
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
      
      # Request for scheduling a scan of a data subset from a Google Platform data
      # repository.
      class GooglePrivacyDlpV2beta2InspectDataSourceRequest
        include Google::Apis::Core::Hashable
      
        # A configuration for the job.
        # Corresponds to the JSON property `jobConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectJobConfig]
        attr_accessor :job_config
      
        # Optional job ID to use for the created job. If not provided, a job ID will
        # automatically be generated. Must be unique within the project. The job ID
        # can contain uppercase and lowercase letters, numbers, and hyphens; that is,
        # it must match the regular expression: `[a-zA-Z\\d-]+`. The maximum length
        # is 100 characters. Can be empty to allow the system to generate one.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_config = args[:job_config] if args.key?(:job_config)
          @job_id = args[:job_id] if args.key?(:job_id)
        end
      end
      
      # 
      class GooglePrivacyDlpV2beta2InspectJobConfig
        include Google::Apis::Core::Hashable
      
        # Actions to execute at the completion of the job. Are executed in the order
        # provided.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Action>]
        attr_accessor :actions
      
        # Configuration description of the scanning process.
        # When used with redactContent only info_types and min_likelihood are currently
        # used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig]
        attr_accessor :inspect_config
      
        # If provided, will be used as the default for all values in InspectConfig.
        # `inspect_config` will be merged into the values persisted as part of the
        # template.
        # Corresponds to the JSON property `inspectTemplateName`
        # @return [String]
        attr_accessor :inspect_template_name
      
        # Cloud repository for storing output.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2OutputStorageConfig]
        attr_accessor :output_config
      
        # Shared message indicating Cloud storage type.
        # Corresponds to the JSON property `storageConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2StorageConfig]
        attr_accessor :storage_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
          @inspect_template_name = args[:inspect_template_name] if args.key?(:inspect_template_name)
          @output_config = args[:output_config] if args.key?(:output_config)
          @storage_config = args[:storage_config] if args.key?(:storage_config)
        end
      end
      
      # All the findings for a single scanned item.
      class GooglePrivacyDlpV2beta2InspectResult
        include Google::Apis::Core::Hashable
      
        # List of findings for an item.
        # Corresponds to the JSON property `findings`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Finding>]
        attr_accessor :findings
      
        # If true, then this item might have more findings than were returned,
        # and the findings returned are an arbitrary subset of all findings.
        # The findings list might be truncated because the input items were too
        # large, or because the server reached the maximum amount of resources
        # allowed for a single API call. For best results, divide the input into
        # smaller batches.
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
      # InspectConfig.
      class GooglePrivacyDlpV2beta2InspectTemplate
        include Google::Apis::Core::Hashable
      
        # The creation timestamp of a inspectTemplate, output only field.
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
      
        # Configuration description of the scanning process.
        # When used with redactContent only info_types and min_likelihood are currently
        # used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig]
        attr_accessor :inspect_config
      
        # The template name. Output only.
        # The template will have one of the following formats:
        # `projects/PROJECT_ID/inspectTemplates/TEMPLATE_ID` OR
        # `organizations/ORGANIZATION_ID/inspectTemplates/TEMPLATE_ID`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The last update timestamp of a inspectTemplate, output only field.
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
      
      # Contains a configuration to make dlp api calls on a repeating basis.
      class GooglePrivacyDlpV2beta2JobTrigger
        include Google::Apis::Core::Hashable
      
        # The creation timestamp of a triggeredJob, output only field.
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
      
        # A stream of errors encountered when the trigger was activated. Repeated
        # errors may result in the JobTrigger automaticaly being paused.
        # Will return the last 100 errors. Whenever the JobTrigger is modified
        # this list will be cleared. Output only field.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Error>]
        attr_accessor :errors
      
        # 
        # Corresponds to the JSON property `inspectJob`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectJobConfig]
        attr_accessor :inspect_job
      
        # The timestamp of the last time this trigger executed.
        # Corresponds to the JSON property `lastRunTime`
        # @return [String]
        attr_accessor :last_run_time
      
        # Unique resource name for the triggeredJob, assigned by the service when the
        # triggeredJob is created, for example
        # `projects/dlp-test-project/triggeredJobs/53234423`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A status for this trigger. [required]
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # A list of triggers which will be OR'ed together. Only one in the list
        # needs to trigger for a job to be started. The list may contain only
        # a single Schedule trigger and must have at least one object.
        # Corresponds to the JSON property `triggers`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Trigger>]
        attr_accessor :triggers
      
        # The last update timestamp of a triggeredJob, output only field.
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
      class GooglePrivacyDlpV2beta2KAnonymityConfig
        include Google::Apis::Core::Hashable
      
        # An entity in a dataset is a field or set of fields that correspond to a
        # single person. For example, in medical records the `EntityId` might be
        # a patient identifier, or for financial records it might be an account
        # identifier. This message is used when generalizations or analysis must be
        # consistent across multiple rows pertaining to the same entity.
        # Corresponds to the JSON property `entityId`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2EntityId]
        attr_accessor :entity_id
      
        # Set of fields to compute k-anonymity over. When multiple fields are
        # specified, they are considered a single composite key. Structs and
        # repeated data types are not supported; however, nested fields are
        # supported so long as they are not structs themselves or nested within
        # a repeated field.
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId>]
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
      class GooglePrivacyDlpV2beta2KAnonymityEquivalenceClass
        include Google::Apis::Core::Hashable
      
        # Size of the equivalence class, for example number of rows with the
        # above set of values.
        # Corresponds to the JSON property `equivalenceClassSize`
        # @return [Fixnum]
        attr_accessor :equivalence_class_size
      
        # Set of values defining the equivalence class. One value per
        # quasi-identifier column in the original KAnonymity metric message.
        # The order is always the same as the original request.
        # Corresponds to the JSON property `quasiIdsValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value>]
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
      
      # 
      class GooglePrivacyDlpV2beta2KAnonymityHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Total number of equivalence classes in this bucket.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Sample of equivalence classes in this bucket. The total number of
        # classes returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KAnonymityEquivalenceClass>]
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
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @equivalence_class_size_lower_bound = args[:equivalence_class_size_lower_bound] if args.key?(:equivalence_class_size_lower_bound)
          @equivalence_class_size_upper_bound = args[:equivalence_class_size_upper_bound] if args.key?(:equivalence_class_size_upper_bound)
        end
      end
      
      # Result of the k-anonymity computation.
      class GooglePrivacyDlpV2beta2KAnonymityResult
        include Google::Apis::Core::Hashable
      
        # Histogram of k-anonymity equivalence classes.
        # Corresponds to the JSON property `equivalenceClassHistogramBuckets`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KAnonymityHistogramBucket>]
        attr_accessor :equivalence_class_histogram_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @equivalence_class_histogram_buckets = args[:equivalence_class_histogram_buckets] if args.key?(:equivalence_class_histogram_buckets)
        end
      end
      
      # Reidentifiability metric. This corresponds to a risk model similar to what
      # is called "journalist risk" in the literature, except the attack dataset is
      # statistically modeled instead of being perfectly known. This can be done
      # using publicly available data (like the US Census), or using a custom
      # statistical model (indicated as one or several BigQuery tables), or by
      # extrapolating from the distribution of values in the input dataset.
      class GooglePrivacyDlpV2beta2KMapEstimationConfig
        include Google::Apis::Core::Hashable
      
        # Several auxiliary tables can be used in the analysis. Each custom_tag
        # used to tag a quasi-identifiers column must appear in exactly one column
        # of one auxiliary table.
        # Corresponds to the JSON property `auxiliaryTables`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2AuxiliaryTable>]
        attr_accessor :auxiliary_tables
      
        # Fields considered to be quasi-identifiers. No two columns can have the
        # same tag. [required]
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TaggedField>]
        attr_accessor :quasi_ids
      
        # ISO 3166-1 alpha-2 region code to use in the statistical modeling.
        # Required if no column is tagged with a region-specific InfoType (like
        # US_ZIP_5) or a region code.
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
      # min_anonymity: 3
      # max_anonymity: 5
      # frequency: 42
      # means that there are 42 records whose quasi-identifier values correspond
      # to 3, 4 or 5 people in the overlying population. An important particular
      # case is when min_anonymity = max_anonymity = 1: the frequency field then
      # corresponds to the number of uniquely identifiable records.
      class GooglePrivacyDlpV2beta2KMapEstimationHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Number of records within these anonymity bounds.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Sample of quasi-identifier tuple values in this bucket. The total
        # number of classes returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues>]
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
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @max_anonymity = args[:max_anonymity] if args.key?(:max_anonymity)
          @min_anonymity = args[:min_anonymity] if args.key?(:min_anonymity)
        end
      end
      
      # A tuple of values for the quasi-identifier columns.
      class GooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues
        include Google::Apis::Core::Hashable
      
        # The estimated anonymity for these quasi-identifier values.
        # Corresponds to the JSON property `estimatedAnonymity`
        # @return [Fixnum]
        attr_accessor :estimated_anonymity
      
        # The quasi-identifier values.
        # Corresponds to the JSON property `quasiIdsValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value>]
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
      class GooglePrivacyDlpV2beta2KMapEstimationResult
        include Google::Apis::Core::Hashable
      
        # The intervals [min_anonymity, max_anonymity] do not overlap. If a value
        # doesn't correspond to any such interval, the associated frequency is
        # zero. For example, the following records:
        # `min_anonymity: 1, max_anonymity: 1, frequency: 17`
        # `min_anonymity: 2, max_anonymity: 3, frequency: 42`
        # `min_anonymity: 5, max_anonymity: 10, frequency: 99`
        # mean that there are no record with an estimated anonymity of 4, 5, or
        # larger than 10.
        # Corresponds to the JSON property `kMapEstimationHistogram`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KMapEstimationHistogramBucket>]
        attr_accessor :k_map_estimation_histogram
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @k_map_estimation_histogram = args[:k_map_estimation_histogram] if args.key?(:k_map_estimation_histogram)
        end
      end
      
      # A unique identifier for a Datastore entity.
      # If a key's partition ID or any of its path kinds or names are
      # reserved/read-only, the key is reserved/read-only.
      # A reserved/read-only key is forbidden in certain documented contexts.
      class GooglePrivacyDlpV2beta2Key
        include Google::Apis::Core::Hashable
      
        # Datastore partition ID.
        # A partition ID identifies a grouping of entities. The grouping is always
        # by project and namespace, however the namespace ID may be empty.
        # A partition ID contains several dimensions:
        # project ID and namespace ID.
        # Corresponds to the JSON property `partitionId`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PartitionId]
        attr_accessor :partition_id
      
        # The entity path.
        # An entity path consists of one or more elements composed of a kind and a
        # string or numerical identifier, which identify entities. The first
        # element identifies a _root entity_, the second element identifies
        # a _child_ of the root entity, the third element identifies a child of the
        # second entity, and so forth. The entities identified by all prefixes of
        # the path are called the element's _ancestors_.
        # A path can never be empty, and a path can have at most 100 elements.
        # Corresponds to the JSON property `path`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PathElement>]
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
      class GooglePrivacyDlpV2beta2KindExpression
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
      
      # Include to use an existing data crypto key wrapped by KMS.
      # Authorization requires the following IAM permissions when sending a request
      # to perform a crypto transformation using a kms-wrapped crypto key:
      # dlp.kms.encrypt
      class GooglePrivacyDlpV2beta2KmsWrappedCryptoKey
        include Google::Apis::Core::Hashable
      
        # The resource name of the KMS CryptoKey to use for unwrapping. [required]
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        # The wrapped data crypto key. [required]
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
      class GooglePrivacyDlpV2beta2LDiversityConfig
        include Google::Apis::Core::Hashable
      
        # Set of quasi-identifiers indicating how equivalence classes are
        # defined for the l-diversity computation. When multiple fields are
        # specified, they are considered a single composite key.
        # Corresponds to the JSON property `quasiIds`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId>]
        attr_accessor :quasi_ids
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `sensitiveAttribute`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId]
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
      class GooglePrivacyDlpV2beta2LDiversityEquivalenceClass
        include Google::Apis::Core::Hashable
      
        # Size of the k-anonymity equivalence class.
        # Corresponds to the JSON property `equivalenceClassSize`
        # @return [Fixnum]
        attr_accessor :equivalence_class_size
      
        # Number of distinct sensitive values in this equivalence class.
        # Corresponds to the JSON property `numDistinctSensitiveValues`
        # @return [Fixnum]
        attr_accessor :num_distinct_sensitive_values
      
        # Quasi-identifier values defining the k-anonymity equivalence
        # class. The order is always the same as the original request.
        # Corresponds to the JSON property `quasiIdsValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value>]
        attr_accessor :quasi_ids_values
      
        # Estimated frequencies of top sensitive values.
        # Corresponds to the JSON property `topSensitiveValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ValueFrequency>]
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
      
      # 
      class GooglePrivacyDlpV2beta2LDiversityHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Total number of equivalence classes in this bucket.
        # Corresponds to the JSON property `bucketSize`
        # @return [Fixnum]
        attr_accessor :bucket_size
      
        # Sample of equivalence classes in this bucket. The total number of
        # classes returned per bucket is capped at 20.
        # Corresponds to the JSON property `bucketValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LDiversityEquivalenceClass>]
        attr_accessor :bucket_values
      
        # Lower bound on the sensitive value frequencies of the equivalence
        # classes in this bucket.
        # Corresponds to the JSON property `sensitiveValueFrequencyLowerBound`
        # @return [Fixnum]
        attr_accessor :sensitive_value_frequency_lower_bound
      
        # Upper bound on the sensitive value frequencies of the equivalence
        # classes in this bucket.
        # Corresponds to the JSON property `sensitiveValueFrequencyUpperBound`
        # @return [Fixnum]
        attr_accessor :sensitive_value_frequency_upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_size = args[:bucket_size] if args.key?(:bucket_size)
          @bucket_values = args[:bucket_values] if args.key?(:bucket_values)
          @sensitive_value_frequency_lower_bound = args[:sensitive_value_frequency_lower_bound] if args.key?(:sensitive_value_frequency_lower_bound)
          @sensitive_value_frequency_upper_bound = args[:sensitive_value_frequency_upper_bound] if args.key?(:sensitive_value_frequency_upper_bound)
        end
      end
      
      # Result of the l-diversity computation.
      class GooglePrivacyDlpV2beta2LDiversityResult
        include Google::Apis::Core::Hashable
      
        # Histogram of l-diversity equivalence class sensitive value frequencies.
        # Corresponds to the JSON property `sensitiveValueFrequencyHistogramBuckets`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LDiversityHistogramBucket>]
        attr_accessor :sensitive_value_frequency_histogram_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sensitive_value_frequency_histogram_buckets = args[:sensitive_value_frequency_histogram_buckets] if args.key?(:sensitive_value_frequency_histogram_buckets)
        end
      end
      
      # Message for specifying an adjustment to the likelihood of a finding as
      # part of a detection rule.
      class GooglePrivacyDlpV2beta2LikelihoodAdjustment
        include Google::Apis::Core::Hashable
      
        # Set the likelihood of a finding to a fixed value.
        # Corresponds to the JSON property `fixedLikelihood`
        # @return [String]
        attr_accessor :fixed_likelihood
      
        # Increase or decrease the likelihood by the specified number of
        # levels. For example, if a finding would be `POSSIBLE` without the
        # detection rule and `relative_likelihood` is 1, then it is upgraded to
        # `LIKELY`, while a value of -1 would downgrade it to `UNLIKELY`.
        # Likelihood may never drop below `VERY_UNLIKELY` or exceed
        # `VERY_LIKELY`, so applying an adjustment of 1 followed by an
        # adjustment of -1 when base likelihood is `VERY_LIKELY` will result in
        # a final likelihood of `LIKELY`.
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
      
      # Response message for ListDeidentifyTemplates.
      class GooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse
        include Google::Apis::Core::Hashable
      
        # List of deidentify templates, up to page_size in
        # ListDeidentifyTemplatesRequest.
        # Corresponds to the JSON property `deidentifyTemplates`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyTemplate>]
        attr_accessor :deidentify_templates
      
        # If the next page is available then the next page token to be used
        # in following ListDeidentifyTemplates request.
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
      
      # The response message for listing DLP jobs.
      class GooglePrivacyDlpV2beta2ListDlpJobsResponse
        include Google::Apis::Core::Hashable
      
        # A list of DlpJobs that matches the specified filter in the request.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DlpJob>]
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
      
      # Response to the ListInfoTypes request.
      class GooglePrivacyDlpV2beta2ListInfoTypesResponse
        include Google::Apis::Core::Hashable
      
        # Set of sensitive infoTypes.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeDescription>]
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
      class GooglePrivacyDlpV2beta2ListInspectTemplatesResponse
        include Google::Apis::Core::Hashable
      
        # List of inspectTemplates, up to page_size in ListInspectTemplatesRequest.
        # Corresponds to the JSON property `inspectTemplates`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectTemplate>]
        attr_accessor :inspect_templates
      
        # If the next page is available then the next page token to be used
        # in following ListInspectTemplates request.
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
      class GooglePrivacyDlpV2beta2ListJobTriggersResponse
        include Google::Apis::Core::Hashable
      
        # List of triggeredJobs, up to page_size in ListJobTriggersRequest.
        # Corresponds to the JSON property `jobTriggers`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2JobTrigger>]
        attr_accessor :job_triggers
      
        # If the next page is available then the next page token to be used
        # in following ListJobTriggers request.
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
      
      # Specifies the location of the finding.
      class GooglePrivacyDlpV2beta2Location
        include Google::Apis::Core::Hashable
      
        # Generic half-open interval [start, end)
        # Corresponds to the JSON property `byteRange`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Range]
        attr_accessor :byte_range
      
        # Generic half-open interval [start, end)
        # Corresponds to the JSON property `codepointRange`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Range]
        attr_accessor :codepoint_range
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `fieldId`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId]
        attr_accessor :field_id
      
        # The area within the image that contained the finding.
        # Provided when the content is an image.
        # Corresponds to the JSON property `imageBoxes`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ImageLocation>]
        attr_accessor :image_boxes
      
        # Message for a unique key indicating a record that contains a finding.
        # Corresponds to the JSON property `recordKey`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordKey]
        attr_accessor :record_key
      
        # Location of a finding within a table.
        # Corresponds to the JSON property `tableLocation`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TableLocation]
        attr_accessor :table_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @byte_range = args[:byte_range] if args.key?(:byte_range)
          @codepoint_range = args[:codepoint_range] if args.key?(:codepoint_range)
          @field_id = args[:field_id] if args.key?(:field_id)
          @image_boxes = args[:image_boxes] if args.key?(:image_boxes)
          @record_key = args[:record_key] if args.key?(:record_key)
          @table_location = args[:table_location] if args.key?(:table_location)
        end
      end
      
      # Compute numerical stats over an individual column, including
      # min, max, and quantiles.
      class GooglePrivacyDlpV2beta2NumericalStatsConfig
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId]
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
      class GooglePrivacyDlpV2beta2NumericalStatsResult
        include Google::Apis::Core::Hashable
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `maxValue`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value]
        attr_accessor :max_value
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `minValue`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value]
        attr_accessor :min_value
      
        # List of 99 values that partition the set of field values into 100 equal
        # sized buckets.
        # Corresponds to the JSON property `quantileValues`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value>]
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
      
      # Cloud repository for storing output.
      class GooglePrivacyDlpV2beta2OutputStorageConfig
        include Google::Apis::Core::Hashable
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified  by its project_id, dataset_id, and table_name. Within a query
        # a table is often referenced with a string in the format of:
        # `<project_id>:<dataset_id>.<table_id>` or
        # `<project_id>.<dataset_id>.<table_id>`.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Datastore partition ID.
      # A partition ID identifies a grouping of entities. The grouping is always
      # by project and namespace, however the namespace ID may be empty.
      # A partition ID contains several dimensions:
      # project ID and namespace ID.
      class GooglePrivacyDlpV2beta2PartitionId
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
      
      # A (kind, ID/name) pair used to construct a key path.
      # If either name or ID is set, the element is complete.
      # If neither is set, the element is incomplete.
      class GooglePrivacyDlpV2beta2PathElement
        include Google::Apis::Core::Hashable
      
        # The auto-allocated ID of the entity.
        # Never equal to zero. Values less than zero are discouraged and may not
        # be supported in the future.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The kind of the entity.
        # A kind matching regex `__.*__` is reserved/read-only.
        # A kind must not contain more than 1500 bytes when UTF-8 encoded.
        # Cannot be `""`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the entity.
        # A name matching regex `__.*__` is reserved/read-only.
        # A name must not be more than 1500 bytes when UTF-8 encoded.
        # Cannot be `""`.
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
      class GooglePrivacyDlpV2beta2PrimitiveTransformation
        include Google::Apis::Core::Hashable
      
        # Generalization function that buckets values based on ranges. The ranges and
        # replacement values are dynamically provided by the user for custom behavior,
        # such as 1-30 -> LOW 31-65 -> MEDIUM 66-100 -> HIGH
        # This can be used on
        # data of type: number, long, string, timestamp.
        # If the bound `Value` type differs from the type of data being transformed, we
        # will first attempt converting the type of the data to be transformed to match
        # the type of the bound before comparing.
        # Corresponds to the JSON property `bucketingConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BucketingConfig]
        attr_accessor :bucketing_config
      
        # Partially mask a string by replacing a given number of characters with a
        # fixed character. Masking can start from the beginning or end of the string.
        # This can be used on data of any type (numbers, longs, and so on) and when
        # de-identifying structured data we'll attempt to preserve the original data's
        # type. (This allows you to take a long like 123 and modify it to a string like
        # **3.
        # Corresponds to the JSON property `characterMaskConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CharacterMaskConfig]
        attr_accessor :character_mask_config
      
        # Pseudonymization method that generates surrogates via cryptographic hashing.
        # Uses SHA-256.
        # The key size must be either 32 or 64 bytes.
        # Outputs a 32 byte digest as an uppercase hex string
        # (for example, 41D1567F7F99F1DC2A5FAB886DEE5BEE).
        # Currently, only string and integer values can be hashed.
        # Corresponds to the JSON property `cryptoHashConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CryptoHashConfig]
        attr_accessor :crypto_hash_config
      
        # Replaces an identifier with a surrogate using FPE with the FFX
        # mode of operation; however when used in the `ReidentifyContent` API method,
        # it serves the opposite function by reversing the surrogate back into
        # the original identifier.
        # The identifier must be encoded as ASCII.
        # For a given crypto key and context, the same identifier will be
        # replaced with the same surrogate.
        # Identifiers must be at least two characters long.
        # In the case that the identifier is the empty string, it will be skipped.
        # Corresponds to the JSON property `cryptoReplaceFfxFpeConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig]
        attr_accessor :crypto_replace_ffx_fpe_config
      
        # Buckets values based on fixed size ranges. The
        # Bucketing transformation can provide all of this functionality,
        # but requires more configuration. This message is provided as a convenience to
        # the user for simple bucketing strategies.
        # The transformed value will be a hyphenated string of
        # <lower_bound>-<upper_bound>, i.e if lower_bound = 10 and upper_bound = 20
        # all values that are within this bucket will be replaced with "10-20".
        # This can be used on data of type: double, long.
        # If the bound Value type differs from the type of data
        # being transformed, we will first attempt converting the type of the data to
        # be transformed to match the type of the bound before comparing.
        # Corresponds to the JSON property `fixedSizeBucketingConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FixedSizeBucketingConfig]
        attr_accessor :fixed_size_bucketing_config
      
        # Redact a given value. For example, if used with an `InfoTypeTransformation`
        # transforming PHONE_NUMBER, and input 'My phone number is 206-555-0123', the
        # output would be 'My phone number is '.
        # Corresponds to the JSON property `redactConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RedactConfig]
        attr_accessor :redact_config
      
        # Replace each input value with a given `Value`.
        # Corresponds to the JSON property `replaceConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ReplaceValueConfig]
        attr_accessor :replace_config
      
        # Replace each matching finding with the name of the info_type.
        # Corresponds to the JSON property `replaceWithInfoTypeConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig]
        attr_accessor :replace_with_info_type_config
      
        # For use with `Date`, `Timestamp`, and `TimeOfDay`, extract or preserve a
        # portion of the value.
        # Corresponds to the JSON property `timePartConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TimePartConfig]
        attr_accessor :time_part_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucketing_config = args[:bucketing_config] if args.key?(:bucketing_config)
          @character_mask_config = args[:character_mask_config] if args.key?(:character_mask_config)
          @crypto_hash_config = args[:crypto_hash_config] if args.key?(:crypto_hash_config)
          @crypto_replace_ffx_fpe_config = args[:crypto_replace_ffx_fpe_config] if args.key?(:crypto_replace_ffx_fpe_config)
          @fixed_size_bucketing_config = args[:fixed_size_bucketing_config] if args.key?(:fixed_size_bucketing_config)
          @redact_config = args[:redact_config] if args.key?(:redact_config)
          @replace_config = args[:replace_config] if args.key?(:replace_config)
          @replace_with_info_type_config = args[:replace_with_info_type_config] if args.key?(:replace_with_info_type_config)
          @time_part_config = args[:time_part_config] if args.key?(:time_part_config)
        end
      end
      
      # Privacy metric to compute for reidentification risk analysis.
      class GooglePrivacyDlpV2beta2PrivacyMetric
        include Google::Apis::Core::Hashable
      
        # Compute numerical stats over an individual column, including
        # number of distinct values and value count distribution.
        # Corresponds to the JSON property `categoricalStatsConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CategoricalStatsConfig]
        attr_accessor :categorical_stats_config
      
        # k-anonymity metric, used for analysis of reidentification risk.
        # Corresponds to the JSON property `kAnonymityConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KAnonymityConfig]
        attr_accessor :k_anonymity_config
      
        # Reidentifiability metric. This corresponds to a risk model similar to what
        # is called "journalist risk" in the literature, except the attack dataset is
        # statistically modeled instead of being perfectly known. This can be done
        # using publicly available data (like the US Census), or using a custom
        # statistical model (indicated as one or several BigQuery tables), or by
        # extrapolating from the distribution of values in the input dataset.
        # Corresponds to the JSON property `kMapEstimationConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KMapEstimationConfig]
        attr_accessor :k_map_estimation_config
      
        # l-diversity metric, used for analysis of reidentification risk.
        # Corresponds to the JSON property `lDiversityConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LDiversityConfig]
        attr_accessor :l_diversity_config
      
        # Compute numerical stats over an individual column, including
        # min, max, and quantiles.
        # Corresponds to the JSON property `numericalStatsConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2NumericalStatsConfig]
        attr_accessor :numerical_stats_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categorical_stats_config = args[:categorical_stats_config] if args.key?(:categorical_stats_config)
          @k_anonymity_config = args[:k_anonymity_config] if args.key?(:k_anonymity_config)
          @k_map_estimation_config = args[:k_map_estimation_config] if args.key?(:k_map_estimation_config)
          @l_diversity_config = args[:l_diversity_config] if args.key?(:l_diversity_config)
          @numerical_stats_config = args[:numerical_stats_config] if args.key?(:numerical_stats_config)
        end
      end
      
      # Message for specifying a window around a finding to apply a detection
      # rule.
      class GooglePrivacyDlpV2beta2Proximity
        include Google::Apis::Core::Hashable
      
        # Number of characters after the finding to consider.
        # Corresponds to the JSON property `windowAfter`
        # @return [Fixnum]
        attr_accessor :window_after
      
        # Number of characters before the finding to consider.
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
      
      # Publish the results of a DlpJob to a pub sub channel.
      # Compatible with: Inpect, Risk
      class GooglePrivacyDlpV2beta2PublishToPubSub
        include Google::Apis::Core::Hashable
      
        # Cloud Pub/Sub topic to send notifications to. The topic must have given
        # publishing access rights to the DLP API service account executing
        # the long running DlpJob sending the notifications.
        # Format is projects/`project`/topics/`topic`.
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
      
      # A quasi-identifier column has a custom_tag, used to know which column
      # in the data corresponds to which column in the statistical model.
      class GooglePrivacyDlpV2beta2QuasiIdField
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `customTag`
        # @return [String]
        attr_accessor :custom_tag
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId]
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
      
      # Generic half-open interval [start, end)
      class GooglePrivacyDlpV2beta2Range
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
      
      # A condition for determining whether a transformation should be applied to
      # a field.
      class GooglePrivacyDlpV2beta2RecordCondition
        include Google::Apis::Core::Hashable
      
        # An expression, consisting or an operator and conditions.
        # Corresponds to the JSON property `expressions`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Expressions]
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
      class GooglePrivacyDlpV2beta2RecordKey
        include Google::Apis::Core::Hashable
      
        # Record key for a finding in a Cloud Storage file.
        # Corresponds to the JSON property `cloudStorageKey`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CloudStorageKey]
        attr_accessor :cloud_storage_key
      
        # Record key for a finding in Cloud Datastore.
        # Corresponds to the JSON property `datastoreKey`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DatastoreKey]
        attr_accessor :datastore_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_storage_key = args[:cloud_storage_key] if args.key?(:cloud_storage_key)
          @datastore_key = args[:datastore_key] if args.key?(:datastore_key)
        end
      end
      
      # Configuration to suppress records whose suppression conditions evaluate to
      # true.
      class GooglePrivacyDlpV2beta2RecordSuppression
        include Google::Apis::Core::Hashable
      
        # A condition for determining whether a transformation should be applied to
        # a field.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordCondition]
        attr_accessor :condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
        end
      end
      
      # A type of transformation that is applied over structured data such as a
      # table.
      class GooglePrivacyDlpV2beta2RecordTransformations
        include Google::Apis::Core::Hashable
      
        # Transform the record by applying various field transformations.
        # Corresponds to the JSON property `fieldTransformations`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldTransformation>]
        attr_accessor :field_transformations
      
        # Configuration defining which records get suppressed entirely. Records that
        # match any suppression rule are omitted from the output [optional].
        # Corresponds to the JSON property `recordSuppressions`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordSuppression>]
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
      class GooglePrivacyDlpV2beta2RedactConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request to search for potentially sensitive info in a list of items
      # and replace it with a default or provided content.
      class GooglePrivacyDlpV2beta2RedactImageRequest
        include Google::Apis::Core::Hashable
      
        # The bytes of the image to redact.
        # Corresponds to the JSON property `imageData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :image_data
      
        # The configuration for specifying what content to redact from images.
        # Corresponds to the JSON property `imageRedactionConfigs`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ImageRedactionConfig>]
        attr_accessor :image_redaction_configs
      
        # Type of the content, as defined in Content-Type HTTP header.
        # Supported types are: PNG, JPEG, SVG, & BMP.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # Configuration description of the scanning process.
        # When used with redactContent only info_types and min_likelihood are currently
        # used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig]
        attr_accessor :inspect_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_data = args[:image_data] if args.key?(:image_data)
          @image_redaction_configs = args[:image_redaction_configs] if args.key?(:image_redaction_configs)
          @image_type = args[:image_type] if args.key?(:image_type)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
        end
      end
      
      # Results of redacting an image.
      class GooglePrivacyDlpV2beta2RedactImageResponse
        include Google::Apis::Core::Hashable
      
        # If an image was being inspected and the InspectConfig's include_quote was
        # set to true, then this field will include all text, if any, that was found
        # in the image.
        # Corresponds to the JSON property `extractedText`
        # @return [String]
        attr_accessor :extracted_text
      
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
          @redacted_image = args[:redacted_image] if args.key?(:redacted_image)
        end
      end
      
      # Message defining a custom regular expression.
      class GooglePrivacyDlpV2beta2Regex
        include Google::Apis::Core::Hashable
      
        # Pattern defining the regular expression.
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pattern = args[:pattern] if args.key?(:pattern)
        end
      end
      
      # Request to re-identify an item.
      class GooglePrivacyDlpV2beta2ReidentifyContentRequest
        include Google::Apis::Core::Hashable
      
        # Configuration description of the scanning process.
        # When used with redactContent only info_types and min_likelihood are currently
        # used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig]
        attr_accessor :inspect_config
      
        # Optional template to use. Any configuration directly specified in
        # `inspect_config` will override those set in the template. Singular fields
        # that are set in this request will replace their corresponding fields in the
        # template. Repeated fields are appended. Singular sub-messages and groups
        # are recursively merged.
        # Corresponds to the JSON property `inspectTemplateName`
        # @return [String]
        attr_accessor :inspect_template_name
      
        # Container structure for the content to inspect.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem]
        attr_accessor :item
      
        # The configuration that controls how the data will change.
        # Corresponds to the JSON property `reidentifyConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyConfig]
        attr_accessor :reidentify_config
      
        # Optional template to use. References an instance of `DeidentifyTemplate`.
        # Any configuration directly specified in `reidentify_config` or
        # `inspect_config` will override those set in the template. Singular fields
        # that are set in this request will replace their corresponding fields in the
        # template. Repeated fields are appended. Singular sub-messages and groups
        # are recursively merged.
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
          @reidentify_config = args[:reidentify_config] if args.key?(:reidentify_config)
          @reidentify_template_name = args[:reidentify_template_name] if args.key?(:reidentify_template_name)
        end
      end
      
      # Results of re-identifying a item.
      class GooglePrivacyDlpV2beta2ReidentifyContentResponse
        include Google::Apis::Core::Hashable
      
        # Container structure for the content to inspect.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem]
        attr_accessor :item
      
        # Overview of the modifications that occurred.
        # Corresponds to the JSON property `overview`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TransformationOverview]
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
      
      # Replace each input value with a given `Value`.
      class GooglePrivacyDlpV2beta2ReplaceValueConfig
        include Google::Apis::Core::Hashable
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `newValue`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value]
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
      class GooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GooglePrivacyDlpV2beta2RequestedOptions
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `jobConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectJobConfig]
        attr_accessor :job_config
      
        # The inspectTemplate contains a configuration (set of types of sensitive data
        # to be detected) to be used anywhere you otherwise would normally specify
        # InspectConfig.
        # Corresponds to the JSON property `snapshotInspectTemplate`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectTemplate]
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
      
      # 
      class GooglePrivacyDlpV2beta2Result
        include Google::Apis::Core::Hashable
      
        # Statistics of how many instances of each info type were found during
        # inspect job.
        # Corresponds to the JSON property `infoTypeStats`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeStatistics>]
        attr_accessor :info_type_stats
      
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
          @info_type_stats = args[:info_type_stats] if args.key?(:info_type_stats)
          @processed_bytes = args[:processed_bytes] if args.key?(:processed_bytes)
          @total_estimated_bytes = args[:total_estimated_bytes] if args.key?(:total_estimated_bytes)
        end
      end
      
      # Configuration for a risk analysis job.
      class GooglePrivacyDlpV2beta2RiskAnalysisJobConfig
        include Google::Apis::Core::Hashable
      
        # Actions to execute at the completion of the job. Are executed in the order
        # provided.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Action>]
        attr_accessor :actions
      
        # Privacy metric to compute for reidentification risk analysis.
        # Corresponds to the JSON property `privacyMetric`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrivacyMetric]
        attr_accessor :privacy_metric
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified  by its project_id, dataset_id, and table_name. Within a query
        # a table is often referenced with a string in the format of:
        # `<project_id>:<dataset_id>.<table_id>` or
        # `<project_id>.<dataset_id>.<table_id>`.
        # Corresponds to the JSON property `sourceTable`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable]
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
      
      # 
      class GooglePrivacyDlpV2beta2Row
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value>]
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
      # OutputStorageConfig. Compatible with: Inspect
      class GooglePrivacyDlpV2beta2SaveFindings
        include Google::Apis::Core::Hashable
      
        # Cloud repository for storing output.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2OutputStorageConfig]
        attr_accessor :output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_config = args[:output_config] if args.key?(:output_config)
        end
      end
      
      # Schedule for triggeredJobs.
      class GooglePrivacyDlpV2beta2Schedule
        include Google::Apis::Core::Hashable
      
        # With this option a job is started a regular periodic basis. For
        # example: every 10 minutes.
        # A scheduled start time will be skipped if the previous
        # execution has not ended when its scheduled time occurs.
        # This value must be set to a time duration greater than or equal
        # to 60 minutes and can be no longer than 60 days.
        # Corresponds to the JSON property `reccurrencePeriodDuration`
        # @return [String]
        attr_accessor :reccurrence_period_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reccurrence_period_duration = args[:reccurrence_period_duration] if args.key?(:reccurrence_period_duration)
        end
      end
      
      # Shared message indicating Cloud storage type.
      class GooglePrivacyDlpV2beta2StorageConfig
        include Google::Apis::Core::Hashable
      
        # Options defining BigQuery table and row identifiers.
        # Corresponds to the JSON property `bigQueryOptions`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryOptions]
        attr_accessor :big_query_options
      
        # Options defining a file or a set of files (path ending with *) within
        # a Google Cloud Storage bucket.
        # Corresponds to the JSON property `cloudStorageOptions`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CloudStorageOptions]
        attr_accessor :cloud_storage_options
      
        # Options defining a data set within Google Cloud Datastore.
        # Corresponds to the JSON property `datastoreOptions`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DatastoreOptions]
        attr_accessor :datastore_options
      
        # Configuration of the timespan of the items to include in scanning.
        # Currently only supported when inspecting Google Cloud Storage and BigQuery.
        # Corresponds to the JSON property `timespanConfig`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TimespanConfig]
        attr_accessor :timespan_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_options = args[:big_query_options] if args.key?(:big_query_options)
          @cloud_storage_options = args[:cloud_storage_options] if args.key?(:cloud_storage_options)
          @datastore_options = args[:datastore_options] if args.key?(:datastore_options)
          @timespan_config = args[:timespan_config] if args.key?(:timespan_config)
        end
      end
      
      # A collection that informs the user the number of times a particular
      # `TransformationResultCode` and error details occurred.
      class GooglePrivacyDlpV2beta2SummaryResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # 
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # A place for warnings or errors to show up if a transformation didn't
        # work as expected.
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
      
      # Message for detecting output from deidentification transformations
      # such as
      # [`CryptoReplaceFfxFpeConfig`](/dlp/docs/reference/rest/v2beta1/content/
      # deidentify#CryptoReplaceFfxFpeConfig).
      # These types of transformations are
      # those that perform pseudonymization, thereby producing a "surrogate" as
      # output. This should be used in conjunction with a field on the
      # transformation such as `surrogate_info_type`. This custom info type does
      # not support the use of `detection_rules`.
      class GooglePrivacyDlpV2beta2SurrogateType
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Structured content to inspect. Up to 50,000 `Value`s per request allowed.
      class GooglePrivacyDlpV2beta2Table
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId>]
        attr_accessor :headers
      
        # 
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Row>]
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
      
      # Location of a finding within a table.
      class GooglePrivacyDlpV2beta2TableLocation
        include Google::Apis::Core::Hashable
      
        # The zero-based index of the row where the finding is located.
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
      
      # A column with a semantic tag attached.
      class GooglePrivacyDlpV2beta2TaggedField
        include Google::Apis::Core::Hashable
      
        # A column can be tagged with a custom tag. In this case, the user must
        # indicate an auxiliary table that contains statistical information on
        # the possible values of this column (below).
        # Corresponds to the JSON property `customTag`
        # @return [String]
        attr_accessor :custom_tag
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId]
        attr_accessor :field
      
        # A generic empty message that you can re-use to avoid defining duplicated
        # empty messages in your APIs. A typical example is to use it as the request
        # or the response type of an API method. For instance:
        # service Foo `
        # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
        # `
        # The JSON representation for `Empty` is empty JSON object ````.
        # Corresponds to the JSON property `inferred`
        # @return [Google::Apis::DlpV2beta2::GoogleProtobufEmpty]
        attr_accessor :inferred
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType]
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
      
      # For use with `Date`, `Timestamp`, and `TimeOfDay`, extract or preserve a
      # portion of the value.
      class GooglePrivacyDlpV2beta2TimePartConfig
        include Google::Apis::Core::Hashable
      
        # 
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
      
      # Configuration of the timespan of the items to include in scanning.
      # Currently only supported when inspecting Google Cloud Storage and BigQuery.
      class GooglePrivacyDlpV2beta2TimespanConfig
        include Google::Apis::Core::Hashable
      
        # When the job is started by a JobTrigger we will automatically figure out
        # a valid start_time to avoid scanning files that have not been modified
        # since the last time the JobTrigger executed. This will be based on the
        # time of the execution of the last run of the JobTrigger.
        # Corresponds to the JSON property `enableAutoPopulationOfTimespanConfig`
        # @return [Boolean]
        attr_accessor :enable_auto_population_of_timespan_config
        alias_method :enable_auto_population_of_timespan_config?, :enable_auto_population_of_timespan_config
      
        # Exclude files newer than this value.
        # If set to zero, no upper time limit is applied.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Exclude files older than this value.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_auto_population_of_timespan_config = args[:enable_auto_population_of_timespan_config] if args.key?(:enable_auto_population_of_timespan_config)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Overview of the modifications that occurred.
      class GooglePrivacyDlpV2beta2TransformationOverview
        include Google::Apis::Core::Hashable
      
        # Transformations applied to the dataset.
        # Corresponds to the JSON property `transformationSummaries`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TransformationSummary>]
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
      
      # Summary of a single tranformation.
      # Only one of 'transformation', 'field_transformation', or 'record_suppress'
      # will be set.
      class GooglePrivacyDlpV2beta2TransformationSummary
        include Google::Apis::Core::Hashable
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId]
        attr_accessor :field
      
        # The field transformation that was applied.
        # If multiple field transformations are requested for a single field,
        # this list will contain all of them; otherwise, only one is supplied.
        # Corresponds to the JSON property `fieldTransformations`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldTransformation>]
        attr_accessor :field_transformations
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType]
        attr_accessor :info_type
      
        # Configuration to suppress records whose suppression conditions evaluate to
        # true.
        # Corresponds to the JSON property `recordSuppress`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordSuppression]
        attr_accessor :record_suppress
      
        # 
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2SummaryResult>]
        attr_accessor :results
      
        # A rule for transforming a value.
        # Corresponds to the JSON property `transformation`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrimitiveTransformation]
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
      
      # Use this to have a random data crypto key generated.
      # It will be discarded after the request finishes.
      class GooglePrivacyDlpV2beta2TransientCryptoKey
        include Google::Apis::Core::Hashable
      
        # Name of the key. [required]
        # This is an arbitrary string used to differentiate different keys.
        # A unique key is generated per name: two separate `TransientCryptoKey`
        # protos share the same generated key if their names are the same.
        # When the data crypto key is generated, this name is not used in any way
        # (repeating the api call will result in a different key being generated).
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
      class GooglePrivacyDlpV2beta2Trigger
        include Google::Apis::Core::Hashable
      
        # Schedule for triggeredJobs.
        # Corresponds to the JSON property `schedule`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Schedule]
        attr_accessor :schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schedule = args[:schedule] if args.key?(:schedule)
        end
      end
      
      # Using raw keys is prone to security risks due to accidentally
      # leaking the key. Choose another type of key if possible.
      class GooglePrivacyDlpV2beta2UnwrappedCryptoKey
        include Google::Apis::Core::Hashable
      
        # The AES 128/192/256 bit key. [required]
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
      
      # Request message for UpdateDeidentifyTemplate.
      class GooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest
        include Google::Apis::Core::Hashable
      
        # The DeidentifyTemplates contains instructions on how to deidentify content.
        # Corresponds to the JSON property `deidentifyTemplate`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyTemplate]
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
      
      # Request message for UpdateInspectTemplate.
      class GooglePrivacyDlpV2beta2UpdateInspectTemplateRequest
        include Google::Apis::Core::Hashable
      
        # The inspectTemplate contains a configuration (set of types of sensitive data
        # to be detected) to be used anywhere you otherwise would normally specify
        # InspectConfig.
        # Corresponds to the JSON property `inspectTemplate`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectTemplate]
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
      class GooglePrivacyDlpV2beta2UpdateJobTriggerRequest
        include Google::Apis::Core::Hashable
      
        # Contains a configuration to make dlp api calls on a repeating basis.
        # Corresponds to the JSON property `jobTrigger`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2JobTrigger]
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
      
      # Set of primitive values supported by the system.
      # Note that for the purposes of inspection or transformation, the number
      # of bytes considered to comprise a 'Value' is based on its representation
      # as a UTF-8 encoded string. For example, if 'integer_value' is set to
      # 123456789, the number of bytes would be counted as 9, even though an
      # int64 only holds up to 8 bytes of data.
      class GooglePrivacyDlpV2beta2Value
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::DlpV2beta2::GoogleTypeDate]
        attr_accessor :date_value
      
        # 
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # 
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # 
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # Represents a time of day. The date and time zone are either not significant
        # or are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `timeValue`
        # @return [Google::Apis::DlpV2beta2::GoogleTypeTimeOfDay]
        attr_accessor :time_value
      
        # 
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
          @float_value = args[:float_value] if args.key?(:float_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @time_value = args[:time_value] if args.key?(:time_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
      
      # A value of a field, including its frequency.
      class GooglePrivacyDlpV2beta2ValueFrequency
        include Google::Apis::Core::Hashable
      
        # How many times the value is contained in the field.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Set of primitive values supported by the system.
        # Note that for the purposes of inspection or transformation, the number
        # of bytes considered to comprise a 'Value' is based on its representation
        # as a UTF-8 encoded string. For example, if 'integer_value' is set to
        # 123456789, the number of bytes would be counted as 9, even though an
        # int64 only holds up to 8 bytes of data.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value]
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
      
      # Message defining a list of words or phrases to search for in the data.
      class GooglePrivacyDlpV2beta2WordList
        include Google::Apis::Core::Hashable
      
        # Words or phrases defining the dictionary. The dictionary must contain
        # at least one phrase and every phrase must contain at least 2 characters
        # that are letters or digits. [required]
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
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
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
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` that can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
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
      
      # Represents a whole calendar date, e.g. date of birth. The time of day and
      # time zone are either specified elsewhere or are not significant. The date
      # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
      # represent a year and month where the day is not significant, e.g. credit card
      # expiration date. The year may be 0 to represent a month and day independent
      # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
      # and `google.protobuf.Timestamp`.
      class GoogleTypeDate
        include Google::Apis::Core::Hashable
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0
        # if specifying a year/month where the day is not significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of year. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of date. Must be from 1 to 9999, or 0 if specifying a date without
        # a year.
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
      
      # Represents a time of day. The date and time zone are either not significant
      # or are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class GoogleTypeTimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose
        # to allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
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
