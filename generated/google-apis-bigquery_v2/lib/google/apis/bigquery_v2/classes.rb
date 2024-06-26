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
    module BigqueryV2
      
      # Aggregate metrics for classification/classifier models. For multi-class models,
      # the metrics are either macro-averaged or micro-averaged. When macro-averaged,
      # the metrics are calculated for each label and then an unweighted average is
      # taken of those values. When micro-averaged, the metric is calculated globally
      # by counting the total number of correctly predicted rows.
      class AggregateClassificationMetrics
        include Google::Apis::Core::Hashable
      
        # Accuracy is the fraction of predictions given the correct label. For
        # multiclass this is a micro-averaged metric.
        # Corresponds to the JSON property `accuracy`
        # @return [Float]
        attr_accessor :accuracy
      
        # The F1 score is an average of recall and precision. For multiclass this is a
        # macro-averaged metric.
        # Corresponds to the JSON property `f1Score`
        # @return [Float]
        attr_accessor :f1_score
      
        # Logarithmic Loss. For multiclass this is a macro-averaged metric.
        # Corresponds to the JSON property `logLoss`
        # @return [Float]
        attr_accessor :log_loss
      
        # Precision is the fraction of actual positive predictions that had positive
        # actual labels. For multiclass this is a macro-averaged metric treating each
        # class as a binary classifier.
        # Corresponds to the JSON property `precision`
        # @return [Float]
        attr_accessor :precision
      
        # Recall is the fraction of actual positive labels that were given a positive
        # prediction. For multiclass this is a macro-averaged metric.
        # Corresponds to the JSON property `recall`
        # @return [Float]
        attr_accessor :recall
      
        # Area Under a ROC Curve. For multiclass this is a macro-averaged metric.
        # Corresponds to the JSON property `rocAuc`
        # @return [Float]
        attr_accessor :roc_auc
      
        # Threshold at which the metrics are computed. For binary classification models
        # this is the positive class threshold. For multi-class classfication models
        # this is the confidence threshold.
        # Corresponds to the JSON property `threshold`
        # @return [Float]
        attr_accessor :threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accuracy = args[:accuracy] if args.key?(:accuracy)
          @f1_score = args[:f1_score] if args.key?(:f1_score)
          @log_loss = args[:log_loss] if args.key?(:log_loss)
          @precision = args[:precision] if args.key?(:precision)
          @recall = args[:recall] if args.key?(:recall)
          @roc_auc = args[:roc_auc] if args.key?(:roc_auc)
          @threshold = args[:threshold] if args.key?(:threshold)
        end
      end
      
      # Represents privacy policy associated with "aggregation threshold" method.
      class AggregationThresholdPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The privacy unit column(s) associated with this policy. For now,
        # only one column per data source object (table, view) is allowed as a privacy
        # unit column. Representing as a repeated field in metadata for extensibility to
        # multiple columns in future. Duplicates and Repeated struct fields are not
        # allowed. For nested fields, use dot notation ("outer.inner")
        # Corresponds to the JSON property `privacyUnitColumns`
        # @return [Array<String>]
        attr_accessor :privacy_unit_columns
      
        # Optional. The threshold for the "aggregation threshold" policy.
        # Corresponds to the JSON property `threshold`
        # @return [Fixnum]
        attr_accessor :threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @privacy_unit_columns = args[:privacy_unit_columns] if args.key?(:privacy_unit_columns)
          @threshold = args[:threshold] if args.key?(:threshold)
        end
      end
      
      # Input/output argument of a function or a stored procedure.
      class Argument
        include Google::Apis::Core::Hashable
      
        # Optional. Defaults to FIXED_TYPE.
        # Corresponds to the JSON property `argumentKind`
        # @return [String]
        attr_accessor :argument_kind
      
        # The data type of a variable such as a function argument. Examples include: *
        # INT64: ``"typeKind": "INT64"`` * ARRAY: ` "typeKind": "ARRAY", "
        # arrayElementType": `"typeKind": "STRING"` ` * STRUCT>: ` "typeKind": "STRUCT",
        # "structType": ` "fields": [ ` "name": "x", "type": `"typeKind": "STRING"` `, `
        # "name": "y", "type": ` "typeKind": "ARRAY", "arrayElementType": `"typeKind": "
        # DATE"` ` ` ] ` `
        # Corresponds to the JSON property `dataType`
        # @return [Google::Apis::BigqueryV2::StandardSqlDataType]
        attr_accessor :data_type
      
        # Optional. Whether the argument is an aggregate function parameter. Must be
        # Unset for routine types other than AGGREGATE_FUNCTION. For AGGREGATE_FUNCTION,
        # if set to false, it is equivalent to adding "NOT AGGREGATE" clause in DDL;
        # Otherwise, it is equivalent to omitting "NOT AGGREGATE" clause in DDL.
        # Corresponds to the JSON property `isAggregate`
        # @return [Boolean]
        attr_accessor :is_aggregate
        alias_method :is_aggregate?, :is_aggregate
      
        # Optional. Specifies whether the argument is input or output. Can be set for
        # procedures only.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Optional. The name of this argument. Can be absent for function return
        # argument.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @argument_kind = args[:argument_kind] if args.key?(:argument_kind)
          @data_type = args[:data_type] if args.key?(:data_type)
          @is_aggregate = args[:is_aggregate] if args.key?(:is_aggregate)
          @mode = args[:mode] if args.key?(:mode)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Arima coefficients.
      class ArimaCoefficients
        include Google::Apis::Core::Hashable
      
        # Auto-regressive coefficients, an array of double.
        # Corresponds to the JSON property `autoRegressiveCoefficients`
        # @return [Array<Float>]
        attr_accessor :auto_regressive_coefficients
      
        # Intercept coefficient, just a double not an array.
        # Corresponds to the JSON property `interceptCoefficient`
        # @return [Float]
        attr_accessor :intercept_coefficient
      
        # Moving-average coefficients, an array of double.
        # Corresponds to the JSON property `movingAverageCoefficients`
        # @return [Array<Float>]
        attr_accessor :moving_average_coefficients
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_regressive_coefficients = args[:auto_regressive_coefficients] if args.key?(:auto_regressive_coefficients)
          @intercept_coefficient = args[:intercept_coefficient] if args.key?(:intercept_coefficient)
          @moving_average_coefficients = args[:moving_average_coefficients] if args.key?(:moving_average_coefficients)
        end
      end
      
      # ARIMA model fitting metrics.
      class ArimaFittingMetrics
        include Google::Apis::Core::Hashable
      
        # AIC.
        # Corresponds to the JSON property `aic`
        # @return [Float]
        attr_accessor :aic
      
        # Log-likelihood.
        # Corresponds to the JSON property `logLikelihood`
        # @return [Float]
        attr_accessor :log_likelihood
      
        # Variance.
        # Corresponds to the JSON property `variance`
        # @return [Float]
        attr_accessor :variance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aic = args[:aic] if args.key?(:aic)
          @log_likelihood = args[:log_likelihood] if args.key?(:log_likelihood)
          @variance = args[:variance] if args.key?(:variance)
        end
      end
      
      # Model evaluation metrics for ARIMA forecasting models.
      class ArimaForecastingMetrics
        include Google::Apis::Core::Hashable
      
        # Arima model fitting metrics.
        # Corresponds to the JSON property `arimaFittingMetrics`
        # @return [Array<Google::Apis::BigqueryV2::ArimaFittingMetrics>]
        attr_accessor :arima_fitting_metrics
      
        # Repeated as there can be many metric sets (one for each model) in auto-arima
        # and the large-scale case.
        # Corresponds to the JSON property `arimaSingleModelForecastingMetrics`
        # @return [Array<Google::Apis::BigqueryV2::ArimaSingleModelForecastingMetrics>]
        attr_accessor :arima_single_model_forecasting_metrics
      
        # Whether Arima model fitted with drift or not. It is always false when d is not
        # 1.
        # Corresponds to the JSON property `hasDrift`
        # @return [Array<Boolean>]
        attr_accessor :has_drift
      
        # Non-seasonal order.
        # Corresponds to the JSON property `nonSeasonalOrder`
        # @return [Array<Google::Apis::BigqueryV2::ArimaOrder>]
        attr_accessor :non_seasonal_order
      
        # Seasonal periods. Repeated because multiple periods are supported for one time
        # series.
        # Corresponds to the JSON property `seasonalPeriods`
        # @return [Array<String>]
        attr_accessor :seasonal_periods
      
        # Id to differentiate different time series for the large-scale case.
        # Corresponds to the JSON property `timeSeriesId`
        # @return [Array<String>]
        attr_accessor :time_series_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arima_fitting_metrics = args[:arima_fitting_metrics] if args.key?(:arima_fitting_metrics)
          @arima_single_model_forecasting_metrics = args[:arima_single_model_forecasting_metrics] if args.key?(:arima_single_model_forecasting_metrics)
          @has_drift = args[:has_drift] if args.key?(:has_drift)
          @non_seasonal_order = args[:non_seasonal_order] if args.key?(:non_seasonal_order)
          @seasonal_periods = args[:seasonal_periods] if args.key?(:seasonal_periods)
          @time_series_id = args[:time_series_id] if args.key?(:time_series_id)
        end
      end
      
      # Arima model information.
      class ArimaModelInfo
        include Google::Apis::Core::Hashable
      
        # Arima coefficients.
        # Corresponds to the JSON property `arimaCoefficients`
        # @return [Google::Apis::BigqueryV2::ArimaCoefficients]
        attr_accessor :arima_coefficients
      
        # ARIMA model fitting metrics.
        # Corresponds to the JSON property `arimaFittingMetrics`
        # @return [Google::Apis::BigqueryV2::ArimaFittingMetrics]
        attr_accessor :arima_fitting_metrics
      
        # Whether Arima model fitted with drift or not. It is always false when d is not
        # 1.
        # Corresponds to the JSON property `hasDrift`
        # @return [Boolean]
        attr_accessor :has_drift
        alias_method :has_drift?, :has_drift
      
        # If true, holiday_effect is a part of time series decomposition result.
        # Corresponds to the JSON property `hasHolidayEffect`
        # @return [Boolean]
        attr_accessor :has_holiday_effect
        alias_method :has_holiday_effect?, :has_holiday_effect
      
        # If true, spikes_and_dips is a part of time series decomposition result.
        # Corresponds to the JSON property `hasSpikesAndDips`
        # @return [Boolean]
        attr_accessor :has_spikes_and_dips
        alias_method :has_spikes_and_dips?, :has_spikes_and_dips
      
        # If true, step_changes is a part of time series decomposition result.
        # Corresponds to the JSON property `hasStepChanges`
        # @return [Boolean]
        attr_accessor :has_step_changes
        alias_method :has_step_changes?, :has_step_changes
      
        # Arima order, can be used for both non-seasonal and seasonal parts.
        # Corresponds to the JSON property `nonSeasonalOrder`
        # @return [Google::Apis::BigqueryV2::ArimaOrder]
        attr_accessor :non_seasonal_order
      
        # Seasonal periods. Repeated because multiple periods are supported for one time
        # series.
        # Corresponds to the JSON property `seasonalPeriods`
        # @return [Array<String>]
        attr_accessor :seasonal_periods
      
        # The time_series_id value for this time series. It will be one of the unique
        # values from the time_series_id_column specified during ARIMA model training.
        # Only present when time_series_id_column training option was used.
        # Corresponds to the JSON property `timeSeriesId`
        # @return [String]
        attr_accessor :time_series_id
      
        # The tuple of time_series_ids identifying this time series. It will be one of
        # the unique tuples of values present in the time_series_id_columns specified
        # during ARIMA model training. Only present when time_series_id_columns training
        # option was used and the order of values here are same as the order of
        # time_series_id_columns.
        # Corresponds to the JSON property `timeSeriesIds`
        # @return [Array<String>]
        attr_accessor :time_series_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arima_coefficients = args[:arima_coefficients] if args.key?(:arima_coefficients)
          @arima_fitting_metrics = args[:arima_fitting_metrics] if args.key?(:arima_fitting_metrics)
          @has_drift = args[:has_drift] if args.key?(:has_drift)
          @has_holiday_effect = args[:has_holiday_effect] if args.key?(:has_holiday_effect)
          @has_spikes_and_dips = args[:has_spikes_and_dips] if args.key?(:has_spikes_and_dips)
          @has_step_changes = args[:has_step_changes] if args.key?(:has_step_changes)
          @non_seasonal_order = args[:non_seasonal_order] if args.key?(:non_seasonal_order)
          @seasonal_periods = args[:seasonal_periods] if args.key?(:seasonal_periods)
          @time_series_id = args[:time_series_id] if args.key?(:time_series_id)
          @time_series_ids = args[:time_series_ids] if args.key?(:time_series_ids)
        end
      end
      
      # Arima order, can be used for both non-seasonal and seasonal parts.
      class ArimaOrder
        include Google::Apis::Core::Hashable
      
        # Order of the differencing part.
        # Corresponds to the JSON property `d`
        # @return [Fixnum]
        attr_accessor :d
      
        # Order of the autoregressive part.
        # Corresponds to the JSON property `p`
        # @return [Fixnum]
        attr_accessor :p
      
        # Order of the moving-average part.
        # Corresponds to the JSON property `q`
        # @return [Fixnum]
        attr_accessor :q
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @d = args[:d] if args.key?(:d)
          @p = args[:p] if args.key?(:p)
          @q = args[:q] if args.key?(:q)
        end
      end
      
      # (Auto-)arima fitting result. Wrap everything in ArimaResult for easier
      # refactoring if we want to use model-specific iteration results.
      class ArimaResult
        include Google::Apis::Core::Hashable
      
        # This message is repeated because there are multiple arima models fitted in
        # auto-arima. For non-auto-arima model, its size is one.
        # Corresponds to the JSON property `arimaModelInfo`
        # @return [Array<Google::Apis::BigqueryV2::ArimaModelInfo>]
        attr_accessor :arima_model_info
      
        # Seasonal periods. Repeated because multiple periods are supported for one time
        # series.
        # Corresponds to the JSON property `seasonalPeriods`
        # @return [Array<String>]
        attr_accessor :seasonal_periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arima_model_info = args[:arima_model_info] if args.key?(:arima_model_info)
          @seasonal_periods = args[:seasonal_periods] if args.key?(:seasonal_periods)
        end
      end
      
      # Model evaluation metrics for a single ARIMA forecasting model.
      class ArimaSingleModelForecastingMetrics
        include Google::Apis::Core::Hashable
      
        # ARIMA model fitting metrics.
        # Corresponds to the JSON property `arimaFittingMetrics`
        # @return [Google::Apis::BigqueryV2::ArimaFittingMetrics]
        attr_accessor :arima_fitting_metrics
      
        # Is arima model fitted with drift or not. It is always false when d is not 1.
        # Corresponds to the JSON property `hasDrift`
        # @return [Boolean]
        attr_accessor :has_drift
        alias_method :has_drift?, :has_drift
      
        # If true, holiday_effect is a part of time series decomposition result.
        # Corresponds to the JSON property `hasHolidayEffect`
        # @return [Boolean]
        attr_accessor :has_holiday_effect
        alias_method :has_holiday_effect?, :has_holiday_effect
      
        # If true, spikes_and_dips is a part of time series decomposition result.
        # Corresponds to the JSON property `hasSpikesAndDips`
        # @return [Boolean]
        attr_accessor :has_spikes_and_dips
        alias_method :has_spikes_and_dips?, :has_spikes_and_dips
      
        # If true, step_changes is a part of time series decomposition result.
        # Corresponds to the JSON property `hasStepChanges`
        # @return [Boolean]
        attr_accessor :has_step_changes
        alias_method :has_step_changes?, :has_step_changes
      
        # Arima order, can be used for both non-seasonal and seasonal parts.
        # Corresponds to the JSON property `nonSeasonalOrder`
        # @return [Google::Apis::BigqueryV2::ArimaOrder]
        attr_accessor :non_seasonal_order
      
        # Seasonal periods. Repeated because multiple periods are supported for one time
        # series.
        # Corresponds to the JSON property `seasonalPeriods`
        # @return [Array<String>]
        attr_accessor :seasonal_periods
      
        # The time_series_id value for this time series. It will be one of the unique
        # values from the time_series_id_column specified during ARIMA model training.
        # Only present when time_series_id_column training option was used.
        # Corresponds to the JSON property `timeSeriesId`
        # @return [String]
        attr_accessor :time_series_id
      
        # The tuple of time_series_ids identifying this time series. It will be one of
        # the unique tuples of values present in the time_series_id_columns specified
        # during ARIMA model training. Only present when time_series_id_columns training
        # option was used and the order of values here are same as the order of
        # time_series_id_columns.
        # Corresponds to the JSON property `timeSeriesIds`
        # @return [Array<String>]
        attr_accessor :time_series_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arima_fitting_metrics = args[:arima_fitting_metrics] if args.key?(:arima_fitting_metrics)
          @has_drift = args[:has_drift] if args.key?(:has_drift)
          @has_holiday_effect = args[:has_holiday_effect] if args.key?(:has_holiday_effect)
          @has_spikes_and_dips = args[:has_spikes_and_dips] if args.key?(:has_spikes_and_dips)
          @has_step_changes = args[:has_step_changes] if args.key?(:has_step_changes)
          @non_seasonal_order = args[:non_seasonal_order] if args.key?(:non_seasonal_order)
          @seasonal_periods = args[:seasonal_periods] if args.key?(:seasonal_periods)
          @time_series_id = args[:time_series_id] if args.key?(:time_series_id)
          @time_series_ids = args[:time_series_ids] if args.key?(:time_series_ids)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::BigqueryV2::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Options for external data sources.
      class AvroOptions
        include Google::Apis::Core::Hashable
      
        # Optional. If sourceFormat is set to "AVRO", indicates whether to interpret
        # logical types as the corresponding BigQuery data type (for example, TIMESTAMP),
        # instead of using the raw type (for example, INTEGER).
        # Corresponds to the JSON property `useAvroLogicalTypes`
        # @return [Boolean]
        attr_accessor :use_avro_logical_types
        alias_method :use_avro_logical_types?, :use_avro_logical_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @use_avro_logical_types = args[:use_avro_logical_types] if args.key?(:use_avro_logical_types)
        end
      end
      
      # Reason why BI Engine didn't accelerate the query (or sub-query).
      class BiEngineReason
        include Google::Apis::Core::Hashable
      
        # Output only. High-level BI Engine reason for partial or disabled acceleration
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Output only. Free form human-readable reason for partial or disabled
        # acceleration.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Statistics for a BI Engine specific query. Populated as part of JobStatistics2
      class BiEngineStatistics
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies which mode of BI Engine acceleration was performed (if
        # any).
        # Corresponds to the JSON property `accelerationMode`
        # @return [String]
        attr_accessor :acceleration_mode
      
        # Output only. Specifies which mode of BI Engine acceleration was performed (if
        # any).
        # Corresponds to the JSON property `biEngineMode`
        # @return [String]
        attr_accessor :bi_engine_mode
      
        # In case of DISABLED or PARTIAL bi_engine_mode, these contain the explanatory
        # reasons as to why BI Engine could not accelerate. In case the full query was
        # accelerated, this field is not populated.
        # Corresponds to the JSON property `biEngineReasons`
        # @return [Array<Google::Apis::BigqueryV2::BiEngineReason>]
        attr_accessor :bi_engine_reasons
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acceleration_mode = args[:acceleration_mode] if args.key?(:acceleration_mode)
          @bi_engine_mode = args[:bi_engine_mode] if args.key?(:bi_engine_mode)
          @bi_engine_reasons = args[:bi_engine_reasons] if args.key?(:bi_engine_reasons)
        end
      end
      
      # Configuration for BigLake managed tables.
      class BigLakeConfiguration
        include Google::Apis::Core::Hashable
      
        # Required. The connection specifying the credentials to be used to read and
        # write to external storage, such as Cloud Storage. The connection_id can have
        # the form "<project\_id>.<location\_id>.<connection\_id>" or "projects/<project\
        # _id>/locations/<location\_id>/connections/<connection\_id>".
        # Corresponds to the JSON property `connectionId`
        # @return [String]
        attr_accessor :connection_id
      
        # Required. The file format the table data is stored in.
        # Corresponds to the JSON property `fileFormat`
        # @return [String]
        attr_accessor :file_format
      
        # Required. The fully qualified location prefix of the external folder where
        # table data is stored. The '*' wildcard character is not allowed. The URI
        # should be in the format "gs://bucket/path_to_table/"
        # Corresponds to the JSON property `storageUri`
        # @return [String]
        attr_accessor :storage_uri
      
        # Required. The table format the metadata only snapshots are stored in.
        # Corresponds to the JSON property `tableFormat`
        # @return [String]
        attr_accessor :table_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_id = args[:connection_id] if args.key?(:connection_id)
          @file_format = args[:file_format] if args.key?(:file_format)
          @storage_uri = args[:storage_uri] if args.key?(:storage_uri)
          @table_format = args[:table_format] if args.key?(:table_format)
        end
      end
      
      # 
      class BigQueryModelTraining
        include Google::Apis::Core::Hashable
      
        # Deprecated.
        # Corresponds to the JSON property `currentIteration`
        # @return [Fixnum]
        attr_accessor :current_iteration
      
        # Deprecated.
        # Corresponds to the JSON property `expectedTotalIterations`
        # @return [Fixnum]
        attr_accessor :expected_total_iterations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_iteration = args[:current_iteration] if args.key?(:current_iteration)
          @expected_total_iterations = args[:expected_total_iterations] if args.key?(:expected_total_iterations)
        end
      end
      
      # Information related to a Bigtable column.
      class BigtableColumn
        include Google::Apis::Core::Hashable
      
        # Optional. The encoding of the values when the type is not STRING. Acceptable
        # encoding values are: TEXT - indicates values are alphanumeric text strings.
        # BINARY - indicates values are encoded using HBase Bytes.toBytes family of
        # functions. 'encoding' can also be set at the column family level. However, the
        # setting at this level takes precedence if 'encoding' is set at both levels.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Optional. If the qualifier is not a valid BigQuery field identifier i.e. does
        # not match a-zA-Z*, a valid identifier must be provided as the column field
        # name and is used as field name in queries.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # Optional. If this is set, only the latest version of value in this column are
        # exposed. 'onlyReadLatest' can also be set at the column family level. However,
        # the setting at this level takes precedence if 'onlyReadLatest' is set at both
        # levels.
        # Corresponds to the JSON property `onlyReadLatest`
        # @return [Boolean]
        attr_accessor :only_read_latest
        alias_method :only_read_latest?, :only_read_latest
      
        # [Required] Qualifier of the column. Columns in the parent column family that
        # has this exact qualifier are exposed as . field. If the qualifier is valid UTF-
        # 8 string, it can be specified in the qualifier_string field. Otherwise, a base-
        # 64 encoded value must be set to qualifier_encoded. The column field name is
        # the same as the column qualifier. However, if the qualifier is not a valid
        # BigQuery field identifier i.e. does not match a-zA-Z*, a valid identifier must
        # be provided as field_name.
        # Corresponds to the JSON property `qualifierEncoded`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :qualifier_encoded
      
        # Qualifier string.
        # Corresponds to the JSON property `qualifierString`
        # @return [String]
        attr_accessor :qualifier_string
      
        # Optional. The type to convert the value in cells of this column. The values
        # are expected to be encoded using HBase Bytes.toBytes function when using the
        # BINARY encoding value. Following BigQuery types are allowed (case-sensitive): *
        # BYTES * STRING * INTEGER * FLOAT * BOOLEAN * JSON Default type is BYTES. '
        # type' can also be set at the column family level. However, the setting at this
        # level takes precedence if 'type' is set at both levels.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding = args[:encoding] if args.key?(:encoding)
          @field_name = args[:field_name] if args.key?(:field_name)
          @only_read_latest = args[:only_read_latest] if args.key?(:only_read_latest)
          @qualifier_encoded = args[:qualifier_encoded] if args.key?(:qualifier_encoded)
          @qualifier_string = args[:qualifier_string] if args.key?(:qualifier_string)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Information related to a Bigtable column family.
      class BigtableColumnFamily
        include Google::Apis::Core::Hashable
      
        # Optional. Lists of columns that should be exposed as individual fields as
        # opposed to a list of (column name, value) pairs. All columns whose qualifier
        # matches a qualifier in this list can be accessed as .. Other columns can be
        # accessed as a list through .Column field.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::BigqueryV2::BigtableColumn>]
        attr_accessor :columns
      
        # Optional. The encoding of the values when the type is not STRING. Acceptable
        # encoding values are: TEXT - indicates values are alphanumeric text strings.
        # BINARY - indicates values are encoded using HBase Bytes.toBytes family of
        # functions. This can be overridden for a specific column by listing that column
        # in 'columns' and specifying an encoding for it.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Identifier of the column family.
        # Corresponds to the JSON property `familyId`
        # @return [String]
        attr_accessor :family_id
      
        # Optional. If this is set only the latest version of value are exposed for all
        # columns in this column family. This can be overridden for a specific column by
        # listing that column in 'columns' and specifying a different setting for that
        # column.
        # Corresponds to the JSON property `onlyReadLatest`
        # @return [Boolean]
        attr_accessor :only_read_latest
        alias_method :only_read_latest?, :only_read_latest
      
        # Optional. The type to convert the value in cells of this column family. The
        # values are expected to be encoded using HBase Bytes.toBytes function when
        # using the BINARY encoding value. Following BigQuery types are allowed (case-
        # sensitive): * BYTES * STRING * INTEGER * FLOAT * BOOLEAN * JSON Default type
        # is BYTES. This can be overridden for a specific column by listing that column
        # in 'columns' and specifying a type for it.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @encoding = args[:encoding] if args.key?(:encoding)
          @family_id = args[:family_id] if args.key?(:family_id)
          @only_read_latest = args[:only_read_latest] if args.key?(:only_read_latest)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Options specific to Google Cloud Bigtable data sources.
      class BigtableOptions
        include Google::Apis::Core::Hashable
      
        # Optional. List of column families to expose in the table schema along with
        # their types. This list restricts the column families that can be referenced in
        # queries and specifies their value types. You can use this list to do type
        # conversions - see the 'type' field for more details. If you leave this list
        # empty, all column families are present in the table schema and their values
        # are read as BYTES. During a query only the column families referenced in that
        # query are read from Bigtable.
        # Corresponds to the JSON property `columnFamilies`
        # @return [Array<Google::Apis::BigqueryV2::BigtableColumnFamily>]
        attr_accessor :column_families
      
        # Optional. If field is true, then the column families that are not specified in
        # columnFamilies list are not exposed in the table schema. Otherwise, they are
        # read with BYTES type values. The default value is false.
        # Corresponds to the JSON property `ignoreUnspecifiedColumnFamilies`
        # @return [Boolean]
        attr_accessor :ignore_unspecified_column_families
        alias_method :ignore_unspecified_column_families?, :ignore_unspecified_column_families
      
        # Optional. If field is true, then each column family will be read as a single
        # JSON column. Otherwise they are read as a repeated cell structure containing
        # timestamp/value tuples. The default value is false.
        # Corresponds to the JSON property `outputColumnFamiliesAsJson`
        # @return [Boolean]
        attr_accessor :output_column_families_as_json
        alias_method :output_column_families_as_json?, :output_column_families_as_json
      
        # Optional. If field is true, then the rowkey column families will be read and
        # converted to string. Otherwise they are read with BYTES type values and users
        # need to manually cast them with CAST if necessary. The default value is false.
        # Corresponds to the JSON property `readRowkeyAsString`
        # @return [Boolean]
        attr_accessor :read_rowkey_as_string
        alias_method :read_rowkey_as_string?, :read_rowkey_as_string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_families = args[:column_families] if args.key?(:column_families)
          @ignore_unspecified_column_families = args[:ignore_unspecified_column_families] if args.key?(:ignore_unspecified_column_families)
          @output_column_families_as_json = args[:output_column_families_as_json] if args.key?(:output_column_families_as_json)
          @read_rowkey_as_string = args[:read_rowkey_as_string] if args.key?(:read_rowkey_as_string)
        end
      end
      
      # Evaluation metrics for binary classification/classifier models.
      class BinaryClassificationMetrics
        include Google::Apis::Core::Hashable
      
        # Aggregate metrics for classification/classifier models. For multi-class models,
        # the metrics are either macro-averaged or micro-averaged. When macro-averaged,
        # the metrics are calculated for each label and then an unweighted average is
        # taken of those values. When micro-averaged, the metric is calculated globally
        # by counting the total number of correctly predicted rows.
        # Corresponds to the JSON property `aggregateClassificationMetrics`
        # @return [Google::Apis::BigqueryV2::AggregateClassificationMetrics]
        attr_accessor :aggregate_classification_metrics
      
        # Binary confusion matrix at multiple thresholds.
        # Corresponds to the JSON property `binaryConfusionMatrixList`
        # @return [Array<Google::Apis::BigqueryV2::BinaryConfusionMatrix>]
        attr_accessor :binary_confusion_matrix_list
      
        # Label representing the negative class.
        # Corresponds to the JSON property `negativeLabel`
        # @return [String]
        attr_accessor :negative_label
      
        # Label representing the positive class.
        # Corresponds to the JSON property `positiveLabel`
        # @return [String]
        attr_accessor :positive_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregate_classification_metrics = args[:aggregate_classification_metrics] if args.key?(:aggregate_classification_metrics)
          @binary_confusion_matrix_list = args[:binary_confusion_matrix_list] if args.key?(:binary_confusion_matrix_list)
          @negative_label = args[:negative_label] if args.key?(:negative_label)
          @positive_label = args[:positive_label] if args.key?(:positive_label)
        end
      end
      
      # Confusion matrix for binary classification models.
      class BinaryConfusionMatrix
        include Google::Apis::Core::Hashable
      
        # The fraction of predictions given the correct label.
        # Corresponds to the JSON property `accuracy`
        # @return [Float]
        attr_accessor :accuracy
      
        # The equally weighted average of recall and precision.
        # Corresponds to the JSON property `f1Score`
        # @return [Float]
        attr_accessor :f1_score
      
        # Number of false samples predicted as false.
        # Corresponds to the JSON property `falseNegatives`
        # @return [Fixnum]
        attr_accessor :false_negatives
      
        # Number of false samples predicted as true.
        # Corresponds to the JSON property `falsePositives`
        # @return [Fixnum]
        attr_accessor :false_positives
      
        # Threshold value used when computing each of the following metric.
        # Corresponds to the JSON property `positiveClassThreshold`
        # @return [Float]
        attr_accessor :positive_class_threshold
      
        # The fraction of actual positive predictions that had positive actual labels.
        # Corresponds to the JSON property `precision`
        # @return [Float]
        attr_accessor :precision
      
        # The fraction of actual positive labels that were given a positive prediction.
        # Corresponds to the JSON property `recall`
        # @return [Float]
        attr_accessor :recall
      
        # Number of true samples predicted as false.
        # Corresponds to the JSON property `trueNegatives`
        # @return [Fixnum]
        attr_accessor :true_negatives
      
        # Number of true samples predicted as true.
        # Corresponds to the JSON property `truePositives`
        # @return [Fixnum]
        attr_accessor :true_positives
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accuracy = args[:accuracy] if args.key?(:accuracy)
          @f1_score = args[:f1_score] if args.key?(:f1_score)
          @false_negatives = args[:false_negatives] if args.key?(:false_negatives)
          @false_positives = args[:false_positives] if args.key?(:false_positives)
          @positive_class_threshold = args[:positive_class_threshold] if args.key?(:positive_class_threshold)
          @precision = args[:precision] if args.key?(:precision)
          @recall = args[:recall] if args.key?(:recall)
          @true_negatives = args[:true_negatives] if args.key?(:true_negatives)
          @true_positives = args[:true_positives] if args.key?(:true_positives)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::BigqueryV2::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # 
      class BqmlIterationResult
        include Google::Apis::Core::Hashable
      
        # Deprecated.
        # Corresponds to the JSON property `durationMs`
        # @return [Fixnum]
        attr_accessor :duration_ms
      
        # Deprecated.
        # Corresponds to the JSON property `evalLoss`
        # @return [Float]
        attr_accessor :eval_loss
      
        # Deprecated.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Deprecated.
        # Corresponds to the JSON property `learnRate`
        # @return [Float]
        attr_accessor :learn_rate
      
        # Deprecated.
        # Corresponds to the JSON property `trainingLoss`
        # @return [Float]
        attr_accessor :training_loss
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration_ms = args[:duration_ms] if args.key?(:duration_ms)
          @eval_loss = args[:eval_loss] if args.key?(:eval_loss)
          @index = args[:index] if args.key?(:index)
          @learn_rate = args[:learn_rate] if args.key?(:learn_rate)
          @training_loss = args[:training_loss] if args.key?(:training_loss)
        end
      end
      
      # 
      class BqmlTrainingRun
        include Google::Apis::Core::Hashable
      
        # Deprecated.
        # Corresponds to the JSON property `iterationResults`
        # @return [Array<Google::Apis::BigqueryV2::BqmlIterationResult>]
        attr_accessor :iteration_results
      
        # Deprecated.
        # Corresponds to the JSON property `startTime`
        # @return [DateTime]
        attr_accessor :start_time
      
        # Deprecated.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Deprecated.
        # Corresponds to the JSON property `trainingOptions`
        # @return [Google::Apis::BigqueryV2::BqmlTrainingRun::TrainingOptions]
        attr_accessor :training_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iteration_results = args[:iteration_results] if args.key?(:iteration_results)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @training_options = args[:training_options] if args.key?(:training_options)
        end
        
        # Deprecated.
        class TrainingOptions
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `earlyStop`
          # @return [Boolean]
          attr_accessor :early_stop
          alias_method :early_stop?, :early_stop
        
          # 
          # Corresponds to the JSON property `l1Reg`
          # @return [Float]
          attr_accessor :l1_reg
        
          # 
          # Corresponds to the JSON property `l2Reg`
          # @return [Float]
          attr_accessor :l2_reg
        
          # 
          # Corresponds to the JSON property `learnRate`
          # @return [Float]
          attr_accessor :learn_rate
        
          # 
          # Corresponds to the JSON property `learnRateStrategy`
          # @return [String]
          attr_accessor :learn_rate_strategy
        
          # 
          # Corresponds to the JSON property `lineSearchInitLearnRate`
          # @return [Float]
          attr_accessor :line_search_init_learn_rate
        
          # 
          # Corresponds to the JSON property `maxIteration`
          # @return [Fixnum]
          attr_accessor :max_iteration
        
          # 
          # Corresponds to the JSON property `minRelProgress`
          # @return [Float]
          attr_accessor :min_rel_progress
        
          # 
          # Corresponds to the JSON property `warmStart`
          # @return [Boolean]
          attr_accessor :warm_start
          alias_method :warm_start?, :warm_start
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @early_stop = args[:early_stop] if args.key?(:early_stop)
            @l1_reg = args[:l1_reg] if args.key?(:l1_reg)
            @l2_reg = args[:l2_reg] if args.key?(:l2_reg)
            @learn_rate = args[:learn_rate] if args.key?(:learn_rate)
            @learn_rate_strategy = args[:learn_rate_strategy] if args.key?(:learn_rate_strategy)
            @line_search_init_learn_rate = args[:line_search_init_learn_rate] if args.key?(:line_search_init_learn_rate)
            @max_iteration = args[:max_iteration] if args.key?(:max_iteration)
            @min_rel_progress = args[:min_rel_progress] if args.key?(:min_rel_progress)
            @warm_start = args[:warm_start] if args.key?(:warm_start)
          end
        end
      end
      
      # Representative value of a categorical feature.
      class CategoricalValue
        include Google::Apis::Core::Hashable
      
        # Counts of all categories for the categorical feature. If there are more than
        # ten categories, we return top ten (by count) and return one more CategoryCount
        # with category "_OTHER_" and count as aggregate counts of remaining categories.
        # Corresponds to the JSON property `categoryCounts`
        # @return [Array<Google::Apis::BigqueryV2::CategoryCount>]
        attr_accessor :category_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_counts = args[:category_counts] if args.key?(:category_counts)
        end
      end
      
      # Represents the count of a single category within the cluster.
      class CategoryCount
        include Google::Apis::Core::Hashable
      
        # The name of category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The count of training samples matching the category within the cluster.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @count = args[:count] if args.key?(:count)
        end
      end
      
      # Information about base table and clone time of a table clone.
      class CloneDefinition
        include Google::Apis::Core::Hashable
      
        # Required. Reference describing the ID of the table that was cloned.
        # Corresponds to the JSON property `baseTableReference`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :base_table_reference
      
        # Required. The time at which the base table was cloned. This value is reported
        # in the JSON response using RFC3339 format.
        # Corresponds to the JSON property `cloneTime`
        # @return [DateTime]
        attr_accessor :clone_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_table_reference = args[:base_table_reference] if args.key?(:base_table_reference)
          @clone_time = args[:clone_time] if args.key?(:clone_time)
        end
      end
      
      # Message containing the information about one cluster.
      class Cluster
        include Google::Apis::Core::Hashable
      
        # Centroid id.
        # Corresponds to the JSON property `centroidId`
        # @return [Fixnum]
        attr_accessor :centroid_id
      
        # Count of training data rows that were assigned to this cluster.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Values of highly variant features for this cluster.
        # Corresponds to the JSON property `featureValues`
        # @return [Array<Google::Apis::BigqueryV2::FeatureValue>]
        attr_accessor :feature_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @centroid_id = args[:centroid_id] if args.key?(:centroid_id)
          @count = args[:count] if args.key?(:count)
          @feature_values = args[:feature_values] if args.key?(:feature_values)
        end
      end
      
      # Information about a single cluster for clustering model.
      class ClusterInfo
        include Google::Apis::Core::Hashable
      
        # Centroid id.
        # Corresponds to the JSON property `centroidId`
        # @return [Fixnum]
        attr_accessor :centroid_id
      
        # Cluster radius, the average distance from centroid to each point assigned to
        # the cluster.
        # Corresponds to the JSON property `clusterRadius`
        # @return [Float]
        attr_accessor :cluster_radius
      
        # Cluster size, the total number of points assigned to the cluster.
        # Corresponds to the JSON property `clusterSize`
        # @return [Fixnum]
        attr_accessor :cluster_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @centroid_id = args[:centroid_id] if args.key?(:centroid_id)
          @cluster_radius = args[:cluster_radius] if args.key?(:cluster_radius)
          @cluster_size = args[:cluster_size] if args.key?(:cluster_size)
        end
      end
      
      # Configures table clustering.
      class Clustering
        include Google::Apis::Core::Hashable
      
        # One or more fields on which data should be clustered. Only top-level, non-
        # repeated, simple-type fields are supported. The ordering of the clustering
        # fields should be prioritized from most to least important for filtering
        # purposes. Additional information on limitations can be found here: https://
        # cloud.google.com/bigquery/docs/creating-clustered-tables#limitations
        # Corresponds to the JSON property `fields`
        # @return [Array<String>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # Evaluation metrics for clustering models.
      class ClusteringMetrics
        include Google::Apis::Core::Hashable
      
        # Information for all clusters.
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::BigqueryV2::Cluster>]
        attr_accessor :clusters
      
        # Davies-Bouldin index.
        # Corresponds to the JSON property `daviesBouldinIndex`
        # @return [Float]
        attr_accessor :davies_bouldin_index
      
        # Mean of squared distances between each sample to its cluster centroid.
        # Corresponds to the JSON property `meanSquaredDistance`
        # @return [Float]
        attr_accessor :mean_squared_distance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] if args.key?(:clusters)
          @davies_bouldin_index = args[:davies_bouldin_index] if args.key?(:davies_bouldin_index)
          @mean_squared_distance = args[:mean_squared_distance] if args.key?(:mean_squared_distance)
        end
      end
      
      # Confusion matrix for multi-class classification models.
      class ConfusionMatrix
        include Google::Apis::Core::Hashable
      
        # Confidence threshold used when computing the entries of the confusion matrix.
        # Corresponds to the JSON property `confidenceThreshold`
        # @return [Float]
        attr_accessor :confidence_threshold
      
        # One row per actual label.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::BigqueryV2::Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_threshold = args[:confidence_threshold] if args.key?(:confidence_threshold)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # A connection-level property to customize query behavior. Under JDBC, these
      # correspond directly to connection properties passed to the DriverManager.
      # Under ODBC, these correspond to properties in the connection string. Currently
      # supported connection properties: * **dataset_project_id**: represents the
      # default project for datasets that are used in the query. Setting the system
      # variable `@@dataset_project_id` achieves the same behavior. For more
      # information about system variables, see: https://cloud.google.com/bigquery/
      # docs/reference/system-variables * **time_zone**: represents the default
      # timezone used to run the query. * **session_id**: associates the query with a
      # given session. * **query_label**: associates the query with a given job label.
      # If set, all subsequent queries in a script or session will have this label.
      # For the format in which a you can specify a query label, see labels in the
      # JobConfiguration resource type: https://cloud.google.com/bigquery/docs/
      # reference/rest/v2/Job#jobconfiguration * **service_account**: indicates the
      # service account to use to run a continuous query. If set, the query job uses
      # the service account to access Google Cloud resources. Service account access
      # is bounded by the IAM permissions that you have granted to the service account.
      # Additional properties are allowed, but ignored. Specifying multiple
      # connection properties with the same key returns an error.
      class ConnectionProperty
        include Google::Apis::Core::Hashable
      
        # The key of the property to set.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The value of the property to set.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Information related to a CSV data source.
      class CsvOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates if BigQuery should accept rows that are missing trailing
        # optional columns. If true, BigQuery treats missing trailing columns as null
        # values. If false, records with missing trailing columns are treated as bad
        # records, and if there are too many bad records, an invalid error is returned
        # in the job result. The default value is false.
        # Corresponds to the JSON property `allowJaggedRows`
        # @return [Boolean]
        attr_accessor :allow_jagged_rows
        alias_method :allow_jagged_rows?, :allow_jagged_rows
      
        # Optional. Indicates if BigQuery should allow quoted data sections that contain
        # newline characters in a CSV file. The default value is false.
        # Corresponds to the JSON property `allowQuotedNewlines`
        # @return [Boolean]
        attr_accessor :allow_quoted_newlines
        alias_method :allow_quoted_newlines?, :allow_quoted_newlines
      
        # Optional. The character encoding of the data. The supported values are UTF-8,
        # ISO-8859-1, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is
        # UTF-8. BigQuery decodes the data after the raw, binary data has been split
        # using the values of the quote and fieldDelimiter properties.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Optional. The separator character for fields in a CSV file. The separator is
        # interpreted as a single byte. For files encoded in ISO-8859-1, any single
        # character can be used as a separator. For files encoded in UTF-8, characters
        # represented in decimal range 1-127 (U+0001-U+007F) can be used without any
        # modification. UTF-8 characters encoded with multiple bytes (i.e. U+0080 and
        # above) will have only the first byte used for separating fields. The remaining
        # bytes will be treated as a part of the field. BigQuery also supports the
        # escape sequence "\t" (U+0009) to specify a tab separator. The default value is
        # comma (",", U+002C).
        # Corresponds to the JSON property `fieldDelimiter`
        # @return [String]
        attr_accessor :field_delimiter
      
        # Optional. Specifies a string that represents a null value in a CSV file. For
        # example, if you specify "\N", BigQuery interprets "\N" as a null value when
        # querying a CSV file. The default value is the empty string. If you set this
        # property to a custom value, BigQuery throws an error if an empty string is
        # present for all data types except for STRING and BYTE. For STRING and BYTE
        # columns, BigQuery interprets the empty string as an empty value.
        # Corresponds to the JSON property `nullMarker`
        # @return [String]
        attr_accessor :null_marker
      
        # Optional. Indicates if the embedded ASCII control characters (the first 32
        # characters in the ASCII-table, from '\x00' to '\x1F') are preserved.
        # Corresponds to the JSON property `preserveAsciiControlCharacters`
        # @return [Boolean]
        attr_accessor :preserve_ascii_control_characters
        alias_method :preserve_ascii_control_characters?, :preserve_ascii_control_characters
      
        # Optional. The value that is used to quote data sections in a CSV file.
        # BigQuery converts the string to ISO-8859-1 encoding, and then uses the first
        # byte of the encoded string to split the data in its raw, binary state. The
        # default value is a double-quote ("). If your data does not contain quoted
        # sections, set the property value to an empty string. If your data contains
        # quoted newline characters, you must also set the allowQuotedNewlines property
        # to true. To include the specific quote character within a quoted value,
        # precede it with an additional matching quote character. For example, if you
        # want to escape the default character ' " ', use ' "" '.
        # Corresponds to the JSON property `quote`
        # @return [String]
        attr_accessor :quote
      
        # Optional. The number of rows at the top of a CSV file that BigQuery will skip
        # when reading the data. The default value is 0. This property is useful if you
        # have header rows in the file that should be skipped. When autodetect is on,
        # the behavior is the following: * skipLeadingRows unspecified - Autodetect
        # tries to detect headers in the first row. If they are not detected, the row is
        # read as data. Otherwise data is read starting from the second row. *
        # skipLeadingRows is 0 - Instructs autodetect that there are no headers and data
        # should be read starting from the first row. * skipLeadingRows = N > 0 -
        # Autodetect skips N-1 rows and tries to detect headers in row N. If headers are
        # not detected, row N is just skipped. Otherwise row N is used to extract column
        # names for the detected schema.
        # Corresponds to the JSON property `skipLeadingRows`
        # @return [Fixnum]
        attr_accessor :skip_leading_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_jagged_rows = args[:allow_jagged_rows] if args.key?(:allow_jagged_rows)
          @allow_quoted_newlines = args[:allow_quoted_newlines] if args.key?(:allow_quoted_newlines)
          @encoding = args[:encoding] if args.key?(:encoding)
          @field_delimiter = args[:field_delimiter] if args.key?(:field_delimiter)
          @null_marker = args[:null_marker] if args.key?(:null_marker)
          @preserve_ascii_control_characters = args[:preserve_ascii_control_characters] if args.key?(:preserve_ascii_control_characters)
          @quote = args[:quote] if args.key?(:quote)
          @skip_leading_rows = args[:skip_leading_rows] if args.key?(:skip_leading_rows)
        end
      end
      
      # Options for data format adjustments.
      class DataFormatOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Output timestamp as usec int64. Default is false.
        # Corresponds to the JSON property `useInt64Timestamp`
        # @return [Boolean]
        attr_accessor :use_int64_timestamp
        alias_method :use_int64_timestamp?, :use_int64_timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @use_int64_timestamp = args[:use_int64_timestamp] if args.key?(:use_int64_timestamp)
        end
      end
      
      # Statistics for data-masking.
      class DataMaskingStatistics
        include Google::Apis::Core::Hashable
      
        # Whether any accessed data was protected by the data masking.
        # Corresponds to the JSON property `dataMaskingApplied`
        # @return [Boolean]
        attr_accessor :data_masking_applied
        alias_method :data_masking_applied?, :data_masking_applied
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_masking_applied = args[:data_masking_applied] if args.key?(:data_masking_applied)
        end
      end
      
      # Data split result. This contains references to the training and evaluation
      # data tables that were used to train the model.
      class DataSplitResult
        include Google::Apis::Core::Hashable
      
        # Table reference of the evaluation data after split.
        # Corresponds to the JSON property `evaluationTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :evaluation_table
      
        # Table reference of the test data after split.
        # Corresponds to the JSON property `testTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :test_table
      
        # Table reference of the training data after split.
        # Corresponds to the JSON property `trainingTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :training_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluation_table = args[:evaluation_table] if args.key?(:evaluation_table)
          @test_table = args[:test_table] if args.key?(:test_table)
          @training_table = args[:training_table] if args.key?(:training_table)
        end
      end
      
      # 
      class Dataset
        include Google::Apis::Core::Hashable
      
        # Optional. An array of objects that define dataset access for one or more
        # entities. You can set this property when inserting or updating a dataset in
        # order to control who is allowed to access the data. If unspecified at dataset
        # creation time, BigQuery adds default dataset access for the following entities:
        # access.specialGroup: projectReaders; access.role: READER; access.specialGroup:
        # projectWriters; access.role: WRITER; access.specialGroup: projectOwners;
        # access.role: OWNER; access.userByEmail: [dataset creator email]; access.role:
        # OWNER;
        # Corresponds to the JSON property `access`
        # @return [Array<Google::Apis::BigqueryV2::Dataset::Access>]
        attr_accessor :access
      
        # Output only. The time when this dataset was created, in milliseconds since the
        # epoch.
        # Corresponds to the JSON property `creationTime`
        # @return [Fixnum]
        attr_accessor :creation_time
      
        # Required. A reference that identifies the dataset.
        # Corresponds to the JSON property `datasetReference`
        # @return [Google::Apis::BigqueryV2::DatasetReference]
        attr_accessor :dataset_reference
      
        # Optional. Defines the default collation specification of future tables created
        # in the dataset. If a table is created in this dataset without table-level
        # default collation, then the table inherits the dataset default collation,
        # which is applied to the string fields that do not have explicit collation
        # specified. A change to this field affects only tables created afterwards, and
        # does not alter the existing tables. The following values are supported: * 'und:
        # ci': undetermined locale, case insensitive. * '': empty string. Default to
        # case-sensitive behavior.
        # Corresponds to the JSON property `defaultCollation`
        # @return [String]
        attr_accessor :default_collation
      
        # The default encryption key for all tables in the dataset. After this property
        # is set, the encryption key of all newly-created tables in the dataset is set
        # to this value unless the table creation request or query explicitly overrides
        # the key.
        # Corresponds to the JSON property `defaultEncryptionConfiguration`
        # @return [Google::Apis::BigqueryV2::EncryptionConfiguration]
        attr_accessor :default_encryption_configuration
      
        # This default partition expiration, expressed in milliseconds. When new time-
        # partitioned tables are created in a dataset where this property is set, the
        # table will inherit this value, propagated as the `TimePartitioning.
        # expirationMs` property on the new table. If you set `TimePartitioning.
        # expirationMs` explicitly when creating a table, the `
        # defaultPartitionExpirationMs` of the containing dataset is ignored. When
        # creating a partitioned table, if `defaultPartitionExpirationMs` is set, the `
        # defaultTableExpirationMs` value is ignored and the table will not be inherit a
        # table expiration deadline.
        # Corresponds to the JSON property `defaultPartitionExpirationMs`
        # @return [Fixnum]
        attr_accessor :default_partition_expiration_ms
      
        # Optional. Defines the default rounding mode specification of new tables
        # created within this dataset. During table creation, if this field is specified,
        # the table within this dataset will inherit the default rounding mode of the
        # dataset. Setting the default rounding mode on a table overrides this option.
        # Existing tables in the dataset are unaffected. If columns are defined during
        # that table creation, they will immediately inherit the table's default
        # rounding mode, unless otherwise specified.
        # Corresponds to the JSON property `defaultRoundingMode`
        # @return [String]
        attr_accessor :default_rounding_mode
      
        # Optional. The default lifetime of all tables in the dataset, in milliseconds.
        # The minimum lifetime value is 3600000 milliseconds (one hour). To clear an
        # existing default expiration with a PATCH request, set to 0. Once this property
        # is set, all newly-created tables in the dataset will have an expirationTime
        # property set to the creation time plus the value in this property, and
        # changing the value will only affect new tables, not existing ones. When the
        # expirationTime for a given table is reached, that table will be deleted
        # automatically. If a table's expirationTime is modified or removed before the
        # table expires, or if you provide an explicit expirationTime when creating a
        # table, that value takes precedence over the default expiration time indicated
        # by this property.
        # Corresponds to the JSON property `defaultTableExpirationMs`
        # @return [Fixnum]
        attr_accessor :default_table_expiration_ms
      
        # Optional. A user-friendly description of the dataset.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. A hash of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Options defining open source compatible datasets living in the BigQuery
        # catalog. Contains metadata of open source database, schema or namespace
        # represented by the current dataset.
        # Corresponds to the JSON property `externalCatalogDatasetOptions`
        # @return [Google::Apis::BigqueryV2::ExternalCatalogDatasetOptions]
        attr_accessor :external_catalog_dataset_options
      
        # Configures the access a dataset defined in an external metadata storage.
        # Corresponds to the JSON property `externalDatasetReference`
        # @return [Google::Apis::BigqueryV2::ExternalDatasetReference]
        attr_accessor :external_dataset_reference
      
        # Optional. A descriptive name for the dataset.
        # Corresponds to the JSON property `friendlyName`
        # @return [String]
        attr_accessor :friendly_name
      
        # Output only. The fully-qualified unique name of the dataset in the format
        # projectId:datasetId. The dataset name without the project name is given in the
        # datasetId field. When creating a new dataset, leave this field blank, and
        # instead specify the datasetId field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. TRUE if the dataset and its table names are case-insensitive,
        # otherwise FALSE. By default, this is FALSE, which means the dataset and its
        # table names are case-sensitive. This field does not affect routine references.
        # Corresponds to the JSON property `isCaseInsensitive`
        # @return [Boolean]
        attr_accessor :is_case_insensitive
        alias_method :is_case_insensitive?, :is_case_insensitive
      
        # Output only. The resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The labels associated with this dataset. You can use these to organize and
        # group your datasets. You can set this property when inserting or updating a
        # dataset. See Creating and Updating Dataset Labels for more information.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The date when this dataset was last modified, in milliseconds
        # since the epoch.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [Fixnum]
        attr_accessor :last_modified_time
      
        # Metadata about the Linked Dataset.
        # Corresponds to the JSON property `linkedDatasetMetadata`
        # @return [Google::Apis::BigqueryV2::LinkedDatasetMetadata]
        attr_accessor :linked_dataset_metadata
      
        # A dataset source type which refers to another BigQuery dataset.
        # Corresponds to the JSON property `linkedDatasetSource`
        # @return [Google::Apis::BigqueryV2::LinkedDatasetSource]
        attr_accessor :linked_dataset_source
      
        # The geographic location where the dataset should reside. See https://cloud.
        # google.com/bigquery/docs/locations for supported locations.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Defines the time travel window in hours. The value can be from 48 to
        # 168 hours (2 to 7 days). The default value is 168 hours if this is not set.
        # Corresponds to the JSON property `maxTimeTravelHours`
        # @return [Fixnum]
        attr_accessor :max_time_travel_hours
      
        # Optional. The [tags](/bigquery/docs/tags) attached to this dataset. Tag keys
        # are globally unique. Tag key is expected to be in the namespaced format, for
        # example "123456789012/environment" where 123456789012 is the ID of the parent
        # organization or project resource for this tag key. Tag value is expected to be
        # the short name, for example "Production". See [Tag definitions](/iam/docs/tags-
        # access-control#definitions) for more details.
        # Corresponds to the JSON property `resourceTags`
        # @return [Hash<String,String>]
        attr_accessor :resource_tags
      
        # Optional. Output only. Restriction config for all tables and dataset. If set,
        # restrict certain accesses on the dataset and all its tables based on the
        # config. See [Data egress](/bigquery/docs/analytics-hub-introduction#
        # data_egress) for more details.
        # Corresponds to the JSON property `restrictions`
        # @return [Google::Apis::BigqueryV2::RestrictionConfig]
        attr_accessor :restrictions
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. A URL that can be used to access the resource again. You can use
        # this URL in Get or Update requests to the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Optional. Updates storage_billing_model for the dataset.
        # Corresponds to the JSON property `storageBillingModel`
        # @return [String]
        attr_accessor :storage_billing_model
      
        # Output only. Tags for the Dataset.
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::BigqueryV2::Dataset::Tag>]
        attr_accessor :tags
      
        # Output only. Same as `type` in `ListFormatDataset`. The type of the dataset,
        # one of: * DEFAULT - only accessible by owner and authorized accounts, * PUBLIC
        # - accessible by everyone, * LINKED - linked dataset, * EXTERNAL - dataset with
        # definition in external metadata catalog.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] if args.key?(:access)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @dataset_reference = args[:dataset_reference] if args.key?(:dataset_reference)
          @default_collation = args[:default_collation] if args.key?(:default_collation)
          @default_encryption_configuration = args[:default_encryption_configuration] if args.key?(:default_encryption_configuration)
          @default_partition_expiration_ms = args[:default_partition_expiration_ms] if args.key?(:default_partition_expiration_ms)
          @default_rounding_mode = args[:default_rounding_mode] if args.key?(:default_rounding_mode)
          @default_table_expiration_ms = args[:default_table_expiration_ms] if args.key?(:default_table_expiration_ms)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @external_catalog_dataset_options = args[:external_catalog_dataset_options] if args.key?(:external_catalog_dataset_options)
          @external_dataset_reference = args[:external_dataset_reference] if args.key?(:external_dataset_reference)
          @friendly_name = args[:friendly_name] if args.key?(:friendly_name)
          @id = args[:id] if args.key?(:id)
          @is_case_insensitive = args[:is_case_insensitive] if args.key?(:is_case_insensitive)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @linked_dataset_metadata = args[:linked_dataset_metadata] if args.key?(:linked_dataset_metadata)
          @linked_dataset_source = args[:linked_dataset_source] if args.key?(:linked_dataset_source)
          @location = args[:location] if args.key?(:location)
          @max_time_travel_hours = args[:max_time_travel_hours] if args.key?(:max_time_travel_hours)
          @resource_tags = args[:resource_tags] if args.key?(:resource_tags)
          @restrictions = args[:restrictions] if args.key?(:restrictions)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @self_link = args[:self_link] if args.key?(:self_link)
          @storage_billing_model = args[:storage_billing_model] if args.key?(:storage_billing_model)
          @tags = args[:tags] if args.key?(:tags)
          @type = args[:type] if args.key?(:type)
        end
        
        # An object that defines dataset access for an entity.
        class Access
          include Google::Apis::Core::Hashable
        
          # Grants all resources of particular types in a particular dataset read access
          # to the current dataset. Similar to how individually authorized views work,
          # updates to any resource granted through its dataset (including creation of new
          # resources) requires read permission to referenced resources, plus write
          # permission to the authorizing dataset.
          # Corresponds to the JSON property `dataset`
          # @return [Google::Apis::BigqueryV2::DatasetAccessEntry]
          attr_accessor :dataset
        
          # [Pick one] A domain to grant access to. Any users signed in with the domain
          # specified will be granted the specified access. Example: "example.com". Maps
          # to IAM policy member "domain:DOMAIN".
          # Corresponds to the JSON property `domain`
          # @return [String]
          attr_accessor :domain
        
          # [Pick one] An email address of a Google Group to grant access to. Maps to IAM
          # policy member "group:GROUP".
          # Corresponds to the JSON property `groupByEmail`
          # @return [String]
          attr_accessor :group_by_email
        
          # [Pick one] Some other type of member that appears in the IAM Policy but isn't
          # a user, group, domain, or special group.
          # Corresponds to the JSON property `iamMember`
          # @return [String]
          attr_accessor :iam_member
        
          # An IAM role ID that should be granted to the user, group, or domain specified
          # in this access entry. The following legacy mappings will be applied: OWNER <=>
          # roles/bigquery.dataOwner WRITER <=> roles/bigquery.dataEditor READER <=> roles/
          # bigquery.dataViewer This field will accept any of the above formats, but will
          # return only the legacy format. For example, if you set this field to "roles/
          # bigquery.dataOwner", it will be returned back as "OWNER".
          # Corresponds to the JSON property `role`
          # @return [String]
          attr_accessor :role
        
          # Id path of a routine.
          # Corresponds to the JSON property `routine`
          # @return [Google::Apis::BigqueryV2::RoutineReference]
          attr_accessor :routine
        
          # [Pick one] A special group to grant access to. Possible values include:
          # projectOwners: Owners of the enclosing project. projectReaders: Readers of the
          # enclosing project. projectWriters: Writers of the enclosing project.
          # allAuthenticatedUsers: All authenticated BigQuery users. Maps to similarly-
          # named IAM members.
          # Corresponds to the JSON property `specialGroup`
          # @return [String]
          attr_accessor :special_group
        
          # [Pick one] An email address of a user to grant access to. For example: fred@
          # example.com. Maps to IAM policy member "user:EMAIL" or "serviceAccount:EMAIL".
          # Corresponds to the JSON property `userByEmail`
          # @return [String]
          attr_accessor :user_by_email
        
          # [Pick one] A view from a different dataset to grant access to. Queries
          # executed against that view will have read access to views/tables/routines in
          # this dataset. The role field is not required when this field is set. If that
          # view is updated by any user, access to the view needs to be granted again via
          # an update operation.
          # Corresponds to the JSON property `view`
          # @return [Google::Apis::BigqueryV2::TableReference]
          attr_accessor :view
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @dataset = args[:dataset] if args.key?(:dataset)
            @domain = args[:domain] if args.key?(:domain)
            @group_by_email = args[:group_by_email] if args.key?(:group_by_email)
            @iam_member = args[:iam_member] if args.key?(:iam_member)
            @role = args[:role] if args.key?(:role)
            @routine = args[:routine] if args.key?(:routine)
            @special_group = args[:special_group] if args.key?(:special_group)
            @user_by_email = args[:user_by_email] if args.key?(:user_by_email)
            @view = args[:view] if args.key?(:view)
          end
        end
        
        # A global tag managed by Resource Manager. https://cloud.google.com/iam/docs/
        # tags-access-control#definitions
        class Tag
          include Google::Apis::Core::Hashable
        
          # Required. The namespaced friendly name of the tag key, e.g. "12345/environment"
          # where 12345 is org id.
          # Corresponds to the JSON property `tagKey`
          # @return [String]
          attr_accessor :tag_key
        
          # Required. The friendly short name of the tag value, e.g. "production".
          # Corresponds to the JSON property `tagValue`
          # @return [String]
          attr_accessor :tag_value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @tag_key = args[:tag_key] if args.key?(:tag_key)
            @tag_value = args[:tag_value] if args.key?(:tag_value)
          end
        end
      end
      
      # Grants all resources of particular types in a particular dataset read access
      # to the current dataset. Similar to how individually authorized views work,
      # updates to any resource granted through its dataset (including creation of new
      # resources) requires read permission to referenced resources, plus write
      # permission to the authorizing dataset.
      class DatasetAccessEntry
        include Google::Apis::Core::Hashable
      
        # The dataset this entry applies to
        # Corresponds to the JSON property `dataset`
        # @return [Google::Apis::BigqueryV2::DatasetReference]
        attr_accessor :dataset
      
        # Which resources in the dataset this entry applies to. Currently, only views
        # are supported, but additional target types may be added in the future.
        # Corresponds to the JSON property `targetTypes`
        # @return [Array<String>]
        attr_accessor :target_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @target_types = args[:target_types] if args.key?(:target_types)
        end
      end
      
      # Response format for a page of results when listing datasets.
      class DatasetList
        include Google::Apis::Core::Hashable
      
        # An array of the dataset resources in the project. Each resource contains basic
        # information. For full information about a particular dataset resource, use the
        # Datasets: get method. This property is omitted when there are no datasets in
        # the project.
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::BigqueryV2::DatasetList::Dataset>]
        attr_accessor :datasets
      
        # Output only. A hash value of the results page. You can use this property to
        # determine if the page has changed since the last request.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The resource type. This property always returns the value "
        # bigquery#datasetList"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token that can be used to request the next results page. This property is
        # omitted on the final results page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of skipped locations that were unreachable. For more information about
        # BigQuery locations, see: https://cloud.google.com/bigquery/docs/locations.
        # Example: "europe-west5"
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datasets = args[:datasets] if args.key?(:datasets)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
        
        # A dataset resource with only a subset of fields, to be returned in a list of
        # datasets.
        class Dataset
          include Google::Apis::Core::Hashable
        
          # The dataset reference. Use this property to access specific parts of the
          # dataset's ID, such as project ID or dataset ID.
          # Corresponds to the JSON property `datasetReference`
          # @return [Google::Apis::BigqueryV2::DatasetReference]
          attr_accessor :dataset_reference
        
          # An alternate name for the dataset. The friendly name is purely decorative in
          # nature.
          # Corresponds to the JSON property `friendlyName`
          # @return [String]
          attr_accessor :friendly_name
        
          # The fully-qualified, unique, opaque ID of the dataset.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The resource type. This property always returns the value "bigquery#dataset"
          # Corresponds to the JSON property `kind`
          # @return [String]
          attr_accessor :kind
        
          # The labels associated with this dataset. You can use these to organize and
          # group your datasets.
          # Corresponds to the JSON property `labels`
          # @return [Hash<String,String>]
          attr_accessor :labels
        
          # The geographic location where the dataset resides.
          # Corresponds to the JSON property `location`
          # @return [String]
          attr_accessor :location
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @dataset_reference = args[:dataset_reference] if args.key?(:dataset_reference)
            @friendly_name = args[:friendly_name] if args.key?(:friendly_name)
            @id = args[:id] if args.key?(:id)
            @kind = args[:kind] if args.key?(:kind)
            @labels = args[:labels] if args.key?(:labels)
            @location = args[:location] if args.key?(:location)
          end
        end
      end
      
      # 
      class DatasetReference
        include Google::Apis::Core::Hashable
      
        # Required. A unique ID for this dataset, without the project name. The ID must
        # contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The
        # maximum length is 1,024 characters.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # Optional. The ID of the project containing this dataset.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Properties for the destination table.
      class DestinationTableProperties
        include Google::Apis::Core::Hashable
      
        # Optional. The description for the destination table. This will only be used if
        # the destination table is newly created. If the table already exists and a
        # value different than the current description is provided, the job will fail.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Internal use only.
        # Corresponds to the JSON property `expirationTime`
        # @return [DateTime]
        attr_accessor :expiration_time
      
        # Optional. Friendly name for the destination table. If the table already exists,
        # it should be same as the existing friendly name.
        # Corresponds to the JSON property `friendlyName`
        # @return [String]
        attr_accessor :friendly_name
      
        # Optional. The labels associated with this table. You can use these to organize
        # and group your tables. This will only be used if the destination table is
        # newly created. If the table already exists and labels are different than the
        # current labels are provided, the job will fail.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @friendly_name = args[:friendly_name] if args.key?(:friendly_name)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Represents privacy policy associated with "differential privacy" method.
      class DifferentialPrivacyPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The total delta budget for all queries against the privacy-protected
        # view. Each subscriber query against this view charges the amount of delta that
        # is pre-defined by the contributor through the privacy policy delta_per_query
        # field. If there is sufficient budget, then the subscriber query attempts to
        # complete. It might still fail due to other reasons, in which case the charge
        # is refunded. If there is insufficient budget the query is rejected. There
        # might be multiple charge attempts if a single query references multiple views.
        # In this case there must be sufficient budget for all charges or the query is
        # rejected and charges are refunded in best effort. The budget does not have a
        # refresh policy and can only be updated via ALTER VIEW or circumvented by
        # creating a new view that can be queried with a fresh budget.
        # Corresponds to the JSON property `deltaBudget`
        # @return [Float]
        attr_accessor :delta_budget
      
        # Output only. The delta budget remaining. If budget is exhausted, no more
        # queries are allowed. Note that the budget for queries that are in progress is
        # deducted before the query executes. If the query fails or is cancelled then
        # the budget is refunded. In this case the amount of budget remaining can
        # increase.
        # Corresponds to the JSON property `deltaBudgetRemaining`
        # @return [Float]
        attr_accessor :delta_budget_remaining
      
        # Optional. The delta value that is used per query. Delta represents the
        # probability that any row will fail to be epsilon differentially private.
        # Indicates the risk associated with exposing aggregate rows in the result of a
        # query.
        # Corresponds to the JSON property `deltaPerQuery`
        # @return [Float]
        attr_accessor :delta_per_query
      
        # Optional. The total epsilon budget for all queries against the privacy-
        # protected view. Each subscriber query against this view charges the amount of
        # epsilon they request in their query. If there is sufficient budget, then the
        # subscriber query attempts to complete. It might still fail due to other
        # reasons, in which case the charge is refunded. If there is insufficient budget
        # the query is rejected. There might be multiple charge attempts if a single
        # query references multiple views. In this case there must be sufficient budget
        # for all charges or the query is rejected and charges are refunded in best
        # effort. The budget does not have a refresh policy and can only be updated via
        # ALTER VIEW or circumvented by creating a new view that can be queried with a
        # fresh budget.
        # Corresponds to the JSON property `epsilonBudget`
        # @return [Float]
        attr_accessor :epsilon_budget
      
        # Output only. The epsilon budget remaining. If budget is exhausted, no more
        # queries are allowed. Note that the budget for queries that are in progress is
        # deducted before the query executes. If the query fails or is cancelled then
        # the budget is refunded. In this case the amount of budget remaining can
        # increase.
        # Corresponds to the JSON property `epsilonBudgetRemaining`
        # @return [Float]
        attr_accessor :epsilon_budget_remaining
      
        # Optional. The maximum epsilon value that a query can consume. If the
        # subscriber specifies epsilon as a parameter in a SELECT query, it must be less
        # than or equal to this value. The epsilon parameter controls the amount of
        # noise that is added to the groups — a higher epsilon means less noise.
        # Corresponds to the JSON property `maxEpsilonPerQuery`
        # @return [Float]
        attr_accessor :max_epsilon_per_query
      
        # Optional. The maximum groups contributed value that is used per query.
        # Represents the maximum number of groups to which each protected entity can
        # contribute. Changing this value does not improve or worsen privacy. The best
        # value for accuracy and utility depends on the query and data.
        # Corresponds to the JSON property `maxGroupsContributed`
        # @return [Fixnum]
        attr_accessor :max_groups_contributed
      
        # Optional. The privacy unit column associated with this policy. Differential
        # privacy policies can only have one privacy unit column per data source object (
        # table, view).
        # Corresponds to the JSON property `privacyUnitColumn`
        # @return [String]
        attr_accessor :privacy_unit_column
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delta_budget = args[:delta_budget] if args.key?(:delta_budget)
          @delta_budget_remaining = args[:delta_budget_remaining] if args.key?(:delta_budget_remaining)
          @delta_per_query = args[:delta_per_query] if args.key?(:delta_per_query)
          @epsilon_budget = args[:epsilon_budget] if args.key?(:epsilon_budget)
          @epsilon_budget_remaining = args[:epsilon_budget_remaining] if args.key?(:epsilon_budget_remaining)
          @max_epsilon_per_query = args[:max_epsilon_per_query] if args.key?(:max_epsilon_per_query)
          @max_groups_contributed = args[:max_groups_contributed] if args.key?(:max_groups_contributed)
          @privacy_unit_column = args[:privacy_unit_column] if args.key?(:privacy_unit_column)
        end
      end
      
      # Model evaluation metrics for dimensionality reduction models.
      class DimensionalityReductionMetrics
        include Google::Apis::Core::Hashable
      
        # Total percentage of variance explained by the selected principal components.
        # Corresponds to the JSON property `totalExplainedVarianceRatio`
        # @return [Float]
        attr_accessor :total_explained_variance_ratio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_explained_variance_ratio = args[:total_explained_variance_ratio] if args.key?(:total_explained_variance_ratio)
        end
      end
      
      # Detailed statistics for DML statements
      class DmlStatistics
        include Google::Apis::Core::Hashable
      
        # Output only. Number of deleted Rows. populated by DML DELETE, MERGE and
        # TRUNCATE statements.
        # Corresponds to the JSON property `deletedRowCount`
        # @return [Fixnum]
        attr_accessor :deleted_row_count
      
        # Output only. Number of inserted Rows. Populated by DML INSERT and MERGE
        # statements
        # Corresponds to the JSON property `insertedRowCount`
        # @return [Fixnum]
        attr_accessor :inserted_row_count
      
        # Output only. Number of updated Rows. Populated by DML UPDATE and MERGE
        # statements.
        # Corresponds to the JSON property `updatedRowCount`
        # @return [Fixnum]
        attr_accessor :updated_row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted_row_count = args[:deleted_row_count] if args.key?(:deleted_row_count)
          @inserted_row_count = args[:inserted_row_count] if args.key?(:inserted_row_count)
          @updated_row_count = args[:updated_row_count] if args.key?(:updated_row_count)
        end
      end
      
      # Discrete candidates of a double hyperparameter.
      class DoubleCandidates
        include Google::Apis::Core::Hashable
      
        # Candidates for the double parameter in increasing order.
        # Corresponds to the JSON property `candidates`
        # @return [Array<Float>]
        attr_accessor :candidates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates = args[:candidates] if args.key?(:candidates)
        end
      end
      
      # Search space for a double hyperparameter.
      class DoubleHparamSearchSpace
        include Google::Apis::Core::Hashable
      
        # Discrete candidates of a double hyperparameter.
        # Corresponds to the JSON property `candidates`
        # @return [Google::Apis::BigqueryV2::DoubleCandidates]
        attr_accessor :candidates
      
        # Range of a double hyperparameter.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::BigqueryV2::DoubleRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates = args[:candidates] if args.key?(:candidates)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # Range of a double hyperparameter.
      class DoubleRange
        include Google::Apis::Core::Hashable
      
        # Max value of the double parameter.
        # Corresponds to the JSON property `max`
        # @return [Float]
        attr_accessor :max
      
        # Min value of the double parameter.
        # Corresponds to the JSON property `min`
        # @return [Float]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
        end
      end
      
      # 
      class EncryptionConfiguration
        include Google::Apis::Core::Hashable
      
        # Optional. Describes the Cloud KMS encryption key that will be used to protect
        # destination BigQuery table. The BigQuery Service Account associated with your
        # project requires access to this encryption key.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # A single entry in the confusion matrix.
      class Entry
        include Google::Apis::Core::Hashable
      
        # Number of items being predicted as this label.
        # Corresponds to the JSON property `itemCount`
        # @return [Fixnum]
        attr_accessor :item_count
      
        # The predicted label. For confidence_threshold > 0, we will also add an entry
        # indicating the number of items under the confidence threshold.
        # Corresponds to the JSON property `predictedLabel`
        # @return [String]
        attr_accessor :predicted_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_count = args[:item_count] if args.key?(:item_count)
          @predicted_label = args[:predicted_label] if args.key?(:predicted_label)
        end
      end
      
      # Error details.
      class ErrorProto
        include Google::Apis::Core::Hashable
      
        # Debugging information. This property is internal to Google and should not be
        # used.
        # Corresponds to the JSON property `debugInfo`
        # @return [String]
        attr_accessor :debug_info
      
        # Specifies where the error occurred, if present.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # A human-readable description of the error.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A short error code that summarizes the error.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_info = args[:debug_info] if args.key?(:debug_info)
          @location = args[:location] if args.key?(:location)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Evaluation metrics of a model. These are either computed on all training data
      # or just the eval data based on whether eval data was used during training.
      # These are not present for imported models.
      class EvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # Model evaluation metrics for ARIMA forecasting models.
        # Corresponds to the JSON property `arimaForecastingMetrics`
        # @return [Google::Apis::BigqueryV2::ArimaForecastingMetrics]
        attr_accessor :arima_forecasting_metrics
      
        # Evaluation metrics for binary classification/classifier models.
        # Corresponds to the JSON property `binaryClassificationMetrics`
        # @return [Google::Apis::BigqueryV2::BinaryClassificationMetrics]
        attr_accessor :binary_classification_metrics
      
        # Evaluation metrics for clustering models.
        # Corresponds to the JSON property `clusteringMetrics`
        # @return [Google::Apis::BigqueryV2::ClusteringMetrics]
        attr_accessor :clustering_metrics
      
        # Model evaluation metrics for dimensionality reduction models.
        # Corresponds to the JSON property `dimensionalityReductionMetrics`
        # @return [Google::Apis::BigqueryV2::DimensionalityReductionMetrics]
        attr_accessor :dimensionality_reduction_metrics
      
        # Evaluation metrics for multi-class classification/classifier models.
        # Corresponds to the JSON property `multiClassClassificationMetrics`
        # @return [Google::Apis::BigqueryV2::MultiClassClassificationMetrics]
        attr_accessor :multi_class_classification_metrics
      
        # Evaluation metrics used by weighted-ALS models specified by feedback_type=
        # implicit.
        # Corresponds to the JSON property `rankingMetrics`
        # @return [Google::Apis::BigqueryV2::RankingMetrics]
        attr_accessor :ranking_metrics
      
        # Evaluation metrics for regression and explicit feedback type matrix
        # factorization models.
        # Corresponds to the JSON property `regressionMetrics`
        # @return [Google::Apis::BigqueryV2::RegressionMetrics]
        attr_accessor :regression_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arima_forecasting_metrics = args[:arima_forecasting_metrics] if args.key?(:arima_forecasting_metrics)
          @binary_classification_metrics = args[:binary_classification_metrics] if args.key?(:binary_classification_metrics)
          @clustering_metrics = args[:clustering_metrics] if args.key?(:clustering_metrics)
          @dimensionality_reduction_metrics = args[:dimensionality_reduction_metrics] if args.key?(:dimensionality_reduction_metrics)
          @multi_class_classification_metrics = args[:multi_class_classification_metrics] if args.key?(:multi_class_classification_metrics)
          @ranking_metrics = args[:ranking_metrics] if args.key?(:ranking_metrics)
          @regression_metrics = args[:regression_metrics] if args.key?(:regression_metrics)
        end
      end
      
      # A single stage of query execution.
      class ExplainQueryStage
        include Google::Apis::Core::Hashable
      
        # Number of parallel input segments completed.
        # Corresponds to the JSON property `completedParallelInputs`
        # @return [Fixnum]
        attr_accessor :completed_parallel_inputs
      
        # Output only. Compute mode for this stage.
        # Corresponds to the JSON property `computeMode`
        # @return [String]
        attr_accessor :compute_mode
      
        # Milliseconds the average shard spent on CPU-bound tasks.
        # Corresponds to the JSON property `computeMsAvg`
        # @return [Fixnum]
        attr_accessor :compute_ms_avg
      
        # Milliseconds the slowest shard spent on CPU-bound tasks.
        # Corresponds to the JSON property `computeMsMax`
        # @return [Fixnum]
        attr_accessor :compute_ms_max
      
        # Relative amount of time the average shard spent on CPU-bound tasks.
        # Corresponds to the JSON property `computeRatioAvg`
        # @return [Float]
        attr_accessor :compute_ratio_avg
      
        # Relative amount of time the slowest shard spent on CPU-bound tasks.
        # Corresponds to the JSON property `computeRatioMax`
        # @return [Float]
        attr_accessor :compute_ratio_max
      
        # Stage end time represented as milliseconds since the epoch.
        # Corresponds to the JSON property `endMs`
        # @return [Fixnum]
        attr_accessor :end_ms
      
        # Unique ID for the stage within the plan.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # IDs for stages that are inputs to this stage.
        # Corresponds to the JSON property `inputStages`
        # @return [Array<Fixnum>]
        attr_accessor :input_stages
      
        # Human-readable name for the stage.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Number of parallel input segments to be processed
        # Corresponds to the JSON property `parallelInputs`
        # @return [Fixnum]
        attr_accessor :parallel_inputs
      
        # Milliseconds the average shard spent reading input.
        # Corresponds to the JSON property `readMsAvg`
        # @return [Fixnum]
        attr_accessor :read_ms_avg
      
        # Milliseconds the slowest shard spent reading input.
        # Corresponds to the JSON property `readMsMax`
        # @return [Fixnum]
        attr_accessor :read_ms_max
      
        # Relative amount of time the average shard spent reading input.
        # Corresponds to the JSON property `readRatioAvg`
        # @return [Float]
        attr_accessor :read_ratio_avg
      
        # Relative amount of time the slowest shard spent reading input.
        # Corresponds to the JSON property `readRatioMax`
        # @return [Float]
        attr_accessor :read_ratio_max
      
        # Number of records read into the stage.
        # Corresponds to the JSON property `recordsRead`
        # @return [Fixnum]
        attr_accessor :records_read
      
        # Number of records written by the stage.
        # Corresponds to the JSON property `recordsWritten`
        # @return [Fixnum]
        attr_accessor :records_written
      
        # Total number of bytes written to shuffle.
        # Corresponds to the JSON property `shuffleOutputBytes`
        # @return [Fixnum]
        attr_accessor :shuffle_output_bytes
      
        # Total number of bytes written to shuffle and spilled to disk.
        # Corresponds to the JSON property `shuffleOutputBytesSpilled`
        # @return [Fixnum]
        attr_accessor :shuffle_output_bytes_spilled
      
        # Slot-milliseconds used by the stage.
        # Corresponds to the JSON property `slotMs`
        # @return [Fixnum]
        attr_accessor :slot_ms
      
        # Stage start time represented as milliseconds since the epoch.
        # Corresponds to the JSON property `startMs`
        # @return [Fixnum]
        attr_accessor :start_ms
      
        # Current status for this stage.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # List of operations within the stage in dependency order (approximately
        # chronological).
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::BigqueryV2::ExplainQueryStep>]
        attr_accessor :steps
      
        # Milliseconds the average shard spent waiting to be scheduled.
        # Corresponds to the JSON property `waitMsAvg`
        # @return [Fixnum]
        attr_accessor :wait_ms_avg
      
        # Milliseconds the slowest shard spent waiting to be scheduled.
        # Corresponds to the JSON property `waitMsMax`
        # @return [Fixnum]
        attr_accessor :wait_ms_max
      
        # Relative amount of time the average shard spent waiting to be scheduled.
        # Corresponds to the JSON property `waitRatioAvg`
        # @return [Float]
        attr_accessor :wait_ratio_avg
      
        # Relative amount of time the slowest shard spent waiting to be scheduled.
        # Corresponds to the JSON property `waitRatioMax`
        # @return [Float]
        attr_accessor :wait_ratio_max
      
        # Milliseconds the average shard spent on writing output.
        # Corresponds to the JSON property `writeMsAvg`
        # @return [Fixnum]
        attr_accessor :write_ms_avg
      
        # Milliseconds the slowest shard spent on writing output.
        # Corresponds to the JSON property `writeMsMax`
        # @return [Fixnum]
        attr_accessor :write_ms_max
      
        # Relative amount of time the average shard spent on writing output.
        # Corresponds to the JSON property `writeRatioAvg`
        # @return [Float]
        attr_accessor :write_ratio_avg
      
        # Relative amount of time the slowest shard spent on writing output.
        # Corresponds to the JSON property `writeRatioMax`
        # @return [Float]
        attr_accessor :write_ratio_max
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completed_parallel_inputs = args[:completed_parallel_inputs] if args.key?(:completed_parallel_inputs)
          @compute_mode = args[:compute_mode] if args.key?(:compute_mode)
          @compute_ms_avg = args[:compute_ms_avg] if args.key?(:compute_ms_avg)
          @compute_ms_max = args[:compute_ms_max] if args.key?(:compute_ms_max)
          @compute_ratio_avg = args[:compute_ratio_avg] if args.key?(:compute_ratio_avg)
          @compute_ratio_max = args[:compute_ratio_max] if args.key?(:compute_ratio_max)
          @end_ms = args[:end_ms] if args.key?(:end_ms)
          @id = args[:id] if args.key?(:id)
          @input_stages = args[:input_stages] if args.key?(:input_stages)
          @name = args[:name] if args.key?(:name)
          @parallel_inputs = args[:parallel_inputs] if args.key?(:parallel_inputs)
          @read_ms_avg = args[:read_ms_avg] if args.key?(:read_ms_avg)
          @read_ms_max = args[:read_ms_max] if args.key?(:read_ms_max)
          @read_ratio_avg = args[:read_ratio_avg] if args.key?(:read_ratio_avg)
          @read_ratio_max = args[:read_ratio_max] if args.key?(:read_ratio_max)
          @records_read = args[:records_read] if args.key?(:records_read)
          @records_written = args[:records_written] if args.key?(:records_written)
          @shuffle_output_bytes = args[:shuffle_output_bytes] if args.key?(:shuffle_output_bytes)
          @shuffle_output_bytes_spilled = args[:shuffle_output_bytes_spilled] if args.key?(:shuffle_output_bytes_spilled)
          @slot_ms = args[:slot_ms] if args.key?(:slot_ms)
          @start_ms = args[:start_ms] if args.key?(:start_ms)
          @status = args[:status] if args.key?(:status)
          @steps = args[:steps] if args.key?(:steps)
          @wait_ms_avg = args[:wait_ms_avg] if args.key?(:wait_ms_avg)
          @wait_ms_max = args[:wait_ms_max] if args.key?(:wait_ms_max)
          @wait_ratio_avg = args[:wait_ratio_avg] if args.key?(:wait_ratio_avg)
          @wait_ratio_max = args[:wait_ratio_max] if args.key?(:wait_ratio_max)
          @write_ms_avg = args[:write_ms_avg] if args.key?(:write_ms_avg)
          @write_ms_max = args[:write_ms_max] if args.key?(:write_ms_max)
          @write_ratio_avg = args[:write_ratio_avg] if args.key?(:write_ratio_avg)
          @write_ratio_max = args[:write_ratio_max] if args.key?(:write_ratio_max)
        end
      end
      
      # An operation within a stage.
      class ExplainQueryStep
        include Google::Apis::Core::Hashable
      
        # Machine-readable operation type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Human-readable description of the step(s).
        # Corresponds to the JSON property `substeps`
        # @return [Array<String>]
        attr_accessor :substeps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @substeps = args[:substeps] if args.key?(:substeps)
        end
      end
      
      # Explanation for a single feature.
      class Explanation
        include Google::Apis::Core::Hashable
      
        # Attribution of feature.
        # Corresponds to the JSON property `attribution`
        # @return [Float]
        attr_accessor :attribution
      
        # The full feature name. For non-numerical features, will be formatted like `.`.
        # Overall size of feature name will always be truncated to first 120 characters.
        # Corresponds to the JSON property `featureName`
        # @return [String]
        attr_accessor :feature_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution = args[:attribution] if args.key?(:attribution)
          @feature_name = args[:feature_name] if args.key?(:feature_name)
        end
      end
      
      # Statistics for the EXPORT DATA statement as part of Query Job. EXTRACT JOB
      # statistics are populated in JobStatistics4.
      class ExportDataStatistics
        include Google::Apis::Core::Hashable
      
        # Number of destination files generated in case of EXPORT DATA statement only.
        # Corresponds to the JSON property `fileCount`
        # @return [Fixnum]
        attr_accessor :file_count
      
        # [Alpha] Number of destination rows generated in case of EXPORT DATA statement
        # only.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_count = args[:file_count] if args.key?(:file_count)
          @row_count = args[:row_count] if args.key?(:row_count)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Options defining open source compatible datasets living in the BigQuery
      # catalog. Contains metadata of open source database, schema or namespace
      # represented by the current dataset.
      class ExternalCatalogDatasetOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The storage location URI for all tables in the dataset. Equivalent
        # to hive metastore's database locationUri. Maximum length of 1024 characters.
        # Corresponds to the JSON property `defaultStorageLocationUri`
        # @return [String]
        attr_accessor :default_storage_location_uri
      
        # Optional. A map of key value pairs defining the parameters and properties of
        # the open source schema. Maximum size of 2Mib.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_storage_location_uri = args[:default_storage_location_uri] if args.key?(:default_storage_location_uri)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # Metadata about open source compatible table. The fields contained in these
      # options correspond to hive metastore's table level properties.
      class ExternalCatalogTableOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The connection specifying the credentials to be used to read
        # external storage, such as Azure Blob, Cloud Storage, or S3. The connection is
        # needed to read the open source table from BigQuery Engine. The connection_id
        # can have the form `..` or `projects//locations//connections/`.
        # Corresponds to the JSON property `connectionId`
        # @return [String]
        attr_accessor :connection_id
      
        # Optional. A map of key value pairs defining the parameters and properties of
        # the open source table. Corresponds with hive meta store table parameters.
        # Maximum size of 4Mib.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        # Contains information about how a table's data is stored and accessed by open
        # source query engines.
        # Corresponds to the JSON property `storageDescriptor`
        # @return [Google::Apis::BigqueryV2::StorageDescriptor]
        attr_accessor :storage_descriptor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_id = args[:connection_id] if args.key?(:connection_id)
          @parameters = args[:parameters] if args.key?(:parameters)
          @storage_descriptor = args[:storage_descriptor] if args.key?(:storage_descriptor)
        end
      end
      
      # 
      class ExternalDataConfiguration
        include Google::Apis::Core::Hashable
      
        # Try to detect schema and format options automatically. Any option specified
        # explicitly will be honored.
        # Corresponds to the JSON property `autodetect`
        # @return [Boolean]
        attr_accessor :autodetect
        alias_method :autodetect?, :autodetect
      
        # Options for external data sources.
        # Corresponds to the JSON property `avroOptions`
        # @return [Google::Apis::BigqueryV2::AvroOptions]
        attr_accessor :avro_options
      
        # Options specific to Google Cloud Bigtable data sources.
        # Corresponds to the JSON property `bigtableOptions`
        # @return [Google::Apis::BigqueryV2::BigtableOptions]
        attr_accessor :bigtable_options
      
        # Optional. The compression type of the data source. Possible values include
        # GZIP and NONE. The default value is NONE. This setting is ignored for Google
        # Cloud Bigtable, Google Cloud Datastore backups, Avro, ORC and Parquet formats.
        # An empty string is an invalid value.
        # Corresponds to the JSON property `compression`
        # @return [String]
        attr_accessor :compression
      
        # Optional. The connection specifying the credentials to be used to read
        # external storage, such as Azure Blob, Cloud Storage, or S3. The connection_id
        # can have the form "<project\_id>.<location\_id>.<connection\_id>" or "projects/
        # <project\_id>/locations/<location\_id>/connections/<connection\_id>".
        # Corresponds to the JSON property `connectionId`
        # @return [String]
        attr_accessor :connection_id
      
        # Information related to a CSV data source.
        # Corresponds to the JSON property `csvOptions`
        # @return [Google::Apis::BigqueryV2::CsvOptions]
        attr_accessor :csv_options
      
        # Defines the list of possible SQL data types to which the source decimal values
        # are converted. This list and the precision and the scale parameters of the
        # decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC,
        # and STRING, a type is picked if it is in the specified list and if it supports
        # the precision and the scale. STRING supports all precision and scale values.
        # If none of the listed types supports the precision and the scale, the type
        # supporting the widest range in the specified list is picked, and if a value
        # exceeds the supported range when reading the data, an error will be thrown.
        # Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (
        # precision,scale) is: * (38,9) -> NUMERIC; * (39,9) -> BIGNUMERIC (NUMERIC
        # cannot hold 30 integer digits); * (38,10) -> BIGNUMERIC (NUMERIC cannot hold
        # 10 fractional digits); * (76,38) -> BIGNUMERIC; * (77,38) -> BIGNUMERIC (error
        # if value exeeds supported range). This field cannot contain duplicate types.
        # The order of the types in this field is ignored. For example, ["BIGNUMERIC", "
        # NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes
        # precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["
        # NUMERIC"] for the other file formats.
        # Corresponds to the JSON property `decimalTargetTypes`
        # @return [Array<String>]
        attr_accessor :decimal_target_types
      
        # Optional. Specifies how source URIs are interpreted for constructing the file
        # set to load. By default source URIs are expanded against the underlying
        # storage. Other options include specifying manifest files. Only applicable to
        # object storage systems.
        # Corresponds to the JSON property `fileSetSpecType`
        # @return [String]
        attr_accessor :file_set_spec_type
      
        # Options specific to Google Sheets data sources.
        # Corresponds to the JSON property `googleSheetsOptions`
        # @return [Google::Apis::BigqueryV2::GoogleSheetsOptions]
        attr_accessor :google_sheets_options
      
        # Options for configuring hive partitioning detect.
        # Corresponds to the JSON property `hivePartitioningOptions`
        # @return [Google::Apis::BigqueryV2::HivePartitioningOptions]
        attr_accessor :hive_partitioning_options
      
        # Optional. Indicates if BigQuery should allow extra values that are not
        # represented in the table schema. If true, the extra values are ignored. If
        # false, records with extra columns are treated as bad records, and if there are
        # too many bad records, an invalid error is returned in the job result. The
        # default value is false. The sourceFormat property determines what BigQuery
        # treats as an extra value: CSV: Trailing columns JSON: Named values that don't
        # match any column names Google Cloud Bigtable: This setting is ignored. Google
        # Cloud Datastore backups: This setting is ignored. Avro: This setting is
        # ignored. ORC: This setting is ignored. Parquet: This setting is ignored.
        # Corresponds to the JSON property `ignoreUnknownValues`
        # @return [Boolean]
        attr_accessor :ignore_unknown_values
        alias_method :ignore_unknown_values?, :ignore_unknown_values
      
        # Optional. Load option to be used together with source_format newline-delimited
        # JSON to indicate that a variant of JSON is being loaded. To load newline-
        # delimited GeoJSON, specify GEOJSON (and source_format must be set to
        # NEWLINE_DELIMITED_JSON).
        # Corresponds to the JSON property `jsonExtension`
        # @return [String]
        attr_accessor :json_extension
      
        # Json Options for load and make external tables.
        # Corresponds to the JSON property `jsonOptions`
        # @return [Google::Apis::BigqueryV2::JsonOptions]
        attr_accessor :json_options
      
        # Optional. The maximum number of bad records that BigQuery can ignore when
        # reading data. If the number of bad records exceeds this value, an invalid
        # error is returned in the job result. The default value is 0, which requires
        # that all records are valid. This setting is ignored for Google Cloud Bigtable,
        # Google Cloud Datastore backups, Avro, ORC and Parquet formats.
        # Corresponds to the JSON property `maxBadRecords`
        # @return [Fixnum]
        attr_accessor :max_bad_records
      
        # Optional. Metadata Cache Mode for the table. Set this to enable caching of
        # metadata from external data source.
        # Corresponds to the JSON property `metadataCacheMode`
        # @return [String]
        attr_accessor :metadata_cache_mode
      
        # Optional. ObjectMetadata is used to create Object Tables. Object Tables
        # contain a listing of objects (with their metadata) found at the source_uris.
        # If ObjectMetadata is set, source_format should be omitted. Currently SIMPLE is
        # the only supported Object Metadata type.
        # Corresponds to the JSON property `objectMetadata`
        # @return [String]
        attr_accessor :object_metadata
      
        # Parquet Options for load and make external tables.
        # Corresponds to the JSON property `parquetOptions`
        # @return [Google::Apis::BigqueryV2::ParquetOptions]
        attr_accessor :parquet_options
      
        # Optional. When creating an external table, the user can provide a reference
        # file with the table schema. This is enabled for the following formats: AVRO,
        # PARQUET, ORC.
        # Corresponds to the JSON property `referenceFileSchemaUri`
        # @return [String]
        attr_accessor :reference_file_schema_uri
      
        # Schema of a table
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::BigqueryV2::TableSchema]
        attr_accessor :schema
      
        # [Required] The data format. For CSV files, specify "CSV". For Google sheets,
        # specify "GOOGLE_SHEETS". For newline-delimited JSON, specify "
        # NEWLINE_DELIMITED_JSON". For Avro files, specify "AVRO". For Google Cloud
        # Datastore backups, specify "DATASTORE_BACKUP". For Apache Iceberg tables,
        # specify "ICEBERG". For ORC files, specify "ORC". For Parquet files, specify "
        # PARQUET". [Beta] For Google Cloud Bigtable, specify "BIGTABLE".
        # Corresponds to the JSON property `sourceFormat`
        # @return [String]
        attr_accessor :source_format
      
        # [Required] The fully-qualified URIs that point to your data in Google Cloud.
        # For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character
        # and it must come after the 'bucket' name. Size limits related to load jobs
        # apply to external data sources. For Google Cloud Bigtable URIs: Exactly one
        # URI can be specified and it has be a fully specified and valid HTTPS URL for a
        # Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one
        # URI can be specified. Also, the '*' wildcard character is not allowed.
        # Corresponds to the JSON property `sourceUris`
        # @return [Array<String>]
        attr_accessor :source_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autodetect = args[:autodetect] if args.key?(:autodetect)
          @avro_options = args[:avro_options] if args.key?(:avro_options)
          @bigtable_options = args[:bigtable_options] if args.key?(:bigtable_options)
          @compression = args[:compression] if args.key?(:compression)
          @connection_id = args[:connection_id] if args.key?(:connection_id)
          @csv_options = args[:csv_options] if args.key?(:csv_options)
          @decimal_target_types = args[:decimal_target_types] if args.key?(:decimal_target_types)
          @file_set_spec_type = args[:file_set_spec_type] if args.key?(:file_set_spec_type)
          @google_sheets_options = args[:google_sheets_options] if args.key?(:google_sheets_options)
          @hive_partitioning_options = args[:hive_partitioning_options] if args.key?(:hive_partitioning_options)
          @ignore_unknown_values = args[:ignore_unknown_values] if args.key?(:ignore_unknown_values)
          @json_extension = args[:json_extension] if args.key?(:json_extension)
          @json_options = args[:json_options] if args.key?(:json_options)
          @max_bad_records = args[:max_bad_records] if args.key?(:max_bad_records)
          @metadata_cache_mode = args[:metadata_cache_mode] if args.key?(:metadata_cache_mode)
          @object_metadata = args[:object_metadata] if args.key?(:object_metadata)
          @parquet_options = args[:parquet_options] if args.key?(:parquet_options)
          @reference_file_schema_uri = args[:reference_file_schema_uri] if args.key?(:reference_file_schema_uri)
          @schema = args[:schema] if args.key?(:schema)
          @source_format = args[:source_format] if args.key?(:source_format)
          @source_uris = args[:source_uris] if args.key?(:source_uris)
        end
      end
      
      # Configures the access a dataset defined in an external metadata storage.
      class ExternalDatasetReference
        include Google::Apis::Core::Hashable
      
        # Required. The connection id that is used to access the external_source. Format:
        # projects/`project_id`/locations/`location_id`/connections/`connection_id`
        # Corresponds to the JSON property `connection`
        # @return [String]
        attr_accessor :connection
      
        # Required. External source that backs this dataset.
        # Corresponds to the JSON property `externalSource`
        # @return [String]
        attr_accessor :external_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection = args[:connection] if args.key?(:connection)
          @external_source = args[:external_source] if args.key?(:external_source)
        end
      end
      
      # The external service cost is a portion of the total cost, these costs are not
      # additive with total_bytes_billed. Moreover, this field only track external
      # service costs that will show up as BigQuery costs (e.g. training BigQuery ML
      # job with google cloud CAIP or Automl Tables services), not other costs which
      # may be accrued by running the query (e.g. reading from Bigtable or Cloud
      # Storage). The external service costs with different billing sku (e.g. CAIP job
      # is charged based on VM usage) are converted to BigQuery billed_bytes and
      # slot_ms with equivalent amount of US dollars. Services may not directly
      # correlate to these metrics, but these are the equivalents for billing purposes.
      # Output only.
      class ExternalServiceCost
        include Google::Apis::Core::Hashable
      
        # External service cost in terms of bigquery bytes billed.
        # Corresponds to the JSON property `bytesBilled`
        # @return [Fixnum]
        attr_accessor :bytes_billed
      
        # External service cost in terms of bigquery bytes processed.
        # Corresponds to the JSON property `bytesProcessed`
        # @return [Fixnum]
        attr_accessor :bytes_processed
      
        # External service name.
        # Corresponds to the JSON property `externalService`
        # @return [String]
        attr_accessor :external_service
      
        # Non-preemptable reserved slots used for external job. For example, reserved
        # slots for Cloua AI Platform job are the VM usages converted to BigQuery slot
        # with equivalent mount of price.
        # Corresponds to the JSON property `reservedSlotCount`
        # @return [Fixnum]
        attr_accessor :reserved_slot_count
      
        # External service cost in terms of bigquery slot milliseconds.
        # Corresponds to the JSON property `slotMs`
        # @return [Fixnum]
        attr_accessor :slot_ms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_billed = args[:bytes_billed] if args.key?(:bytes_billed)
          @bytes_processed = args[:bytes_processed] if args.key?(:bytes_processed)
          @external_service = args[:external_service] if args.key?(:external_service)
          @reserved_slot_count = args[:reserved_slot_count] if args.key?(:reserved_slot_count)
          @slot_ms = args[:slot_ms] if args.key?(:slot_ms)
        end
      end
      
      # Representative value of a single feature within the cluster.
      class FeatureValue
        include Google::Apis::Core::Hashable
      
        # Representative value of a categorical feature.
        # Corresponds to the JSON property `categoricalValue`
        # @return [Google::Apis::BigqueryV2::CategoricalValue]
        attr_accessor :categorical_value
      
        # The feature column name.
        # Corresponds to the JSON property `featureColumn`
        # @return [String]
        attr_accessor :feature_column
      
        # The numerical feature value. This is the centroid value for this feature.
        # Corresponds to the JSON property `numericalValue`
        # @return [Float]
        attr_accessor :numerical_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categorical_value = args[:categorical_value] if args.key?(:categorical_value)
          @feature_column = args[:feature_column] if args.key?(:feature_column)
          @numerical_value = args[:numerical_value] if args.key?(:numerical_value)
        end
      end
      
      # Metadata about the foreign data type definition such as the system in which
      # the type is defined.
      class ForeignTypeInfo
        include Google::Apis::Core::Hashable
      
        # Required. Specifies the system which defines the foreign data type.
        # Corresponds to the JSON property `typeSystem`
        # @return [String]
        attr_accessor :type_system
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type_system = args[:type_system] if args.key?(:type_system)
        end
      end
      
      # A view can be represented in multiple ways. Each representation has its own
      # dialect. This message stores the metadata required for these representations.
      class ForeignViewDefinition
        include Google::Apis::Core::Hashable
      
        # Optional. Represents the dialect of the query.
        # Corresponds to the JSON property `dialect`
        # @return [String]
        attr_accessor :dialect
      
        # Required. The query that defines the view.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dialect = args[:dialect] if args.key?(:dialect)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::BigqueryV2::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum policy version that will be used to format the policy.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected. Requests for policies with any conditional role bindings must
        # specify version 3. Policies with no conditional role bindings may specify any
        # valid value or leave the field unset. The policy in the response might use the
        # policy version that you specified, or it might use a lower policy version. For
        # example, if you specify version 3, but the policy has no conditional role
        # bindings, the response uses version 1. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies).
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # Response object of GetQueryResults.
      class GetQueryResultsResponse
        include Google::Apis::Core::Hashable
      
        # Whether the query result was fetched from the query cache.
        # Corresponds to the JSON property `cacheHit`
        # @return [Boolean]
        attr_accessor :cache_hit
        alias_method :cache_hit?, :cache_hit
      
        # Output only. The first errors or warnings encountered during the running of
        # the job. The final message includes the number of errors that caused the
        # process to stop. Errors here do not necessarily mean that the job has
        # completed or was unsuccessful. For more information about error messages, see [
        # Error messages](https://cloud.google.com/bigquery/docs/error-messages).
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::BigqueryV2::ErrorProto>]
        attr_accessor :errors
      
        # A hash of this response.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Whether the query has completed or not. If rows or totalRows are present, this
        # will always be true. If this is false, totalRows will not be available.
        # Corresponds to the JSON property `jobComplete`
        # @return [Boolean]
        attr_accessor :job_complete
        alias_method :job_complete?, :job_complete
      
        # A job reference is a fully qualified identifier for referring to a job.
        # Corresponds to the JSON property `jobReference`
        # @return [Google::Apis::BigqueryV2::JobReference]
        attr_accessor :job_reference
      
        # The resource type of the response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. The number of rows affected by a DML statement. Present only for
        # DML statements INSERT, UPDATE or DELETE.
        # Corresponds to the JSON property `numDmlAffectedRows`
        # @return [Fixnum]
        attr_accessor :num_dml_affected_rows
      
        # A token used for paging results. When this token is non-empty, it indicates
        # additional results are available.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # An object with as many results as can be contained within the maximum
        # permitted reply size. To get any additional rows, you can call GetQueryResults
        # and specify the jobReference returned above. Present only when the query
        # completes successfully. The REST-based representation of this data leverages a
        # series of JSON f,v objects for indicating fields and values.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::BigqueryV2::TableRow>]
        attr_accessor :rows
      
        # Schema of a table
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::BigqueryV2::TableSchema]
        attr_accessor :schema
      
        # The total number of bytes processed for this query.
        # Corresponds to the JSON property `totalBytesProcessed`
        # @return [Fixnum]
        attr_accessor :total_bytes_processed
      
        # The total number of rows in the complete query result set, which can be more
        # than the number of rows in this single page of results. Present only when the
        # query completes successfully.
        # Corresponds to the JSON property `totalRows`
        # @return [Fixnum]
        attr_accessor :total_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_hit = args[:cache_hit] if args.key?(:cache_hit)
          @errors = args[:errors] if args.key?(:errors)
          @etag = args[:etag] if args.key?(:etag)
          @job_complete = args[:job_complete] if args.key?(:job_complete)
          @job_reference = args[:job_reference] if args.key?(:job_reference)
          @kind = args[:kind] if args.key?(:kind)
          @num_dml_affected_rows = args[:num_dml_affected_rows] if args.key?(:num_dml_affected_rows)
          @page_token = args[:page_token] if args.key?(:page_token)
          @rows = args[:rows] if args.key?(:rows)
          @schema = args[:schema] if args.key?(:schema)
          @total_bytes_processed = args[:total_bytes_processed] if args.key?(:total_bytes_processed)
          @total_rows = args[:total_rows] if args.key?(:total_rows)
        end
      end
      
      # Response object of GetServiceAccount
      class GetServiceAccountResponse
        include Google::Apis::Core::Hashable
      
        # The service account email address.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The resource type of the response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Global explanations containing the top most important features after training.
      class GlobalExplanation
        include Google::Apis::Core::Hashable
      
        # Class label for this set of global explanations. Will be empty/null for binary
        # logistic and linear regression models. Sorted alphabetically in descending
        # order.
        # Corresponds to the JSON property `classLabel`
        # @return [String]
        attr_accessor :class_label
      
        # A list of the top global explanations. Sorted by absolute value of attribution
        # in descending order.
        # Corresponds to the JSON property `explanations`
        # @return [Array<Google::Apis::BigqueryV2::Explanation>]
        attr_accessor :explanations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @class_label = args[:class_label] if args.key?(:class_label)
          @explanations = args[:explanations] if args.key?(:explanations)
        end
      end
      
      # Options specific to Google Sheets data sources.
      class GoogleSheetsOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Range of a sheet to query from. Only used when non-empty. Typical
        # format: sheet_name!top_left_cell_id:bottom_right_cell_id For example: sheet1!
        # A1:B20
        # Corresponds to the JSON property `range`
        # @return [String]
        attr_accessor :range
      
        # Optional. The number of rows at the top of a sheet that BigQuery will skip
        # when reading the data. The default value is 0. This property is useful if you
        # have header rows that should be skipped. When autodetect is on, the behavior
        # is the following: * skipLeadingRows unspecified - Autodetect tries to detect
        # headers in the first row. If they are not detected, the row is read as data.
        # Otherwise data is read starting from the second row. * skipLeadingRows is 0 -
        # Instructs autodetect that there are no headers and data should be read
        # starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1
        # rows and tries to detect headers in row N. If headers are not detected, row N
        # is just skipped. Otherwise row N is used to extract column names for the
        # detected schema.
        # Corresponds to the JSON property `skipLeadingRows`
        # @return [Fixnum]
        attr_accessor :skip_leading_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @range = args[:range] if args.key?(:range)
          @skip_leading_rows = args[:skip_leading_rows] if args.key?(:skip_leading_rows)
        end
      end
      
      # High cardinality join detailed information.
      class HighCardinalityJoin
        include Google::Apis::Core::Hashable
      
        # Output only. Count of left input rows.
        # Corresponds to the JSON property `leftRows`
        # @return [Fixnum]
        attr_accessor :left_rows
      
        # Output only. Count of the output rows.
        # Corresponds to the JSON property `outputRows`
        # @return [Fixnum]
        attr_accessor :output_rows
      
        # Output only. Count of right input rows.
        # Corresponds to the JSON property `rightRows`
        # @return [Fixnum]
        attr_accessor :right_rows
      
        # Output only. The index of the join operator in the ExplainQueryStep lists.
        # Corresponds to the JSON property `stepIndex`
        # @return [Fixnum]
        attr_accessor :step_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @left_rows = args[:left_rows] if args.key?(:left_rows)
          @output_rows = args[:output_rows] if args.key?(:output_rows)
          @right_rows = args[:right_rows] if args.key?(:right_rows)
          @step_index = args[:step_index] if args.key?(:step_index)
        end
      end
      
      # Options for configuring hive partitioning detect.
      class HivePartitioningOptions
        include Google::Apis::Core::Hashable
      
        # Output only. For permanent external tables, this field is populated with the
        # hive partition keys in the order they were inferred. The types of the
        # partition keys can be deduced by checking the table schema (which will include
        # the partition keys). Not every API will populate this field in the output. For
        # example, Tables.Get will populate it, but Tables.List will not contain this
        # field.
        # Corresponds to the JSON property `fields`
        # @return [Array<String>]
        attr_accessor :fields
      
        # Optional. When set, what mode of hive partitioning to use when reading data.
        # The following modes are supported: * AUTO: automatically infer partition key
        # name(s) and type(s). * STRINGS: automatically infer partition key name(s). All
        # types are strings. * CUSTOM: partition key schema is encoded in the source URI
        # prefix. Not all storage formats support hive partitioning. Requesting hive
        # partitioning on an unsupported format will lead to an error. Currently
        # supported formats are: JSON, CSV, ORC, Avro and Parquet.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Optional. If set to true, queries over this table require a partition filter
        # that can be used for partition elimination to be specified. Note that this
        # field should only be true when creating a permanent external table or querying
        # a temporary external table. Hive-partitioned loads with
        # require_partition_filter explicitly set to true will fail.
        # Corresponds to the JSON property `requirePartitionFilter`
        # @return [Boolean]
        attr_accessor :require_partition_filter
        alias_method :require_partition_filter?, :require_partition_filter
      
        # Optional. When hive partition detection is requested, a common prefix for all
        # source uris must be required. The prefix must end immediately before the
        # partition key encoding begins. For example, consider files following this data
        # layout: gs://bucket/path_to_table/dt=2019-06-01/country=USA/id=7/file.avro gs:/
        # /bucket/path_to_table/dt=2019-05-31/country=CA/id=3/file.avro When hive
        # partitioning is requested with either AUTO or STRINGS detection, the common
        # prefix can be either of gs://bucket/path_to_table or gs://bucket/path_to_table/
        # . CUSTOM detection requires encoding the partitioning schema immediately after
        # the common prefix. For CUSTOM, any of * gs://bucket/path_to_table/`dt:DATE`/`
        # country:STRING`/`id:INTEGER` * gs://bucket/path_to_table/`dt:STRING`/`country:
        # STRING`/`id:INTEGER` * gs://bucket/path_to_table/`dt:DATE`/`country:STRING`/`
        # id:STRING` would all be valid source URI prefixes.
        # Corresponds to the JSON property `sourceUriPrefix`
        # @return [String]
        attr_accessor :source_uri_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @mode = args[:mode] if args.key?(:mode)
          @require_partition_filter = args[:require_partition_filter] if args.key?(:require_partition_filter)
          @source_uri_prefix = args[:source_uri_prefix] if args.key?(:source_uri_prefix)
        end
      end
      
      # Hyperparameter search spaces. These should be a subset of training_options.
      class HparamSearchSpaces
        include Google::Apis::Core::Hashable
      
        # Search space for string and enum.
        # Corresponds to the JSON property `activationFn`
        # @return [Google::Apis::BigqueryV2::StringHparamSearchSpace]
        attr_accessor :activation_fn
      
        # Search space for an int hyperparameter.
        # Corresponds to the JSON property `batchSize`
        # @return [Google::Apis::BigqueryV2::IntHparamSearchSpace]
        attr_accessor :batch_size
      
        # Search space for string and enum.
        # Corresponds to the JSON property `boosterType`
        # @return [Google::Apis::BigqueryV2::StringHparamSearchSpace]
        attr_accessor :booster_type
      
        # Search space for a double hyperparameter.
        # Corresponds to the JSON property `colsampleBylevel`
        # @return [Google::Apis::BigqueryV2::DoubleHparamSearchSpace]
        attr_accessor :colsample_bylevel
      
        # Search space for a double hyperparameter.
        # Corresponds to the JSON property `colsampleBynode`
        # @return [Google::Apis::BigqueryV2::DoubleHparamSearchSpace]
        attr_accessor :colsample_bynode
      
        # Search space for a double hyperparameter.
        # Corresponds to the JSON property `colsampleBytree`
        # @return [Google::Apis::BigqueryV2::DoubleHparamSearchSpace]
        attr_accessor :colsample_bytree
      
        # Search space for string and enum.
        # Corresponds to the JSON property `dartNormalizeType`
        # @return [Google::Apis::BigqueryV2::StringHparamSearchSpace]
        attr_accessor :dart_normalize_type
      
        # Search space for a double hyperparameter.
        # Corresponds to the JSON property `dropout`
        # @return [Google::Apis::BigqueryV2::DoubleHparamSearchSpace]
        attr_accessor :dropout
      
        # Search space for int array.
        # Corresponds to the JSON property `hiddenUnits`
        # @return [Google::Apis::BigqueryV2::IntArrayHparamSearchSpace]
        attr_accessor :hidden_units
      
        # Search space for a double hyperparameter.
        # Corresponds to the JSON property `l1Reg`
        # @return [Google::Apis::BigqueryV2::DoubleHparamSearchSpace]
        attr_accessor :l1_reg
      
        # Search space for a double hyperparameter.
        # Corresponds to the JSON property `l2Reg`
        # @return [Google::Apis::BigqueryV2::DoubleHparamSearchSpace]
        attr_accessor :l2_reg
      
        # Search space for a double hyperparameter.
        # Corresponds to the JSON property `learnRate`
        # @return [Google::Apis::BigqueryV2::DoubleHparamSearchSpace]
        attr_accessor :learn_rate
      
        # Search space for an int hyperparameter.
        # Corresponds to the JSON property `maxTreeDepth`
        # @return [Google::Apis::BigqueryV2::IntHparamSearchSpace]
        attr_accessor :max_tree_depth
      
        # Search space for a double hyperparameter.
        # Corresponds to the JSON property `minSplitLoss`
        # @return [Google::Apis::BigqueryV2::DoubleHparamSearchSpace]
        attr_accessor :min_split_loss
      
        # Search space for an int hyperparameter.
        # Corresponds to the JSON property `minTreeChildWeight`
        # @return [Google::Apis::BigqueryV2::IntHparamSearchSpace]
        attr_accessor :min_tree_child_weight
      
        # Search space for an int hyperparameter.
        # Corresponds to the JSON property `numClusters`
        # @return [Google::Apis::BigqueryV2::IntHparamSearchSpace]
        attr_accessor :num_clusters
      
        # Search space for an int hyperparameter.
        # Corresponds to the JSON property `numFactors`
        # @return [Google::Apis::BigqueryV2::IntHparamSearchSpace]
        attr_accessor :num_factors
      
        # Search space for an int hyperparameter.
        # Corresponds to the JSON property `numParallelTree`
        # @return [Google::Apis::BigqueryV2::IntHparamSearchSpace]
        attr_accessor :num_parallel_tree
      
        # Search space for string and enum.
        # Corresponds to the JSON property `optimizer`
        # @return [Google::Apis::BigqueryV2::StringHparamSearchSpace]
        attr_accessor :optimizer
      
        # Search space for a double hyperparameter.
        # Corresponds to the JSON property `subsample`
        # @return [Google::Apis::BigqueryV2::DoubleHparamSearchSpace]
        attr_accessor :subsample
      
        # Search space for string and enum.
        # Corresponds to the JSON property `treeMethod`
        # @return [Google::Apis::BigqueryV2::StringHparamSearchSpace]
        attr_accessor :tree_method
      
        # Search space for a double hyperparameter.
        # Corresponds to the JSON property `walsAlpha`
        # @return [Google::Apis::BigqueryV2::DoubleHparamSearchSpace]
        attr_accessor :wals_alpha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_fn = args[:activation_fn] if args.key?(:activation_fn)
          @batch_size = args[:batch_size] if args.key?(:batch_size)
          @booster_type = args[:booster_type] if args.key?(:booster_type)
          @colsample_bylevel = args[:colsample_bylevel] if args.key?(:colsample_bylevel)
          @colsample_bynode = args[:colsample_bynode] if args.key?(:colsample_bynode)
          @colsample_bytree = args[:colsample_bytree] if args.key?(:colsample_bytree)
          @dart_normalize_type = args[:dart_normalize_type] if args.key?(:dart_normalize_type)
          @dropout = args[:dropout] if args.key?(:dropout)
          @hidden_units = args[:hidden_units] if args.key?(:hidden_units)
          @l1_reg = args[:l1_reg] if args.key?(:l1_reg)
          @l2_reg = args[:l2_reg] if args.key?(:l2_reg)
          @learn_rate = args[:learn_rate] if args.key?(:learn_rate)
          @max_tree_depth = args[:max_tree_depth] if args.key?(:max_tree_depth)
          @min_split_loss = args[:min_split_loss] if args.key?(:min_split_loss)
          @min_tree_child_weight = args[:min_tree_child_weight] if args.key?(:min_tree_child_weight)
          @num_clusters = args[:num_clusters] if args.key?(:num_clusters)
          @num_factors = args[:num_factors] if args.key?(:num_factors)
          @num_parallel_tree = args[:num_parallel_tree] if args.key?(:num_parallel_tree)
          @optimizer = args[:optimizer] if args.key?(:optimizer)
          @subsample = args[:subsample] if args.key?(:subsample)
          @tree_method = args[:tree_method] if args.key?(:tree_method)
          @wals_alpha = args[:wals_alpha] if args.key?(:wals_alpha)
        end
      end
      
      # Training info of a trial in [hyperparameter tuning](/bigquery-ml/docs/
      # reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models.
      class HparamTuningTrial
        include Google::Apis::Core::Hashable
      
        # Ending time of the trial.
        # Corresponds to the JSON property `endTimeMs`
        # @return [Fixnum]
        attr_accessor :end_time_ms
      
        # Error message for FAILED and INFEASIBLE trial.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Loss computed on the eval data at the end of trial.
        # Corresponds to the JSON property `evalLoss`
        # @return [Float]
        attr_accessor :eval_loss
      
        # Evaluation metrics of a model. These are either computed on all training data
        # or just the eval data based on whether eval data was used during training.
        # These are not present for imported models.
        # Corresponds to the JSON property `evaluationMetrics`
        # @return [Google::Apis::BigqueryV2::EvaluationMetrics]
        attr_accessor :evaluation_metrics
      
        # Evaluation metrics of a model. These are either computed on all training data
        # or just the eval data based on whether eval data was used during training.
        # These are not present for imported models.
        # Corresponds to the JSON property `hparamTuningEvaluationMetrics`
        # @return [Google::Apis::BigqueryV2::EvaluationMetrics]
        attr_accessor :hparam_tuning_evaluation_metrics
      
        # Options used in model training.
        # Corresponds to the JSON property `hparams`
        # @return [Google::Apis::BigqueryV2::TrainingOptions]
        attr_accessor :hparams
      
        # Starting time of the trial.
        # Corresponds to the JSON property `startTimeMs`
        # @return [Fixnum]
        attr_accessor :start_time_ms
      
        # The status of the trial.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Loss computed on the training data at the end of trial.
        # Corresponds to the JSON property `trainingLoss`
        # @return [Float]
        attr_accessor :training_loss
      
        # 1-based index of the trial.
        # Corresponds to the JSON property `trialId`
        # @return [Fixnum]
        attr_accessor :trial_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time_ms = args[:end_time_ms] if args.key?(:end_time_ms)
          @error_message = args[:error_message] if args.key?(:error_message)
          @eval_loss = args[:eval_loss] if args.key?(:eval_loss)
          @evaluation_metrics = args[:evaluation_metrics] if args.key?(:evaluation_metrics)
          @hparam_tuning_evaluation_metrics = args[:hparam_tuning_evaluation_metrics] if args.key?(:hparam_tuning_evaluation_metrics)
          @hparams = args[:hparams] if args.key?(:hparams)
          @start_time_ms = args[:start_time_ms] if args.key?(:start_time_ms)
          @status = args[:status] if args.key?(:status)
          @training_loss = args[:training_loss] if args.key?(:training_loss)
          @trial_id = args[:trial_id] if args.key?(:trial_id)
        end
      end
      
      # Reason about why no search index was used in the search query (or sub-query).
      class IndexUnusedReason
        include Google::Apis::Core::Hashable
      
        # Specifies the base table involved in the reason that no search index was used.
        # Corresponds to the JSON property `baseTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :base_table
      
        # Specifies the high-level reason for the scenario when no search index was used.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Specifies the name of the unused search index, if available.
        # Corresponds to the JSON property `indexName`
        # @return [String]
        attr_accessor :index_name
      
        # Free form human-readable reason for the scenario when no search index was used.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_table = args[:base_table] if args.key?(:base_table)
          @code = args[:code] if args.key?(:code)
          @index_name = args[:index_name] if args.key?(:index_name)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Details about the input data change insight.
      class InputDataChange
        include Google::Apis::Core::Hashable
      
        # Output only. Records read difference percentage compared to a previous run.
        # Corresponds to the JSON property `recordsReadDiffPercentage`
        # @return [Float]
        attr_accessor :records_read_diff_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @records_read_diff_percentage = args[:records_read_diff_percentage] if args.key?(:records_read_diff_percentage)
        end
      end
      
      # An array of int.
      class IntArray
        include Google::Apis::Core::Hashable
      
        # Elements in the int array.
        # Corresponds to the JSON property `elements`
        # @return [Array<Fixnum>]
        attr_accessor :elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @elements = args[:elements] if args.key?(:elements)
        end
      end
      
      # Search space for int array.
      class IntArrayHparamSearchSpace
        include Google::Apis::Core::Hashable
      
        # Candidates for the int array parameter.
        # Corresponds to the JSON property `candidates`
        # @return [Array<Google::Apis::BigqueryV2::IntArray>]
        attr_accessor :candidates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates = args[:candidates] if args.key?(:candidates)
        end
      end
      
      # Discrete candidates of an int hyperparameter.
      class IntCandidates
        include Google::Apis::Core::Hashable
      
        # Candidates for the int parameter in increasing order.
        # Corresponds to the JSON property `candidates`
        # @return [Array<Fixnum>]
        attr_accessor :candidates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates = args[:candidates] if args.key?(:candidates)
        end
      end
      
      # Search space for an int hyperparameter.
      class IntHparamSearchSpace
        include Google::Apis::Core::Hashable
      
        # Discrete candidates of an int hyperparameter.
        # Corresponds to the JSON property `candidates`
        # @return [Google::Apis::BigqueryV2::IntCandidates]
        attr_accessor :candidates
      
        # Range of an int hyperparameter.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::BigqueryV2::IntRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates = args[:candidates] if args.key?(:candidates)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # Range of an int hyperparameter.
      class IntRange
        include Google::Apis::Core::Hashable
      
        # Max value of the int parameter.
        # Corresponds to the JSON property `max`
        # @return [Fixnum]
        attr_accessor :max
      
        # Min value of the int parameter.
        # Corresponds to the JSON property `min`
        # @return [Fixnum]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
        end
      end
      
      # Information about a single iteration of the training run.
      class IterationResult
        include Google::Apis::Core::Hashable
      
        # (Auto-)arima fitting result. Wrap everything in ArimaResult for easier
        # refactoring if we want to use model-specific iteration results.
        # Corresponds to the JSON property `arimaResult`
        # @return [Google::Apis::BigqueryV2::ArimaResult]
        attr_accessor :arima_result
      
        # Information about top clusters for clustering models.
        # Corresponds to the JSON property `clusterInfos`
        # @return [Array<Google::Apis::BigqueryV2::ClusterInfo>]
        attr_accessor :cluster_infos
      
        # Time taken to run the iteration in milliseconds.
        # Corresponds to the JSON property `durationMs`
        # @return [Fixnum]
        attr_accessor :duration_ms
      
        # Loss computed on the eval data at the end of iteration.
        # Corresponds to the JSON property `evalLoss`
        # @return [Float]
        attr_accessor :eval_loss
      
        # Index of the iteration, 0 based.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Learn rate used for this iteration.
        # Corresponds to the JSON property `learnRate`
        # @return [Float]
        attr_accessor :learn_rate
      
        # The information of the principal components.
        # Corresponds to the JSON property `principalComponentInfos`
        # @return [Array<Google::Apis::BigqueryV2::PrincipalComponentInfo>]
        attr_accessor :principal_component_infos
      
        # Loss computed on the training data at the end of iteration.
        # Corresponds to the JSON property `trainingLoss`
        # @return [Float]
        attr_accessor :training_loss
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arima_result = args[:arima_result] if args.key?(:arima_result)
          @cluster_infos = args[:cluster_infos] if args.key?(:cluster_infos)
          @duration_ms = args[:duration_ms] if args.key?(:duration_ms)
          @eval_loss = args[:eval_loss] if args.key?(:eval_loss)
          @index = args[:index] if args.key?(:index)
          @learn_rate = args[:learn_rate] if args.key?(:learn_rate)
          @principal_component_infos = args[:principal_component_infos] if args.key?(:principal_component_infos)
          @training_loss = args[:training_loss] if args.key?(:training_loss)
        end
      end
      
      # 
      class Job
        include Google::Apis::Core::Hashable
      
        # Required. Describes the job configuration.
        # Corresponds to the JSON property `configuration`
        # @return [Google::Apis::BigqueryV2::JobConfiguration]
        attr_accessor :configuration
      
        # Output only. A hash of this resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Opaque ID field of the job.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Reason about why a Job was created from a [`jobs.query`](https://cloud.google.
        # com/bigquery/docs/reference/rest/v2/jobs/query) method when used with `
        # JOB_CREATION_OPTIONAL` Job creation mode. For [`jobs.insert`](https://cloud.
        # google.com/bigquery/docs/reference/rest/v2/jobs/insert) method calls it will
        # always be `REQUESTED`. This feature is not yet available. Jobs will always be
        # created.
        # Corresponds to the JSON property `jobCreationReason`
        # @return [Google::Apis::BigqueryV2::JobCreationReason]
        attr_accessor :job_creation_reason
      
        # A job reference is a fully qualified identifier for referring to a job.
        # Corresponds to the JSON property `jobReference`
        # @return [Google::Apis::BigqueryV2::JobReference]
        attr_accessor :job_reference
      
        # Output only. The type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. [Full-projection-only] String representation of identity of
        # requesting party. Populated for both first- and third-party identities. Only
        # present for APIs that support third-party identities.
        # Corresponds to the JSON property `principal_subject`
        # @return [String]
        attr_accessor :principal_subject
      
        # Output only. A URL that can be used to access the resource again.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Statistics for a single job execution.
        # Corresponds to the JSON property `statistics`
        # @return [Google::Apis::BigqueryV2::JobStatistics]
        attr_accessor :statistics
      
        # Output only. The status of this job. Examine this value when polling an
        # asynchronous job to see if the job is complete.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::BigqueryV2::JobStatus]
        attr_accessor :status
      
        # Output only. Email address of the user who ran the job.
        # Corresponds to the JSON property `user_email`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configuration = args[:configuration] if args.key?(:configuration)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @job_creation_reason = args[:job_creation_reason] if args.key?(:job_creation_reason)
          @job_reference = args[:job_reference] if args.key?(:job_reference)
          @kind = args[:kind] if args.key?(:kind)
          @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
          @self_link = args[:self_link] if args.key?(:self_link)
          @statistics = args[:statistics] if args.key?(:statistics)
          @status = args[:status] if args.key?(:status)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # Describes format of a jobs cancellation response.
      class CancelJobResponse
        include Google::Apis::Core::Hashable
      
        # The final state of the job.
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::BigqueryV2::Job]
        attr_accessor :job
      
        # The resource type of the response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job = args[:job] if args.key?(:job)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class JobConfiguration
        include Google::Apis::Core::Hashable
      
        # JobConfigurationTableCopy configures a job that copies data from one table to
        # another. For more information on copying tables, see [Copy a table](https://
        # cloud.google.com/bigquery/docs/managing-tables#copy-table).
        # Corresponds to the JSON property `copy`
        # @return [Google::Apis::BigqueryV2::JobConfigurationTableCopy]
        attr_accessor :copy
      
        # Optional. If set, don't actually run this job. A valid query will return a
        # mostly empty response with some processing statistics, while an invalid query
        # will return the same error it would if it wasn't a dry run. Behavior of non-
        # query jobs is undefined.
        # Corresponds to the JSON property `dryRun`
        # @return [Boolean]
        attr_accessor :dry_run
        alias_method :dry_run?, :dry_run
      
        # JobConfigurationExtract configures a job that exports data from a BigQuery
        # table into Google Cloud Storage.
        # Corresponds to the JSON property `extract`
        # @return [Google::Apis::BigqueryV2::JobConfigurationExtract]
        attr_accessor :extract
      
        # Optional. Job timeout in milliseconds. If this time limit is exceeded,
        # BigQuery will attempt to stop a longer job, but may not always succeed in
        # canceling it before the job completes. For example, a job that takes more than
        # 60 seconds to complete has a better chance of being stopped than a job that
        # takes 10 seconds to complete.
        # Corresponds to the JSON property `jobTimeoutMs`
        # @return [Fixnum]
        attr_accessor :job_timeout_ms
      
        # Output only. The type of the job. Can be QUERY, LOAD, EXTRACT, COPY or UNKNOWN.
        # Corresponds to the JSON property `jobType`
        # @return [String]
        attr_accessor :job_type
      
        # The labels associated with this job. You can use these to organize and group
        # your jobs. Label keys and values can be no longer than 63 characters, can only
        # contain lowercase letters, numeric characters, underscores and dashes.
        # International characters are allowed. Label values are optional. Label keys
        # must start with a letter and each label in the list must have a different key.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # JobConfigurationLoad contains the configuration properties for loading data
        # into a destination table.
        # Corresponds to the JSON property `load`
        # @return [Google::Apis::BigqueryV2::JobConfigurationLoad]
        attr_accessor :load
      
        # JobConfigurationQuery configures a BigQuery query job.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::BigqueryV2::JobConfigurationQuery]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @copy = args[:copy] if args.key?(:copy)
          @dry_run = args[:dry_run] if args.key?(:dry_run)
          @extract = args[:extract] if args.key?(:extract)
          @job_timeout_ms = args[:job_timeout_ms] if args.key?(:job_timeout_ms)
          @job_type = args[:job_type] if args.key?(:job_type)
          @labels = args[:labels] if args.key?(:labels)
          @load = args[:load] if args.key?(:load)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # JobConfigurationExtract configures a job that exports data from a BigQuery
      # table into Google Cloud Storage.
      class JobConfigurationExtract
        include Google::Apis::Core::Hashable
      
        # Optional. The compression type to use for exported files. Possible values
        # include DEFLATE, GZIP, NONE, SNAPPY, and ZSTD. The default value is NONE. Not
        # all compression formats are support for all file formats. DEFLATE is only
        # supported for Avro. ZSTD is only supported for Parquet. Not applicable when
        # extracting models.
        # Corresponds to the JSON property `compression`
        # @return [String]
        attr_accessor :compression
      
        # Optional. The exported file format. Possible values include CSV,
        # NEWLINE_DELIMITED_JSON, PARQUET, or AVRO for tables and ML_TF_SAVED_MODEL or
        # ML_XGBOOST_BOOSTER for models. The default value for tables is CSV. Tables
        # with nested or repeated fields cannot be exported as CSV. The default value
        # for models is ML_TF_SAVED_MODEL.
        # Corresponds to the JSON property `destinationFormat`
        # @return [String]
        attr_accessor :destination_format
      
        # [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as
        # necessary. The fully-qualified Google Cloud Storage URI where the extracted
        # table should be written.
        # Corresponds to the JSON property `destinationUri`
        # @return [String]
        attr_accessor :destination_uri
      
        # [Pick one] A list of fully-qualified Google Cloud Storage URIs where the
        # extracted table should be written.
        # Corresponds to the JSON property `destinationUris`
        # @return [Array<String>]
        attr_accessor :destination_uris
      
        # Optional. When extracting data in CSV format, this defines the delimiter to
        # use between fields in the exported data. Default is ','. Not applicable when
        # extracting models.
        # Corresponds to the JSON property `fieldDelimiter`
        # @return [String]
        attr_accessor :field_delimiter
      
        # Options related to model extraction.
        # Corresponds to the JSON property `modelExtractOptions`
        # @return [Google::Apis::BigqueryV2::ModelExtractOptions]
        attr_accessor :model_extract_options
      
        # Optional. Whether to print out a header row in the results. Default is true.
        # Not applicable when extracting models.
        # Corresponds to the JSON property `printHeader`
        # @return [Boolean]
        attr_accessor :print_header
        alias_method :print_header?, :print_header
      
        # Id path of a model.
        # Corresponds to the JSON property `sourceModel`
        # @return [Google::Apis::BigqueryV2::ModelReference]
        attr_accessor :source_model
      
        # A reference to the table being exported.
        # Corresponds to the JSON property `sourceTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :source_table
      
        # Whether to use logical types when extracting to AVRO format. Not applicable
        # when extracting models.
        # Corresponds to the JSON property `useAvroLogicalTypes`
        # @return [Boolean]
        attr_accessor :use_avro_logical_types
        alias_method :use_avro_logical_types?, :use_avro_logical_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compression = args[:compression] if args.key?(:compression)
          @destination_format = args[:destination_format] if args.key?(:destination_format)
          @destination_uri = args[:destination_uri] if args.key?(:destination_uri)
          @destination_uris = args[:destination_uris] if args.key?(:destination_uris)
          @field_delimiter = args[:field_delimiter] if args.key?(:field_delimiter)
          @model_extract_options = args[:model_extract_options] if args.key?(:model_extract_options)
          @print_header = args[:print_header] if args.key?(:print_header)
          @source_model = args[:source_model] if args.key?(:source_model)
          @source_table = args[:source_table] if args.key?(:source_table)
          @use_avro_logical_types = args[:use_avro_logical_types] if args.key?(:use_avro_logical_types)
        end
      end
      
      # JobConfigurationLoad contains the configuration properties for loading data
      # into a destination table.
      class JobConfigurationLoad
        include Google::Apis::Core::Hashable
      
        # Optional. Accept rows that are missing trailing optional columns. The missing
        # values are treated as nulls. If false, records with missing trailing columns
        # are treated as bad records, and if there are too many bad records, an invalid
        # error is returned in the job result. The default value is false. Only
        # applicable to CSV, ignored for other formats.
        # Corresponds to the JSON property `allowJaggedRows`
        # @return [Boolean]
        attr_accessor :allow_jagged_rows
        alias_method :allow_jagged_rows?, :allow_jagged_rows
      
        # Indicates if BigQuery should allow quoted data sections that contain newline
        # characters in a CSV file. The default value is false.
        # Corresponds to the JSON property `allowQuotedNewlines`
        # @return [Boolean]
        attr_accessor :allow_quoted_newlines
        alias_method :allow_quoted_newlines?, :allow_quoted_newlines
      
        # Optional. Indicates if we should automatically infer the options and schema
        # for CSV and JSON sources.
        # Corresponds to the JSON property `autodetect`
        # @return [Boolean]
        attr_accessor :autodetect
        alias_method :autodetect?, :autodetect
      
        # Configures table clustering.
        # Corresponds to the JSON property `clustering`
        # @return [Google::Apis::BigqueryV2::Clustering]
        attr_accessor :clustering
      
        # Optional. Character map supported for column names in CSV/Parquet loads.
        # Defaults to STRICT and can be overridden by Project Config Service. Using this
        # option with unsupporting load formats will result in an error.
        # Corresponds to the JSON property `columnNameCharacterMap`
        # @return [String]
        attr_accessor :column_name_character_map
      
        # Optional. Connection properties which can modify the load job behavior.
        # Currently, only the 'session_id' connection property is supported, and is used
        # to resolve _SESSION appearing as the dataset id.
        # Corresponds to the JSON property `connectionProperties`
        # @return [Array<Google::Apis::BigqueryV2::ConnectionProperty>]
        attr_accessor :connection_properties
      
        # Optional. [Experimental] Configures the load job to copy files directly to the
        # destination BigLake managed table, bypassing file content reading and
        # rewriting. Copying files only is supported when all the following are true: * `
        # source_uris` are located in the same Cloud Storage location as the destination
        # table's `storage_uri` location. * `source_format` is `PARQUET`. * `
        # destination_table` is an existing BigLake managed table. The table's schema
        # does not have flexible column names. The table's columns do not have type
        # parameters other than precision and scale. * No options other than the above
        # are specified.
        # Corresponds to the JSON property `copyFilesOnly`
        # @return [Boolean]
        attr_accessor :copy_files_only
        alias_method :copy_files_only?, :copy_files_only
      
        # Optional. Specifies whether the job is allowed to create new tables. The
        # following values are supported: * CREATE_IF_NEEDED: If the table does not
        # exist, BigQuery creates the table. * CREATE_NEVER: The table must already
        # exist. If it does not, a 'notFound' error is returned in the job result. The
        # default value is CREATE_IF_NEEDED. Creation, truncation and append actions
        # occur as one atomic update upon job completion.
        # Corresponds to the JSON property `createDisposition`
        # @return [String]
        attr_accessor :create_disposition
      
        # Optional. If this property is true, the job creates a new session using a
        # randomly generated session_id. To continue using a created session with
        # subsequent queries, pass the existing session identifier as a `
        # ConnectionProperty` value. The session identifier is returned as part of the `
        # SessionInfo` message within the query statistics. The new session's location
        # will be set to `Job.JobReference.location` if it is present, otherwise it's
        # set to the default location based on existing routing logic.
        # Corresponds to the JSON property `createSession`
        # @return [Boolean]
        attr_accessor :create_session
        alias_method :create_session?, :create_session
      
        # Defines the list of possible SQL data types to which the source decimal values
        # are converted. This list and the precision and the scale parameters of the
        # decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC,
        # and STRING, a type is picked if it is in the specified list and if it supports
        # the precision and the scale. STRING supports all precision and scale values.
        # If none of the listed types supports the precision and the scale, the type
        # supporting the widest range in the specified list is picked, and if a value
        # exceeds the supported range when reading the data, an error will be thrown.
        # Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (
        # precision,scale) is: * (38,9) -> NUMERIC; * (39,9) -> BIGNUMERIC (NUMERIC
        # cannot hold 30 integer digits); * (38,10) -> BIGNUMERIC (NUMERIC cannot hold
        # 10 fractional digits); * (76,38) -> BIGNUMERIC; * (77,38) -> BIGNUMERIC (error
        # if value exeeds supported range). This field cannot contain duplicate types.
        # The order of the types in this field is ignored. For example, ["BIGNUMERIC", "
        # NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes
        # precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["
        # NUMERIC"] for the other file formats.
        # Corresponds to the JSON property `decimalTargetTypes`
        # @return [Array<String>]
        attr_accessor :decimal_target_types
      
        # Custom encryption configuration (e.g., Cloud KMS keys)
        # Corresponds to the JSON property `destinationEncryptionConfiguration`
        # @return [Google::Apis::BigqueryV2::EncryptionConfiguration]
        attr_accessor :destination_encryption_configuration
      
        # [Required] The destination table to load the data into.
        # Corresponds to the JSON property `destinationTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :destination_table
      
        # Properties for the destination table.
        # Corresponds to the JSON property `destinationTableProperties`
        # @return [Google::Apis::BigqueryV2::DestinationTableProperties]
        attr_accessor :destination_table_properties
      
        # Optional. The character encoding of the data. The supported values are UTF-8,
        # ISO-8859-1, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is
        # UTF-8. BigQuery decodes the data after the raw, binary data has been split
        # using the values of the `quote` and `fieldDelimiter` properties. If you don't
        # specify an encoding, or if you specify a UTF-8 encoding when the CSV file is
        # not UTF-8 encoded, BigQuery attempts to convert the data to UTF-8. Generally,
        # your data loads successfully, but it may not match byte-for-byte what you
        # expect. To avoid this, specify the correct encoding by using the `--encoding`
        # flag. If BigQuery can't convert a character other than the ASCII `0` character,
        # BigQuery converts the character to the standard Unicode replacement character:
        # �.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Optional. The separator character for fields in a CSV file. The separator is
        # interpreted as a single byte. For files encoded in ISO-8859-1, any single
        # character can be used as a separator. For files encoded in UTF-8, characters
        # represented in decimal range 1-127 (U+0001-U+007F) can be used without any
        # modification. UTF-8 characters encoded with multiple bytes (i.e. U+0080 and
        # above) will have only the first byte used for separating fields. The remaining
        # bytes will be treated as a part of the field. BigQuery also supports the
        # escape sequence "\t" (U+0009) to specify a tab separator. The default value is
        # comma (",", U+002C).
        # Corresponds to the JSON property `fieldDelimiter`
        # @return [String]
        attr_accessor :field_delimiter
      
        # Optional. Specifies how source URIs are interpreted for constructing the file
        # set to load. By default, source URIs are expanded against the underlying
        # storage. You can also specify manifest files to control how the file set is
        # constructed. This option is only applicable to object storage systems.
        # Corresponds to the JSON property `fileSetSpecType`
        # @return [String]
        attr_accessor :file_set_spec_type
      
        # Options for configuring hive partitioning detect.
        # Corresponds to the JSON property `hivePartitioningOptions`
        # @return [Google::Apis::BigqueryV2::HivePartitioningOptions]
        attr_accessor :hive_partitioning_options
      
        # Optional. Indicates if BigQuery should allow extra values that are not
        # represented in the table schema. If true, the extra values are ignored. If
        # false, records with extra columns are treated as bad records, and if there are
        # too many bad records, an invalid error is returned in the job result. The
        # default value is false. The sourceFormat property determines what BigQuery
        # treats as an extra value: CSV: Trailing columns JSON: Named values that don't
        # match any column names in the table schema Avro, Parquet, ORC: Fields in the
        # file schema that don't exist in the table schema.
        # Corresponds to the JSON property `ignoreUnknownValues`
        # @return [Boolean]
        attr_accessor :ignore_unknown_values
        alias_method :ignore_unknown_values?, :ignore_unknown_values
      
        # Optional. Load option to be used together with source_format newline-delimited
        # JSON to indicate that a variant of JSON is being loaded. To load newline-
        # delimited GeoJSON, specify GEOJSON (and source_format must be set to
        # NEWLINE_DELIMITED_JSON).
        # Corresponds to the JSON property `jsonExtension`
        # @return [String]
        attr_accessor :json_extension
      
        # Optional. The maximum number of bad records that BigQuery can ignore when
        # running the job. If the number of bad records exceeds this value, an invalid
        # error is returned in the job result. The default value is 0, which requires
        # that all records are valid. This is only supported for CSV and
        # NEWLINE_DELIMITED_JSON file formats.
        # Corresponds to the JSON property `maxBadRecords`
        # @return [Fixnum]
        attr_accessor :max_bad_records
      
        # Optional. Specifies a string that represents a null value in a CSV file. For
        # example, if you specify "\N", BigQuery interprets "\N" as a null value when
        # loading a CSV file. The default value is the empty string. If you set this
        # property to a custom value, BigQuery throws an error if an empty string is
        # present for all data types except for STRING and BYTE. For STRING and BYTE
        # columns, BigQuery interprets the empty string as an empty value.
        # Corresponds to the JSON property `nullMarker`
        # @return [String]
        attr_accessor :null_marker
      
        # Parquet Options for load and make external tables.
        # Corresponds to the JSON property `parquetOptions`
        # @return [Google::Apis::BigqueryV2::ParquetOptions]
        attr_accessor :parquet_options
      
        # Optional. When sourceFormat is set to "CSV", this indicates whether the
        # embedded ASCII control characters (the first 32 characters in the ASCII-table,
        # from '\x00' to '\x1F') are preserved.
        # Corresponds to the JSON property `preserveAsciiControlCharacters`
        # @return [Boolean]
        attr_accessor :preserve_ascii_control_characters
        alias_method :preserve_ascii_control_characters?, :preserve_ascii_control_characters
      
        # If sourceFormat is set to "DATASTORE_BACKUP", indicates which entity
        # properties to load into BigQuery from a Cloud Datastore backup. Property names
        # are case sensitive and must be top-level properties. If no properties are
        # specified, BigQuery loads all properties. If any named property isn't found in
        # the Cloud Datastore backup, an invalid error is returned in the job result.
        # Corresponds to the JSON property `projectionFields`
        # @return [Array<String>]
        attr_accessor :projection_fields
      
        # Optional. The value that is used to quote data sections in a CSV file.
        # BigQuery converts the string to ISO-8859-1 encoding, and then uses the first
        # byte of the encoded string to split the data in its raw, binary state. The
        # default value is a double-quote ('"'). If your data does not contain quoted
        # sections, set the property value to an empty string. If your data contains
        # quoted newline characters, you must also set the allowQuotedNewlines property
        # to true. To include the specific quote character within a quoted value,
        # precede it with an additional matching quote character. For example, if you
        # want to escape the default character ' " ', use ' "" '. @default "
        # Corresponds to the JSON property `quote`
        # @return [String]
        attr_accessor :quote
      
        # Range partitioning specification for the destination table. Only one of
        # timePartitioning and rangePartitioning should be specified.
        # Corresponds to the JSON property `rangePartitioning`
        # @return [Google::Apis::BigqueryV2::RangePartitioning]
        attr_accessor :range_partitioning
      
        # Optional. The user can provide a reference file with the reader schema. This
        # file is only loaded if it is part of source URIs, but is not loaded otherwise.
        # It is enabled for the following formats: AVRO, PARQUET, ORC.
        # Corresponds to the JSON property `referenceFileSchemaUri`
        # @return [String]
        attr_accessor :reference_file_schema_uri
      
        # Schema of a table
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::BigqueryV2::TableSchema]
        attr_accessor :schema
      
        # [Deprecated] The inline schema. For CSV schemas, specify as "Field1:Type1[,
        # Field2:Type2]*". For example, "foo:STRING, bar:INTEGER, baz:FLOAT".
        # Corresponds to the JSON property `schemaInline`
        # @return [String]
        attr_accessor :schema_inline
      
        # [Deprecated] The format of the schemaInline property.
        # Corresponds to the JSON property `schemaInlineFormat`
        # @return [String]
        attr_accessor :schema_inline_format
      
        # Allows the schema of the destination table to be updated as a side effect of
        # the load job if a schema is autodetected or supplied in the job configuration.
        # Schema update options are supported in two cases: when writeDisposition is
        # WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination
        # table is a partition of a table, specified by partition decorators. For normal
        # tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the
        # following values are specified: * ALLOW_FIELD_ADDITION: allow adding a
        # nullable field to the schema. * ALLOW_FIELD_RELAXATION: allow relaxing a
        # required field in the original schema to nullable.
        # Corresponds to the JSON property `schemaUpdateOptions`
        # @return [Array<String>]
        attr_accessor :schema_update_options
      
        # Optional. The number of rows at the top of a CSV file that BigQuery will skip
        # when loading the data. The default value is 0. This property is useful if you
        # have header rows in the file that should be skipped. When autodetect is on,
        # the behavior is the following: * skipLeadingRows unspecified - Autodetect
        # tries to detect headers in the first row. If they are not detected, the row is
        # read as data. Otherwise data is read starting from the second row. *
        # skipLeadingRows is 0 - Instructs autodetect that there are no headers and data
        # should be read starting from the first row. * skipLeadingRows = N > 0 -
        # Autodetect skips N-1 rows and tries to detect headers in row N. If headers are
        # not detected, row N is just skipped. Otherwise row N is used to extract column
        # names for the detected schema.
        # Corresponds to the JSON property `skipLeadingRows`
        # @return [Fixnum]
        attr_accessor :skip_leading_rows
      
        # Optional. The format of the data files. For CSV files, specify "CSV". For
        # datastore backups, specify "DATASTORE_BACKUP". For newline-delimited JSON,
        # specify "NEWLINE_DELIMITED_JSON". For Avro, specify "AVRO". For parquet,
        # specify "PARQUET". For orc, specify "ORC". The default value is CSV.
        # Corresponds to the JSON property `sourceFormat`
        # @return [String]
        attr_accessor :source_format
      
        # [Required] The fully-qualified URIs that point to your data in Google Cloud.
        # For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character
        # and it must come after the 'bucket' name. Size limits related to load jobs
        # apply to external data sources. For Google Cloud Bigtable URIs: Exactly one
        # URI can be specified and it has be a fully specified and valid HTTPS URL for a
        # Google Cloud Bigtable table. For Google Cloud Datastore backups: Exactly one
        # URI can be specified. Also, the '*' wildcard character is not allowed.
        # Corresponds to the JSON property `sourceUris`
        # @return [Array<String>]
        attr_accessor :source_uris
      
        # Time-based partitioning specification for the destination table. Only one of
        # timePartitioning and rangePartitioning should be specified.
        # Corresponds to the JSON property `timePartitioning`
        # @return [Google::Apis::BigqueryV2::TimePartitioning]
        attr_accessor :time_partitioning
      
        # Optional. If sourceFormat is set to "AVRO", indicates whether to interpret
        # logical types as the corresponding BigQuery data type (for example, TIMESTAMP),
        # instead of using the raw type (for example, INTEGER).
        # Corresponds to the JSON property `useAvroLogicalTypes`
        # @return [Boolean]
        attr_accessor :use_avro_logical_types
        alias_method :use_avro_logical_types?, :use_avro_logical_types
      
        # Optional. Specifies the action that occurs if the destination table already
        # exists. The following values are supported: * WRITE_TRUNCATE: If the table
        # already exists, BigQuery overwrites the data, removes the constraints and uses
        # the schema from the load job. * WRITE_APPEND: If the table already exists,
        # BigQuery appends the data to the table. * WRITE_EMPTY: If the table already
        # exists and contains data, a 'duplicate' error is returned in the job result.
        # The default value is WRITE_APPEND. Each action is atomic and only occurs if
        # BigQuery is able to complete the job successfully. Creation, truncation and
        # append actions occur as one atomic update upon job completion.
        # Corresponds to the JSON property `writeDisposition`
        # @return [String]
        attr_accessor :write_disposition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_jagged_rows = args[:allow_jagged_rows] if args.key?(:allow_jagged_rows)
          @allow_quoted_newlines = args[:allow_quoted_newlines] if args.key?(:allow_quoted_newlines)
          @autodetect = args[:autodetect] if args.key?(:autodetect)
          @clustering = args[:clustering] if args.key?(:clustering)
          @column_name_character_map = args[:column_name_character_map] if args.key?(:column_name_character_map)
          @connection_properties = args[:connection_properties] if args.key?(:connection_properties)
          @copy_files_only = args[:copy_files_only] if args.key?(:copy_files_only)
          @create_disposition = args[:create_disposition] if args.key?(:create_disposition)
          @create_session = args[:create_session] if args.key?(:create_session)
          @decimal_target_types = args[:decimal_target_types] if args.key?(:decimal_target_types)
          @destination_encryption_configuration = args[:destination_encryption_configuration] if args.key?(:destination_encryption_configuration)
          @destination_table = args[:destination_table] if args.key?(:destination_table)
          @destination_table_properties = args[:destination_table_properties] if args.key?(:destination_table_properties)
          @encoding = args[:encoding] if args.key?(:encoding)
          @field_delimiter = args[:field_delimiter] if args.key?(:field_delimiter)
          @file_set_spec_type = args[:file_set_spec_type] if args.key?(:file_set_spec_type)
          @hive_partitioning_options = args[:hive_partitioning_options] if args.key?(:hive_partitioning_options)
          @ignore_unknown_values = args[:ignore_unknown_values] if args.key?(:ignore_unknown_values)
          @json_extension = args[:json_extension] if args.key?(:json_extension)
          @max_bad_records = args[:max_bad_records] if args.key?(:max_bad_records)
          @null_marker = args[:null_marker] if args.key?(:null_marker)
          @parquet_options = args[:parquet_options] if args.key?(:parquet_options)
          @preserve_ascii_control_characters = args[:preserve_ascii_control_characters] if args.key?(:preserve_ascii_control_characters)
          @projection_fields = args[:projection_fields] if args.key?(:projection_fields)
          @quote = args[:quote] if args.key?(:quote)
          @range_partitioning = args[:range_partitioning] if args.key?(:range_partitioning)
          @reference_file_schema_uri = args[:reference_file_schema_uri] if args.key?(:reference_file_schema_uri)
          @schema = args[:schema] if args.key?(:schema)
          @schema_inline = args[:schema_inline] if args.key?(:schema_inline)
          @schema_inline_format = args[:schema_inline_format] if args.key?(:schema_inline_format)
          @schema_update_options = args[:schema_update_options] if args.key?(:schema_update_options)
          @skip_leading_rows = args[:skip_leading_rows] if args.key?(:skip_leading_rows)
          @source_format = args[:source_format] if args.key?(:source_format)
          @source_uris = args[:source_uris] if args.key?(:source_uris)
          @time_partitioning = args[:time_partitioning] if args.key?(:time_partitioning)
          @use_avro_logical_types = args[:use_avro_logical_types] if args.key?(:use_avro_logical_types)
          @write_disposition = args[:write_disposition] if args.key?(:write_disposition)
        end
      end
      
      # JobConfigurationQuery configures a BigQuery query job.
      class JobConfigurationQuery
        include Google::Apis::Core::Hashable
      
        # Optional. If true and query uses legacy SQL dialect, allows the query to
        # produce arbitrarily large result tables at a slight cost in performance.
        # Requires destinationTable to be set. For GoogleSQL queries, this flag is
        # ignored and large results are always allowed. However, you must still set
        # destinationTable when result size exceeds the allowed maximum response size.
        # Corresponds to the JSON property `allowLargeResults`
        # @return [Boolean]
        attr_accessor :allow_large_results
        alias_method :allow_large_results?, :allow_large_results
      
        # Configures table clustering.
        # Corresponds to the JSON property `clustering`
        # @return [Google::Apis::BigqueryV2::Clustering]
        attr_accessor :clustering
      
        # Connection properties which can modify the query behavior.
        # Corresponds to the JSON property `connectionProperties`
        # @return [Array<Google::Apis::BigqueryV2::ConnectionProperty>]
        attr_accessor :connection_properties
      
        # [Optional] Specifies whether the query should be executed as a continuous
        # query. The default value is false.
        # Corresponds to the JSON property `continuous`
        # @return [Boolean]
        attr_accessor :continuous
        alias_method :continuous?, :continuous
      
        # Optional. Specifies whether the job is allowed to create new tables. The
        # following values are supported: * CREATE_IF_NEEDED: If the table does not
        # exist, BigQuery creates the table. * CREATE_NEVER: The table must already
        # exist. If it does not, a 'notFound' error is returned in the job result. The
        # default value is CREATE_IF_NEEDED. Creation, truncation and append actions
        # occur as one atomic update upon job completion.
        # Corresponds to the JSON property `createDisposition`
        # @return [String]
        attr_accessor :create_disposition
      
        # If this property is true, the job creates a new session using a randomly
        # generated session_id. To continue using a created session with subsequent
        # queries, pass the existing session identifier as a `ConnectionProperty` value.
        # The session identifier is returned as part of the `SessionInfo` message within
        # the query statistics. The new session's location will be set to `Job.
        # JobReference.location` if it is present, otherwise it's set to the default
        # location based on existing routing logic.
        # Corresponds to the JSON property `createSession`
        # @return [Boolean]
        attr_accessor :create_session
        alias_method :create_session?, :create_session
      
        # Optional. Specifies the default dataset to use for unqualified table names in
        # the query. This setting does not alter behavior of unqualified dataset names.
        # Setting the system variable `@@dataset_id` achieves the same behavior. See
        # https://cloud.google.com/bigquery/docs/reference/system-variables for more
        # information on system variables.
        # Corresponds to the JSON property `defaultDataset`
        # @return [Google::Apis::BigqueryV2::DatasetReference]
        attr_accessor :default_dataset
      
        # Custom encryption configuration (e.g., Cloud KMS keys)
        # Corresponds to the JSON property `destinationEncryptionConfiguration`
        # @return [Google::Apis::BigqueryV2::EncryptionConfiguration]
        attr_accessor :destination_encryption_configuration
      
        # Optional. Describes the table where the query results should be stored. This
        # property must be set for large results that exceed the maximum response size.
        # For queries that produce anonymous (cached) results, this field will be
        # populated by BigQuery.
        # Corresponds to the JSON property `destinationTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :destination_table
      
        # Optional. If true and query uses legacy SQL dialect, flattens all nested and
        # repeated fields in the query results. allowLargeResults must be true if this
        # is set to false. For GoogleSQL queries, this flag is ignored and results are
        # never flattened.
        # Corresponds to the JSON property `flattenResults`
        # @return [Boolean]
        attr_accessor :flatten_results
        alias_method :flatten_results?, :flatten_results
      
        # Optional. [Deprecated] Maximum billing tier allowed for this query. The
        # billing tier controls the amount of compute resources allotted to the query,
        # and multiplies the on-demand cost of the query accordingly. A query that runs
        # within its allotted resources will succeed and indicate its billing tier in
        # statistics.query.billingTier, but if the query exceeds its allotted resources,
        # it will fail with billingTierLimitExceeded. WARNING: The billed byte amount
        # can be multiplied by an amount up to this number! Most users should not need
        # to alter this setting, and we recommend that you avoid introducing new uses of
        # it.
        # Corresponds to the JSON property `maximumBillingTier`
        # @return [Fixnum]
        attr_accessor :maximum_billing_tier
      
        # Limits the bytes billed for this job. Queries that will have bytes billed
        # beyond this limit will fail (without incurring a charge). If unspecified, this
        # will be set to your project default.
        # Corresponds to the JSON property `maximumBytesBilled`
        # @return [Fixnum]
        attr_accessor :maximum_bytes_billed
      
        # GoogleSQL only. Set to POSITIONAL to use positional (?) query parameters or to
        # NAMED to use named (@myparam) query parameters in this query.
        # Corresponds to the JSON property `parameterMode`
        # @return [String]
        attr_accessor :parameter_mode
      
        # [Deprecated] This property is deprecated.
        # Corresponds to the JSON property `preserveNulls`
        # @return [Boolean]
        attr_accessor :preserve_nulls
        alias_method :preserve_nulls?, :preserve_nulls
      
        # Optional. Specifies a priority for the query. Possible values include
        # INTERACTIVE and BATCH. The default value is INTERACTIVE.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        # [Required] SQL query text to execute. The useLegacySql field can be used to
        # indicate whether the query uses legacy SQL or GoogleSQL.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Query parameters for GoogleSQL queries.
        # Corresponds to the JSON property `queryParameters`
        # @return [Array<Google::Apis::BigqueryV2::QueryParameter>]
        attr_accessor :query_parameters
      
        # Range partitioning specification for the destination table. Only one of
        # timePartitioning and rangePartitioning should be specified.
        # Corresponds to the JSON property `rangePartitioning`
        # @return [Google::Apis::BigqueryV2::RangePartitioning]
        attr_accessor :range_partitioning
      
        # Allows the schema of the destination table to be updated as a side effect of
        # the query job. Schema update options are supported in two cases: when
        # writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and
        # the destination table is a partition of a table, specified by partition
        # decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema.
        # One or more of the following values are specified: * ALLOW_FIELD_ADDITION:
        # allow adding a nullable field to the schema. * ALLOW_FIELD_RELAXATION: allow
        # relaxing a required field in the original schema to nullable.
        # Corresponds to the JSON property `schemaUpdateOptions`
        # @return [Array<String>]
        attr_accessor :schema_update_options
      
        # Options related to script execution.
        # Corresponds to the JSON property `scriptOptions`
        # @return [Google::Apis::BigqueryV2::ScriptOptions]
        attr_accessor :script_options
      
        # System variables given to a query.
        # Corresponds to the JSON property `systemVariables`
        # @return [Google::Apis::BigqueryV2::SystemVariables]
        attr_accessor :system_variables
      
        # Optional. You can specify external table definitions, which operate as
        # ephemeral tables that can be queried. These definitions are configured using a
        # JSON map, where the string key represents the table identifier, and the value
        # is the corresponding external data configuration object.
        # Corresponds to the JSON property `tableDefinitions`
        # @return [Hash<String,Google::Apis::BigqueryV2::ExternalDataConfiguration>]
        attr_accessor :table_definitions
      
        # Time-based partitioning specification for the destination table. Only one of
        # timePartitioning and rangePartitioning should be specified.
        # Corresponds to the JSON property `timePartitioning`
        # @return [Google::Apis::BigqueryV2::TimePartitioning]
        attr_accessor :time_partitioning
      
        # Optional. Specifies whether to use BigQuery's legacy SQL dialect for this
        # query. The default value is true. If set to false, the query will use BigQuery'
        # s GoogleSQL: https://cloud.google.com/bigquery/sql-reference/ When
        # useLegacySql is set to false, the value of flattenResults is ignored; query
        # will be run as if flattenResults is false.
        # Corresponds to the JSON property `useLegacySql`
        # @return [Boolean]
        attr_accessor :use_legacy_sql
        alias_method :use_legacy_sql?, :use_legacy_sql
      
        # Optional. Whether to look for the result in the query cache. The query cache
        # is a best-effort cache that will be flushed whenever tables in the query are
        # modified. Moreover, the query cache is only available when a query does not
        # have a destination table specified. The default value is true.
        # Corresponds to the JSON property `useQueryCache`
        # @return [Boolean]
        attr_accessor :use_query_cache
        alias_method :use_query_cache?, :use_query_cache
      
        # Describes user-defined function resources used in the query.
        # Corresponds to the JSON property `userDefinedFunctionResources`
        # @return [Array<Google::Apis::BigqueryV2::UserDefinedFunctionResource>]
        attr_accessor :user_defined_function_resources
      
        # Optional. Specifies the action that occurs if the destination table already
        # exists. The following values are supported: * WRITE_TRUNCATE: If the table
        # already exists, BigQuery overwrites the data, removes the constraints, and
        # uses the schema from the query result. * WRITE_APPEND: If the table already
        # exists, BigQuery appends the data to the table. * WRITE_EMPTY: If the table
        # already exists and contains data, a 'duplicate' error is returned in the job
        # result. The default value is WRITE_EMPTY. Each action is atomic and only
        # occurs if BigQuery is able to complete the job successfully. Creation,
        # truncation and append actions occur as one atomic update upon job completion.
        # Corresponds to the JSON property `writeDisposition`
        # @return [String]
        attr_accessor :write_disposition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_large_results = args[:allow_large_results] if args.key?(:allow_large_results)
          @clustering = args[:clustering] if args.key?(:clustering)
          @connection_properties = args[:connection_properties] if args.key?(:connection_properties)
          @continuous = args[:continuous] if args.key?(:continuous)
          @create_disposition = args[:create_disposition] if args.key?(:create_disposition)
          @create_session = args[:create_session] if args.key?(:create_session)
          @default_dataset = args[:default_dataset] if args.key?(:default_dataset)
          @destination_encryption_configuration = args[:destination_encryption_configuration] if args.key?(:destination_encryption_configuration)
          @destination_table = args[:destination_table] if args.key?(:destination_table)
          @flatten_results = args[:flatten_results] if args.key?(:flatten_results)
          @maximum_billing_tier = args[:maximum_billing_tier] if args.key?(:maximum_billing_tier)
          @maximum_bytes_billed = args[:maximum_bytes_billed] if args.key?(:maximum_bytes_billed)
          @parameter_mode = args[:parameter_mode] if args.key?(:parameter_mode)
          @preserve_nulls = args[:preserve_nulls] if args.key?(:preserve_nulls)
          @priority = args[:priority] if args.key?(:priority)
          @query = args[:query] if args.key?(:query)
          @query_parameters = args[:query_parameters] if args.key?(:query_parameters)
          @range_partitioning = args[:range_partitioning] if args.key?(:range_partitioning)
          @schema_update_options = args[:schema_update_options] if args.key?(:schema_update_options)
          @script_options = args[:script_options] if args.key?(:script_options)
          @system_variables = args[:system_variables] if args.key?(:system_variables)
          @table_definitions = args[:table_definitions] if args.key?(:table_definitions)
          @time_partitioning = args[:time_partitioning] if args.key?(:time_partitioning)
          @use_legacy_sql = args[:use_legacy_sql] if args.key?(:use_legacy_sql)
          @use_query_cache = args[:use_query_cache] if args.key?(:use_query_cache)
          @user_defined_function_resources = args[:user_defined_function_resources] if args.key?(:user_defined_function_resources)
          @write_disposition = args[:write_disposition] if args.key?(:write_disposition)
        end
      end
      
      # JobConfigurationTableCopy configures a job that copies data from one table to
      # another. For more information on copying tables, see [Copy a table](https://
      # cloud.google.com/bigquery/docs/managing-tables#copy-table).
      class JobConfigurationTableCopy
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies whether the job is allowed to create new tables. The
        # following values are supported: * CREATE_IF_NEEDED: If the table does not
        # exist, BigQuery creates the table. * CREATE_NEVER: The table must already
        # exist. If it does not, a 'notFound' error is returned in the job result. The
        # default value is CREATE_IF_NEEDED. Creation, truncation and append actions
        # occur as one atomic update upon job completion.
        # Corresponds to the JSON property `createDisposition`
        # @return [String]
        attr_accessor :create_disposition
      
        # Custom encryption configuration (e.g., Cloud KMS keys).
        # Corresponds to the JSON property `destinationEncryptionConfiguration`
        # @return [Google::Apis::BigqueryV2::EncryptionConfiguration]
        attr_accessor :destination_encryption_configuration
      
        # Optional. The time when the destination table expires. Expired tables will be
        # deleted and their storage reclaimed.
        # Corresponds to the JSON property `destinationExpirationTime`
        # @return [String]
        attr_accessor :destination_expiration_time
      
        # [Required] The destination table.
        # Corresponds to the JSON property `destinationTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :destination_table
      
        # Optional. Supported operation types in table copy job.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # [Pick one] Source table to copy.
        # Corresponds to the JSON property `sourceTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :source_table
      
        # [Pick one] Source tables to copy.
        # Corresponds to the JSON property `sourceTables`
        # @return [Array<Google::Apis::BigqueryV2::TableReference>]
        attr_accessor :source_tables
      
        # Optional. Specifies the action that occurs if the destination table already
        # exists. The following values are supported: * WRITE_TRUNCATE: If the table
        # already exists, BigQuery overwrites the table data and uses the schema and
        # table constraints from the source table. * WRITE_APPEND: If the table already
        # exists, BigQuery appends the data to the table. * WRITE_EMPTY: If the table
        # already exists and contains data, a 'duplicate' error is returned in the job
        # result. The default value is WRITE_EMPTY. Each action is atomic and only
        # occurs if BigQuery is able to complete the job successfully. Creation,
        # truncation and append actions occur as one atomic update upon job completion.
        # Corresponds to the JSON property `writeDisposition`
        # @return [String]
        attr_accessor :write_disposition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_disposition = args[:create_disposition] if args.key?(:create_disposition)
          @destination_encryption_configuration = args[:destination_encryption_configuration] if args.key?(:destination_encryption_configuration)
          @destination_expiration_time = args[:destination_expiration_time] if args.key?(:destination_expiration_time)
          @destination_table = args[:destination_table] if args.key?(:destination_table)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @source_table = args[:source_table] if args.key?(:source_table)
          @source_tables = args[:source_tables] if args.key?(:source_tables)
          @write_disposition = args[:write_disposition] if args.key?(:write_disposition)
        end
      end
      
      # Reason about why a Job was created from a [`jobs.query`](https://cloud.google.
      # com/bigquery/docs/reference/rest/v2/jobs/query) method when used with `
      # JOB_CREATION_OPTIONAL` Job creation mode. For [`jobs.insert`](https://cloud.
      # google.com/bigquery/docs/reference/rest/v2/jobs/insert) method calls it will
      # always be `REQUESTED`. This feature is not yet available. Jobs will always be
      # created.
      class JobCreationReason
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies the high level reason why a Job was created.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # JobList is the response format for a jobs.list call.
      class JobList
        include Google::Apis::Core::Hashable
      
        # A hash of this page of results.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # List of jobs that were requested.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::BigqueryV2::JobList::Job>]
        attr_accessor :jobs
      
        # The resource type of the response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of skipped locations that were unreachable. For more information about
        # BigQuery locations, see: https://cloud.google.com/bigquery/docs/locations.
        # Example: "europe-west5"
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @jobs = args[:jobs] if args.key?(:jobs)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
        
        # ListFormatJob is a partial projection of job information returned as part of a
        # jobs.list response.
        class Job
          include Google::Apis::Core::Hashable
        
          # Required. Describes the job configuration.
          # Corresponds to the JSON property `configuration`
          # @return [Google::Apis::BigqueryV2::JobConfiguration]
          attr_accessor :configuration
        
          # Error details.
          # Corresponds to the JSON property `errorResult`
          # @return [Google::Apis::BigqueryV2::ErrorProto]
          attr_accessor :error_result
        
          # Unique opaque ID of the job.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # A job reference is a fully qualified identifier for referring to a job.
          # Corresponds to the JSON property `jobReference`
          # @return [Google::Apis::BigqueryV2::JobReference]
          attr_accessor :job_reference
        
          # The resource type.
          # Corresponds to the JSON property `kind`
          # @return [String]
          attr_accessor :kind
        
          # [Full-projection-only] String representation of identity of requesting party.
          # Populated for both first- and third-party identities. Only present for APIs
          # that support third-party identities.
          # Corresponds to the JSON property `principal_subject`
          # @return [String]
          attr_accessor :principal_subject
        
          # Running state of the job. When the state is DONE, errorResult can be checked
          # to determine whether the job succeeded or failed.
          # Corresponds to the JSON property `state`
          # @return [String]
          attr_accessor :state
        
          # Statistics for a single job execution.
          # Corresponds to the JSON property `statistics`
          # @return [Google::Apis::BigqueryV2::JobStatistics]
          attr_accessor :statistics
        
          # [Full-projection-only] Describes the status of this job.
          # Corresponds to the JSON property `status`
          # @return [Google::Apis::BigqueryV2::JobStatus]
          attr_accessor :status
        
          # [Full-projection-only] Email address of the user who ran the job.
          # Corresponds to the JSON property `user_email`
          # @return [String]
          attr_accessor :user_email
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @configuration = args[:configuration] if args.key?(:configuration)
            @error_result = args[:error_result] if args.key?(:error_result)
            @id = args[:id] if args.key?(:id)
            @job_reference = args[:job_reference] if args.key?(:job_reference)
            @kind = args[:kind] if args.key?(:kind)
            @principal_subject = args[:principal_subject] if args.key?(:principal_subject)
            @state = args[:state] if args.key?(:state)
            @statistics = args[:statistics] if args.key?(:statistics)
            @status = args[:status] if args.key?(:status)
            @user_email = args[:user_email] if args.key?(:user_email)
          end
        end
      end
      
      # A job reference is a fully qualified identifier for referring to a job.
      class JobReference
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the job. The ID must contain only letters (a-z, A-Z),
        # numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024
        # characters.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # Optional. The geographic location of the job. The default value is US. For
        # more information about BigQuery locations, see: https://cloud.google.com/
        # bigquery/docs/locations
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Required. The ID of the project containing this job.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] if args.key?(:job_id)
          @location = args[:location] if args.key?(:location)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Statistics for a single job execution.
      class JobStatistics
        include Google::Apis::Core::Hashable
      
        # Output only. [TrustedTester] Job progress (0.0 -> 1.0) for LOAD and EXTRACT
        # jobs.
        # Corresponds to the JSON property `completionRatio`
        # @return [Float]
        attr_accessor :completion_ratio
      
        # Statistics for a copy job.
        # Corresponds to the JSON property `copy`
        # @return [Google::Apis::BigqueryV2::JobStatistics5]
        attr_accessor :copy
      
        # Output only. Creation time of this job, in milliseconds since the epoch. This
        # field will be present on all jobs.
        # Corresponds to the JSON property `creationTime`
        # @return [Fixnum]
        attr_accessor :creation_time
      
        # Statistics for data-masking.
        # Corresponds to the JSON property `dataMaskingStatistics`
        # @return [Google::Apis::BigqueryV2::DataMaskingStatistics]
        attr_accessor :data_masking_statistics
      
        # Output only. End time of this job, in milliseconds since the epoch. This field
        # will be present whenever a job is in the DONE state.
        # Corresponds to the JSON property `endTime`
        # @return [Fixnum]
        attr_accessor :end_time
      
        # Statistics for an extract job.
        # Corresponds to the JSON property `extract`
        # @return [Google::Apis::BigqueryV2::JobStatistics4]
        attr_accessor :extract
      
        # Output only. The duration in milliseconds of the execution of the final
        # attempt of this job, as BigQuery may internally re-attempt to execute the job.
        # Corresponds to the JSON property `finalExecutionDurationMs`
        # @return [Fixnum]
        attr_accessor :final_execution_duration_ms
      
        # Statistics for a load job.
        # Corresponds to the JSON property `load`
        # @return [Google::Apis::BigqueryV2::JobStatistics3]
        attr_accessor :load
      
        # Output only. Number of child jobs executed.
        # Corresponds to the JSON property `numChildJobs`
        # @return [Fixnum]
        attr_accessor :num_child_jobs
      
        # Output only. If this is a child job, specifies the job ID of the parent.
        # Corresponds to the JSON property `parentJobId`
        # @return [String]
        attr_accessor :parent_job_id
      
        # Statistics for a query job.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::BigqueryV2::JobStatistics2]
        attr_accessor :query
      
        # Output only. Quotas which delayed this job's start time.
        # Corresponds to the JSON property `quotaDeferments`
        # @return [Array<String>]
        attr_accessor :quota_deferments
      
        # Output only. Job resource usage breakdown by reservation. This field reported
        # misleading information and will no longer be populated.
        # Corresponds to the JSON property `reservationUsage`
        # @return [Array<Google::Apis::BigqueryV2::JobStatistics::ReservationUsage>]
        attr_accessor :reservation_usage
      
        # Output only. Name of the primary reservation assigned to this job. Note that
        # this could be different than reservations reported in the reservation usage
        # field if parent reservations were used to execute this job.
        # Corresponds to the JSON property `reservation_id`
        # @return [String]
        attr_accessor :reservation_id
      
        # Statistics for row-level security.
        # Corresponds to the JSON property `rowLevelSecurityStatistics`
        # @return [Google::Apis::BigqueryV2::RowLevelSecurityStatistics]
        attr_accessor :row_level_security_statistics
      
        # Job statistics specific to the child job of a script.
        # Corresponds to the JSON property `scriptStatistics`
        # @return [Google::Apis::BigqueryV2::ScriptStatistics]
        attr_accessor :script_statistics
      
        # [Preview] Information related to sessions.
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::BigqueryV2::SessionInfo]
        attr_accessor :session_info
      
        # Output only. Start time of this job, in milliseconds since the epoch. This
        # field will be present when the job transitions from the PENDING state to
        # either RUNNING or DONE.
        # Corresponds to the JSON property `startTime`
        # @return [Fixnum]
        attr_accessor :start_time
      
        # Output only. Total bytes processed for the job.
        # Corresponds to the JSON property `totalBytesProcessed`
        # @return [Fixnum]
        attr_accessor :total_bytes_processed
      
        # Output only. Slot-milliseconds for the job.
        # Corresponds to the JSON property `totalSlotMs`
        # @return [Fixnum]
        attr_accessor :total_slot_ms
      
        # [Alpha] Information of a multi-statement transaction.
        # Corresponds to the JSON property `transactionInfo`
        # @return [Google::Apis::BigqueryV2::TransactionInfo]
        attr_accessor :transaction_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_ratio = args[:completion_ratio] if args.key?(:completion_ratio)
          @copy = args[:copy] if args.key?(:copy)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @data_masking_statistics = args[:data_masking_statistics] if args.key?(:data_masking_statistics)
          @end_time = args[:end_time] if args.key?(:end_time)
          @extract = args[:extract] if args.key?(:extract)
          @final_execution_duration_ms = args[:final_execution_duration_ms] if args.key?(:final_execution_duration_ms)
          @load = args[:load] if args.key?(:load)
          @num_child_jobs = args[:num_child_jobs] if args.key?(:num_child_jobs)
          @parent_job_id = args[:parent_job_id] if args.key?(:parent_job_id)
          @query = args[:query] if args.key?(:query)
          @quota_deferments = args[:quota_deferments] if args.key?(:quota_deferments)
          @reservation_usage = args[:reservation_usage] if args.key?(:reservation_usage)
          @reservation_id = args[:reservation_id] if args.key?(:reservation_id)
          @row_level_security_statistics = args[:row_level_security_statistics] if args.key?(:row_level_security_statistics)
          @script_statistics = args[:script_statistics] if args.key?(:script_statistics)
          @session_info = args[:session_info] if args.key?(:session_info)
          @start_time = args[:start_time] if args.key?(:start_time)
          @total_bytes_processed = args[:total_bytes_processed] if args.key?(:total_bytes_processed)
          @total_slot_ms = args[:total_slot_ms] if args.key?(:total_slot_ms)
          @transaction_info = args[:transaction_info] if args.key?(:transaction_info)
        end
        
        # Job resource usage breakdown by reservation.
        class ReservationUsage
          include Google::Apis::Core::Hashable
        
          # Reservation name or "unreserved" for on-demand resource usage and multi-
          # statement queries.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # Total slot milliseconds used by the reservation for a particular job.
          # Corresponds to the JSON property `slotMs`
          # @return [Fixnum]
          attr_accessor :slot_ms
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @name = args[:name] if args.key?(:name)
            @slot_ms = args[:slot_ms] if args.key?(:slot_ms)
          end
        end
      end
      
      # Statistics for a query job.
      class JobStatistics2
        include Google::Apis::Core::Hashable
      
        # Statistics for a BI Engine specific query. Populated as part of JobStatistics2
        # Corresponds to the JSON property `biEngineStatistics`
        # @return [Google::Apis::BigqueryV2::BiEngineStatistics]
        attr_accessor :bi_engine_statistics
      
        # Output only. Billing tier for the job. This is a BigQuery-specific concept
        # which is not related to the Google Cloud notion of "free tier". The value here
        # is a measure of the query's resource consumption relative to the amount of
        # data scanned. For on-demand queries, the limit is 100, and all queries within
        # this limit are billed at the standard on-demand rates. On-demand queries that
        # exceed this limit will fail with a billingTierLimitExceeded error.
        # Corresponds to the JSON property `billingTier`
        # @return [Fixnum]
        attr_accessor :billing_tier
      
        # Output only. Whether the query result was fetched from the query cache.
        # Corresponds to the JSON property `cacheHit`
        # @return [Boolean]
        attr_accessor :cache_hit
        alias_method :cache_hit?, :cache_hit
      
        # Output only. Referenced dataset for DCL statement.
        # Corresponds to the JSON property `dclTargetDataset`
        # @return [Google::Apis::BigqueryV2::DatasetReference]
        attr_accessor :dcl_target_dataset
      
        # Output only. Referenced table for DCL statement.
        # Corresponds to the JSON property `dclTargetTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :dcl_target_table
      
        # Output only. Referenced view for DCL statement.
        # Corresponds to the JSON property `dclTargetView`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :dcl_target_view
      
        # Output only. The number of row access policies affected by a DDL statement.
        # Present only for DROP ALL ROW ACCESS POLICIES queries.
        # Corresponds to the JSON property `ddlAffectedRowAccessPolicyCount`
        # @return [Fixnum]
        attr_accessor :ddl_affected_row_access_policy_count
      
        # Output only. The table after rename. Present only for ALTER TABLE RENAME TO
        # query.
        # Corresponds to the JSON property `ddlDestinationTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :ddl_destination_table
      
        # Output only. The DDL operation performed, possibly dependent on the pre-
        # existence of the DDL target.
        # Corresponds to the JSON property `ddlOperationPerformed`
        # @return [String]
        attr_accessor :ddl_operation_performed
      
        # Output only. The DDL target dataset. Present only for CREATE/ALTER/DROP SCHEMA(
        # dataset) queries.
        # Corresponds to the JSON property `ddlTargetDataset`
        # @return [Google::Apis::BigqueryV2::DatasetReference]
        attr_accessor :ddl_target_dataset
      
        # Id path of a routine.
        # Corresponds to the JSON property `ddlTargetRoutine`
        # @return [Google::Apis::BigqueryV2::RoutineReference]
        attr_accessor :ddl_target_routine
      
        # Id path of a row access policy.
        # Corresponds to the JSON property `ddlTargetRowAccessPolicy`
        # @return [Google::Apis::BigqueryV2::RowAccessPolicyReference]
        attr_accessor :ddl_target_row_access_policy
      
        # Output only. The DDL target table. Present only for CREATE/DROP TABLE/VIEW and
        # DROP ALL ROW ACCESS POLICIES queries.
        # Corresponds to the JSON property `ddlTargetTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :ddl_target_table
      
        # Detailed statistics for DML statements
        # Corresponds to the JSON property `dmlStats`
        # @return [Google::Apis::BigqueryV2::DmlStatistics]
        attr_accessor :dml_stats
      
        # Output only. The original estimate of bytes processed for the job.
        # Corresponds to the JSON property `estimatedBytesProcessed`
        # @return [Fixnum]
        attr_accessor :estimated_bytes_processed
      
        # Statistics for the EXPORT DATA statement as part of Query Job. EXTRACT JOB
        # statistics are populated in JobStatistics4.
        # Corresponds to the JSON property `exportDataStatistics`
        # @return [Google::Apis::BigqueryV2::ExportDataStatistics]
        attr_accessor :export_data_statistics
      
        # Output only. Job cost breakdown as bigquery internal cost and external service
        # costs.
        # Corresponds to the JSON property `externalServiceCosts`
        # @return [Array<Google::Apis::BigqueryV2::ExternalServiceCost>]
        attr_accessor :external_service_costs
      
        # Statistics for a LOAD query.
        # Corresponds to the JSON property `loadQueryStatistics`
        # @return [Google::Apis::BigqueryV2::LoadQueryStatistics]
        attr_accessor :load_query_statistics
      
        # Statistics of materialized views considered in a query job.
        # Corresponds to the JSON property `materializedViewStatistics`
        # @return [Google::Apis::BigqueryV2::MaterializedViewStatistics]
        attr_accessor :materialized_view_statistics
      
        # Statistics for metadata caching in BigLake tables.
        # Corresponds to the JSON property `metadataCacheStatistics`
        # @return [Google::Apis::BigqueryV2::MetadataCacheStatistics]
        attr_accessor :metadata_cache_statistics
      
        # Job statistics specific to a BigQuery ML training job.
        # Corresponds to the JSON property `mlStatistics`
        # @return [Google::Apis::BigqueryV2::MlStatistics]
        attr_accessor :ml_statistics
      
        # Deprecated.
        # Corresponds to the JSON property `modelTraining`
        # @return [Google::Apis::BigqueryV2::BigQueryModelTraining]
        attr_accessor :model_training
      
        # Deprecated.
        # Corresponds to the JSON property `modelTrainingCurrentIteration`
        # @return [Fixnum]
        attr_accessor :model_training_current_iteration
      
        # Deprecated.
        # Corresponds to the JSON property `modelTrainingExpectedTotalIteration`
        # @return [Fixnum]
        attr_accessor :model_training_expected_total_iteration
      
        # Output only. The number of rows affected by a DML statement. Present only for
        # DML statements INSERT, UPDATE or DELETE.
        # Corresponds to the JSON property `numDmlAffectedRows`
        # @return [Fixnum]
        attr_accessor :num_dml_affected_rows
      
        # Performance insights for the job.
        # Corresponds to the JSON property `performanceInsights`
        # @return [Google::Apis::BigqueryV2::PerformanceInsights]
        attr_accessor :performance_insights
      
        # Query optimization information for a QUERY job.
        # Corresponds to the JSON property `queryInfo`
        # @return [Google::Apis::BigqueryV2::QueryInfo]
        attr_accessor :query_info
      
        # Output only. Describes execution plan for the query.
        # Corresponds to the JSON property `queryPlan`
        # @return [Array<Google::Apis::BigqueryV2::ExplainQueryStage>]
        attr_accessor :query_plan
      
        # Output only. Referenced routines for the job.
        # Corresponds to the JSON property `referencedRoutines`
        # @return [Array<Google::Apis::BigqueryV2::RoutineReference>]
        attr_accessor :referenced_routines
      
        # Output only. Referenced tables for the job. Queries that reference more than
        # 50 tables will not have a complete list.
        # Corresponds to the JSON property `referencedTables`
        # @return [Array<Google::Apis::BigqueryV2::TableReference>]
        attr_accessor :referenced_tables
      
        # Output only. Job resource usage breakdown by reservation. This field reported
        # misleading information and will no longer be populated.
        # Corresponds to the JSON property `reservationUsage`
        # @return [Array<Google::Apis::BigqueryV2::JobStatistics2::ReservationUsage>]
        attr_accessor :reservation_usage
      
        # Schema of a table
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::BigqueryV2::TableSchema]
        attr_accessor :schema
      
        # Statistics for a search query. Populated as part of JobStatistics2.
        # Corresponds to the JSON property `searchStatistics`
        # @return [Google::Apis::BigqueryV2::SearchStatistics]
        attr_accessor :search_statistics
      
        # Statistics for a BigSpark query. Populated as part of JobStatistics2
        # Corresponds to the JSON property `sparkStatistics`
        # @return [Google::Apis::BigqueryV2::SparkStatistics]
        attr_accessor :spark_statistics
      
        # Output only. The type of query statement, if valid. Possible values: * `SELECT`
        # : [`SELECT`](/bigquery/docs/reference/standard-sql/query-syntax#select_list)
        # statement. * `ASSERT`: [`ASSERT`](/bigquery/docs/reference/standard-sql/
        # debugging-statements#assert) statement. * `INSERT`: [`INSERT`](/bigquery/docs/
        # reference/standard-sql/dml-syntax#insert_statement) statement. * `UPDATE`: [`
        # UPDATE`](/bigquery/docs/reference/standard-sql/query-syntax#update_statement)
        # statement. * `DELETE`: [`DELETE`](/bigquery/docs/reference/standard-sql/data-
        # manipulation-language) statement. * `MERGE`: [`MERGE`](/bigquery/docs/
        # reference/standard-sql/data-manipulation-language) statement. * `CREATE_TABLE`:
        # [`CREATE TABLE`](/bigquery/docs/reference/standard-sql/data-definition-
        # language#create_table_statement) statement, without `AS SELECT`. * `
        # CREATE_TABLE_AS_SELECT`: [`CREATE TABLE AS SELECT`](/bigquery/docs/reference/
        # standard-sql/data-definition-language#query_statement) statement. * `
        # CREATE_VIEW`: [`CREATE VIEW`](/bigquery/docs/reference/standard-sql/data-
        # definition-language#create_view_statement) statement. * `CREATE_MODEL`: [`
        # CREATE MODEL`](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-
        # create#create_model_statement) statement. * `CREATE_MATERIALIZED_VIEW`: [`
        # CREATE MATERIALIZED VIEW`](/bigquery/docs/reference/standard-sql/data-
        # definition-language#create_materialized_view_statement) statement. * `
        # CREATE_FUNCTION`: [`CREATE FUNCTION`](/bigquery/docs/reference/standard-sql/
        # data-definition-language#create_function_statement) statement. * `
        # CREATE_TABLE_FUNCTION`: [`CREATE TABLE FUNCTION`](/bigquery/docs/reference/
        # standard-sql/data-definition-language#create_table_function_statement)
        # statement. * `CREATE_PROCEDURE`: [`CREATE PROCEDURE`](/bigquery/docs/reference/
        # standard-sql/data-definition-language#create_procedure) statement. * `
        # CREATE_ROW_ACCESS_POLICY`: [`CREATE ROW ACCESS POLICY`](/bigquery/docs/
        # reference/standard-sql/data-definition-language#
        # create_row_access_policy_statement) statement. * `CREATE_SCHEMA`: [`CREATE
        # SCHEMA`](/bigquery/docs/reference/standard-sql/data-definition-language#
        # create_schema_statement) statement. * `CREATE_SNAPSHOT_TABLE`: [`CREATE
        # SNAPSHOT TABLE`](/bigquery/docs/reference/standard-sql/data-definition-
        # language#create_snapshot_table_statement) statement. * `CREATE_SEARCH_INDEX`: [
        # `CREATE SEARCH INDEX`](/bigquery/docs/reference/standard-sql/data-definition-
        # language#create_search_index_statement) statement. * `DROP_TABLE`: [`DROP
        # TABLE`](/bigquery/docs/reference/standard-sql/data-definition-language#
        # drop_table_statement) statement. * `DROP_EXTERNAL_TABLE`: [`DROP EXTERNAL
        # TABLE`](/bigquery/docs/reference/standard-sql/data-definition-language#
        # drop_external_table_statement) statement. * `DROP_VIEW`: [`DROP VIEW`](/
        # bigquery/docs/reference/standard-sql/data-definition-language#
        # drop_view_statement) statement. * `DROP_MODEL`: [`DROP MODEL`](/bigquery-ml/
        # docs/reference/standard-sql/bigqueryml-syntax-drop-model) statement. * `
        # DROP_MATERIALIZED_VIEW`: [`DROP MATERIALIZED VIEW`](/bigquery/docs/reference/
        # standard-sql/data-definition-language#drop_materialized_view_statement)
        # statement. * `DROP_FUNCTION` : [`DROP FUNCTION`](/bigquery/docs/reference/
        # standard-sql/data-definition-language#drop_function_statement) statement. * `
        # DROP_TABLE_FUNCTION` : [`DROP TABLE FUNCTION`](/bigquery/docs/reference/
        # standard-sql/data-definition-language#drop_table_function) statement. * `
        # DROP_PROCEDURE`: [`DROP PROCEDURE`](/bigquery/docs/reference/standard-sql/data-
        # definition-language#drop_procedure_statement) statement. * `DROP_SEARCH_INDEX`:
        # [`DROP SEARCH INDEX`](/bigquery/docs/reference/standard-sql/data-definition-
        # language#drop_search_index) statement. * `DROP_SCHEMA`: [`DROP SCHEMA`](/
        # bigquery/docs/reference/standard-sql/data-definition-language#
        # drop_schema_statement) statement. * `DROP_SNAPSHOT_TABLE`: [`DROP SNAPSHOT
        # TABLE`](/bigquery/docs/reference/standard-sql/data-definition-language#
        # drop_snapshot_table_statement) statement. * `DROP_ROW_ACCESS_POLICY`: [`DROP [
        # ALL] ROW ACCESS POLICY|POLICIES`](/bigquery/docs/reference/standard-sql/data-
        # definition-language#drop_row_access_policy_statement) statement. * `
        # ALTER_TABLE`: [`ALTER TABLE`](/bigquery/docs/reference/standard-sql/data-
        # definition-language#alter_table_set_options_statement) statement. * `
        # ALTER_VIEW`: [`ALTER VIEW`](/bigquery/docs/reference/standard-sql/data-
        # definition-language#alter_view_set_options_statement) statement. * `
        # ALTER_MATERIALIZED_VIEW`: [`ALTER MATERIALIZED VIEW`](/bigquery/docs/reference/
        # standard-sql/data-definition-language#
        # alter_materialized_view_set_options_statement) statement. * `ALTER_SCHEMA`: [`
        # ALTER SCHEMA`](/bigquery/docs/reference/standard-sql/data-definition-language#
        # aalter_schema_set_options_statement) statement. * `SCRIPT`: [`SCRIPT`](/
        # bigquery/docs/reference/standard-sql/procedural-language). * `TRUNCATE_TABLE`:
        # [`TRUNCATE TABLE`](/bigquery/docs/reference/standard-sql/dml-syntax#
        # truncate_table_statement) statement. * `CREATE_EXTERNAL_TABLE`: [`CREATE
        # EXTERNAL TABLE`](/bigquery/docs/reference/standard-sql/data-definition-
        # language#create_external_table_statement) statement. * `EXPORT_DATA`: [`EXPORT
        # DATA`](/bigquery/docs/reference/standard-sql/other-statements#
        # export_data_statement) statement. * `EXPORT_MODEL`: [`EXPORT MODEL`](/bigquery-
        # ml/docs/reference/standard-sql/bigqueryml-syntax-export-model) statement. * `
        # LOAD_DATA`: [`LOAD DATA`](/bigquery/docs/reference/standard-sql/other-
        # statements#load_data_statement) statement. * `CALL`: [`CALL`](/bigquery/docs/
        # reference/standard-sql/procedural-language#call) statement.
        # Corresponds to the JSON property `statementType`
        # @return [String]
        attr_accessor :statement_type
      
        # Output only. Describes a timeline of job execution.
        # Corresponds to the JSON property `timeline`
        # @return [Array<Google::Apis::BigqueryV2::QueryTimelineSample>]
        attr_accessor :timeline
      
        # Output only. If the project is configured to use on-demand pricing, then this
        # field contains the total bytes billed for the job. If the project is
        # configured to use flat-rate pricing, then you are not billed for bytes and
        # this field is informational only.
        # Corresponds to the JSON property `totalBytesBilled`
        # @return [Fixnum]
        attr_accessor :total_bytes_billed
      
        # Output only. Total bytes processed for the job.
        # Corresponds to the JSON property `totalBytesProcessed`
        # @return [Fixnum]
        attr_accessor :total_bytes_processed
      
        # Output only. For dry-run jobs, totalBytesProcessed is an estimate and this
        # field specifies the accuracy of the estimate. Possible values can be: UNKNOWN:
        # accuracy of the estimate is unknown. PRECISE: estimate is precise. LOWER_BOUND:
        # estimate is lower bound of what the query would cost. UPPER_BOUND: estimate
        # is upper bound of what the query would cost.
        # Corresponds to the JSON property `totalBytesProcessedAccuracy`
        # @return [String]
        attr_accessor :total_bytes_processed_accuracy
      
        # Output only. Total number of partitions processed from all partitioned tables
        # referenced in the job.
        # Corresponds to the JSON property `totalPartitionsProcessed`
        # @return [Fixnum]
        attr_accessor :total_partitions_processed
      
        # Output only. Slot-milliseconds for the job.
        # Corresponds to the JSON property `totalSlotMs`
        # @return [Fixnum]
        attr_accessor :total_slot_ms
      
        # Output only. Total bytes transferred for cross-cloud queries such as Cross
        # Cloud Transfer and CREATE TABLE AS SELECT (CTAS).
        # Corresponds to the JSON property `transferredBytes`
        # @return [Fixnum]
        attr_accessor :transferred_bytes
      
        # Output only. GoogleSQL only: list of undeclared query parameters detected
        # during a dry run validation.
        # Corresponds to the JSON property `undeclaredQueryParameters`
        # @return [Array<Google::Apis::BigqueryV2::QueryParameter>]
        attr_accessor :undeclared_query_parameters
      
        # Statistics for a vector search query. Populated as part of JobStatistics2.
        # Corresponds to the JSON property `vectorSearchStatistics`
        # @return [Google::Apis::BigqueryV2::VectorSearchStatistics]
        attr_accessor :vector_search_statistics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bi_engine_statistics = args[:bi_engine_statistics] if args.key?(:bi_engine_statistics)
          @billing_tier = args[:billing_tier] if args.key?(:billing_tier)
          @cache_hit = args[:cache_hit] if args.key?(:cache_hit)
          @dcl_target_dataset = args[:dcl_target_dataset] if args.key?(:dcl_target_dataset)
          @dcl_target_table = args[:dcl_target_table] if args.key?(:dcl_target_table)
          @dcl_target_view = args[:dcl_target_view] if args.key?(:dcl_target_view)
          @ddl_affected_row_access_policy_count = args[:ddl_affected_row_access_policy_count] if args.key?(:ddl_affected_row_access_policy_count)
          @ddl_destination_table = args[:ddl_destination_table] if args.key?(:ddl_destination_table)
          @ddl_operation_performed = args[:ddl_operation_performed] if args.key?(:ddl_operation_performed)
          @ddl_target_dataset = args[:ddl_target_dataset] if args.key?(:ddl_target_dataset)
          @ddl_target_routine = args[:ddl_target_routine] if args.key?(:ddl_target_routine)
          @ddl_target_row_access_policy = args[:ddl_target_row_access_policy] if args.key?(:ddl_target_row_access_policy)
          @ddl_target_table = args[:ddl_target_table] if args.key?(:ddl_target_table)
          @dml_stats = args[:dml_stats] if args.key?(:dml_stats)
          @estimated_bytes_processed = args[:estimated_bytes_processed] if args.key?(:estimated_bytes_processed)
          @export_data_statistics = args[:export_data_statistics] if args.key?(:export_data_statistics)
          @external_service_costs = args[:external_service_costs] if args.key?(:external_service_costs)
          @load_query_statistics = args[:load_query_statistics] if args.key?(:load_query_statistics)
          @materialized_view_statistics = args[:materialized_view_statistics] if args.key?(:materialized_view_statistics)
          @metadata_cache_statistics = args[:metadata_cache_statistics] if args.key?(:metadata_cache_statistics)
          @ml_statistics = args[:ml_statistics] if args.key?(:ml_statistics)
          @model_training = args[:model_training] if args.key?(:model_training)
          @model_training_current_iteration = args[:model_training_current_iteration] if args.key?(:model_training_current_iteration)
          @model_training_expected_total_iteration = args[:model_training_expected_total_iteration] if args.key?(:model_training_expected_total_iteration)
          @num_dml_affected_rows = args[:num_dml_affected_rows] if args.key?(:num_dml_affected_rows)
          @performance_insights = args[:performance_insights] if args.key?(:performance_insights)
          @query_info = args[:query_info] if args.key?(:query_info)
          @query_plan = args[:query_plan] if args.key?(:query_plan)
          @referenced_routines = args[:referenced_routines] if args.key?(:referenced_routines)
          @referenced_tables = args[:referenced_tables] if args.key?(:referenced_tables)
          @reservation_usage = args[:reservation_usage] if args.key?(:reservation_usage)
          @schema = args[:schema] if args.key?(:schema)
          @search_statistics = args[:search_statistics] if args.key?(:search_statistics)
          @spark_statistics = args[:spark_statistics] if args.key?(:spark_statistics)
          @statement_type = args[:statement_type] if args.key?(:statement_type)
          @timeline = args[:timeline] if args.key?(:timeline)
          @total_bytes_billed = args[:total_bytes_billed] if args.key?(:total_bytes_billed)
          @total_bytes_processed = args[:total_bytes_processed] if args.key?(:total_bytes_processed)
          @total_bytes_processed_accuracy = args[:total_bytes_processed_accuracy] if args.key?(:total_bytes_processed_accuracy)
          @total_partitions_processed = args[:total_partitions_processed] if args.key?(:total_partitions_processed)
          @total_slot_ms = args[:total_slot_ms] if args.key?(:total_slot_ms)
          @transferred_bytes = args[:transferred_bytes] if args.key?(:transferred_bytes)
          @undeclared_query_parameters = args[:undeclared_query_parameters] if args.key?(:undeclared_query_parameters)
          @vector_search_statistics = args[:vector_search_statistics] if args.key?(:vector_search_statistics)
        end
        
        # Job resource usage breakdown by reservation.
        class ReservationUsage
          include Google::Apis::Core::Hashable
        
          # Reservation name or "unreserved" for on-demand resource usage and multi-
          # statement queries.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # Total slot milliseconds used by the reservation for a particular job.
          # Corresponds to the JSON property `slotMs`
          # @return [Fixnum]
          attr_accessor :slot_ms
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @name = args[:name] if args.key?(:name)
            @slot_ms = args[:slot_ms] if args.key?(:slot_ms)
          end
        end
      end
      
      # Statistics for a load job.
      class JobStatistics3
        include Google::Apis::Core::Hashable
      
        # Output only. The number of bad records encountered. Note that if the job has
        # failed because of more bad records encountered than the maximum allowed in the
        # load job configuration, then this number can be less than the total number of
        # bad records present in the input data.
        # Corresponds to the JSON property `badRecords`
        # @return [Fixnum]
        attr_accessor :bad_records
      
        # Output only. Number of bytes of source data in a load job.
        # Corresponds to the JSON property `inputFileBytes`
        # @return [Fixnum]
        attr_accessor :input_file_bytes
      
        # Output only. Number of source files in a load job.
        # Corresponds to the JSON property `inputFiles`
        # @return [Fixnum]
        attr_accessor :input_files
      
        # Output only. Size of the loaded data in bytes. Note that while a load job is
        # in the running state, this value may change.
        # Corresponds to the JSON property `outputBytes`
        # @return [Fixnum]
        attr_accessor :output_bytes
      
        # Output only. Number of rows imported in a load job. Note that while an import
        # job is in the running state, this value may change.
        # Corresponds to the JSON property `outputRows`
        # @return [Fixnum]
        attr_accessor :output_rows
      
        # Output only. Describes a timeline of job execution.
        # Corresponds to the JSON property `timeline`
        # @return [Array<Google::Apis::BigqueryV2::QueryTimelineSample>]
        attr_accessor :timeline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bad_records = args[:bad_records] if args.key?(:bad_records)
          @input_file_bytes = args[:input_file_bytes] if args.key?(:input_file_bytes)
          @input_files = args[:input_files] if args.key?(:input_files)
          @output_bytes = args[:output_bytes] if args.key?(:output_bytes)
          @output_rows = args[:output_rows] if args.key?(:output_rows)
          @timeline = args[:timeline] if args.key?(:timeline)
        end
      end
      
      # Statistics for an extract job.
      class JobStatistics4
        include Google::Apis::Core::Hashable
      
        # Output only. Number of files per destination URI or URI pattern specified in
        # the extract configuration. These values will be in the same order as the URIs
        # specified in the 'destinationUris' field.
        # Corresponds to the JSON property `destinationUriFileCounts`
        # @return [Array<Fixnum>]
        attr_accessor :destination_uri_file_counts
      
        # Output only. Number of user bytes extracted into the result. This is the byte
        # count as computed by BigQuery for billing purposes and doesn't have any
        # relationship with the number of actual result bytes extracted in the desired
        # format.
        # Corresponds to the JSON property `inputBytes`
        # @return [Fixnum]
        attr_accessor :input_bytes
      
        # Output only. Describes a timeline of job execution.
        # Corresponds to the JSON property `timeline`
        # @return [Array<Google::Apis::BigqueryV2::QueryTimelineSample>]
        attr_accessor :timeline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_uri_file_counts = args[:destination_uri_file_counts] if args.key?(:destination_uri_file_counts)
          @input_bytes = args[:input_bytes] if args.key?(:input_bytes)
          @timeline = args[:timeline] if args.key?(:timeline)
        end
      end
      
      # Statistics for a copy job.
      class JobStatistics5
        include Google::Apis::Core::Hashable
      
        # Output only. Number of logical bytes copied to the destination table.
        # Corresponds to the JSON property `copiedLogicalBytes`
        # @return [Fixnum]
        attr_accessor :copied_logical_bytes
      
        # Output only. Number of rows copied to the destination table.
        # Corresponds to the JSON property `copiedRows`
        # @return [Fixnum]
        attr_accessor :copied_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @copied_logical_bytes = args[:copied_logical_bytes] if args.key?(:copied_logical_bytes)
          @copied_rows = args[:copied_rows] if args.key?(:copied_rows)
        end
      end
      
      # 
      class JobStatus
        include Google::Apis::Core::Hashable
      
        # Error details.
        # Corresponds to the JSON property `errorResult`
        # @return [Google::Apis::BigqueryV2::ErrorProto]
        attr_accessor :error_result
      
        # Output only. The first errors encountered during the running of the job. The
        # final message includes the number of errors that caused the process to stop.
        # Errors here do not necessarily mean that the job has not completed or was
        # unsuccessful.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::BigqueryV2::ErrorProto>]
        attr_accessor :errors
      
        # Output only. Running state of the job. Valid states include 'PENDING', '
        # RUNNING', and 'DONE'.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_result = args[:error_result] if args.key?(:error_result)
          @errors = args[:errors] if args.key?(:errors)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents privacy policy associated with "join restrictions". Join
      # restriction gives data providers the ability to enforce joins on the '
      # join_allowed_columns' when data is queried from a privacy protected view.
      class JoinRestrictionPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The only columns that joins are allowed on. This field is must be
        # specified for join_conditions JOIN_ANY and JOIN_ALL and it cannot be set for
        # JOIN_BLOCKED.
        # Corresponds to the JSON property `joinAllowedColumns`
        # @return [Array<String>]
        attr_accessor :join_allowed_columns
      
        # Optional. Specifies if a join is required or not on queries for the view.
        # Default is JOIN_CONDITION_UNSPECIFIED.
        # Corresponds to the JSON property `joinCondition`
        # @return [String]
        attr_accessor :join_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @join_allowed_columns = args[:join_allowed_columns] if args.key?(:join_allowed_columns)
          @join_condition = args[:join_condition] if args.key?(:join_condition)
        end
      end
      
      # Json Options for load and make external tables.
      class JsonOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The character encoding of the data. The supported values are UTF-8,
        # UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding = args[:encoding] if args.key?(:encoding)
        end
      end
      
      # Metadata about the Linked Dataset.
      class LinkedDatasetMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies whether Linked Dataset is currently in a linked state
        # or not.
        # Corresponds to the JSON property `linkState`
        # @return [String]
        attr_accessor :link_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @link_state = args[:link_state] if args.key?(:link_state)
        end
      end
      
      # A dataset source type which refers to another BigQuery dataset.
      class LinkedDatasetSource
        include Google::Apis::Core::Hashable
      
        # The source dataset reference contains project numbers and not project ids.
        # Corresponds to the JSON property `sourceDataset`
        # @return [Google::Apis::BigqueryV2::DatasetReference]
        attr_accessor :source_dataset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_dataset = args[:source_dataset] if args.key?(:source_dataset)
        end
      end
      
      # Response format for a single page when listing BigQuery ML models.
      class ListModelsResponse
        include Google::Apis::Core::Hashable
      
        # Models in the requested dataset. Only the following fields are populated:
        # model_reference, model_type, creation_time, last_modified_time and labels.
        # Corresponds to the JSON property `models`
        # @return [Array<Google::Apis::BigqueryV2::Model>]
        attr_accessor :models
      
        # A token to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @models = args[:models] if args.key?(:models)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Describes the format of a single result page when listing routines.
      class ListRoutinesResponse
        include Google::Apis::Core::Hashable
      
        # A token to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Routines in the requested dataset. Unless read_mask is set in the request,
        # only the following fields are populated: etag, project_id, dataset_id,
        # routine_id, routine_type, creation_time, last_modified_time, language, and
        # remote_function_options.
        # Corresponds to the JSON property `routines`
        # @return [Array<Google::Apis::BigqueryV2::Routine>]
        attr_accessor :routines
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @routines = args[:routines] if args.key?(:routines)
        end
      end
      
      # Response message for the ListRowAccessPolicies method.
      class ListRowAccessPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # A token to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Row access policies on the requested table.
        # Corresponds to the JSON property `rowAccessPolicies`
        # @return [Array<Google::Apis::BigqueryV2::RowAccessPolicy>]
        attr_accessor :row_access_policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @row_access_policies = args[:row_access_policies] if args.key?(:row_access_policies)
        end
      end
      
      # Statistics for a LOAD query.
      class LoadQueryStatistics
        include Google::Apis::Core::Hashable
      
        # Output only. The number of bad records encountered while processing a LOAD
        # query. Note that if the job has failed because of more bad records encountered
        # than the maximum allowed in the load job configuration, then this number can
        # be less than the total number of bad records present in the input data.
        # Corresponds to the JSON property `badRecords`
        # @return [Fixnum]
        attr_accessor :bad_records
      
        # Output only. This field is deprecated. The number of bytes of source data
        # copied over the network for a `LOAD` query. `transferred_bytes` has the
        # canonical value for physical transferred bytes, which is used for BigQuery
        # Omni billing.
        # Corresponds to the JSON property `bytesTransferred`
        # @return [Fixnum]
        attr_accessor :bytes_transferred
      
        # Output only. Number of bytes of source data in a LOAD query.
        # Corresponds to the JSON property `inputFileBytes`
        # @return [Fixnum]
        attr_accessor :input_file_bytes
      
        # Output only. Number of source files in a LOAD query.
        # Corresponds to the JSON property `inputFiles`
        # @return [Fixnum]
        attr_accessor :input_files
      
        # Output only. Size of the loaded data in bytes. Note that while a LOAD query is
        # in the running state, this value may change.
        # Corresponds to the JSON property `outputBytes`
        # @return [Fixnum]
        attr_accessor :output_bytes
      
        # Output only. Number of rows imported in a LOAD query. Note that while a LOAD
        # query is in the running state, this value may change.
        # Corresponds to the JSON property `outputRows`
        # @return [Fixnum]
        attr_accessor :output_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bad_records = args[:bad_records] if args.key?(:bad_records)
          @bytes_transferred = args[:bytes_transferred] if args.key?(:bytes_transferred)
          @input_file_bytes = args[:input_file_bytes] if args.key?(:input_file_bytes)
          @input_files = args[:input_files] if args.key?(:input_files)
          @output_bytes = args[:output_bytes] if args.key?(:output_bytes)
          @output_rows = args[:output_rows] if args.key?(:output_rows)
        end
      end
      
      # BigQuery-specific metadata about a location. This will be set on google.cloud.
      # location.Location.metadata in Cloud Location API responses.
      class LocationMetadata
        include Google::Apis::Core::Hashable
      
        # The legacy BigQuery location ID, e.g. “EU” for the “europe” location. This is
        # for any API consumers that need the legacy “US” and “EU” locations.
        # Corresponds to the JSON property `legacyLocationId`
        # @return [String]
        attr_accessor :legacy_location_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @legacy_location_id = args[:legacy_location_id] if args.key?(:legacy_location_id)
        end
      end
      
      # A materialized view considered for a query job.
      class MaterializedView
        include Google::Apis::Core::Hashable
      
        # Whether the materialized view is chosen for the query. A materialized view can
        # be chosen to rewrite multiple parts of the same query. If a materialized view
        # is chosen to rewrite any part of the query, then this field is true, even if
        # the materialized view was not chosen to rewrite others parts.
        # Corresponds to the JSON property `chosen`
        # @return [Boolean]
        attr_accessor :chosen
        alias_method :chosen?, :chosen
      
        # If present, specifies a best-effort estimation of the bytes saved by using the
        # materialized view rather than its base tables.
        # Corresponds to the JSON property `estimatedBytesSaved`
        # @return [Fixnum]
        attr_accessor :estimated_bytes_saved
      
        # If present, specifies the reason why the materialized view was not chosen for
        # the query.
        # Corresponds to the JSON property `rejectedReason`
        # @return [String]
        attr_accessor :rejected_reason
      
        # The candidate materialized view.
        # Corresponds to the JSON property `tableReference`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :table_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chosen = args[:chosen] if args.key?(:chosen)
          @estimated_bytes_saved = args[:estimated_bytes_saved] if args.key?(:estimated_bytes_saved)
          @rejected_reason = args[:rejected_reason] if args.key?(:rejected_reason)
          @table_reference = args[:table_reference] if args.key?(:table_reference)
        end
      end
      
      # Definition and configuration of a materialized view.
      class MaterializedViewDefinition
        include Google::Apis::Core::Hashable
      
        # Optional. This option declares the intention to construct a materialized view
        # that isn't refreshed incrementally.
        # Corresponds to the JSON property `allowNonIncrementalDefinition`
        # @return [Boolean]
        attr_accessor :allow_non_incremental_definition
        alias_method :allow_non_incremental_definition?, :allow_non_incremental_definition
      
        # Optional. Enable automatic refresh of the materialized view when the base
        # table is updated. The default value is "true".
        # Corresponds to the JSON property `enableRefresh`
        # @return [Boolean]
        attr_accessor :enable_refresh
        alias_method :enable_refresh?, :enable_refresh
      
        # Output only. The time when this materialized view was last refreshed, in
        # milliseconds since the epoch.
        # Corresponds to the JSON property `lastRefreshTime`
        # @return [Fixnum]
        attr_accessor :last_refresh_time
      
        # [Optional] Max staleness of data that could be returned when materizlized view
        # is queried (formatted as Google SQL Interval type).
        # Corresponds to the JSON property `maxStaleness`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :max_staleness
      
        # Required. A query whose results are persisted.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Optional. The maximum frequency at which this materialized view will be
        # refreshed. The default value is "1800000" (30 minutes).
        # Corresponds to the JSON property `refreshIntervalMs`
        # @return [Fixnum]
        attr_accessor :refresh_interval_ms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_non_incremental_definition = args[:allow_non_incremental_definition] if args.key?(:allow_non_incremental_definition)
          @enable_refresh = args[:enable_refresh] if args.key?(:enable_refresh)
          @last_refresh_time = args[:last_refresh_time] if args.key?(:last_refresh_time)
          @max_staleness = args[:max_staleness] if args.key?(:max_staleness)
          @query = args[:query] if args.key?(:query)
          @refresh_interval_ms = args[:refresh_interval_ms] if args.key?(:refresh_interval_ms)
        end
      end
      
      # Statistics of materialized views considered in a query job.
      class MaterializedViewStatistics
        include Google::Apis::Core::Hashable
      
        # Materialized views considered for the query job. Only certain materialized
        # views are used. For a detailed list, see the child message. If many
        # materialized views are considered, then the list might be incomplete.
        # Corresponds to the JSON property `materializedView`
        # @return [Array<Google::Apis::BigqueryV2::MaterializedView>]
        attr_accessor :materialized_view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @materialized_view = args[:materialized_view] if args.key?(:materialized_view)
        end
      end
      
      # Status of a materialized view. The last refresh timestamp status is omitted
      # here, but is present in the MaterializedViewDefinition message.
      class MaterializedViewStatus
        include Google::Apis::Core::Hashable
      
        # Error details.
        # Corresponds to the JSON property `lastRefreshStatus`
        # @return [Google::Apis::BigqueryV2::ErrorProto]
        attr_accessor :last_refresh_status
      
        # Output only. Refresh watermark of materialized view. The base tables' data
        # were collected into the materialized view cache until this time.
        # Corresponds to the JSON property `refreshWatermark`
        # @return [String]
        attr_accessor :refresh_watermark
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_refresh_status = args[:last_refresh_status] if args.key?(:last_refresh_status)
          @refresh_watermark = args[:refresh_watermark] if args.key?(:refresh_watermark)
        end
      end
      
      # Statistics for metadata caching in BigLake tables.
      class MetadataCacheStatistics
        include Google::Apis::Core::Hashable
      
        # Set for the Metadata caching eligible tables referenced in the query.
        # Corresponds to the JSON property `tableMetadataCacheUsage`
        # @return [Array<Google::Apis::BigqueryV2::TableMetadataCacheUsage>]
        attr_accessor :table_metadata_cache_usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table_metadata_cache_usage = args[:table_metadata_cache_usage] if args.key?(:table_metadata_cache_usage)
        end
      end
      
      # Job statistics specific to a BigQuery ML training job.
      class MlStatistics
        include Google::Apis::Core::Hashable
      
        # Output only. Trials of a [hyperparameter tuning job](/bigquery-ml/docs/
        # reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) sorted by
        # trial_id.
        # Corresponds to the JSON property `hparamTrials`
        # @return [Array<Google::Apis::BigqueryV2::HparamTuningTrial>]
        attr_accessor :hparam_trials
      
        # Results for all completed iterations. Empty for [hyperparameter tuning jobs](/
        # bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview).
        # Corresponds to the JSON property `iterationResults`
        # @return [Array<Google::Apis::BigqueryV2::IterationResult>]
        attr_accessor :iteration_results
      
        # Output only. Maximum number of iterations specified as max_iterations in the '
        # CREATE MODEL' query. The actual number of iterations may be less than this
        # number due to early stop.
        # Corresponds to the JSON property `maxIterations`
        # @return [Fixnum]
        attr_accessor :max_iterations
      
        # Output only. The type of the model that is being trained.
        # Corresponds to the JSON property `modelType`
        # @return [String]
        attr_accessor :model_type
      
        # Output only. Training type of the job.
        # Corresponds to the JSON property `trainingType`
        # @return [String]
        attr_accessor :training_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hparam_trials = args[:hparam_trials] if args.key?(:hparam_trials)
          @iteration_results = args[:iteration_results] if args.key?(:iteration_results)
          @max_iterations = args[:max_iterations] if args.key?(:max_iterations)
          @model_type = args[:model_type] if args.key?(:model_type)
          @training_type = args[:training_type] if args.key?(:training_type)
        end
      end
      
      # 
      class Model
        include Google::Apis::Core::Hashable
      
        # The best trial_id across all training runs.
        # Corresponds to the JSON property `bestTrialId`
        # @return [Fixnum]
        attr_accessor :best_trial_id
      
        # Output only. The time when this model was created, in millisecs since the
        # epoch.
        # Corresponds to the JSON property `creationTime`
        # @return [Fixnum]
        attr_accessor :creation_time
      
        # Output only. The default trial_id to use in TVFs when the trial_id is not
        # passed in. For single-objective [hyperparameter tuning](/bigquery-ml/docs/
        # reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, this is
        # the best trial ID. For multi-objective [hyperparameter tuning](/bigquery-ml/
        # docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, this
        # is the smallest trial ID among all Pareto optimal trials.
        # Corresponds to the JSON property `defaultTrialId`
        # @return [Fixnum]
        attr_accessor :default_trial_id
      
        # Optional. A user-friendly description of this model.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Custom encryption configuration (e.g., Cloud KMS keys). This shows the
        # encryption configuration of the model data while stored in BigQuery storage.
        # This field can be used with PatchModel to update encryption key for an already
        # encrypted model.
        # Corresponds to the JSON property `encryptionConfiguration`
        # @return [Google::Apis::BigqueryV2::EncryptionConfiguration]
        attr_accessor :encryption_configuration
      
        # Output only. A hash of this resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The time when this model expires, in milliseconds since the epoch.
        # If not present, the model will persist indefinitely. Expired models will be
        # deleted and their storage reclaimed. The defaultTableExpirationMs property of
        # the encapsulating dataset can be used to set a default expirationTime on newly
        # created models.
        # Corresponds to the JSON property `expirationTime`
        # @return [Fixnum]
        attr_accessor :expiration_time
      
        # Output only. Input feature columns for the model inference. If the model is
        # trained with TRANSFORM clause, these are the input of the TRANSFORM clause.
        # Corresponds to the JSON property `featureColumns`
        # @return [Array<Google::Apis::BigqueryV2::StandardSqlField>]
        attr_accessor :feature_columns
      
        # Optional. A descriptive name for this model.
        # Corresponds to the JSON property `friendlyName`
        # @return [String]
        attr_accessor :friendly_name
      
        # Hyperparameter search spaces. These should be a subset of training_options.
        # Corresponds to the JSON property `hparamSearchSpaces`
        # @return [Google::Apis::BigqueryV2::HparamSearchSpaces]
        attr_accessor :hparam_search_spaces
      
        # Output only. Trials of a [hyperparameter tuning](/bigquery-ml/docs/reference/
        # standard-sql/bigqueryml-syntax-hp-tuning-overview) model sorted by trial_id.
        # Corresponds to the JSON property `hparamTrials`
        # @return [Array<Google::Apis::BigqueryV2::HparamTuningTrial>]
        attr_accessor :hparam_trials
      
        # Output only. Label columns that were used to train this model. The output of
        # the model will have a "predicted_" prefix to these columns.
        # Corresponds to the JSON property `labelColumns`
        # @return [Array<Google::Apis::BigqueryV2::StandardSqlField>]
        attr_accessor :label_columns
      
        # The labels associated with this model. You can use these to organize and group
        # your models. Label keys and values can be no longer than 63 characters, can
        # only contain lowercase letters, numeric characters, underscores and dashes.
        # International characters are allowed. Label values are optional. Label keys
        # must start with a letter and each label in the list must have a different key.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The time when this model was last modified, in millisecs since
        # the epoch.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [Fixnum]
        attr_accessor :last_modified_time
      
        # Output only. The geographic location where the model resides. This value is
        # inherited from the dataset.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Id path of a model.
        # Corresponds to the JSON property `modelReference`
        # @return [Google::Apis::BigqueryV2::ModelReference]
        attr_accessor :model_reference
      
        # Output only. Type of the model resource.
        # Corresponds to the JSON property `modelType`
        # @return [String]
        attr_accessor :model_type
      
        # Output only. For single-objective [hyperparameter tuning](/bigquery-ml/docs/
        # reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, it only
        # contains the best trial. For multi-objective [hyperparameter tuning](/bigquery-
        # ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models,
        # it contains all Pareto optimal trials sorted by trial_id.
        # Corresponds to the JSON property `optimalTrialIds`
        # @return [Array<Fixnum>]
        attr_accessor :optimal_trial_ids
      
        # Remote Model Info
        # Corresponds to the JSON property `remoteModelInfo`
        # @return [Google::Apis::BigqueryV2::RemoteModelInfo]
        attr_accessor :remote_model_info
      
        # Information for all training runs in increasing order of start_time.
        # Corresponds to the JSON property `trainingRuns`
        # @return [Array<Google::Apis::BigqueryV2::TrainingRun>]
        attr_accessor :training_runs
      
        # Output only. This field will be populated if a TRANSFORM clause was used to
        # train a model. TRANSFORM clause (if used) takes feature_columns as input and
        # outputs transform_columns. transform_columns then are used to train the model.
        # Corresponds to the JSON property `transformColumns`
        # @return [Array<Google::Apis::BigqueryV2::TransformColumn>]
        attr_accessor :transform_columns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @best_trial_id = args[:best_trial_id] if args.key?(:best_trial_id)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @default_trial_id = args[:default_trial_id] if args.key?(:default_trial_id)
          @description = args[:description] if args.key?(:description)
          @encryption_configuration = args[:encryption_configuration] if args.key?(:encryption_configuration)
          @etag = args[:etag] if args.key?(:etag)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @feature_columns = args[:feature_columns] if args.key?(:feature_columns)
          @friendly_name = args[:friendly_name] if args.key?(:friendly_name)
          @hparam_search_spaces = args[:hparam_search_spaces] if args.key?(:hparam_search_spaces)
          @hparam_trials = args[:hparam_trials] if args.key?(:hparam_trials)
          @label_columns = args[:label_columns] if args.key?(:label_columns)
          @labels = args[:labels] if args.key?(:labels)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @location = args[:location] if args.key?(:location)
          @model_reference = args[:model_reference] if args.key?(:model_reference)
          @model_type = args[:model_type] if args.key?(:model_type)
          @optimal_trial_ids = args[:optimal_trial_ids] if args.key?(:optimal_trial_ids)
          @remote_model_info = args[:remote_model_info] if args.key?(:remote_model_info)
          @training_runs = args[:training_runs] if args.key?(:training_runs)
          @transform_columns = args[:transform_columns] if args.key?(:transform_columns)
        end
      end
      
      # 
      class ModelDefinition
        include Google::Apis::Core::Hashable
      
        # Deprecated.
        # Corresponds to the JSON property `modelOptions`
        # @return [Google::Apis::BigqueryV2::ModelDefinition::ModelOptions]
        attr_accessor :model_options
      
        # Deprecated.
        # Corresponds to the JSON property `trainingRuns`
        # @return [Array<Google::Apis::BigqueryV2::BqmlTrainingRun>]
        attr_accessor :training_runs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_options = args[:model_options] if args.key?(:model_options)
          @training_runs = args[:training_runs] if args.key?(:training_runs)
        end
        
        # Deprecated.
        class ModelOptions
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `labels`
          # @return [Array<String>]
          attr_accessor :labels
        
          # 
          # Corresponds to the JSON property `lossType`
          # @return [String]
          attr_accessor :loss_type
        
          # 
          # Corresponds to the JSON property `modelType`
          # @return [String]
          attr_accessor :model_type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @labels = args[:labels] if args.key?(:labels)
            @loss_type = args[:loss_type] if args.key?(:loss_type)
            @model_type = args[:model_type] if args.key?(:model_type)
          end
        end
      end
      
      # Options related to model extraction.
      class ModelExtractOptions
        include Google::Apis::Core::Hashable
      
        # The 1-based ID of the trial to be exported from a hyperparameter tuning model.
        # If not specified, the trial with id = [Model](/bigquery/docs/reference/rest/v2/
        # models#resource:-model).defaultTrialId is exported. This field is ignored for
        # models not trained with hyperparameter tuning.
        # Corresponds to the JSON property `trialId`
        # @return [Fixnum]
        attr_accessor :trial_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @trial_id = args[:trial_id] if args.key?(:trial_id)
        end
      end
      
      # Id path of a model.
      class ModelReference
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the dataset containing this model.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # Required. The ID of the model. The ID must contain only letters (a-z, A-Z),
        # numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
        # Corresponds to the JSON property `modelId`
        # @return [String]
        attr_accessor :model_id
      
        # Required. The ID of the project containing this model.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @model_id = args[:model_id] if args.key?(:model_id)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Evaluation metrics for multi-class classification/classifier models.
      class MultiClassClassificationMetrics
        include Google::Apis::Core::Hashable
      
        # Aggregate metrics for classification/classifier models. For multi-class models,
        # the metrics are either macro-averaged or micro-averaged. When macro-averaged,
        # the metrics are calculated for each label and then an unweighted average is
        # taken of those values. When micro-averaged, the metric is calculated globally
        # by counting the total number of correctly predicted rows.
        # Corresponds to the JSON property `aggregateClassificationMetrics`
        # @return [Google::Apis::BigqueryV2::AggregateClassificationMetrics]
        attr_accessor :aggregate_classification_metrics
      
        # Confusion matrix at different thresholds.
        # Corresponds to the JSON property `confusionMatrixList`
        # @return [Array<Google::Apis::BigqueryV2::ConfusionMatrix>]
        attr_accessor :confusion_matrix_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregate_classification_metrics = args[:aggregate_classification_metrics] if args.key?(:aggregate_classification_metrics)
          @confusion_matrix_list = args[:confusion_matrix_list] if args.key?(:confusion_matrix_list)
        end
      end
      
      # Parquet Options for load and make external tables.
      class ParquetOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether to use schema inference specifically for Parquet
        # LIST logical type.
        # Corresponds to the JSON property `enableListInference`
        # @return [Boolean]
        attr_accessor :enable_list_inference
        alias_method :enable_list_inference?, :enable_list_inference
      
        # Optional. Indicates whether to infer Parquet ENUM logical type as STRING
        # instead of BYTES by default.
        # Corresponds to the JSON property `enumAsString`
        # @return [Boolean]
        attr_accessor :enum_as_string
        alias_method :enum_as_string?, :enum_as_string
      
        # Optional. Indicates how to represent a Parquet map if present.
        # Corresponds to the JSON property `mapTargetType`
        # @return [String]
        attr_accessor :map_target_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_list_inference = args[:enable_list_inference] if args.key?(:enable_list_inference)
          @enum_as_string = args[:enum_as_string] if args.key?(:enum_as_string)
          @map_target_type = args[:map_target_type] if args.key?(:map_target_type)
        end
      end
      
      # Partition skew detailed information.
      class PartitionSkew
        include Google::Apis::Core::Hashable
      
        # Output only. Source stages which produce skewed data.
        # Corresponds to the JSON property `skewSources`
        # @return [Array<Google::Apis::BigqueryV2::SkewSource>]
        attr_accessor :skew_sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @skew_sources = args[:skew_sources] if args.key?(:skew_sources)
        end
      end
      
      # The partitioning column information.
      class PartitionedColumn
        include Google::Apis::Core::Hashable
      
        # Required. The name of the partition column.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # The partitioning information, which includes managed table, external table and
      # metastore partitioned table partition information.
      class PartitioningDefinition
        include Google::Apis::Core::Hashable
      
        # Optional. Details about each partitioning column. This field is output only
        # for all partitioning types other than metastore partitioned tables. BigQuery
        # native tables only support 1 partitioning column. Other table types may
        # support 0, 1 or more partitioning columns. For metastore partitioned tables,
        # the order must match the definition order in the Hive Metastore, where it must
        # match the physical layout of the table. For example, CREATE TABLE a_table(id
        # BIGINT, name STRING) PARTITIONED BY (city STRING, state STRING). In this case
        # the values must be ['city', 'state'] in that order.
        # Corresponds to the JSON property `partitionedColumn`
        # @return [Array<Google::Apis::BigqueryV2::PartitionedColumn>]
        attr_accessor :partitioned_column
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partitioned_column = args[:partitioned_column] if args.key?(:partitioned_column)
        end
      end
      
      # Performance insights for the job.
      class PerformanceInsights
        include Google::Apis::Core::Hashable
      
        # Output only. Average execution ms of previous runs. Indicates the job ran slow
        # compared to previous executions. To find previous executions, use
        # INFORMATION_SCHEMA tables and filter jobs with same query hash.
        # Corresponds to the JSON property `avgPreviousExecutionMs`
        # @return [Fixnum]
        attr_accessor :avg_previous_execution_ms
      
        # Output only. Query stage performance insights compared to previous runs, for
        # diagnosing performance regression.
        # Corresponds to the JSON property `stagePerformanceChangeInsights`
        # @return [Array<Google::Apis::BigqueryV2::StagePerformanceChangeInsight>]
        attr_accessor :stage_performance_change_insights
      
        # Output only. Standalone query stage performance insights, for exploring
        # potential improvements.
        # Corresponds to the JSON property `stagePerformanceStandaloneInsights`
        # @return [Array<Google::Apis::BigqueryV2::StagePerformanceStandaloneInsight>]
        attr_accessor :stage_performance_standalone_insights
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avg_previous_execution_ms = args[:avg_previous_execution_ms] if args.key?(:avg_previous_execution_ms)
          @stage_performance_change_insights = args[:stage_performance_change_insights] if args.key?(:stage_performance_change_insights)
          @stage_performance_standalone_insights = args[:stage_performance_standalone_insights] if args.key?(:stage_performance_standalone_insights)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::BigqueryV2::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::BigqueryV2::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Principal component infos, used only for eigen decomposition based models, e.g.
      # , PCA. Ordered by explained_variance in the descending order.
      class PrincipalComponentInfo
        include Google::Apis::Core::Hashable
      
        # The explained_variance is pre-ordered in the descending order to compute the
        # cumulative explained variance ratio.
        # Corresponds to the JSON property `cumulativeExplainedVarianceRatio`
        # @return [Float]
        attr_accessor :cumulative_explained_variance_ratio
      
        # Explained variance by this principal component, which is simply the eigenvalue.
        # Corresponds to the JSON property `explainedVariance`
        # @return [Float]
        attr_accessor :explained_variance
      
        # Explained_variance over the total explained variance.
        # Corresponds to the JSON property `explainedVarianceRatio`
        # @return [Float]
        attr_accessor :explained_variance_ratio
      
        # Id of the principal component.
        # Corresponds to the JSON property `principalComponentId`
        # @return [Fixnum]
        attr_accessor :principal_component_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cumulative_explained_variance_ratio = args[:cumulative_explained_variance_ratio] if args.key?(:cumulative_explained_variance_ratio)
          @explained_variance = args[:explained_variance] if args.key?(:explained_variance)
          @explained_variance_ratio = args[:explained_variance_ratio] if args.key?(:explained_variance_ratio)
          @principal_component_id = args[:principal_component_id] if args.key?(:principal_component_id)
        end
      end
      
      # Represents privacy policy that contains the privacy requirements specified by
      # the data owner. Currently, this is only supported on views.
      class PrivacyPolicy
        include Google::Apis::Core::Hashable
      
        # Represents privacy policy associated with "aggregation threshold" method.
        # Corresponds to the JSON property `aggregationThresholdPolicy`
        # @return [Google::Apis::BigqueryV2::AggregationThresholdPolicy]
        attr_accessor :aggregation_threshold_policy
      
        # Represents privacy policy associated with "differential privacy" method.
        # Corresponds to the JSON property `differentialPrivacyPolicy`
        # @return [Google::Apis::BigqueryV2::DifferentialPrivacyPolicy]
        attr_accessor :differential_privacy_policy
      
        # Represents privacy policy associated with "join restrictions". Join
        # restriction gives data providers the ability to enforce joins on the '
        # join_allowed_columns' when data is queried from a privacy protected view.
        # Corresponds to the JSON property `joinRestrictionPolicy`
        # @return [Google::Apis::BigqueryV2::JoinRestrictionPolicy]
        attr_accessor :join_restriction_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_threshold_policy = args[:aggregation_threshold_policy] if args.key?(:aggregation_threshold_policy)
          @differential_privacy_policy = args[:differential_privacy_policy] if args.key?(:differential_privacy_policy)
          @join_restriction_policy = args[:join_restriction_policy] if args.key?(:join_restriction_policy)
        end
      end
      
      # Response object of ListProjects
      class ProjectList
        include Google::Apis::Core::Hashable
      
        # A hash of the page of results.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The resource type of the response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Use this token to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Projects to which the user has at least READ access.
        # Corresponds to the JSON property `projects`
        # @return [Array<Google::Apis::BigqueryV2::ProjectList::Project>]
        attr_accessor :projects
      
        # The total number of projects in the page. A wrapper is used here because the
        # field should still be in the response when the value is 0.
        # Corresponds to the JSON property `totalItems`
        # @return [Fixnum]
        attr_accessor :total_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @projects = args[:projects] if args.key?(:projects)
          @total_items = args[:total_items] if args.key?(:total_items)
        end
        
        # Information about a single project.
        class Project
          include Google::Apis::Core::Hashable
        
          # A descriptive name for this project. A wrapper is used here because
          # friendlyName can be set to the empty string.
          # Corresponds to the JSON property `friendlyName`
          # @return [String]
          attr_accessor :friendly_name
        
          # An opaque ID of this project.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The resource type.
          # Corresponds to the JSON property `kind`
          # @return [String]
          attr_accessor :kind
        
          # The numeric ID of this project.
          # Corresponds to the JSON property `numericId`
          # @return [Fixnum]
          attr_accessor :numeric_id
        
          # A unique reference to a project.
          # Corresponds to the JSON property `projectReference`
          # @return [Google::Apis::BigqueryV2::ProjectReference]
          attr_accessor :project_reference
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @friendly_name = args[:friendly_name] if args.key?(:friendly_name)
            @id = args[:id] if args.key?(:id)
            @kind = args[:kind] if args.key?(:kind)
            @numeric_id = args[:numeric_id] if args.key?(:numeric_id)
            @project_reference = args[:project_reference] if args.key?(:project_reference)
          end
        end
      end
      
      # A unique reference to a project.
      class ProjectReference
        include Google::Apis::Core::Hashable
      
        # Required. ID of the project. Can be either the numeric ID or the assigned ID
        # of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Query optimization information for a QUERY job.
      class QueryInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Information about query optimizations.
        # Corresponds to the JSON property `optimizationDetails`
        # @return [Hash<String,Object>]
        attr_accessor :optimization_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @optimization_details = args[:optimization_details] if args.key?(:optimization_details)
        end
      end
      
      # A parameter given to a query.
      class QueryParameter
        include Google::Apis::Core::Hashable
      
        # Optional. If unset, this is a positional parameter. Otherwise, should be
        # unique within a query.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of a query parameter.
        # Corresponds to the JSON property `parameterType`
        # @return [Google::Apis::BigqueryV2::QueryParameterType]
        attr_accessor :parameter_type
      
        # The value of a query parameter.
        # Corresponds to the JSON property `parameterValue`
        # @return [Google::Apis::BigqueryV2::QueryParameterValue]
        attr_accessor :parameter_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parameter_type = args[:parameter_type] if args.key?(:parameter_type)
          @parameter_value = args[:parameter_value] if args.key?(:parameter_value)
        end
      end
      
      # The type of a query parameter.
      class QueryParameterType
        include Google::Apis::Core::Hashable
      
        # The type of a query parameter.
        # Corresponds to the JSON property `arrayType`
        # @return [Google::Apis::BigqueryV2::QueryParameterType]
        attr_accessor :array_type
      
        # The type of a query parameter.
        # Corresponds to the JSON property `rangeElementType`
        # @return [Google::Apis::BigqueryV2::QueryParameterType]
        attr_accessor :range_element_type
      
        # Optional. The types of the fields of this struct, in order, if this is a
        # struct.
        # Corresponds to the JSON property `structTypes`
        # @return [Array<Google::Apis::BigqueryV2::QueryParameterType::StructType>]
        attr_accessor :struct_types
      
        # Required. The top level type of this field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array_type = args[:array_type] if args.key?(:array_type)
          @range_element_type = args[:range_element_type] if args.key?(:range_element_type)
          @struct_types = args[:struct_types] if args.key?(:struct_types)
          @type = args[:type] if args.key?(:type)
        end
        
        # The type of a struct parameter.
        class StructType
          include Google::Apis::Core::Hashable
        
          # Optional. Human-oriented description of the field.
          # Corresponds to the JSON property `description`
          # @return [String]
          attr_accessor :description
        
          # Optional. The name of this field.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # The type of a query parameter.
          # Corresponds to the JSON property `type`
          # @return [Google::Apis::BigqueryV2::QueryParameterType]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @description = args[:description] if args.key?(:description)
            @name = args[:name] if args.key?(:name)
            @type = args[:type] if args.key?(:type)
          end
        end
      end
      
      # The value of a query parameter.
      class QueryParameterValue
        include Google::Apis::Core::Hashable
      
        # Optional. The array values, if this is an array type.
        # Corresponds to the JSON property `arrayValues`
        # @return [Array<Google::Apis::BigqueryV2::QueryParameterValue>]
        attr_accessor :array_values
      
        # Represents the value of a range.
        # Corresponds to the JSON property `rangeValue`
        # @return [Google::Apis::BigqueryV2::RangeValue]
        attr_accessor :range_value
      
        # The struct field values.
        # Corresponds to the JSON property `structValues`
        # @return [Hash<String,Google::Apis::BigqueryV2::QueryParameterValue>]
        attr_accessor :struct_values
      
        # Optional. The value of this value, if a simple scalar type.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array_values = args[:array_values] if args.key?(:array_values)
          @range_value = args[:range_value] if args.key?(:range_value)
          @struct_values = args[:struct_values] if args.key?(:struct_values)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Describes the format of the jobs.query request.
      class QueryRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Connection properties which can modify the query behavior.
        # Corresponds to the JSON property `connectionProperties`
        # @return [Array<Google::Apis::BigqueryV2::ConnectionProperty>]
        attr_accessor :connection_properties
      
        # [Optional] Specifies whether the query should be executed as a continuous
        # query. The default value is false.
        # Corresponds to the JSON property `continuous`
        # @return [Boolean]
        attr_accessor :continuous
        alias_method :continuous?, :continuous
      
        # Optional. If true, creates a new session using a randomly generated session_id.
        # If false, runs query with an existing session_id passed in ConnectionProperty,
        # otherwise runs query in non-session mode. The session location will be set to
        # QueryRequest.location if it is present, otherwise it's set to the default
        # location based on existing routing logic.
        # Corresponds to the JSON property `createSession`
        # @return [Boolean]
        attr_accessor :create_session
        alias_method :create_session?, :create_session
      
        # Optional. Specifies the default datasetId and projectId to assume for any
        # unqualified table names in the query. If not set, all table names in the query
        # string must be qualified in the format 'datasetId.tableId'.
        # Corresponds to the JSON property `defaultDataset`
        # @return [Google::Apis::BigqueryV2::DatasetReference]
        attr_accessor :default_dataset
      
        # Optional. If set to true, BigQuery doesn't run the job. Instead, if the query
        # is valid, BigQuery returns statistics about the job such as how many bytes
        # would be processed. If the query is invalid, an error returns. The default
        # value is false.
        # Corresponds to the JSON property `dryRun`
        # @return [Boolean]
        attr_accessor :dry_run
        alias_method :dry_run?, :dry_run
      
        # Options for data format adjustments.
        # Corresponds to the JSON property `formatOptions`
        # @return [Google::Apis::BigqueryV2::DataFormatOptions]
        attr_accessor :format_options
      
        # Optional. If not set, jobs are always required. If set, the query request will
        # follow the behavior described JobCreationMode. This feature is not yet
        # available. Jobs will always be created.
        # Corresponds to the JSON property `jobCreationMode`
        # @return [String]
        attr_accessor :job_creation_mode
      
        # The resource type of the request.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Optional. The labels associated with this query. Labels can be used to
        # organize and group query jobs. Label keys and values can be no longer than 63
        # characters, can only contain lowercase letters, numeric characters,
        # underscores and dashes. International characters are allowed. Label keys must
        # start with a letter and each label in the list must have a different key.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The geographic location where the job should run. See details at https://cloud.
        # google.com/bigquery/docs/locations#specifying_your_location.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. The maximum number of rows of data to return per page of results.
        # Setting this flag to a small value such as 1000 and then paging through
        # results might improve reliability when the query result set is large. In
        # addition to this limit, responses are also limited to 10 MB. By default, there
        # is no maximum row count, and only the byte limit applies.
        # Corresponds to the JSON property `maxResults`
        # @return [Fixnum]
        attr_accessor :max_results
      
        # Optional. Limits the bytes billed for this query. Queries with bytes billed
        # above this limit will fail (without incurring a charge). If unspecified, the
        # project default is used.
        # Corresponds to the JSON property `maximumBytesBilled`
        # @return [Fixnum]
        attr_accessor :maximum_bytes_billed
      
        # GoogleSQL only. Set to POSITIONAL to use positional (?) query parameters or to
        # NAMED to use named (@myparam) query parameters in this query.
        # Corresponds to the JSON property `parameterMode`
        # @return [String]
        attr_accessor :parameter_mode
      
        # This property is deprecated.
        # Corresponds to the JSON property `preserveNulls`
        # @return [Boolean]
        attr_accessor :preserve_nulls
        alias_method :preserve_nulls?, :preserve_nulls
      
        # Required. A query string to execute, using Google Standard SQL or legacy SQL
        # syntax. Example: "SELECT COUNT(f1) FROM myProjectId.myDatasetId.myTableId".
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Query parameters for GoogleSQL queries.
        # Corresponds to the JSON property `queryParameters`
        # @return [Array<Google::Apis::BigqueryV2::QueryParameter>]
        attr_accessor :query_parameters
      
        # Optional. A unique user provided identifier to ensure idempotent behavior for
        # queries. Note that this is different from the job_id. It has the following
        # properties: 1. It is case-sensitive, limited to up to 36 ASCII characters. A
        # UUID is recommended. 2. Read only queries can ignore this token since they are
        # nullipotent by definition. 3. For the purposes of idempotency ensured by the
        # request_id, a request is considered duplicate of another only if they have the
        # same request_id and are actually duplicates. When determining whether a
        # request is a duplicate of another request, all parameters in the request that
        # may affect the result are considered. For example, query,
        # connection_properties, query_parameters, use_legacy_sql are parameters that
        # affect the result and are considered when determining whether a request is a
        # duplicate, but properties like timeout_ms don't affect the result and are thus
        # not considered. Dry run query requests are never considered duplicate of
        # another request. 4. When a duplicate mutating query request is detected, it
        # returns: a. the results of the mutation if it completes successfully within
        # the timeout. b. the running operation if it is still in progress at the end of
        # the timeout. 5. Its lifetime is limited to 15 minutes. In other words, if two
        # requests are sent with the same request_id, but more than 15 minutes apart,
        # idempotency is not guaranteed.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. Optional: Specifies the maximum amount of time, in milliseconds,
        # that the client is willing to wait for the query to complete. By default, this
        # limit is 10 seconds (10,000 milliseconds). If the query is complete, the
        # jobComplete field in the response is true. If the query has not yet completed,
        # jobComplete is false. You can request a longer timeout period in the timeoutMs
        # field. However, the call is not guaranteed to wait for the specified timeout;
        # it typically returns after around 200 seconds (200,000 milliseconds), even if
        # the query is not complete. If jobComplete is false, you can continue to wait
        # for the query to complete by calling the getQueryResults method until the
        # jobComplete field in the getQueryResults response is true.
        # Corresponds to the JSON property `timeoutMs`
        # @return [Fixnum]
        attr_accessor :timeout_ms
      
        # Specifies whether to use BigQuery's legacy SQL dialect for this query. The
        # default value is true. If set to false, the query will use BigQuery's
        # GoogleSQL: https://cloud.google.com/bigquery/sql-reference/ When useLegacySql
        # is set to false, the value of flattenResults is ignored; query will be run as
        # if flattenResults is false.
        # Corresponds to the JSON property `useLegacySql`
        # @return [Boolean]
        attr_accessor :use_legacy_sql
        alias_method :use_legacy_sql?, :use_legacy_sql
      
        # Optional. Whether to look for the result in the query cache. The query cache
        # is a best-effort cache that will be flushed whenever tables in the query are
        # modified. The default value is true.
        # Corresponds to the JSON property `useQueryCache`
        # @return [Boolean]
        attr_accessor :use_query_cache
        alias_method :use_query_cache?, :use_query_cache
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_properties = args[:connection_properties] if args.key?(:connection_properties)
          @continuous = args[:continuous] if args.key?(:continuous)
          @create_session = args[:create_session] if args.key?(:create_session)
          @default_dataset = args[:default_dataset] if args.key?(:default_dataset)
          @dry_run = args[:dry_run] if args.key?(:dry_run)
          @format_options = args[:format_options] if args.key?(:format_options)
          @job_creation_mode = args[:job_creation_mode] if args.key?(:job_creation_mode)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @location = args[:location] if args.key?(:location)
          @max_results = args[:max_results] if args.key?(:max_results)
          @maximum_bytes_billed = args[:maximum_bytes_billed] if args.key?(:maximum_bytes_billed)
          @parameter_mode = args[:parameter_mode] if args.key?(:parameter_mode)
          @preserve_nulls = args[:preserve_nulls] if args.key?(:preserve_nulls)
          @query = args[:query] if args.key?(:query)
          @query_parameters = args[:query_parameters] if args.key?(:query_parameters)
          @request_id = args[:request_id] if args.key?(:request_id)
          @timeout_ms = args[:timeout_ms] if args.key?(:timeout_ms)
          @use_legacy_sql = args[:use_legacy_sql] if args.key?(:use_legacy_sql)
          @use_query_cache = args[:use_query_cache] if args.key?(:use_query_cache)
        end
      end
      
      # 
      class QueryResponse
        include Google::Apis::Core::Hashable
      
        # Whether the query result was fetched from the query cache.
        # Corresponds to the JSON property `cacheHit`
        # @return [Boolean]
        attr_accessor :cache_hit
        alias_method :cache_hit?, :cache_hit
      
        # Detailed statistics for DML statements
        # Corresponds to the JSON property `dmlStats`
        # @return [Google::Apis::BigqueryV2::DmlStatistics]
        attr_accessor :dml_stats
      
        # Output only. The first errors or warnings encountered during the running of
        # the job. The final message includes the number of errors that caused the
        # process to stop. Errors here do not necessarily mean that the job has
        # completed or was unsuccessful. For more information about error messages, see [
        # Error messages](https://cloud.google.com/bigquery/docs/error-messages).
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::BigqueryV2::ErrorProto>]
        attr_accessor :errors
      
        # Whether the query has completed or not. If rows or totalRows are present, this
        # will always be true. If this is false, totalRows will not be available.
        # Corresponds to the JSON property `jobComplete`
        # @return [Boolean]
        attr_accessor :job_complete
        alias_method :job_complete?, :job_complete
      
        # Reason about why a Job was created from a [`jobs.query`](https://cloud.google.
        # com/bigquery/docs/reference/rest/v2/jobs/query) method when used with `
        # JOB_CREATION_OPTIONAL` Job creation mode. For [`jobs.insert`](https://cloud.
        # google.com/bigquery/docs/reference/rest/v2/jobs/insert) method calls it will
        # always be `REQUESTED`. This feature is not yet available. Jobs will always be
        # created.
        # Corresponds to the JSON property `jobCreationReason`
        # @return [Google::Apis::BigqueryV2::JobCreationReason]
        attr_accessor :job_creation_reason
      
        # A job reference is a fully qualified identifier for referring to a job.
        # Corresponds to the JSON property `jobReference`
        # @return [Google::Apis::BigqueryV2::JobReference]
        attr_accessor :job_reference
      
        # The resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. The number of rows affected by a DML statement. Present only for
        # DML statements INSERT, UPDATE or DELETE.
        # Corresponds to the JSON property `numDmlAffectedRows`
        # @return [Fixnum]
        attr_accessor :num_dml_affected_rows
      
        # A token used for paging results. A non-empty token indicates that additional
        # results are available. To see additional results, query the [`jobs.
        # getQueryResults`](https://cloud.google.com/bigquery/docs/reference/rest/v2/
        # jobs/getQueryResults) method. For more information, see [Paging through table
        # data](https://cloud.google.com/bigquery/docs/paging-results).
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Query ID for the completed query. This ID will be auto-generated. This field
        # is not yet available and it is currently not guaranteed to be populated.
        # Corresponds to the JSON property `queryId`
        # @return [String]
        attr_accessor :query_id
      
        # An object with as many results as can be contained within the maximum
        # permitted reply size. To get any additional rows, you can call GetQueryResults
        # and specify the jobReference returned above.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::BigqueryV2::TableRow>]
        attr_accessor :rows
      
        # Schema of a table
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::BigqueryV2::TableSchema]
        attr_accessor :schema
      
        # [Preview] Information related to sessions.
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::BigqueryV2::SessionInfo]
        attr_accessor :session_info
      
        # The total number of bytes processed for this query. If this query was a dry
        # run, this is the number of bytes that would be processed if the query were run.
        # Corresponds to the JSON property `totalBytesProcessed`
        # @return [Fixnum]
        attr_accessor :total_bytes_processed
      
        # The total number of rows in the complete query result set, which can be more
        # than the number of rows in this single page of results.
        # Corresponds to the JSON property `totalRows`
        # @return [Fixnum]
        attr_accessor :total_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_hit = args[:cache_hit] if args.key?(:cache_hit)
          @dml_stats = args[:dml_stats] if args.key?(:dml_stats)
          @errors = args[:errors] if args.key?(:errors)
          @job_complete = args[:job_complete] if args.key?(:job_complete)
          @job_creation_reason = args[:job_creation_reason] if args.key?(:job_creation_reason)
          @job_reference = args[:job_reference] if args.key?(:job_reference)
          @kind = args[:kind] if args.key?(:kind)
          @num_dml_affected_rows = args[:num_dml_affected_rows] if args.key?(:num_dml_affected_rows)
          @page_token = args[:page_token] if args.key?(:page_token)
          @query_id = args[:query_id] if args.key?(:query_id)
          @rows = args[:rows] if args.key?(:rows)
          @schema = args[:schema] if args.key?(:schema)
          @session_info = args[:session_info] if args.key?(:session_info)
          @total_bytes_processed = args[:total_bytes_processed] if args.key?(:total_bytes_processed)
          @total_rows = args[:total_rows] if args.key?(:total_rows)
        end
      end
      
      # Summary of the state of query execution at a given time.
      class QueryTimelineSample
        include Google::Apis::Core::Hashable
      
        # Total number of active workers. This does not correspond directly to slot
        # usage. This is the largest value observed since the last sample.
        # Corresponds to the JSON property `activeUnits`
        # @return [Fixnum]
        attr_accessor :active_units
      
        # Total parallel units of work completed by this query.
        # Corresponds to the JSON property `completedUnits`
        # @return [Fixnum]
        attr_accessor :completed_units
      
        # Milliseconds elapsed since the start of query execution.
        # Corresponds to the JSON property `elapsedMs`
        # @return [Fixnum]
        attr_accessor :elapsed_ms
      
        # Units of work that can be scheduled immediately. Providing additional slots
        # for these units of work will accelerate the query, if no other query in the
        # reservation needs additional slots.
        # Corresponds to the JSON property `estimatedRunnableUnits`
        # @return [Fixnum]
        attr_accessor :estimated_runnable_units
      
        # Total units of work remaining for the query. This number can be revised (
        # increased or decreased) while the query is running.
        # Corresponds to the JSON property `pendingUnits`
        # @return [Fixnum]
        attr_accessor :pending_units
      
        # Cumulative slot-ms consumed by the query.
        # Corresponds to the JSON property `totalSlotMs`
        # @return [Fixnum]
        attr_accessor :total_slot_ms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_units = args[:active_units] if args.key?(:active_units)
          @completed_units = args[:completed_units] if args.key?(:completed_units)
          @elapsed_ms = args[:elapsed_ms] if args.key?(:elapsed_ms)
          @estimated_runnable_units = args[:estimated_runnable_units] if args.key?(:estimated_runnable_units)
          @pending_units = args[:pending_units] if args.key?(:pending_units)
          @total_slot_ms = args[:total_slot_ms] if args.key?(:total_slot_ms)
        end
      end
      
      # 
      class RangePartitioning
        include Google::Apis::Core::Hashable
      
        # Required. The name of the column to partition the table on. It must be a top-
        # level, INT64 column whose mode is NULLABLE or REQUIRED.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # [Experimental] Defines the ranges for range partitioning.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::BigqueryV2::RangePartitioning::Range]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @range = args[:range] if args.key?(:range)
        end
        
        # [Experimental] Defines the ranges for range partitioning.
        class Range
          include Google::Apis::Core::Hashable
        
          # [Experimental] The end of range partitioning, exclusive.
          # Corresponds to the JSON property `end`
          # @return [Fixnum]
          attr_accessor :end
        
          # [Experimental] The width of each interval.
          # Corresponds to the JSON property `interval`
          # @return [Fixnum]
          attr_accessor :interval
        
          # [Experimental] The start of range partitioning, inclusive.
          # Corresponds to the JSON property `start`
          # @return [Fixnum]
          attr_accessor :start
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @end = args[:end] if args.key?(:end)
            @interval = args[:interval] if args.key?(:interval)
            @start = args[:start] if args.key?(:start)
          end
        end
      end
      
      # Represents the value of a range.
      class RangeValue
        include Google::Apis::Core::Hashable
      
        # The value of a query parameter.
        # Corresponds to the JSON property `end`
        # @return [Google::Apis::BigqueryV2::QueryParameterValue]
        attr_accessor :end
      
        # The value of a query parameter.
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::BigqueryV2::QueryParameterValue]
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
      
      # Evaluation metrics used by weighted-ALS models specified by feedback_type=
      # implicit.
      class RankingMetrics
        include Google::Apis::Core::Hashable
      
        # Determines the goodness of a ranking by computing the percentile rank from the
        # predicted confidence and dividing it by the original rank.
        # Corresponds to the JSON property `averageRank`
        # @return [Float]
        attr_accessor :average_rank
      
        # Calculates a precision per user for all the items by ranking them and then
        # averages all the precisions across all the users.
        # Corresponds to the JSON property `meanAveragePrecision`
        # @return [Float]
        attr_accessor :mean_average_precision
      
        # Similar to the mean squared error computed in regression and explicit
        # recommendation models except instead of computing the rating directly, the
        # output from evaluate is computed against a preference which is 1 or 0
        # depending on if the rating exists or not.
        # Corresponds to the JSON property `meanSquaredError`
        # @return [Float]
        attr_accessor :mean_squared_error
      
        # A metric to determine the goodness of a ranking calculated from the predicted
        # confidence by comparing it to an ideal rank measured by the original ratings.
        # Corresponds to the JSON property `normalizedDiscountedCumulativeGain`
        # @return [Float]
        attr_accessor :normalized_discounted_cumulative_gain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_rank = args[:average_rank] if args.key?(:average_rank)
          @mean_average_precision = args[:mean_average_precision] if args.key?(:mean_average_precision)
          @mean_squared_error = args[:mean_squared_error] if args.key?(:mean_squared_error)
          @normalized_discounted_cumulative_gain = args[:normalized_discounted_cumulative_gain] if args.key?(:normalized_discounted_cumulative_gain)
        end
      end
      
      # Evaluation metrics for regression and explicit feedback type matrix
      # factorization models.
      class RegressionMetrics
        include Google::Apis::Core::Hashable
      
        # Mean absolute error.
        # Corresponds to the JSON property `meanAbsoluteError`
        # @return [Float]
        attr_accessor :mean_absolute_error
      
        # Mean squared error.
        # Corresponds to the JSON property `meanSquaredError`
        # @return [Float]
        attr_accessor :mean_squared_error
      
        # Mean squared log error.
        # Corresponds to the JSON property `meanSquaredLogError`
        # @return [Float]
        attr_accessor :mean_squared_log_error
      
        # Median absolute error.
        # Corresponds to the JSON property `medianAbsoluteError`
        # @return [Float]
        attr_accessor :median_absolute_error
      
        # R^2 score. This corresponds to r2_score in ML.EVALUATE.
        # Corresponds to the JSON property `rSquared`
        # @return [Float]
        attr_accessor :r_squared
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mean_absolute_error = args[:mean_absolute_error] if args.key?(:mean_absolute_error)
          @mean_squared_error = args[:mean_squared_error] if args.key?(:mean_squared_error)
          @mean_squared_log_error = args[:mean_squared_log_error] if args.key?(:mean_squared_log_error)
          @median_absolute_error = args[:median_absolute_error] if args.key?(:median_absolute_error)
          @r_squared = args[:r_squared] if args.key?(:r_squared)
        end
      end
      
      # Options for a remote user-defined function.
      class RemoteFunctionOptions
        include Google::Apis::Core::Hashable
      
        # Fully qualified name of the user-provided connection object which holds the
        # authentication information to send requests to the remote service. Format: ```"
        # projects/`projectId`/locations/`locationId`/connections/`connectionId`"```
        # Corresponds to the JSON property `connection`
        # @return [String]
        attr_accessor :connection
      
        # Endpoint of the user-provided remote service, e.g. ```https://us-east1-
        # my_gcf_project.cloudfunctions.net/remote_add```
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # Max number of rows in each batch sent to the remote service. If absent or if 0,
        # BigQuery dynamically decides the number of rows in a batch.
        # Corresponds to the JSON property `maxBatchingRows`
        # @return [Fixnum]
        attr_accessor :max_batching_rows
      
        # User-defined context as a set of key/value pairs, which will be sent as
        # function invocation context together with batched arguments in the requests to
        # the remote service. The total number of bytes of keys and values must be less
        # than 8KB.
        # Corresponds to the JSON property `userDefinedContext`
        # @return [Hash<String,String>]
        attr_accessor :user_defined_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection = args[:connection] if args.key?(:connection)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @max_batching_rows = args[:max_batching_rows] if args.key?(:max_batching_rows)
          @user_defined_context = args[:user_defined_context] if args.key?(:user_defined_context)
        end
      end
      
      # Remote Model Info
      class RemoteModelInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Fully qualified name of the user-provided connection object of
        # the remote model. Format: ```"projects/`project_id`/locations/`location_id`/
        # connections/`connection_id`"```
        # Corresponds to the JSON property `connection`
        # @return [String]
        attr_accessor :connection
      
        # Output only. The endpoint for remote model.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # Output only. Max number of rows in each batch sent to the remote service. If
        # unset, the number of rows in each batch is set dynamically.
        # Corresponds to the JSON property `maxBatchingRows`
        # @return [Fixnum]
        attr_accessor :max_batching_rows
      
        # Output only. The model version for LLM.
        # Corresponds to the JSON property `remoteModelVersion`
        # @return [String]
        attr_accessor :remote_model_version
      
        # Output only. The remote service type for remote model.
        # Corresponds to the JSON property `remoteServiceType`
        # @return [String]
        attr_accessor :remote_service_type
      
        # Output only. The name of the speech recognizer to use for speech recognition.
        # The expected format is `projects/`project`/locations/`location`/recognizers/`
        # recognizer``. Customers can specify this field at model creation. If not
        # specified, a default recognizer `projects/`model project`/locations/global/
        # recognizers/_` will be used. See more details at [recognizers](https://cloud.
        # google.com/speech-to-text/v2/docs/reference/rest/v2/projects.locations.
        # recognizers)
        # Corresponds to the JSON property `speechRecognizer`
        # @return [String]
        attr_accessor :speech_recognizer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection = args[:connection] if args.key?(:connection)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @max_batching_rows = args[:max_batching_rows] if args.key?(:max_batching_rows)
          @remote_model_version = args[:remote_model_version] if args.key?(:remote_model_version)
          @remote_service_type = args[:remote_service_type] if args.key?(:remote_service_type)
          @speech_recognizer = args[:speech_recognizer] if args.key?(:speech_recognizer)
        end
      end
      
      # 
      class RestrictionConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies the type of dataset/table restriction.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A user-defined function or a stored procedure.
      class Routine
        include Google::Apis::Core::Hashable
      
        # Optional.
        # Corresponds to the JSON property `arguments`
        # @return [Array<Google::Apis::BigqueryV2::Argument>]
        attr_accessor :arguments
      
        # Output only. The time when this routine was created, in milliseconds since the
        # epoch.
        # Corresponds to the JSON property `creationTime`
        # @return [Fixnum]
        attr_accessor :creation_time
      
        # Optional. If set to `DATA_MASKING`, the function is validated and made
        # available as a masking function. For more information, see [Create custom
        # masking routines](https://cloud.google.com/bigquery/docs/user-defined-
        # functions#custom-mask).
        # Corresponds to the JSON property `dataGovernanceType`
        # @return [String]
        attr_accessor :data_governance_type
      
        # Required. The body of the routine. For functions, this is the expression in
        # the AS clause. If language=SQL, it is the substring inside (but excluding) the
        # parentheses. For example, for the function created with the following
        # statement: `CREATE FUNCTION JoinLines(x string, y string) as (concat(x, "\n",
        # y))` The definition_body is `concat(x, "\n", y)` (\n is not replaced with
        # linebreak). If language=JAVASCRIPT, it is the evaluated string in the AS
        # clause. For example, for the function created with the following statement: `
        # CREATE FUNCTION f() RETURNS STRING LANGUAGE js AS 'return "\n";\n'` The
        # definition_body is `return "\n";\n` Note that both \n are replaced with
        # linebreaks.
        # Corresponds to the JSON property `definitionBody`
        # @return [String]
        attr_accessor :definition_body
      
        # Optional. The description of the routine, if defined.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The determinism level of the JavaScript UDF, if defined.
        # Corresponds to the JSON property `determinismLevel`
        # @return [String]
        attr_accessor :determinism_level
      
        # Output only. A hash of this resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. If language = "JAVASCRIPT", this field stores the path of the
        # imported JAVASCRIPT libraries.
        # Corresponds to the JSON property `importedLibraries`
        # @return [Array<String>]
        attr_accessor :imported_libraries
      
        # Optional. Defaults to "SQL" if remote_function_options field is absent, not
        # set otherwise.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # Output only. The time when this routine was last modified, in milliseconds
        # since the epoch.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [Fixnum]
        attr_accessor :last_modified_time
      
        # Options for a remote user-defined function.
        # Corresponds to the JSON property `remoteFunctionOptions`
        # @return [Google::Apis::BigqueryV2::RemoteFunctionOptions]
        attr_accessor :remote_function_options
      
        # A table type
        # Corresponds to the JSON property `returnTableType`
        # @return [Google::Apis::BigqueryV2::StandardSqlTableType]
        attr_accessor :return_table_type
      
        # The data type of a variable such as a function argument. Examples include: *
        # INT64: ``"typeKind": "INT64"`` * ARRAY: ` "typeKind": "ARRAY", "
        # arrayElementType": `"typeKind": "STRING"` ` * STRUCT>: ` "typeKind": "STRUCT",
        # "structType": ` "fields": [ ` "name": "x", "type": `"typeKind": "STRING"` `, `
        # "name": "y", "type": ` "typeKind": "ARRAY", "arrayElementType": `"typeKind": "
        # DATE"` ` ` ] ` `
        # Corresponds to the JSON property `returnType`
        # @return [Google::Apis::BigqueryV2::StandardSqlDataType]
        attr_accessor :return_type
      
        # Id path of a routine.
        # Corresponds to the JSON property `routineReference`
        # @return [Google::Apis::BigqueryV2::RoutineReference]
        attr_accessor :routine_reference
      
        # Required. The type of routine.
        # Corresponds to the JSON property `routineType`
        # @return [String]
        attr_accessor :routine_type
      
        # Optional. The security mode of the routine, if defined. If not defined, the
        # security mode is automatically determined from the routine's configuration.
        # Corresponds to the JSON property `securityMode`
        # @return [String]
        attr_accessor :security_mode
      
        # Options for a user-defined Spark routine.
        # Corresponds to the JSON property `sparkOptions`
        # @return [Google::Apis::BigqueryV2::SparkOptions]
        attr_accessor :spark_options
      
        # Optional. Use this option to catch many common errors. Error checking is not
        # exhaustive, and successfully creating a procedure doesn't guarantee that the
        # procedure will successfully execute at runtime. If `strictMode` is set to `
        # TRUE`, the procedure body is further checked for errors such as non-existent
        # tables or columns. The `CREATE PROCEDURE` statement fails if the body fails
        # any of these checks. If `strictMode` is set to `FALSE`, the procedure body is
        # checked only for syntax. For procedures that invoke themselves recursively,
        # specify `strictMode=FALSE` to avoid non-existent procedure errors during
        # validation. Default value is `TRUE`.
        # Corresponds to the JSON property `strictMode`
        # @return [Boolean]
        attr_accessor :strict_mode
        alias_method :strict_mode?, :strict_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arguments = args[:arguments] if args.key?(:arguments)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @data_governance_type = args[:data_governance_type] if args.key?(:data_governance_type)
          @definition_body = args[:definition_body] if args.key?(:definition_body)
          @description = args[:description] if args.key?(:description)
          @determinism_level = args[:determinism_level] if args.key?(:determinism_level)
          @etag = args[:etag] if args.key?(:etag)
          @imported_libraries = args[:imported_libraries] if args.key?(:imported_libraries)
          @language = args[:language] if args.key?(:language)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @remote_function_options = args[:remote_function_options] if args.key?(:remote_function_options)
          @return_table_type = args[:return_table_type] if args.key?(:return_table_type)
          @return_type = args[:return_type] if args.key?(:return_type)
          @routine_reference = args[:routine_reference] if args.key?(:routine_reference)
          @routine_type = args[:routine_type] if args.key?(:routine_type)
          @security_mode = args[:security_mode] if args.key?(:security_mode)
          @spark_options = args[:spark_options] if args.key?(:spark_options)
          @strict_mode = args[:strict_mode] if args.key?(:strict_mode)
        end
      end
      
      # Id path of a routine.
      class RoutineReference
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the dataset containing this routine.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # Required. The ID of the project containing this routine.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. The ID of the routine. The ID must contain only letters (a-z, A-Z),
        # numbers (0-9), or underscores (_). The maximum length is 256 characters.
        # Corresponds to the JSON property `routineId`
        # @return [String]
        attr_accessor :routine_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @routine_id = args[:routine_id] if args.key?(:routine_id)
        end
      end
      
      # A single row in the confusion matrix.
      class Row
        include Google::Apis::Core::Hashable
      
        # The original label of this row.
        # Corresponds to the JSON property `actualLabel`
        # @return [String]
        attr_accessor :actual_label
      
        # Info describing predicted label distribution.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::BigqueryV2::Entry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actual_label = args[:actual_label] if args.key?(:actual_label)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # Represents access on a subset of rows on the specified table, defined by its
      # filter predicate. Access to the subset of rows is controlled by its IAM policy.
      class RowAccessPolicy
        include Google::Apis::Core::Hashable
      
        # Output only. The time when this row access policy was created, in milliseconds
        # since the epoch.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Output only. A hash of this resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Required. A SQL boolean expression that represents the rows defined by this
        # row access policy, similar to the boolean expression in a WHERE clause of a
        # SELECT query on a table. References to other tables, routines, and temporary
        # functions are not supported. Examples: region="EU" date_field = CAST('2019-9-
        # 27' as DATE) nullable_field is not NULL numeric_field BETWEEN 1.0 AND 5.0
        # Corresponds to the JSON property `filterPredicate`
        # @return [String]
        attr_accessor :filter_predicate
      
        # Output only. The time when this row access policy was last modified, in
        # milliseconds since the epoch.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # Id path of a row access policy.
        # Corresponds to the JSON property `rowAccessPolicyReference`
        # @return [Google::Apis::BigqueryV2::RowAccessPolicyReference]
        attr_accessor :row_access_policy_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @etag = args[:etag] if args.key?(:etag)
          @filter_predicate = args[:filter_predicate] if args.key?(:filter_predicate)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @row_access_policy_reference = args[:row_access_policy_reference] if args.key?(:row_access_policy_reference)
        end
      end
      
      # Id path of a row access policy.
      class RowAccessPolicyReference
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the dataset containing this row access policy.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # Required. The ID of the row access policy. The ID must contain only letters (a-
        # z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256
        # characters.
        # Corresponds to the JSON property `policyId`
        # @return [String]
        attr_accessor :policy_id
      
        # Required. The ID of the project containing this row access policy.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. The ID of the table containing this row access policy.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @policy_id = args[:policy_id] if args.key?(:policy_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # Statistics for row-level security.
      class RowLevelSecurityStatistics
        include Google::Apis::Core::Hashable
      
        # Whether any accessed data was protected by row access policies.
        # Corresponds to the JSON property `rowLevelSecurityApplied`
        # @return [Boolean]
        attr_accessor :row_level_security_applied
        alias_method :row_level_security_applied?, :row_level_security_applied
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row_level_security_applied = args[:row_level_security_applied] if args.key?(:row_level_security_applied)
        end
      end
      
      # Options related to script execution.
      class ScriptOptions
        include Google::Apis::Core::Hashable
      
        # Determines which statement in the script represents the "key result", used to
        # populate the schema and query results of the script job. Default is LAST.
        # Corresponds to the JSON property `keyResultStatement`
        # @return [String]
        attr_accessor :key_result_statement
      
        # Limit on the number of bytes billed per statement. Exceeding this budget
        # results in an error.
        # Corresponds to the JSON property `statementByteBudget`
        # @return [Fixnum]
        attr_accessor :statement_byte_budget
      
        # Timeout period for each statement in a script.
        # Corresponds to the JSON property `statementTimeoutMs`
        # @return [Fixnum]
        attr_accessor :statement_timeout_ms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_result_statement = args[:key_result_statement] if args.key?(:key_result_statement)
          @statement_byte_budget = args[:statement_byte_budget] if args.key?(:statement_byte_budget)
          @statement_timeout_ms = args[:statement_timeout_ms] if args.key?(:statement_timeout_ms)
        end
      end
      
      # Represents the location of the statement/expression being evaluated. Line and
      # column numbers are defined as follows: - Line and column numbers start with
      # one. That is, line 1 column 1 denotes the start of the script. - When inside a
      # stored procedure, all line/column numbers are relative to the procedure body,
      # not the script in which the procedure was defined. - Start/end positions
      # exclude leading/trailing comments and whitespace. The end position always ends
      # with a ";", when present. - Multi-byte Unicode characters are treated as just
      # one column. - If the original script (or procedure definition) contains TAB
      # characters, a tab "snaps" the indentation forward to the nearest multiple of 8
      # characters, plus 1. For example, a TAB on column 1, 2, 3, 4, 5, 6 , or 8 will
      # advance the next character to column 9. A TAB on column 9, 10, 11, 12, 13, 14,
      # 15, or 16 will advance the next character to column 17.
      class ScriptStackFrame
        include Google::Apis::Core::Hashable
      
        # Output only. One-based end column.
        # Corresponds to the JSON property `endColumn`
        # @return [Fixnum]
        attr_accessor :end_column
      
        # Output only. One-based end line.
        # Corresponds to the JSON property `endLine`
        # @return [Fixnum]
        attr_accessor :end_line
      
        # Output only. Name of the active procedure, empty if in a top-level script.
        # Corresponds to the JSON property `procedureId`
        # @return [String]
        attr_accessor :procedure_id
      
        # Output only. One-based start column.
        # Corresponds to the JSON property `startColumn`
        # @return [Fixnum]
        attr_accessor :start_column
      
        # Output only. One-based start line.
        # Corresponds to the JSON property `startLine`
        # @return [Fixnum]
        attr_accessor :start_line
      
        # Output only. Text of the current statement/expression.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_column = args[:end_column] if args.key?(:end_column)
          @end_line = args[:end_line] if args.key?(:end_line)
          @procedure_id = args[:procedure_id] if args.key?(:procedure_id)
          @start_column = args[:start_column] if args.key?(:start_column)
          @start_line = args[:start_line] if args.key?(:start_line)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Job statistics specific to the child job of a script.
      class ScriptStatistics
        include Google::Apis::Core::Hashable
      
        # Whether this child job was a statement or expression.
        # Corresponds to the JSON property `evaluationKind`
        # @return [String]
        attr_accessor :evaluation_kind
      
        # Stack trace showing the line/column/procedure name of each frame on the stack
        # at the point where the current evaluation happened. The leaf frame is first,
        # the primary script is last. Never empty.
        # Corresponds to the JSON property `stackFrames`
        # @return [Array<Google::Apis::BigqueryV2::ScriptStackFrame>]
        attr_accessor :stack_frames
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluation_kind = args[:evaluation_kind] if args.key?(:evaluation_kind)
          @stack_frames = args[:stack_frames] if args.key?(:stack_frames)
        end
      end
      
      # Statistics for a search query. Populated as part of JobStatistics2.
      class SearchStatistics
        include Google::Apis::Core::Hashable
      
        # When `indexUsageMode` is `UNUSED` or `PARTIALLY_USED`, this field explains why
        # indexes were not used in all or part of the search query. If `indexUsageMode`
        # is `FULLY_USED`, this field is not populated.
        # Corresponds to the JSON property `indexUnusedReasons`
        # @return [Array<Google::Apis::BigqueryV2::IndexUnusedReason>]
        attr_accessor :index_unused_reasons
      
        # Specifies the index usage mode for the query.
        # Corresponds to the JSON property `indexUsageMode`
        # @return [String]
        attr_accessor :index_usage_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index_unused_reasons = args[:index_unused_reasons] if args.key?(:index_unused_reasons)
          @index_usage_mode = args[:index_usage_mode] if args.key?(:index_usage_mode)
        end
      end
      
      # Serializer and deserializer information.
      class SerDeInfo
        include Google::Apis::Core::Hashable
      
        # Optional. Name of the SerDe. The maximum length is 256 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Key-value pairs that define the initialization parameters for the
        # serialization library. Maximum size 10 Kib.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        # Required. Specifies a fully-qualified class name of the serialization library
        # that is responsible for the translation of data between table representation
        # and the underlying low-level input and output format structures. The maximum
        # length is 256 characters.
        # Corresponds to the JSON property `serializationLibrary`
        # @return [String]
        attr_accessor :serialization_library
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
          @serialization_library = args[:serialization_library] if args.key?(:serialization_library)
        end
      end
      
      # [Preview] Information related to sessions.
      class SessionInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The id of the session.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session_id = args[:session_id] if args.key?(:session_id)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::BigqueryV2::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Details about source stages which produce skewed data.
      class SkewSource
        include Google::Apis::Core::Hashable
      
        # Output only. Stage id of the skew source stage.
        # Corresponds to the JSON property `stageId`
        # @return [Fixnum]
        attr_accessor :stage_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stage_id = args[:stage_id] if args.key?(:stage_id)
        end
      end
      
      # Information about base table and snapshot time of the snapshot.
      class SnapshotDefinition
        include Google::Apis::Core::Hashable
      
        # Required. Reference describing the ID of the table that was snapshot.
        # Corresponds to the JSON property `baseTableReference`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :base_table_reference
      
        # Required. The time at which the base table was snapshot. This value is
        # reported in the JSON response using RFC3339 format.
        # Corresponds to the JSON property `snapshotTime`
        # @return [DateTime]
        attr_accessor :snapshot_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_table_reference = args[:base_table_reference] if args.key?(:base_table_reference)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
        end
      end
      
      # Spark job logs can be filtered by these fields in Cloud Logging.
      class SparkLoggingInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Project ID where the Spark logs were written.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Output only. Resource type used for logging.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Options for a user-defined Spark routine.
      class SparkOptions
        include Google::Apis::Core::Hashable
      
        # Archive files to be extracted into the working directory of each executor. For
        # more information about Apache Spark, see [Apache Spark](https://spark.apache.
        # org/docs/latest/index.html).
        # Corresponds to the JSON property `archiveUris`
        # @return [Array<String>]
        attr_accessor :archive_uris
      
        # Fully qualified name of the user-provided Spark connection object. Format: ```"
        # projects/`project_id`/locations/`location_id`/connections/`connection_id`"```
        # Corresponds to the JSON property `connection`
        # @return [String]
        attr_accessor :connection
      
        # Custom container image for the runtime environment.
        # Corresponds to the JSON property `containerImage`
        # @return [String]
        attr_accessor :container_image
      
        # Files to be placed in the working directory of each executor. For more
        # information about Apache Spark, see [Apache Spark](https://spark.apache.org/
        # docs/latest/index.html).
        # Corresponds to the JSON property `fileUris`
        # @return [Array<String>]
        attr_accessor :file_uris
      
        # JARs to include on the driver and executor CLASSPATH. For more information
        # about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/
        # index.html).
        # Corresponds to the JSON property `jarUris`
        # @return [Array<String>]
        attr_accessor :jar_uris
      
        # The fully qualified name of a class in jar_uris, for example, com.example.
        # wordcount. Exactly one of main_class and main_jar_uri field should be set for
        # Java/Scala language type.
        # Corresponds to the JSON property `mainClass`
        # @return [String]
        attr_accessor :main_class
      
        # The main file/jar URI of the Spark application. Exactly one of the
        # definition_body field and the main_file_uri field must be set for Python.
        # Exactly one of main_class and main_file_uri field should be set for Java/Scala
        # language type.
        # Corresponds to the JSON property `mainFileUri`
        # @return [String]
        attr_accessor :main_file_uri
      
        # Configuration properties as a set of key/value pairs, which will be passed on
        # to the Spark application. For more information, see [Apache Spark](https://
        # spark.apache.org/docs/latest/index.html) and the [procedure option list](https:
        # //cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-
        # language#procedure_option_list).
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # Python files to be placed on the PYTHONPATH for PySpark application. Supported
        # file types: `.py`, `.egg`, and `.zip`. For more information about Apache Spark,
        # see [Apache Spark](https://spark.apache.org/docs/latest/index.html).
        # Corresponds to the JSON property `pyFileUris`
        # @return [Array<String>]
        attr_accessor :py_file_uris
      
        # Runtime version. If not specified, the default runtime version is used.
        # Corresponds to the JSON property `runtimeVersion`
        # @return [String]
        attr_accessor :runtime_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_uris = args[:archive_uris] if args.key?(:archive_uris)
          @connection = args[:connection] if args.key?(:connection)
          @container_image = args[:container_image] if args.key?(:container_image)
          @file_uris = args[:file_uris] if args.key?(:file_uris)
          @jar_uris = args[:jar_uris] if args.key?(:jar_uris)
          @main_class = args[:main_class] if args.key?(:main_class)
          @main_file_uri = args[:main_file_uri] if args.key?(:main_file_uri)
          @properties = args[:properties] if args.key?(:properties)
          @py_file_uris = args[:py_file_uris] if args.key?(:py_file_uris)
          @runtime_version = args[:runtime_version] if args.key?(:runtime_version)
        end
      end
      
      # Statistics for a BigSpark query. Populated as part of JobStatistics2
      class SparkStatistics
        include Google::Apis::Core::Hashable
      
        # Output only. Endpoints returned from Dataproc. Key list: -
        # history_server_endpoint: A link to Spark job UI.
        # Corresponds to the JSON property `endpoints`
        # @return [Hash<String,String>]
        attr_accessor :endpoints
      
        # Output only. The Google Cloud Storage bucket that is used as the default file
        # system by the Spark application. This field is only filled when the Spark
        # procedure uses the invoker security mode. The `gcsStagingBucket` bucket is
        # inferred from the `@@spark_proc_properties.staging_bucket` system variable (if
        # it is provided). Otherwise, BigQuery creates a default staging bucket for the
        # job and returns the bucket name in this field. Example: * `gs://[bucket_name]`
        # Corresponds to the JSON property `gcsStagingBucket`
        # @return [String]
        attr_accessor :gcs_staging_bucket
      
        # Output only. The Cloud KMS encryption key that is used to protect the
        # resources created by the Spark job. If the Spark procedure uses the invoker
        # security mode, the Cloud KMS encryption key is either inferred from the
        # provided system variable, `@@spark_proc_properties.kms_key_name`, or the
        # default key of the BigQuery job's project (if the CMEK organization policy is
        # enforced). Otherwise, the Cloud KMS key is either inferred from the Spark
        # connection associated with the procedure (if it is provided), or from the
        # default key of the Spark connection's project if the CMEK organization policy
        # is enforced. Example: * `projects/[kms_project_id]/locations/[region]/keyRings/
        # [key_region]/cryptoKeys/[key]`
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Spark job logs can be filtered by these fields in Cloud Logging.
        # Corresponds to the JSON property `loggingInfo`
        # @return [Google::Apis::BigqueryV2::SparkLoggingInfo]
        attr_accessor :logging_info
      
        # Output only. Spark job ID if a Spark job is created successfully.
        # Corresponds to the JSON property `sparkJobId`
        # @return [String]
        attr_accessor :spark_job_id
      
        # Output only. Location where the Spark job is executed. A location is selected
        # by BigQueury for jobs configured to run in a multi-region.
        # Corresponds to the JSON property `sparkJobLocation`
        # @return [String]
        attr_accessor :spark_job_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @gcs_staging_bucket = args[:gcs_staging_bucket] if args.key?(:gcs_staging_bucket)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @logging_info = args[:logging_info] if args.key?(:logging_info)
          @spark_job_id = args[:spark_job_id] if args.key?(:spark_job_id)
          @spark_job_location = args[:spark_job_location] if args.key?(:spark_job_location)
        end
      end
      
      # Performance insights compared to the previous executions for a specific stage.
      class StagePerformanceChangeInsight
        include Google::Apis::Core::Hashable
      
        # Details about the input data change insight.
        # Corresponds to the JSON property `inputDataChange`
        # @return [Google::Apis::BigqueryV2::InputDataChange]
        attr_accessor :input_data_change
      
        # Output only. The stage id that the insight mapped to.
        # Corresponds to the JSON property `stageId`
        # @return [Fixnum]
        attr_accessor :stage_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_data_change = args[:input_data_change] if args.key?(:input_data_change)
          @stage_id = args[:stage_id] if args.key?(:stage_id)
        end
      end
      
      # Standalone performance insights for a specific stage.
      class StagePerformanceStandaloneInsight
        include Google::Apis::Core::Hashable
      
        # Output only. If present, the stage had the following reasons for being
        # disqualified from BI Engine execution.
        # Corresponds to the JSON property `biEngineReasons`
        # @return [Array<Google::Apis::BigqueryV2::BiEngineReason>]
        attr_accessor :bi_engine_reasons
      
        # Output only. High cardinality joins in the stage.
        # Corresponds to the JSON property `highCardinalityJoins`
        # @return [Array<Google::Apis::BigqueryV2::HighCardinalityJoin>]
        attr_accessor :high_cardinality_joins
      
        # Output only. True if the stage has insufficient shuffle quota.
        # Corresponds to the JSON property `insufficientShuffleQuota`
        # @return [Boolean]
        attr_accessor :insufficient_shuffle_quota
        alias_method :insufficient_shuffle_quota?, :insufficient_shuffle_quota
      
        # Partition skew detailed information.
        # Corresponds to the JSON property `partitionSkew`
        # @return [Google::Apis::BigqueryV2::PartitionSkew]
        attr_accessor :partition_skew
      
        # Output only. True if the stage has a slot contention issue.
        # Corresponds to the JSON property `slotContention`
        # @return [Boolean]
        attr_accessor :slot_contention
        alias_method :slot_contention?, :slot_contention
      
        # Output only. The stage id that the insight mapped to.
        # Corresponds to the JSON property `stageId`
        # @return [Fixnum]
        attr_accessor :stage_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bi_engine_reasons = args[:bi_engine_reasons] if args.key?(:bi_engine_reasons)
          @high_cardinality_joins = args[:high_cardinality_joins] if args.key?(:high_cardinality_joins)
          @insufficient_shuffle_quota = args[:insufficient_shuffle_quota] if args.key?(:insufficient_shuffle_quota)
          @partition_skew = args[:partition_skew] if args.key?(:partition_skew)
          @slot_contention = args[:slot_contention] if args.key?(:slot_contention)
          @stage_id = args[:stage_id] if args.key?(:stage_id)
        end
      end
      
      # The data type of a variable such as a function argument. Examples include: *
      # INT64: ``"typeKind": "INT64"`` * ARRAY: ` "typeKind": "ARRAY", "
      # arrayElementType": `"typeKind": "STRING"` ` * STRUCT>: ` "typeKind": "STRUCT",
      # "structType": ` "fields": [ ` "name": "x", "type": `"typeKind": "STRING"` `, `
      # "name": "y", "type": ` "typeKind": "ARRAY", "arrayElementType": `"typeKind": "
      # DATE"` ` ` ] ` `
      class StandardSqlDataType
        include Google::Apis::Core::Hashable
      
        # The data type of a variable such as a function argument. Examples include: *
        # INT64: ``"typeKind": "INT64"`` * ARRAY: ` "typeKind": "ARRAY", "
        # arrayElementType": `"typeKind": "STRING"` ` * STRUCT>: ` "typeKind": "STRUCT",
        # "structType": ` "fields": [ ` "name": "x", "type": `"typeKind": "STRING"` `, `
        # "name": "y", "type": ` "typeKind": "ARRAY", "arrayElementType": `"typeKind": "
        # DATE"` ` ` ] ` `
        # Corresponds to the JSON property `arrayElementType`
        # @return [Google::Apis::BigqueryV2::StandardSqlDataType]
        attr_accessor :array_element_type
      
        # The data type of a variable such as a function argument. Examples include: *
        # INT64: ``"typeKind": "INT64"`` * ARRAY: ` "typeKind": "ARRAY", "
        # arrayElementType": `"typeKind": "STRING"` ` * STRUCT>: ` "typeKind": "STRUCT",
        # "structType": ` "fields": [ ` "name": "x", "type": `"typeKind": "STRING"` `, `
        # "name": "y", "type": ` "typeKind": "ARRAY", "arrayElementType": `"typeKind": "
        # DATE"` ` ` ] ` `
        # Corresponds to the JSON property `rangeElementType`
        # @return [Google::Apis::BigqueryV2::StandardSqlDataType]
        attr_accessor :range_element_type
      
        # The representation of a SQL STRUCT type.
        # Corresponds to the JSON property `structType`
        # @return [Google::Apis::BigqueryV2::StandardSqlStructType]
        attr_accessor :struct_type
      
        # Required. The top level type of this field. Can be any GoogleSQL data type (e.
        # g., "INT64", "DATE", "ARRAY").
        # Corresponds to the JSON property `typeKind`
        # @return [String]
        attr_accessor :type_kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array_element_type = args[:array_element_type] if args.key?(:array_element_type)
          @range_element_type = args[:range_element_type] if args.key?(:range_element_type)
          @struct_type = args[:struct_type] if args.key?(:struct_type)
          @type_kind = args[:type_kind] if args.key?(:type_kind)
        end
      end
      
      # A field or a column.
      class StandardSqlField
        include Google::Apis::Core::Hashable
      
        # Optional. The name of this field. Can be absent for struct fields.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The data type of a variable such as a function argument. Examples include: *
        # INT64: ``"typeKind": "INT64"`` * ARRAY: ` "typeKind": "ARRAY", "
        # arrayElementType": `"typeKind": "STRING"` ` * STRUCT>: ` "typeKind": "STRUCT",
        # "structType": ` "fields": [ ` "name": "x", "type": `"typeKind": "STRING"` `, `
        # "name": "y", "type": ` "typeKind": "ARRAY", "arrayElementType": `"typeKind": "
        # DATE"` ` ` ] ` `
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::BigqueryV2::StandardSqlDataType]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The representation of a SQL STRUCT type.
      class StandardSqlStructType
        include Google::Apis::Core::Hashable
      
        # Fields within the struct.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::BigqueryV2::StandardSqlField>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # A table type
      class StandardSqlTableType
        include Google::Apis::Core::Hashable
      
        # The columns in this table type
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::BigqueryV2::StandardSqlField>]
        attr_accessor :columns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
        end
      end
      
      # Contains information about how a table's data is stored and accessed by open
      # source query engines.
      class StorageDescriptor
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the fully qualified class name of the InputFormat (e.g. "
        # org.apache.hadoop.hive.ql.io.orc.OrcInputFormat"). The maximum length is 128
        # characters.
        # Corresponds to the JSON property `inputFormat`
        # @return [String]
        attr_accessor :input_format
      
        # Optional. The physical location of the table (e.g. 'gs://spark-dataproc-data/
        # pangea-data/case_sensitive/' or 'gs://spark-dataproc-data/pangea-data/*'). The
        # maximum length is 2056 bytes.
        # Corresponds to the JSON property `locationUri`
        # @return [String]
        attr_accessor :location_uri
      
        # Optional. Specifies the fully qualified class name of the OutputFormat (e.g. "
        # org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat"). The maximum length is 128
        # characters.
        # Corresponds to the JSON property `outputFormat`
        # @return [String]
        attr_accessor :output_format
      
        # Serializer and deserializer information.
        # Corresponds to the JSON property `serdeInfo`
        # @return [Google::Apis::BigqueryV2::SerDeInfo]
        attr_accessor :serde_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_format = args[:input_format] if args.key?(:input_format)
          @location_uri = args[:location_uri] if args.key?(:location_uri)
          @output_format = args[:output_format] if args.key?(:output_format)
          @serde_info = args[:serde_info] if args.key?(:serde_info)
        end
      end
      
      # 
      class Streamingbuffer
        include Google::Apis::Core::Hashable
      
        # Output only. A lower-bound estimate of the number of bytes currently in the
        # streaming buffer.
        # Corresponds to the JSON property `estimatedBytes`
        # @return [Fixnum]
        attr_accessor :estimated_bytes
      
        # Output only. A lower-bound estimate of the number of rows currently in the
        # streaming buffer.
        # Corresponds to the JSON property `estimatedRows`
        # @return [Fixnum]
        attr_accessor :estimated_rows
      
        # Output only. Contains the timestamp of the oldest entry in the streaming
        # buffer, in milliseconds since the epoch, if the streaming buffer is available.
        # Corresponds to the JSON property `oldestEntryTime`
        # @return [Fixnum]
        attr_accessor :oldest_entry_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_bytes = args[:estimated_bytes] if args.key?(:estimated_bytes)
          @estimated_rows = args[:estimated_rows] if args.key?(:estimated_rows)
          @oldest_entry_time = args[:oldest_entry_time] if args.key?(:oldest_entry_time)
        end
      end
      
      # Search space for string and enum.
      class StringHparamSearchSpace
        include Google::Apis::Core::Hashable
      
        # Canididates for the string or enum parameter in lower case.
        # Corresponds to the JSON property `candidates`
        # @return [Array<String>]
        attr_accessor :candidates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates = args[:candidates] if args.key?(:candidates)
        end
      end
      
      # System variables given to a query.
      class SystemVariables
        include Google::Apis::Core::Hashable
      
        # Output only. Data type for each system variable.
        # Corresponds to the JSON property `types`
        # @return [Hash<String,Google::Apis::BigqueryV2::StandardSqlDataType>]
        attr_accessor :types
      
        # Output only. Value for each system variable.
        # Corresponds to the JSON property `values`
        # @return [Hash<String,Object>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @types = args[:types] if args.key?(:types)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # 
      class Table
        include Google::Apis::Core::Hashable
      
        # Configuration for BigLake managed tables.
        # Corresponds to the JSON property `biglakeConfiguration`
        # @return [Google::Apis::BigqueryV2::BigLakeConfiguration]
        attr_accessor :biglake_configuration
      
        # Information about base table and clone time of a table clone.
        # Corresponds to the JSON property `cloneDefinition`
        # @return [Google::Apis::BigqueryV2::CloneDefinition]
        attr_accessor :clone_definition
      
        # Configures table clustering.
        # Corresponds to the JSON property `clustering`
        # @return [Google::Apis::BigqueryV2::Clustering]
        attr_accessor :clustering
      
        # Output only. The time when this table was created, in milliseconds since the
        # epoch.
        # Corresponds to the JSON property `creationTime`
        # @return [Fixnum]
        attr_accessor :creation_time
      
        # Optional. Defines the default collation specification of new STRING fields in
        # the table. During table creation or update, if a STRING field is added to this
        # table without explicit collation specified, then the table inherits the table
        # default collation. A change to this field affects only fields added afterwards,
        # and does not alter the existing fields. The following values are supported: *
        # 'und:ci': undetermined locale, case insensitive. * '': empty string. Default
        # to case-sensitive behavior.
        # Corresponds to the JSON property `defaultCollation`
        # @return [String]
        attr_accessor :default_collation
      
        # Optional. Defines the default rounding mode specification of new decimal
        # fields (NUMERIC OR BIGNUMERIC) in the table. During table creation or update,
        # if a decimal field is added to this table without an explicit rounding mode
        # specified, then the field inherits the table default rounding mode. Changing
        # this field doesn't affect existing fields.
        # Corresponds to the JSON property `defaultRoundingMode`
        # @return [String]
        attr_accessor :default_rounding_mode
      
        # Optional. A user-friendly description of this table.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Custom encryption configuration (e.g., Cloud KMS keys).
        # Corresponds to the JSON property `encryptionConfiguration`
        # @return [Google::Apis::BigqueryV2::EncryptionConfiguration]
        attr_accessor :encryption_configuration
      
        # Output only. A hash of this resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The time when this table expires, in milliseconds since the epoch.
        # If not present, the table will persist indefinitely. Expired tables will be
        # deleted and their storage reclaimed. The defaultTableExpirationMs property of
        # the encapsulating dataset can be used to set a default expirationTime on newly
        # created tables.
        # Corresponds to the JSON property `expirationTime`
        # @return [Fixnum]
        attr_accessor :expiration_time
      
        # Metadata about open source compatible table. The fields contained in these
        # options correspond to hive metastore's table level properties.
        # Corresponds to the JSON property `externalCatalogTableOptions`
        # @return [Google::Apis::BigqueryV2::ExternalCatalogTableOptions]
        attr_accessor :external_catalog_table_options
      
        # Optional. Describes the data format, location, and other properties of a table
        # stored outside of BigQuery. By defining these properties, the data source can
        # then be queried as if it were a standard BigQuery table.
        # Corresponds to the JSON property `externalDataConfiguration`
        # @return [Google::Apis::BigqueryV2::ExternalDataConfiguration]
        attr_accessor :external_data_configuration
      
        # Optional. A descriptive name for this table.
        # Corresponds to the JSON property `friendlyName`
        # @return [String]
        attr_accessor :friendly_name
      
        # Output only. An opaque ID uniquely identifying the table.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of resource ID.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The labels associated with this table. You can use these to organize and group
        # your tables. Label keys and values can be no longer than 63 characters, can
        # only contain lowercase letters, numeric characters, underscores and dashes.
        # International characters are allowed. Label values are optional. Label keys
        # must start with a letter and each label in the list must have a different key.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The time when this table was last modified, in milliseconds since
        # the epoch.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [Fixnum]
        attr_accessor :last_modified_time
      
        # Output only. The geographic location where the table resides. This value is
        # inherited from the dataset.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Definition and configuration of a materialized view.
        # Corresponds to the JSON property `materializedView`
        # @return [Google::Apis::BigqueryV2::MaterializedViewDefinition]
        attr_accessor :materialized_view
      
        # Status of a materialized view. The last refresh timestamp status is omitted
        # here, but is present in the MaterializedViewDefinition message.
        # Corresponds to the JSON property `materializedViewStatus`
        # @return [Google::Apis::BigqueryV2::MaterializedViewStatus]
        attr_accessor :materialized_view_status
      
        # Optional. The maximum staleness of data that could be returned when the table (
        # or stale MV) is queried. Staleness encoded as a string encoding of sql
        # IntervalValue type.
        # Corresponds to the JSON property `maxStaleness`
        # @return [String]
        attr_accessor :max_staleness
      
        # Deprecated.
        # Corresponds to the JSON property `model`
        # @return [Google::Apis::BigqueryV2::ModelDefinition]
        attr_accessor :model
      
        # Output only. Number of logical bytes that are less than 90 days old.
        # Corresponds to the JSON property `numActiveLogicalBytes`
        # @return [Fixnum]
        attr_accessor :num_active_logical_bytes
      
        # Output only. Number of physical bytes less than 90 days old. This data is not
        # kept in real time, and might be delayed by a few seconds to a few minutes.
        # Corresponds to the JSON property `numActivePhysicalBytes`
        # @return [Fixnum]
        attr_accessor :num_active_physical_bytes
      
        # Output only. The size of this table in logical bytes, excluding any data in
        # the streaming buffer.
        # Corresponds to the JSON property `numBytes`
        # @return [Fixnum]
        attr_accessor :num_bytes
      
        # Output only. Number of physical bytes used by current live data storage. This
        # data is not kept in real time, and might be delayed by a few seconds to a few
        # minutes.
        # Corresponds to the JSON property `numCurrentPhysicalBytes`
        # @return [Fixnum]
        attr_accessor :num_current_physical_bytes
      
        # Output only. The number of logical bytes in the table that are considered "
        # long-term storage".
        # Corresponds to the JSON property `numLongTermBytes`
        # @return [Fixnum]
        attr_accessor :num_long_term_bytes
      
        # Output only. Number of logical bytes that are more than 90 days old.
        # Corresponds to the JSON property `numLongTermLogicalBytes`
        # @return [Fixnum]
        attr_accessor :num_long_term_logical_bytes
      
        # Output only. Number of physical bytes more than 90 days old. This data is not
        # kept in real time, and might be delayed by a few seconds to a few minutes.
        # Corresponds to the JSON property `numLongTermPhysicalBytes`
        # @return [Fixnum]
        attr_accessor :num_long_term_physical_bytes
      
        # Output only. The number of partitions present in the table or materialized
        # view. This data is not kept in real time, and might be delayed by a few
        # seconds to a few minutes.
        # Corresponds to the JSON property `numPartitions`
        # @return [Fixnum]
        attr_accessor :num_partitions
      
        # Output only. The physical size of this table in bytes. This includes storage
        # used for time travel.
        # Corresponds to the JSON property `numPhysicalBytes`
        # @return [Fixnum]
        attr_accessor :num_physical_bytes
      
        # Output only. The number of rows of data in this table, excluding any data in
        # the streaming buffer.
        # Corresponds to the JSON property `numRows`
        # @return [Fixnum]
        attr_accessor :num_rows
      
        # Output only. Number of physical bytes used by time travel storage (deleted or
        # changed data). This data is not kept in real time, and might be delayed by a
        # few seconds to a few minutes.
        # Corresponds to the JSON property `numTimeTravelPhysicalBytes`
        # @return [Fixnum]
        attr_accessor :num_time_travel_physical_bytes
      
        # Output only. Total number of logical bytes in the table or materialized view.
        # Corresponds to the JSON property `numTotalLogicalBytes`
        # @return [Fixnum]
        attr_accessor :num_total_logical_bytes
      
        # Output only. The physical size of this table in bytes. This also includes
        # storage used for time travel. This data is not kept in real time, and might be
        # delayed by a few seconds to a few minutes.
        # Corresponds to the JSON property `numTotalPhysicalBytes`
        # @return [Fixnum]
        attr_accessor :num_total_physical_bytes
      
        # The partitioning information, which includes managed table, external table and
        # metastore partitioned table partition information.
        # Corresponds to the JSON property `partitionDefinition`
        # @return [Google::Apis::BigqueryV2::PartitioningDefinition]
        attr_accessor :partition_definition
      
        # If specified, configures range partitioning for this table.
        # Corresponds to the JSON property `rangePartitioning`
        # @return [Google::Apis::BigqueryV2::RangePartitioning]
        attr_accessor :range_partitioning
      
        # Optional. Output only. Table references of all replicas currently active on
        # the table.
        # Corresponds to the JSON property `replicas`
        # @return [Array<Google::Apis::BigqueryV2::TableReference>]
        attr_accessor :replicas
      
        # Optional. If set to true, queries over this table require a partition filter
        # that can be used for partition elimination to be specified.
        # Corresponds to the JSON property `requirePartitionFilter`
        # @return [Boolean]
        attr_accessor :require_partition_filter
        alias_method :require_partition_filter?, :require_partition_filter
      
        # [Optional] The tags associated with this table. Tag keys are globally unique.
        # See additional information on [tags](https://cloud.google.com/iam/docs/tags-
        # access-control#definitions). An object containing a list of "key": value pairs.
        # The key is the namespaced friendly name of the tag key, e.g. "12345/
        # environment" where 12345 is parent id. The value is the friendly short name of
        # the tag value, e.g. "production".
        # Corresponds to the JSON property `resourceTags`
        # @return [Hash<String,String>]
        attr_accessor :resource_tags
      
        # Optional. Output only. Restriction config for table. If set, restrict certain
        # accesses on the table based on the config. See [Data egress](/bigquery/docs/
        # analytics-hub-introduction#data_egress) for more details.
        # Corresponds to the JSON property `restrictions`
        # @return [Google::Apis::BigqueryV2::RestrictionConfig]
        attr_accessor :restrictions
      
        # Schema of a table
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::BigqueryV2::TableSchema]
        attr_accessor :schema
      
        # Output only. A URL that can be used to access this resource again.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Information about base table and snapshot time of the snapshot.
        # Corresponds to the JSON property `snapshotDefinition`
        # @return [Google::Apis::BigqueryV2::SnapshotDefinition]
        attr_accessor :snapshot_definition
      
        # Output only. Contains information regarding this table's streaming buffer, if
        # one is present. This field will be absent if the table is not being streamed
        # to or if there is no data in the streaming buffer.
        # Corresponds to the JSON property `streamingBuffer`
        # @return [Google::Apis::BigqueryV2::Streamingbuffer]
        attr_accessor :streaming_buffer
      
        # The TableConstraints defines the primary key and foreign key.
        # Corresponds to the JSON property `tableConstraints`
        # @return [Google::Apis::BigqueryV2::TableConstraints]
        attr_accessor :table_constraints
      
        # Required. Reference describing the ID of this table.
        # Corresponds to the JSON property `tableReference`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :table_reference
      
        # Replication info of a table created using `AS REPLICA` DDL like: `CREATE
        # MATERIALIZED VIEW mv1 AS REPLICA OF src_mv`
        # Corresponds to the JSON property `tableReplicationInfo`
        # @return [Google::Apis::BigqueryV2::TableReplicationInfo]
        attr_accessor :table_replication_info
      
        # If specified, configures time-based partitioning for this table.
        # Corresponds to the JSON property `timePartitioning`
        # @return [Google::Apis::BigqueryV2::TimePartitioning]
        attr_accessor :time_partitioning
      
        # Output only. Describes the table type. The following values are supported: * `
        # TABLE`: A normal BigQuery table. * `VIEW`: A virtual table defined by a SQL
        # query. * `EXTERNAL`: A table that references data stored in an external
        # storage system, such as Google Cloud Storage. * `MATERIALIZED_VIEW`: A
        # precomputed view defined by a SQL query. * `SNAPSHOT`: An immutable BigQuery
        # table that preserves the contents of a base table at a particular time. See
        # additional information on [table snapshots](/bigquery/docs/table-snapshots-
        # intro). The default value is `TABLE`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Describes the definition of a logical view.
        # Corresponds to the JSON property `view`
        # @return [Google::Apis::BigqueryV2::ViewDefinition]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @biglake_configuration = args[:biglake_configuration] if args.key?(:biglake_configuration)
          @clone_definition = args[:clone_definition] if args.key?(:clone_definition)
          @clustering = args[:clustering] if args.key?(:clustering)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @default_collation = args[:default_collation] if args.key?(:default_collation)
          @default_rounding_mode = args[:default_rounding_mode] if args.key?(:default_rounding_mode)
          @description = args[:description] if args.key?(:description)
          @encryption_configuration = args[:encryption_configuration] if args.key?(:encryption_configuration)
          @etag = args[:etag] if args.key?(:etag)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @external_catalog_table_options = args[:external_catalog_table_options] if args.key?(:external_catalog_table_options)
          @external_data_configuration = args[:external_data_configuration] if args.key?(:external_data_configuration)
          @friendly_name = args[:friendly_name] if args.key?(:friendly_name)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @location = args[:location] if args.key?(:location)
          @materialized_view = args[:materialized_view] if args.key?(:materialized_view)
          @materialized_view_status = args[:materialized_view_status] if args.key?(:materialized_view_status)
          @max_staleness = args[:max_staleness] if args.key?(:max_staleness)
          @model = args[:model] if args.key?(:model)
          @num_active_logical_bytes = args[:num_active_logical_bytes] if args.key?(:num_active_logical_bytes)
          @num_active_physical_bytes = args[:num_active_physical_bytes] if args.key?(:num_active_physical_bytes)
          @num_bytes = args[:num_bytes] if args.key?(:num_bytes)
          @num_current_physical_bytes = args[:num_current_physical_bytes] if args.key?(:num_current_physical_bytes)
          @num_long_term_bytes = args[:num_long_term_bytes] if args.key?(:num_long_term_bytes)
          @num_long_term_logical_bytes = args[:num_long_term_logical_bytes] if args.key?(:num_long_term_logical_bytes)
          @num_long_term_physical_bytes = args[:num_long_term_physical_bytes] if args.key?(:num_long_term_physical_bytes)
          @num_partitions = args[:num_partitions] if args.key?(:num_partitions)
          @num_physical_bytes = args[:num_physical_bytes] if args.key?(:num_physical_bytes)
          @num_rows = args[:num_rows] if args.key?(:num_rows)
          @num_time_travel_physical_bytes = args[:num_time_travel_physical_bytes] if args.key?(:num_time_travel_physical_bytes)
          @num_total_logical_bytes = args[:num_total_logical_bytes] if args.key?(:num_total_logical_bytes)
          @num_total_physical_bytes = args[:num_total_physical_bytes] if args.key?(:num_total_physical_bytes)
          @partition_definition = args[:partition_definition] if args.key?(:partition_definition)
          @range_partitioning = args[:range_partitioning] if args.key?(:range_partitioning)
          @replicas = args[:replicas] if args.key?(:replicas)
          @require_partition_filter = args[:require_partition_filter] if args.key?(:require_partition_filter)
          @resource_tags = args[:resource_tags] if args.key?(:resource_tags)
          @restrictions = args[:restrictions] if args.key?(:restrictions)
          @schema = args[:schema] if args.key?(:schema)
          @self_link = args[:self_link] if args.key?(:self_link)
          @snapshot_definition = args[:snapshot_definition] if args.key?(:snapshot_definition)
          @streaming_buffer = args[:streaming_buffer] if args.key?(:streaming_buffer)
          @table_constraints = args[:table_constraints] if args.key?(:table_constraints)
          @table_reference = args[:table_reference] if args.key?(:table_reference)
          @table_replication_info = args[:table_replication_info] if args.key?(:table_replication_info)
          @time_partitioning = args[:time_partitioning] if args.key?(:time_partitioning)
          @type = args[:type] if args.key?(:type)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # 
      class TableCell
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `v`
        # @return [Object]
        attr_accessor :v
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @v = args[:v] if args.key?(:v)
        end
      end
      
      # The TableConstraints defines the primary key and foreign key.
      class TableConstraints
        include Google::Apis::Core::Hashable
      
        # Optional. Present only if the table has a foreign key. The foreign key is not
        # enforced.
        # Corresponds to the JSON property `foreignKeys`
        # @return [Array<Google::Apis::BigqueryV2::TableConstraints::ForeignKey>]
        attr_accessor :foreign_keys
      
        # Represents the primary key constraint on a table's columns.
        # Corresponds to the JSON property `primaryKey`
        # @return [Google::Apis::BigqueryV2::TableConstraints::PrimaryKey]
        attr_accessor :primary_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @foreign_keys = args[:foreign_keys] if args.key?(:foreign_keys)
          @primary_key = args[:primary_key] if args.key?(:primary_key)
        end
        
        # Represents a foreign key constraint on a table's columns.
        class ForeignKey
          include Google::Apis::Core::Hashable
        
          # Required. The columns that compose the foreign key.
          # Corresponds to the JSON property `columnReferences`
          # @return [Array<Google::Apis::BigqueryV2::TableConstraints::ForeignKey::ColumnReference>]
          attr_accessor :column_references
        
          # Optional. Set only if the foreign key constraint is named.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # 
          # Corresponds to the JSON property `referencedTable`
          # @return [Google::Apis::BigqueryV2::TableConstraints::ForeignKey::ReferencedTable]
          attr_accessor :referenced_table
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @column_references = args[:column_references] if args.key?(:column_references)
            @name = args[:name] if args.key?(:name)
            @referenced_table = args[:referenced_table] if args.key?(:referenced_table)
          end
          
          # The pair of the foreign key column and primary key column.
          class ColumnReference
            include Google::Apis::Core::Hashable
          
            # Required. The column in the primary key that are referenced by the
            # referencing_column.
            # Corresponds to the JSON property `referencedColumn`
            # @return [String]
            attr_accessor :referenced_column
          
            # Required. The column that composes the foreign key.
            # Corresponds to the JSON property `referencingColumn`
            # @return [String]
            attr_accessor :referencing_column
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @referenced_column = args[:referenced_column] if args.key?(:referenced_column)
              @referencing_column = args[:referencing_column] if args.key?(:referencing_column)
            end
          end
          
          # 
          class ReferencedTable
            include Google::Apis::Core::Hashable
          
            # 
            # Corresponds to the JSON property `datasetId`
            # @return [String]
            attr_accessor :dataset_id
          
            # 
            # Corresponds to the JSON property `projectId`
            # @return [String]
            attr_accessor :project_id
          
            # 
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
        end
        
        # Represents the primary key constraint on a table's columns.
        class PrimaryKey
          include Google::Apis::Core::Hashable
        
          # Required. The columns that are composed of the primary key constraint.
          # Corresponds to the JSON property `columns`
          # @return [Array<String>]
          attr_accessor :columns
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @columns = args[:columns] if args.key?(:columns)
          end
        end
      end
      
      # Request for sending a single streaming insert.
      class InsertAllTableDataRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Accept rows that contain values that do not match the schema. The
        # unknown values are ignored. Default is false, which treats unknown values as
        # errors.
        # Corresponds to the JSON property `ignoreUnknownValues`
        # @return [Boolean]
        attr_accessor :ignore_unknown_values
        alias_method :ignore_unknown_values?, :ignore_unknown_values
      
        # Optional. The resource type of the response. The value is not checked at the
        # backend. Historically, it has been set to "bigquery#tableDataInsertAllRequest"
        # but you are not required to set it.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::BigqueryV2::InsertAllTableDataRequest::Row>]
        attr_accessor :rows
      
        # Optional. Insert all valid rows of a request, even if invalid rows exist. The
        # default value is false, which causes the entire request to fail if any invalid
        # rows exist.
        # Corresponds to the JSON property `skipInvalidRows`
        # @return [Boolean]
        attr_accessor :skip_invalid_rows
        alias_method :skip_invalid_rows?, :skip_invalid_rows
      
        # Optional. If specified, treats the destination table as a base template, and
        # inserts the rows into an instance table named "`destination``templateSuffix`".
        # BigQuery will manage creation of the instance table, using the schema of the
        # base template table. See https://cloud.google.com/bigquery/streaming-data-into-
        # bigquery#template-tables for considerations when working with templates tables.
        # Corresponds to the JSON property `templateSuffix`
        # @return [String]
        attr_accessor :template_suffix
      
        # Optional. Unique request trace id. Used for debugging purposes only. It is
        # case-sensitive, limited to up to 36 ASCII characters. A UUID is recommended.
        # Corresponds to the JSON property `traceId`
        # @return [String]
        attr_accessor :trace_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ignore_unknown_values = args[:ignore_unknown_values] if args.key?(:ignore_unknown_values)
          @kind = args[:kind] if args.key?(:kind)
          @rows = args[:rows] if args.key?(:rows)
          @skip_invalid_rows = args[:skip_invalid_rows] if args.key?(:skip_invalid_rows)
          @template_suffix = args[:template_suffix] if args.key?(:template_suffix)
          @trace_id = args[:trace_id] if args.key?(:trace_id)
        end
        
        # Data for a single insertion row.
        class Row
          include Google::Apis::Core::Hashable
        
          # Insertion ID for best-effort deduplication. This feature is not recommended,
          # and users seeking stronger insertion semantics are encouraged to use other
          # mechanisms such as the BigQuery Write API.
          # Corresponds to the JSON property `insertId`
          # @return [String]
          attr_accessor :insert_id
        
          # Represents a single JSON object.
          # Corresponds to the JSON property `json`
          # @return [Hash<String,Object>]
          attr_accessor :json
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @insert_id = args[:insert_id] if args.key?(:insert_id)
            @json = args[:json] if args.key?(:json)
          end
        end
      end
      
      # Describes the format of a streaming insert response.
      class InsertAllTableDataResponse
        include Google::Apis::Core::Hashable
      
        # Describes specific errors encountered while processing the request.
        # Corresponds to the JSON property `insertErrors`
        # @return [Array<Google::Apis::BigqueryV2::InsertAllTableDataResponse::InsertError>]
        attr_accessor :insert_errors
      
        # Returns "bigquery#tableDataInsertAllResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insert_errors = args[:insert_errors] if args.key?(:insert_errors)
          @kind = args[:kind] if args.key?(:kind)
        end
        
        # Error details about a single row's insertion.
        class InsertError
          include Google::Apis::Core::Hashable
        
          # Error information for the row indicated by the index property.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::BigqueryV2::ErrorProto>]
          attr_accessor :errors
        
          # The index of the row that error applies to.
          # Corresponds to the JSON property `index`
          # @return [Fixnum]
          attr_accessor :index
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] if args.key?(:errors)
            @index = args[:index] if args.key?(:index)
          end
        end
      end
      
      # 
      class TableDataList
        include Google::Apis::Core::Hashable
      
        # A hash of this page of results.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The resource type of the response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used for paging results. Providing this token instead of the
        # startIndex parameter can help you retrieve stable results when an underlying
        # table is changing.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Rows of results.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::BigqueryV2::TableRow>]
        attr_accessor :rows
      
        # Total rows of the entire table. In order to show default value 0 we have to
        # present it as string.
        # Corresponds to the JSON property `totalRows`
        # @return [Fixnum]
        attr_accessor :total_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @page_token = args[:page_token] if args.key?(:page_token)
          @rows = args[:rows] if args.key?(:rows)
          @total_rows = args[:total_rows] if args.key?(:total_rows)
        end
      end
      
      # A field in TableSchema
      class TableFieldSchema
        include Google::Apis::Core::Hashable
      
        # Deprecated.
        # Corresponds to the JSON property `categories`
        # @return [Google::Apis::BigqueryV2::TableFieldSchema::Categories]
        attr_accessor :categories
      
        # Optional. Field collation can be set only when the type of field is STRING.
        # The following values are supported: * 'und:ci': undetermined locale, case
        # insensitive. * '': empty string. Default to case-sensitive behavior.
        # Corresponds to the JSON property `collation`
        # @return [String]
        attr_accessor :collation
      
        # Optional. A SQL expression to specify the [default value] (https://cloud.
        # google.com/bigquery/docs/default-values) for this field.
        # Corresponds to the JSON property `defaultValueExpression`
        # @return [String]
        attr_accessor :default_value_expression
      
        # Optional. The field description. The maximum length is 1,024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Describes the nested schema fields if the type property is set to
        # RECORD.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::BigqueryV2::TableFieldSchema>]
        attr_accessor :fields
      
        # Optional. Definition of the foreign data type. Only valid for top-level schema
        # fields (not nested fields). If the type is FOREIGN, this field is required.
        # Corresponds to the JSON property `foreignTypeDefinition`
        # @return [String]
        attr_accessor :foreign_type_definition
      
        # Optional. Maximum length of values of this field for STRINGS or BYTES. If
        # max_length is not specified, no maximum length constraint is imposed on this
        # field. If type = "STRING", then max_length represents the maximum UTF-8 length
        # of strings in this field. If type = "BYTES", then max_length represents the
        # maximum number of bytes in this field. It is invalid to set this field if type
        # ≠ "STRING" and ≠ "BYTES".
        # Corresponds to the JSON property `maxLength`
        # @return [Fixnum]
        attr_accessor :max_length
      
        # Optional. The field mode. Possible values include NULLABLE, REQUIRED and
        # REPEATED. The default value is NULLABLE.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Required. The field name. The name must contain only letters (a-z, A-Z),
        # numbers (0-9), or underscores (_), and must start with a letter or underscore.
        # The maximum length is 300 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The policy tags attached to this field, used for field-level access
        # control. If not set, defaults to empty policy_tags.
        # Corresponds to the JSON property `policyTags`
        # @return [Google::Apis::BigqueryV2::TableFieldSchema::PolicyTags]
        attr_accessor :policy_tags
      
        # Optional. Precision (maximum number of total digits in base 10) and scale (
        # maximum number of digits in the fractional part in base 10) constraints for
        # values of this field for NUMERIC or BIGNUMERIC. It is invalid to set precision
        # or scale if type ≠ "NUMERIC" and ≠ "BIGNUMERIC". If precision and scale are
        # not specified, no value range constraint is imposed on this field insofar as
        # values are permitted by the type. Values of this NUMERIC or BIGNUMERIC field
        # must be in this range when: * Precision (P) and scale (S) are specified: [-10P-
        # S + 10-S, 10P-S - 10-S] * Precision (P) is specified but not scale (and thus
        # scale is interpreted to be equal to zero): [-10P + 1, 10P - 1]. Acceptable
        # values for precision and scale if both are specified: * If type = "NUMERIC": 1
        # ≤ precision - scale ≤ 29 and 0 ≤ scale ≤ 9. * If type = "BIGNUMERIC": 1 ≤
        # precision - scale ≤ 38 and 0 ≤ scale ≤ 38. Acceptable values for precision if
        # only precision is specified but not scale (and thus scale is interpreted to be
        # equal to zero): * If type = "NUMERIC": 1 ≤ precision ≤ 29. * If type = "
        # BIGNUMERIC": 1 ≤ precision ≤ 38. If scale is specified but not precision, then
        # it is invalid.
        # Corresponds to the JSON property `precision`
        # @return [Fixnum]
        attr_accessor :precision
      
        # Represents the type of a field element.
        # Corresponds to the JSON property `rangeElementType`
        # @return [Google::Apis::BigqueryV2::TableFieldSchema::RangeElementType]
        attr_accessor :range_element_type
      
        # Optional. Specifies the rounding mode to be used when storing values of
        # NUMERIC and BIGNUMERIC type.
        # Corresponds to the JSON property `roundingMode`
        # @return [String]
        attr_accessor :rounding_mode
      
        # Optional. See documentation for precision.
        # Corresponds to the JSON property `scale`
        # @return [Fixnum]
        attr_accessor :scale
      
        # Required. The field data type. Possible values include: * STRING * BYTES *
        # INTEGER (or INT64) * FLOAT (or FLOAT64) * BOOLEAN (or BOOL) * TIMESTAMP * DATE
        # * TIME * DATETIME * GEOGRAPHY * NUMERIC * BIGNUMERIC * JSON * RECORD (or
        # STRUCT) * RANGE ([Preview](/products/#product-launch-stages)) Use of RECORD/
        # STRUCT indicates that the field contains a nested schema.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @collation = args[:collation] if args.key?(:collation)
          @default_value_expression = args[:default_value_expression] if args.key?(:default_value_expression)
          @description = args[:description] if args.key?(:description)
          @fields = args[:fields] if args.key?(:fields)
          @foreign_type_definition = args[:foreign_type_definition] if args.key?(:foreign_type_definition)
          @max_length = args[:max_length] if args.key?(:max_length)
          @mode = args[:mode] if args.key?(:mode)
          @name = args[:name] if args.key?(:name)
          @policy_tags = args[:policy_tags] if args.key?(:policy_tags)
          @precision = args[:precision] if args.key?(:precision)
          @range_element_type = args[:range_element_type] if args.key?(:range_element_type)
          @rounding_mode = args[:rounding_mode] if args.key?(:rounding_mode)
          @scale = args[:scale] if args.key?(:scale)
          @type = args[:type] if args.key?(:type)
        end
        
        # Deprecated.
        class Categories
          include Google::Apis::Core::Hashable
        
          # Deprecated.
          # Corresponds to the JSON property `names`
          # @return [Array<String>]
          attr_accessor :names
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @names = args[:names] if args.key?(:names)
          end
        end
        
        # Optional. The policy tags attached to this field, used for field-level access
        # control. If not set, defaults to empty policy_tags.
        class PolicyTags
          include Google::Apis::Core::Hashable
        
          # A list of policy tag resource names. For example, "projects/1/locations/eu/
          # taxonomies/2/policyTags/3". At most 1 policy tag is currently allowed.
          # Corresponds to the JSON property `names`
          # @return [Array<String>]
          attr_accessor :names
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @names = args[:names] if args.key?(:names)
          end
        end
        
        # Represents the type of a field element.
        class RangeElementType
          include Google::Apis::Core::Hashable
        
          # Required. The type of a field element. For more information, see
          # TableFieldSchema.type.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @type = args[:type] if args.key?(:type)
          end
        end
      end
      
      # Partial projection of the metadata for a given table in a list response.
      class TableList
        include Google::Apis::Core::Hashable
      
        # A hash of this page of results.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of list.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Tables in the requested dataset.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::BigqueryV2::TableList::Table>]
        attr_accessor :tables
      
        # The total number of tables in the dataset.
        # Corresponds to the JSON property `totalItems`
        # @return [Fixnum]
        attr_accessor :total_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tables = args[:tables] if args.key?(:tables)
          @total_items = args[:total_items] if args.key?(:total_items)
        end
        
        # 
        class Table
          include Google::Apis::Core::Hashable
        
          # Configures table clustering.
          # Corresponds to the JSON property `clustering`
          # @return [Google::Apis::BigqueryV2::Clustering]
          attr_accessor :clustering
        
          # Output only. The time when this table was created, in milliseconds since the
          # epoch.
          # Corresponds to the JSON property `creationTime`
          # @return [Fixnum]
          attr_accessor :creation_time
        
          # The time when this table expires, in milliseconds since the epoch. If not
          # present, the table will persist indefinitely. Expired tables will be deleted
          # and their storage reclaimed.
          # Corresponds to the JSON property `expirationTime`
          # @return [Fixnum]
          attr_accessor :expiration_time
        
          # The user-friendly name for this table.
          # Corresponds to the JSON property `friendlyName`
          # @return [String]
          attr_accessor :friendly_name
        
          # An opaque ID of the table.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The resource type.
          # Corresponds to the JSON property `kind`
          # @return [String]
          attr_accessor :kind
        
          # The labels associated with this table. You can use these to organize and group
          # your tables.
          # Corresponds to the JSON property `labels`
          # @return [Hash<String,String>]
          attr_accessor :labels
        
          # The range partitioning for this table.
          # Corresponds to the JSON property `rangePartitioning`
          # @return [Google::Apis::BigqueryV2::RangePartitioning]
          attr_accessor :range_partitioning
        
          # Optional. If set to true, queries including this table must specify a
          # partition filter. This filter is used for partition elimination.
          # Corresponds to the JSON property `requirePartitionFilter`
          # @return [Boolean]
          attr_accessor :require_partition_filter
          alias_method :require_partition_filter?, :require_partition_filter
        
          # A reference uniquely identifying table.
          # Corresponds to the JSON property `tableReference`
          # @return [Google::Apis::BigqueryV2::TableReference]
          attr_accessor :table_reference
        
          # The time-based partitioning for this table.
          # Corresponds to the JSON property `timePartitioning`
          # @return [Google::Apis::BigqueryV2::TimePartitioning]
          attr_accessor :time_partitioning
        
          # The type of table.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          # Information about a logical view.
          # Corresponds to the JSON property `view`
          # @return [Google::Apis::BigqueryV2::TableList::Table::View]
          attr_accessor :view
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @clustering = args[:clustering] if args.key?(:clustering)
            @creation_time = args[:creation_time] if args.key?(:creation_time)
            @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
            @friendly_name = args[:friendly_name] if args.key?(:friendly_name)
            @id = args[:id] if args.key?(:id)
            @kind = args[:kind] if args.key?(:kind)
            @labels = args[:labels] if args.key?(:labels)
            @range_partitioning = args[:range_partitioning] if args.key?(:range_partitioning)
            @require_partition_filter = args[:require_partition_filter] if args.key?(:require_partition_filter)
            @table_reference = args[:table_reference] if args.key?(:table_reference)
            @time_partitioning = args[:time_partitioning] if args.key?(:time_partitioning)
            @type = args[:type] if args.key?(:type)
            @view = args[:view] if args.key?(:view)
          end
          
          # Information about a logical view.
          class View
            include Google::Apis::Core::Hashable
          
            # Represents privacy policy that contains the privacy requirements specified by
            # the data owner. Currently, this is only supported on views.
            # Corresponds to the JSON property `privacyPolicy`
            # @return [Google::Apis::BigqueryV2::PrivacyPolicy]
            attr_accessor :privacy_policy
          
            # True if view is defined in legacy SQL dialect, false if in GoogleSQL.
            # Corresponds to the JSON property `useLegacySql`
            # @return [Boolean]
            attr_accessor :use_legacy_sql
            alias_method :use_legacy_sql?, :use_legacy_sql
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @privacy_policy = args[:privacy_policy] if args.key?(:privacy_policy)
              @use_legacy_sql = args[:use_legacy_sql] if args.key?(:use_legacy_sql)
            end
          end
        end
      end
      
      # Table level detail on the usage of metadata caching. Only set for Metadata
      # caching eligible tables referenced in the query.
      class TableMetadataCacheUsage
        include Google::Apis::Core::Hashable
      
        # Free form human-readable reason metadata caching was unused for the job.
        # Corresponds to the JSON property `explanation`
        # @return [String]
        attr_accessor :explanation
      
        # Metadata caching eligible table referenced in the query.
        # Corresponds to the JSON property `tableReference`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :table_reference
      
        # [Table type](/bigquery/docs/reference/rest/v2/tables#Table.FIELDS.type).
        # Corresponds to the JSON property `tableType`
        # @return [String]
        attr_accessor :table_type
      
        # Reason for not using metadata caching for the table.
        # Corresponds to the JSON property `unusedReason`
        # @return [String]
        attr_accessor :unused_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explanation = args[:explanation] if args.key?(:explanation)
          @table_reference = args[:table_reference] if args.key?(:table_reference)
          @table_type = args[:table_type] if args.key?(:table_type)
          @unused_reason = args[:unused_reason] if args.key?(:unused_reason)
        end
      end
      
      # 
      class TableReference
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the dataset containing this table.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # Required. The ID of the project containing this table.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. The ID of the table. The ID can contain Unicode characters in
        # category L (letter), M (mark), N (number), Pc (connector, including underscore)
        # , Pd (dash), and Zs (space). For more information, see [General Category](
        # https://wikipedia.org/wiki/Unicode_character_property#General_Category). The
        # maximum length is 1,024 characters. Certain operations allow suffixing of the
        # table ID with a partition decorator, such as `sample_table$20190123`.
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
      
      # Replication info of a table created using `AS REPLICA` DDL like: `CREATE
      # MATERIALIZED VIEW mv1 AS REPLICA OF src_mv`
      class TableReplicationInfo
        include Google::Apis::Core::Hashable
      
        # Optional. Output only. If source is a materialized view, this field signifies
        # the last refresh time of the source.
        # Corresponds to the JSON property `replicatedSourceLastRefreshTime`
        # @return [Fixnum]
        attr_accessor :replicated_source_last_refresh_time
      
        # Error details.
        # Corresponds to the JSON property `replicationError`
        # @return [Google::Apis::BigqueryV2::ErrorProto]
        attr_accessor :replication_error
      
        # Optional. Specifies the interval at which the source table is polled for
        # updates. It's Optional. If not specified, default replication interval would
        # be applied.
        # Corresponds to the JSON property `replicationIntervalMs`
        # @return [Fixnum]
        attr_accessor :replication_interval_ms
      
        # Optional. Output only. Replication status of configured replication.
        # Corresponds to the JSON property `replicationStatus`
        # @return [String]
        attr_accessor :replication_status
      
        # Required. Source table reference that is replicated.
        # Corresponds to the JSON property `sourceTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :source_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @replicated_source_last_refresh_time = args[:replicated_source_last_refresh_time] if args.key?(:replicated_source_last_refresh_time)
          @replication_error = args[:replication_error] if args.key?(:replication_error)
          @replication_interval_ms = args[:replication_interval_ms] if args.key?(:replication_interval_ms)
          @replication_status = args[:replication_status] if args.key?(:replication_status)
          @source_table = args[:source_table] if args.key?(:source_table)
        end
      end
      
      # 
      class TableRow
        include Google::Apis::Core::Hashable
      
        # Represents a single row in the result set, consisting of one or more fields.
        # Corresponds to the JSON property `f`
        # @return [Array<Google::Apis::BigqueryV2::TableCell>]
        attr_accessor :f
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @f = args[:f] if args.key?(:f)
        end
      end
      
      # Schema of a table
      class TableSchema
        include Google::Apis::Core::Hashable
      
        # Describes the fields in a table.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::BigqueryV2::TableFieldSchema>]
        attr_accessor :fields
      
        # Metadata about the foreign data type definition such as the system in which
        # the type is defined.
        # Corresponds to the JSON property `foreignTypeInfo`
        # @return [Google::Apis::BigqueryV2::ForeignTypeInfo]
        attr_accessor :foreign_type_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @foreign_type_info = args[:foreign_type_info] if args.key?(:foreign_type_info)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # 
      class TimePartitioning
        include Google::Apis::Core::Hashable
      
        # Optional. Number of milliseconds for which to keep the storage for a partition.
        # A wrapper is used here because 0 is an invalid value.
        # Corresponds to the JSON property `expirationMs`
        # @return [Fixnum]
        attr_accessor :expiration_ms
      
        # Optional. If not set, the table is partitioned by pseudo column '
        # _PARTITIONTIME'; if set, the table is partitioned by this field. The field
        # must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or
        # REQUIRED. A wrapper is used here because an empty string is an invalid value.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # If set to true, queries over this table require a partition filter that can be
        # used for partition elimination to be specified. This field is deprecated;
        # please set the field with the same name on the table itself instead. This
        # field needs a wrapper because we want to output the default value, false, if
        # the user explicitly set it.
        # Corresponds to the JSON property `requirePartitionFilter`
        # @return [Boolean]
        attr_accessor :require_partition_filter
        alias_method :require_partition_filter?, :require_partition_filter
      
        # Required. The supported types are DAY, HOUR, MONTH, and YEAR, which will
        # generate one partition per day, hour, month, and year, respectively.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiration_ms = args[:expiration_ms] if args.key?(:expiration_ms)
          @field = args[:field] if args.key?(:field)
          @require_partition_filter = args[:require_partition_filter] if args.key?(:require_partition_filter)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Options used in model training.
      class TrainingOptions
        include Google::Apis::Core::Hashable
      
        # Activation function of the neural nets.
        # Corresponds to the JSON property `activationFn`
        # @return [String]
        attr_accessor :activation_fn
      
        # If true, detect step changes and make data adjustment in the input time series.
        # Corresponds to the JSON property `adjustStepChanges`
        # @return [Boolean]
        attr_accessor :adjust_step_changes
        alias_method :adjust_step_changes?, :adjust_step_changes
      
        # Whether to use approximate feature contribution method in XGBoost model
        # explanation for global explain.
        # Corresponds to the JSON property `approxGlobalFeatureContrib`
        # @return [Boolean]
        attr_accessor :approx_global_feature_contrib
        alias_method :approx_global_feature_contrib?, :approx_global_feature_contrib
      
        # Whether to enable auto ARIMA or not.
        # Corresponds to the JSON property `autoArima`
        # @return [Boolean]
        attr_accessor :auto_arima
        alias_method :auto_arima?, :auto_arima
      
        # The max value of the sum of non-seasonal p and q.
        # Corresponds to the JSON property `autoArimaMaxOrder`
        # @return [Fixnum]
        attr_accessor :auto_arima_max_order
      
        # The min value of the sum of non-seasonal p and q.
        # Corresponds to the JSON property `autoArimaMinOrder`
        # @return [Fixnum]
        attr_accessor :auto_arima_min_order
      
        # Whether to calculate class weights automatically based on the popularity of
        # each label.
        # Corresponds to the JSON property `autoClassWeights`
        # @return [Boolean]
        attr_accessor :auto_class_weights
        alias_method :auto_class_weights?, :auto_class_weights
      
        # Batch size for dnn models.
        # Corresponds to the JSON property `batchSize`
        # @return [Fixnum]
        attr_accessor :batch_size
      
        # Booster type for boosted tree models.
        # Corresponds to the JSON property `boosterType`
        # @return [String]
        attr_accessor :booster_type
      
        # Budget in hours for AutoML training.
        # Corresponds to the JSON property `budgetHours`
        # @return [Float]
        attr_accessor :budget_hours
      
        # Whether or not p-value test should be computed for this model. Only available
        # for linear and logistic regression models.
        # Corresponds to the JSON property `calculatePValues`
        # @return [Boolean]
        attr_accessor :calculate_p_values
        alias_method :calculate_p_values?, :calculate_p_values
      
        # Categorical feature encoding method.
        # Corresponds to the JSON property `categoryEncodingMethod`
        # @return [String]
        attr_accessor :category_encoding_method
      
        # If true, clean spikes and dips in the input time series.
        # Corresponds to the JSON property `cleanSpikesAndDips`
        # @return [Boolean]
        attr_accessor :clean_spikes_and_dips
        alias_method :clean_spikes_and_dips?, :clean_spikes_and_dips
      
        # Enums for color space, used for processing images in Object Table. See more
        # details at https://www.tensorflow.org/io/tutorials/colorspace.
        # Corresponds to the JSON property `colorSpace`
        # @return [String]
        attr_accessor :color_space
      
        # Subsample ratio of columns for each level for boosted tree models.
        # Corresponds to the JSON property `colsampleBylevel`
        # @return [Float]
        attr_accessor :colsample_bylevel
      
        # Subsample ratio of columns for each node(split) for boosted tree models.
        # Corresponds to the JSON property `colsampleBynode`
        # @return [Float]
        attr_accessor :colsample_bynode
      
        # Subsample ratio of columns when constructing each tree for boosted tree models.
        # Corresponds to the JSON property `colsampleBytree`
        # @return [Float]
        attr_accessor :colsample_bytree
      
        # Type of normalization algorithm for boosted tree models using dart booster.
        # Corresponds to the JSON property `dartNormalizeType`
        # @return [String]
        attr_accessor :dart_normalize_type
      
        # The data frequency of a time series.
        # Corresponds to the JSON property `dataFrequency`
        # @return [String]
        attr_accessor :data_frequency
      
        # The column to split data with. This column won't be used as a feature. 1. When
        # data_split_method is CUSTOM, the corresponding column should be boolean. The
        # rows with true value tag are eval data, and the false are training data. 2.
        # When data_split_method is SEQ, the first DATA_SPLIT_EVAL_FRACTION rows (from
        # smallest to largest) in the corresponding column are used as training data,
        # and the rest are eval data. It respects the order in Orderable data types:
        # https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types#data-
        # type-properties
        # Corresponds to the JSON property `dataSplitColumn`
        # @return [String]
        attr_accessor :data_split_column
      
        # The fraction of evaluation data over the whole input data. The rest of data
        # will be used as training data. The format should be double. Accurate to two
        # decimal places. Default value is 0.2.
        # Corresponds to the JSON property `dataSplitEvalFraction`
        # @return [Float]
        attr_accessor :data_split_eval_fraction
      
        # The data split type for training and evaluation, e.g. RANDOM.
        # Corresponds to the JSON property `dataSplitMethod`
        # @return [String]
        attr_accessor :data_split_method
      
        # If true, perform decompose time series and save the results.
        # Corresponds to the JSON property `decomposeTimeSeries`
        # @return [Boolean]
        attr_accessor :decompose_time_series
        alias_method :decompose_time_series?, :decompose_time_series
      
        # Distance type for clustering models.
        # Corresponds to the JSON property `distanceType`
        # @return [String]
        attr_accessor :distance_type
      
        # Dropout probability for dnn models.
        # Corresponds to the JSON property `dropout`
        # @return [Float]
        attr_accessor :dropout
      
        # Whether to stop early when the loss doesn't improve significantly any more (
        # compared to min_relative_progress). Used only for iterative training
        # algorithms.
        # Corresponds to the JSON property `earlyStop`
        # @return [Boolean]
        attr_accessor :early_stop
        alias_method :early_stop?, :early_stop
      
        # If true, enable global explanation during training.
        # Corresponds to the JSON property `enableGlobalExplain`
        # @return [Boolean]
        attr_accessor :enable_global_explain
        alias_method :enable_global_explain?, :enable_global_explain
      
        # Feedback type that specifies which algorithm to run for matrix factorization.
        # Corresponds to the JSON property `feedbackType`
        # @return [String]
        attr_accessor :feedback_type
      
        # Whether the model should include intercept during model training.
        # Corresponds to the JSON property `fitIntercept`
        # @return [Boolean]
        attr_accessor :fit_intercept
        alias_method :fit_intercept?, :fit_intercept
      
        # Hidden units for dnn models.
        # Corresponds to the JSON property `hiddenUnits`
        # @return [Array<Fixnum>]
        attr_accessor :hidden_units
      
        # The geographical region based on which the holidays are considered in time
        # series modeling. If a valid value is specified, then holiday effects modeling
        # is enabled.
        # Corresponds to the JSON property `holidayRegion`
        # @return [String]
        attr_accessor :holiday_region
      
        # A list of geographical regions that are used for time series modeling.
        # Corresponds to the JSON property `holidayRegions`
        # @return [Array<String>]
        attr_accessor :holiday_regions
      
        # The number of periods ahead that need to be forecasted.
        # Corresponds to the JSON property `horizon`
        # @return [Fixnum]
        attr_accessor :horizon
      
        # The target evaluation metrics to optimize the hyperparameters for.
        # Corresponds to the JSON property `hparamTuningObjectives`
        # @return [Array<String>]
        attr_accessor :hparam_tuning_objectives
      
        # Include drift when fitting an ARIMA model.
        # Corresponds to the JSON property `includeDrift`
        # @return [Boolean]
        attr_accessor :include_drift
        alias_method :include_drift?, :include_drift
      
        # Specifies the initial learning rate for the line search learn rate strategy.
        # Corresponds to the JSON property `initialLearnRate`
        # @return [Float]
        attr_accessor :initial_learn_rate
      
        # Name of input label columns in training data.
        # Corresponds to the JSON property `inputLabelColumns`
        # @return [Array<String>]
        attr_accessor :input_label_columns
      
        # Name of the instance weight column for training data. This column isn't be
        # used as a feature.
        # Corresponds to the JSON property `instanceWeightColumn`
        # @return [String]
        attr_accessor :instance_weight_column
      
        # Number of integral steps for the integrated gradients explain method.
        # Corresponds to the JSON property `integratedGradientsNumSteps`
        # @return [Fixnum]
        attr_accessor :integrated_gradients_num_steps
      
        # Item column specified for matrix factorization models.
        # Corresponds to the JSON property `itemColumn`
        # @return [String]
        attr_accessor :item_column
      
        # The column used to provide the initial centroids for kmeans algorithm when
        # kmeans_initialization_method is CUSTOM.
        # Corresponds to the JSON property `kmeansInitializationColumn`
        # @return [String]
        attr_accessor :kmeans_initialization_column
      
        # The method used to initialize the centroids for kmeans algorithm.
        # Corresponds to the JSON property `kmeansInitializationMethod`
        # @return [String]
        attr_accessor :kmeans_initialization_method
      
        # L1 regularization coefficient to activations.
        # Corresponds to the JSON property `l1RegActivation`
        # @return [Float]
        attr_accessor :l1_reg_activation
      
        # L1 regularization coefficient.
        # Corresponds to the JSON property `l1Regularization`
        # @return [Float]
        attr_accessor :l1_regularization
      
        # L2 regularization coefficient.
        # Corresponds to the JSON property `l2Regularization`
        # @return [Float]
        attr_accessor :l2_regularization
      
        # Weights associated with each label class, for rebalancing the training data.
        # Only applicable for classification models.
        # Corresponds to the JSON property `labelClassWeights`
        # @return [Hash<String,Float>]
        attr_accessor :label_class_weights
      
        # Learning rate in training. Used only for iterative training algorithms.
        # Corresponds to the JSON property `learnRate`
        # @return [Float]
        attr_accessor :learn_rate
      
        # The strategy to determine learn rate for the current iteration.
        # Corresponds to the JSON property `learnRateStrategy`
        # @return [String]
        attr_accessor :learn_rate_strategy
      
        # Type of loss function used during training run.
        # Corresponds to the JSON property `lossType`
        # @return [String]
        attr_accessor :loss_type
      
        # The maximum number of iterations in training. Used only for iterative training
        # algorithms.
        # Corresponds to the JSON property `maxIterations`
        # @return [Fixnum]
        attr_accessor :max_iterations
      
        # Maximum number of trials to run in parallel.
        # Corresponds to the JSON property `maxParallelTrials`
        # @return [Fixnum]
        attr_accessor :max_parallel_trials
      
        # The maximum number of time points in a time series that can be used in
        # modeling the trend component of the time series. Don't use this option with
        # the `timeSeriesLengthFraction` or `minTimeSeriesLength` options.
        # Corresponds to the JSON property `maxTimeSeriesLength`
        # @return [Fixnum]
        attr_accessor :max_time_series_length
      
        # Maximum depth of a tree for boosted tree models.
        # Corresponds to the JSON property `maxTreeDepth`
        # @return [Fixnum]
        attr_accessor :max_tree_depth
      
        # When early_stop is true, stops training when accuracy improvement is less than
        # 'min_relative_progress'. Used only for iterative training algorithms.
        # Corresponds to the JSON property `minRelativeProgress`
        # @return [Float]
        attr_accessor :min_relative_progress
      
        # Minimum split loss for boosted tree models.
        # Corresponds to the JSON property `minSplitLoss`
        # @return [Float]
        attr_accessor :min_split_loss
      
        # The minimum number of time points in a time series that are used in modeling
        # the trend component of the time series. If you use this option you must also
        # set the `timeSeriesLengthFraction` option. This training option ensures that
        # enough time points are available when you use `timeSeriesLengthFraction` in
        # trend modeling. This is particularly important when forecasting multiple time
        # series in a single query using `timeSeriesIdColumn`. If the total number of
        # time points is less than the `minTimeSeriesLength` value, then the query uses
        # all available time points.
        # Corresponds to the JSON property `minTimeSeriesLength`
        # @return [Fixnum]
        attr_accessor :min_time_series_length
      
        # Minimum sum of instance weight needed in a child for boosted tree models.
        # Corresponds to the JSON property `minTreeChildWeight`
        # @return [Fixnum]
        attr_accessor :min_tree_child_weight
      
        # The model registry.
        # Corresponds to the JSON property `modelRegistry`
        # @return [String]
        attr_accessor :model_registry
      
        # Google Cloud Storage URI from which the model was imported. Only applicable
        # for imported models.
        # Corresponds to the JSON property `modelUri`
        # @return [String]
        attr_accessor :model_uri
      
        # Arima order, can be used for both non-seasonal and seasonal parts.
        # Corresponds to the JSON property `nonSeasonalOrder`
        # @return [Google::Apis::BigqueryV2::ArimaOrder]
        attr_accessor :non_seasonal_order
      
        # Number of clusters for clustering models.
        # Corresponds to the JSON property `numClusters`
        # @return [Fixnum]
        attr_accessor :num_clusters
      
        # Num factors specified for matrix factorization models.
        # Corresponds to the JSON property `numFactors`
        # @return [Fixnum]
        attr_accessor :num_factors
      
        # Number of parallel trees constructed during each iteration for boosted tree
        # models.
        # Corresponds to the JSON property `numParallelTree`
        # @return [Fixnum]
        attr_accessor :num_parallel_tree
      
        # Number of principal components to keep in the PCA model. Must be <= the number
        # of features.
        # Corresponds to the JSON property `numPrincipalComponents`
        # @return [Fixnum]
        attr_accessor :num_principal_components
      
        # Number of trials to run this hyperparameter tuning job.
        # Corresponds to the JSON property `numTrials`
        # @return [Fixnum]
        attr_accessor :num_trials
      
        # Optimization strategy for training linear regression models.
        # Corresponds to the JSON property `optimizationStrategy`
        # @return [String]
        attr_accessor :optimization_strategy
      
        # Optimizer used for training the neural nets.
        # Corresponds to the JSON property `optimizer`
        # @return [String]
        attr_accessor :optimizer
      
        # The minimum ratio of cumulative explained variance that needs to be given by
        # the PCA model.
        # Corresponds to the JSON property `pcaExplainedVarianceRatio`
        # @return [Float]
        attr_accessor :pca_explained_variance_ratio
      
        # The solver for PCA.
        # Corresponds to the JSON property `pcaSolver`
        # @return [String]
        attr_accessor :pca_solver
      
        # Number of paths for the sampled Shapley explain method.
        # Corresponds to the JSON property `sampledShapleyNumPaths`
        # @return [Fixnum]
        attr_accessor :sampled_shapley_num_paths
      
        # If true, scale the feature values by dividing the feature standard deviation.
        # Currently only apply to PCA.
        # Corresponds to the JSON property `scaleFeatures`
        # @return [Boolean]
        attr_accessor :scale_features
        alias_method :scale_features?, :scale_features
      
        # Whether to standardize numerical features. Default to true.
        # Corresponds to the JSON property `standardizeFeatures`
        # @return [Boolean]
        attr_accessor :standardize_features
        alias_method :standardize_features?, :standardize_features
      
        # Subsample fraction of the training data to grow tree to prevent overfitting
        # for boosted tree models.
        # Corresponds to the JSON property `subsample`
        # @return [Float]
        attr_accessor :subsample
      
        # Based on the selected TF version, the corresponding docker image is used to
        # train external models.
        # Corresponds to the JSON property `tfVersion`
        # @return [String]
        attr_accessor :tf_version
      
        # Column to be designated as time series data for ARIMA model.
        # Corresponds to the JSON property `timeSeriesDataColumn`
        # @return [String]
        attr_accessor :time_series_data_column
      
        # The time series id column that was used during ARIMA model training.
        # Corresponds to the JSON property `timeSeriesIdColumn`
        # @return [String]
        attr_accessor :time_series_id_column
      
        # The time series id columns that were used during ARIMA model training.
        # Corresponds to the JSON property `timeSeriesIdColumns`
        # @return [Array<String>]
        attr_accessor :time_series_id_columns
      
        # The fraction of the interpolated length of the time series that's used to
        # model the time series trend component. All of the time points of the time
        # series are used to model the non-trend component. This training option
        # accelerates modeling training without sacrificing much forecasting accuracy.
        # You can use this option with `minTimeSeriesLength` but not with `
        # maxTimeSeriesLength`.
        # Corresponds to the JSON property `timeSeriesLengthFraction`
        # @return [Float]
        attr_accessor :time_series_length_fraction
      
        # Column to be designated as time series timestamp for ARIMA model.
        # Corresponds to the JSON property `timeSeriesTimestampColumn`
        # @return [String]
        attr_accessor :time_series_timestamp_column
      
        # Tree construction algorithm for boosted tree models.
        # Corresponds to the JSON property `treeMethod`
        # @return [String]
        attr_accessor :tree_method
      
        # Smoothing window size for the trend component. When a positive value is
        # specified, a center moving average smoothing is applied on the history trend.
        # When the smoothing window is out of the boundary at the beginning or the end
        # of the trend, the first element or the last element is padded to fill the
        # smoothing window before the average is applied.
        # Corresponds to the JSON property `trendSmoothingWindowSize`
        # @return [Fixnum]
        attr_accessor :trend_smoothing_window_size
      
        # User column specified for matrix factorization models.
        # Corresponds to the JSON property `userColumn`
        # @return [String]
        attr_accessor :user_column
      
        # The version aliases to apply in Vertex AI model registry. Always overwrite if
        # the version aliases exists in a existing model.
        # Corresponds to the JSON property `vertexAiModelVersionAliases`
        # @return [Array<String>]
        attr_accessor :vertex_ai_model_version_aliases
      
        # Hyperparameter for matrix factoration when implicit feedback type is specified.
        # Corresponds to the JSON property `walsAlpha`
        # @return [Float]
        attr_accessor :wals_alpha
      
        # Whether to train a model from the last checkpoint.
        # Corresponds to the JSON property `warmStart`
        # @return [Boolean]
        attr_accessor :warm_start
        alias_method :warm_start?, :warm_start
      
        # User-selected XGBoost versions for training of XGBoost models.
        # Corresponds to the JSON property `xgboostVersion`
        # @return [String]
        attr_accessor :xgboost_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_fn = args[:activation_fn] if args.key?(:activation_fn)
          @adjust_step_changes = args[:adjust_step_changes] if args.key?(:adjust_step_changes)
          @approx_global_feature_contrib = args[:approx_global_feature_contrib] if args.key?(:approx_global_feature_contrib)
          @auto_arima = args[:auto_arima] if args.key?(:auto_arima)
          @auto_arima_max_order = args[:auto_arima_max_order] if args.key?(:auto_arima_max_order)
          @auto_arima_min_order = args[:auto_arima_min_order] if args.key?(:auto_arima_min_order)
          @auto_class_weights = args[:auto_class_weights] if args.key?(:auto_class_weights)
          @batch_size = args[:batch_size] if args.key?(:batch_size)
          @booster_type = args[:booster_type] if args.key?(:booster_type)
          @budget_hours = args[:budget_hours] if args.key?(:budget_hours)
          @calculate_p_values = args[:calculate_p_values] if args.key?(:calculate_p_values)
          @category_encoding_method = args[:category_encoding_method] if args.key?(:category_encoding_method)
          @clean_spikes_and_dips = args[:clean_spikes_and_dips] if args.key?(:clean_spikes_and_dips)
          @color_space = args[:color_space] if args.key?(:color_space)
          @colsample_bylevel = args[:colsample_bylevel] if args.key?(:colsample_bylevel)
          @colsample_bynode = args[:colsample_bynode] if args.key?(:colsample_bynode)
          @colsample_bytree = args[:colsample_bytree] if args.key?(:colsample_bytree)
          @dart_normalize_type = args[:dart_normalize_type] if args.key?(:dart_normalize_type)
          @data_frequency = args[:data_frequency] if args.key?(:data_frequency)
          @data_split_column = args[:data_split_column] if args.key?(:data_split_column)
          @data_split_eval_fraction = args[:data_split_eval_fraction] if args.key?(:data_split_eval_fraction)
          @data_split_method = args[:data_split_method] if args.key?(:data_split_method)
          @decompose_time_series = args[:decompose_time_series] if args.key?(:decompose_time_series)
          @distance_type = args[:distance_type] if args.key?(:distance_type)
          @dropout = args[:dropout] if args.key?(:dropout)
          @early_stop = args[:early_stop] if args.key?(:early_stop)
          @enable_global_explain = args[:enable_global_explain] if args.key?(:enable_global_explain)
          @feedback_type = args[:feedback_type] if args.key?(:feedback_type)
          @fit_intercept = args[:fit_intercept] if args.key?(:fit_intercept)
          @hidden_units = args[:hidden_units] if args.key?(:hidden_units)
          @holiday_region = args[:holiday_region] if args.key?(:holiday_region)
          @holiday_regions = args[:holiday_regions] if args.key?(:holiday_regions)
          @horizon = args[:horizon] if args.key?(:horizon)
          @hparam_tuning_objectives = args[:hparam_tuning_objectives] if args.key?(:hparam_tuning_objectives)
          @include_drift = args[:include_drift] if args.key?(:include_drift)
          @initial_learn_rate = args[:initial_learn_rate] if args.key?(:initial_learn_rate)
          @input_label_columns = args[:input_label_columns] if args.key?(:input_label_columns)
          @instance_weight_column = args[:instance_weight_column] if args.key?(:instance_weight_column)
          @integrated_gradients_num_steps = args[:integrated_gradients_num_steps] if args.key?(:integrated_gradients_num_steps)
          @item_column = args[:item_column] if args.key?(:item_column)
          @kmeans_initialization_column = args[:kmeans_initialization_column] if args.key?(:kmeans_initialization_column)
          @kmeans_initialization_method = args[:kmeans_initialization_method] if args.key?(:kmeans_initialization_method)
          @l1_reg_activation = args[:l1_reg_activation] if args.key?(:l1_reg_activation)
          @l1_regularization = args[:l1_regularization] if args.key?(:l1_regularization)
          @l2_regularization = args[:l2_regularization] if args.key?(:l2_regularization)
          @label_class_weights = args[:label_class_weights] if args.key?(:label_class_weights)
          @learn_rate = args[:learn_rate] if args.key?(:learn_rate)
          @learn_rate_strategy = args[:learn_rate_strategy] if args.key?(:learn_rate_strategy)
          @loss_type = args[:loss_type] if args.key?(:loss_type)
          @max_iterations = args[:max_iterations] if args.key?(:max_iterations)
          @max_parallel_trials = args[:max_parallel_trials] if args.key?(:max_parallel_trials)
          @max_time_series_length = args[:max_time_series_length] if args.key?(:max_time_series_length)
          @max_tree_depth = args[:max_tree_depth] if args.key?(:max_tree_depth)
          @min_relative_progress = args[:min_relative_progress] if args.key?(:min_relative_progress)
          @min_split_loss = args[:min_split_loss] if args.key?(:min_split_loss)
          @min_time_series_length = args[:min_time_series_length] if args.key?(:min_time_series_length)
          @min_tree_child_weight = args[:min_tree_child_weight] if args.key?(:min_tree_child_weight)
          @model_registry = args[:model_registry] if args.key?(:model_registry)
          @model_uri = args[:model_uri] if args.key?(:model_uri)
          @non_seasonal_order = args[:non_seasonal_order] if args.key?(:non_seasonal_order)
          @num_clusters = args[:num_clusters] if args.key?(:num_clusters)
          @num_factors = args[:num_factors] if args.key?(:num_factors)
          @num_parallel_tree = args[:num_parallel_tree] if args.key?(:num_parallel_tree)
          @num_principal_components = args[:num_principal_components] if args.key?(:num_principal_components)
          @num_trials = args[:num_trials] if args.key?(:num_trials)
          @optimization_strategy = args[:optimization_strategy] if args.key?(:optimization_strategy)
          @optimizer = args[:optimizer] if args.key?(:optimizer)
          @pca_explained_variance_ratio = args[:pca_explained_variance_ratio] if args.key?(:pca_explained_variance_ratio)
          @pca_solver = args[:pca_solver] if args.key?(:pca_solver)
          @sampled_shapley_num_paths = args[:sampled_shapley_num_paths] if args.key?(:sampled_shapley_num_paths)
          @scale_features = args[:scale_features] if args.key?(:scale_features)
          @standardize_features = args[:standardize_features] if args.key?(:standardize_features)
          @subsample = args[:subsample] if args.key?(:subsample)
          @tf_version = args[:tf_version] if args.key?(:tf_version)
          @time_series_data_column = args[:time_series_data_column] if args.key?(:time_series_data_column)
          @time_series_id_column = args[:time_series_id_column] if args.key?(:time_series_id_column)
          @time_series_id_columns = args[:time_series_id_columns] if args.key?(:time_series_id_columns)
          @time_series_length_fraction = args[:time_series_length_fraction] if args.key?(:time_series_length_fraction)
          @time_series_timestamp_column = args[:time_series_timestamp_column] if args.key?(:time_series_timestamp_column)
          @tree_method = args[:tree_method] if args.key?(:tree_method)
          @trend_smoothing_window_size = args[:trend_smoothing_window_size] if args.key?(:trend_smoothing_window_size)
          @user_column = args[:user_column] if args.key?(:user_column)
          @vertex_ai_model_version_aliases = args[:vertex_ai_model_version_aliases] if args.key?(:vertex_ai_model_version_aliases)
          @wals_alpha = args[:wals_alpha] if args.key?(:wals_alpha)
          @warm_start = args[:warm_start] if args.key?(:warm_start)
          @xgboost_version = args[:xgboost_version] if args.key?(:xgboost_version)
        end
      end
      
      # Information about a single training query run for the model.
      class TrainingRun
        include Google::Apis::Core::Hashable
      
        # Output only. Global explanation contains the explanation of top features on
        # the class level. Applies to classification models only.
        # Corresponds to the JSON property `classLevelGlobalExplanations`
        # @return [Array<Google::Apis::BigqueryV2::GlobalExplanation>]
        attr_accessor :class_level_global_explanations
      
        # Data split result. This contains references to the training and evaluation
        # data tables that were used to train the model.
        # Corresponds to the JSON property `dataSplitResult`
        # @return [Google::Apis::BigqueryV2::DataSplitResult]
        attr_accessor :data_split_result
      
        # Evaluation metrics of a model. These are either computed on all training data
        # or just the eval data based on whether eval data was used during training.
        # These are not present for imported models.
        # Corresponds to the JSON property `evaluationMetrics`
        # @return [Google::Apis::BigqueryV2::EvaluationMetrics]
        attr_accessor :evaluation_metrics
      
        # Global explanations containing the top most important features after training.
        # Corresponds to the JSON property `modelLevelGlobalExplanation`
        # @return [Google::Apis::BigqueryV2::GlobalExplanation]
        attr_accessor :model_level_global_explanation
      
        # Output only. Output of each iteration run, results.size() <= max_iterations.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::BigqueryV2::IterationResult>]
        attr_accessor :results
      
        # Output only. The start time of this training run.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Options used in model training.
        # Corresponds to the JSON property `trainingOptions`
        # @return [Google::Apis::BigqueryV2::TrainingOptions]
        attr_accessor :training_options
      
        # Output only. The start time of this training run, in milliseconds since epoch.
        # Corresponds to the JSON property `trainingStartTime`
        # @return [Fixnum]
        attr_accessor :training_start_time
      
        # The model id in the [Vertex AI Model Registry](https://cloud.google.com/vertex-
        # ai/docs/model-registry/introduction) for this training run.
        # Corresponds to the JSON property `vertexAiModelId`
        # @return [String]
        attr_accessor :vertex_ai_model_id
      
        # Output only. The model version in the [Vertex AI Model Registry](https://cloud.
        # google.com/vertex-ai/docs/model-registry/introduction) for this training run.
        # Corresponds to the JSON property `vertexAiModelVersion`
        # @return [String]
        attr_accessor :vertex_ai_model_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @class_level_global_explanations = args[:class_level_global_explanations] if args.key?(:class_level_global_explanations)
          @data_split_result = args[:data_split_result] if args.key?(:data_split_result)
          @evaluation_metrics = args[:evaluation_metrics] if args.key?(:evaluation_metrics)
          @model_level_global_explanation = args[:model_level_global_explanation] if args.key?(:model_level_global_explanation)
          @results = args[:results] if args.key?(:results)
          @start_time = args[:start_time] if args.key?(:start_time)
          @training_options = args[:training_options] if args.key?(:training_options)
          @training_start_time = args[:training_start_time] if args.key?(:training_start_time)
          @vertex_ai_model_id = args[:vertex_ai_model_id] if args.key?(:vertex_ai_model_id)
          @vertex_ai_model_version = args[:vertex_ai_model_version] if args.key?(:vertex_ai_model_version)
        end
      end
      
      # [Alpha] Information of a multi-statement transaction.
      class TransactionInfo
        include Google::Apis::Core::Hashable
      
        # Output only. [Alpha] Id of the transaction.
        # Corresponds to the JSON property `transactionId`
        # @return [String]
        attr_accessor :transaction_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transaction_id = args[:transaction_id] if args.key?(:transaction_id)
        end
      end
      
      # Information about a single transform column.
      class TransformColumn
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the column.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The SQL expression used in the column transform.
        # Corresponds to the JSON property `transformSql`
        # @return [String]
        attr_accessor :transform_sql
      
        # The data type of a variable such as a function argument. Examples include: *
        # INT64: ``"typeKind": "INT64"`` * ARRAY: ` "typeKind": "ARRAY", "
        # arrayElementType": `"typeKind": "STRING"` ` * STRUCT>: ` "typeKind": "STRUCT",
        # "structType": ` "fields": [ ` "name": "x", "type": `"typeKind": "STRING"` `, `
        # "name": "y", "type": ` "typeKind": "ARRAY", "arrayElementType": `"typeKind": "
        # DATE"` ` ` ] ` `
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::BigqueryV2::StandardSqlDataType]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @transform_sql = args[:transform_sql] if args.key?(:transform_sql)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Request format for undeleting a dataset.
      class UndeleteDatasetRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The exact time when the dataset was deleted. If not specified, the
        # most recently deleted version is undeleted. Undeleting a dataset using
        # deletion time is not supported.
        # Corresponds to the JSON property `deletionTime`
        # @return [String]
        attr_accessor :deletion_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deletion_time = args[:deletion_time] if args.key?(:deletion_time)
        end
      end
      
      # This is used for defining User Defined Function (UDF) resources only when
      # using legacy SQL. Users of GoogleSQL should leverage either DDL (e.g. CREATE [
      # TEMPORARY] FUNCTION ... ) or the Routines API to define UDF resources. For
      # additional information on migrating, see: https://cloud.google.com/bigquery/
      # docs/reference/standard-sql/migrating-from-legacy-sql#differences_in_user-
      # defined_javascript_functions
      class UserDefinedFunctionResource
        include Google::Apis::Core::Hashable
      
        # [Pick one] An inline resource that contains code for a user-defined function (
        # UDF). Providing a inline code resource is equivalent to providing a URI for a
        # file containing the same code.
        # Corresponds to the JSON property `inlineCode`
        # @return [String]
        attr_accessor :inline_code
      
        # [Pick one] A code resource to load from a Google Cloud Storage URI (gs://
        # bucket/path).
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inline_code = args[:inline_code] if args.key?(:inline_code)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
        end
      end
      
      # Statistics for a vector search query. Populated as part of JobStatistics2.
      class VectorSearchStatistics
        include Google::Apis::Core::Hashable
      
        # When `indexUsageMode` is `UNUSED` or `PARTIALLY_USED`, this field explains why
        # indexes were not used in all or part of the vector search query. If `
        # indexUsageMode` is `FULLY_USED`, this field is not populated.
        # Corresponds to the JSON property `indexUnusedReasons`
        # @return [Array<Google::Apis::BigqueryV2::IndexUnusedReason>]
        attr_accessor :index_unused_reasons
      
        # Specifies the index usage mode for the query.
        # Corresponds to the JSON property `indexUsageMode`
        # @return [String]
        attr_accessor :index_usage_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index_unused_reasons = args[:index_unused_reasons] if args.key?(:index_unused_reasons)
          @index_usage_mode = args[:index_usage_mode] if args.key?(:index_usage_mode)
        end
      end
      
      # Describes the definition of a logical view.
      class ViewDefinition
        include Google::Apis::Core::Hashable
      
        # Optional. Foreign view representations.
        # Corresponds to the JSON property `foreignDefinitions`
        # @return [Array<Google::Apis::BigqueryV2::ForeignViewDefinition>]
        attr_accessor :foreign_definitions
      
        # Represents privacy policy that contains the privacy requirements specified by
        # the data owner. Currently, this is only supported on views.
        # Corresponds to the JSON property `privacyPolicy`
        # @return [Google::Apis::BigqueryV2::PrivacyPolicy]
        attr_accessor :privacy_policy
      
        # Required. A query that BigQuery executes when the view is referenced.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # True if the column names are explicitly specified. For example by using the '
        # CREATE VIEW v(c1, c2) AS ...' syntax. Can only be set for GoogleSQL views.
        # Corresponds to the JSON property `useExplicitColumnNames`
        # @return [Boolean]
        attr_accessor :use_explicit_column_names
        alias_method :use_explicit_column_names?, :use_explicit_column_names
      
        # Specifies whether to use BigQuery's legacy SQL for this view. The default
        # value is true. If set to false, the view will use BigQuery's GoogleSQL: https:/
        # /cloud.google.com/bigquery/sql-reference/ Queries and views that reference
        # this view must use the same flag value. A wrapper is used here because the
        # default value is True.
        # Corresponds to the JSON property `useLegacySql`
        # @return [Boolean]
        attr_accessor :use_legacy_sql
        alias_method :use_legacy_sql?, :use_legacy_sql
      
        # Describes user-defined function resources used in the query.
        # Corresponds to the JSON property `userDefinedFunctionResources`
        # @return [Array<Google::Apis::BigqueryV2::UserDefinedFunctionResource>]
        attr_accessor :user_defined_function_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @foreign_definitions = args[:foreign_definitions] if args.key?(:foreign_definitions)
          @privacy_policy = args[:privacy_policy] if args.key?(:privacy_policy)
          @query = args[:query] if args.key?(:query)
          @use_explicit_column_names = args[:use_explicit_column_names] if args.key?(:use_explicit_column_names)
          @use_legacy_sql = args[:use_legacy_sql] if args.key?(:use_legacy_sql)
          @user_defined_function_resources = args[:user_defined_function_resources] if args.key?(:user_defined_function_resources)
        end
      end
    end
  end
end
