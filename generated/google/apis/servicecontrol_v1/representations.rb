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
    module ServicecontrolV1
      
      class ExponentialBuckets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartReconciliationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinearBuckets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthenticationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocateQuotaResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseQuotaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseQuotaResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocateQuotaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricValueSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartReconciliationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndReconciliationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndReconciliationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Distribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExplicitBuckets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExponentialBuckets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :growth_factor, as: 'growthFactor'
          property :scale, as: 'scale'
          property :num_finite_buckets, as: 'numFiniteBuckets'
        end
      end
      
      class AuthorizationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource'
          property :granted, as: 'granted'
          property :permission, as: 'permission'
        end
      end
      
      class StartReconciliationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :quota_metrics, as: 'quotaMetrics', class: Google::Apis::ServicecontrolV1::MetricValueSet, decorator: Google::Apis::ServicecontrolV1::MetricValueSet::Representation
      
          property :operation_id, as: 'operationId'
          collection :reconciliation_errors, as: 'reconciliationErrors', class: Google::Apis::ServicecontrolV1::QuotaError, decorator: Google::Apis::ServicecontrolV1::QuotaError::Representation
      
          property :service_config_id, as: 'serviceConfigId'
        end
      end
      
      class QuotaProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_mode, as: 'quotaMode'
          hash :limit_by_ids, as: 'limitByIds'
        end
      end
      
      class LinearBuckets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :width, as: 'width'
          property :offset, as: 'offset'
          property :num_finite_buckets, as: 'numFiniteBuckets'
        end
      end
      
      class AuthenticationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :principal_email, as: 'principalEmail'
          property :authority_selector, as: 'authoritySelector'
        end
      end
      
      class AllocateQuotaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
          property :service_config_id, as: 'serviceConfigId'
          collection :allocate_errors, as: 'allocateErrors', class: Google::Apis::ServicecontrolV1::QuotaError, decorator: Google::Apis::ServicecontrolV1::QuotaError::Representation
      
          collection :quota_metrics, as: 'quotaMetrics', class: Google::Apis::ServicecontrolV1::MetricValueSet, decorator: Google::Apis::ServicecontrolV1::MetricValueSet::Representation
      
        end
      end
      
      class ReleaseQuotaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_config_id, as: 'serviceConfigId'
          property :release_operation, as: 'releaseOperation', class: Google::Apis::ServicecontrolV1::QuotaOperation, decorator: Google::Apis::ServicecontrolV1::QuotaOperation::Representation
      
        end
      end
      
      class QuotaError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subject, as: 'subject'
          property :description, as: 'description'
          property :code, as: 'code'
        end
      end
      
      class RequestMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :caller_ip, as: 'callerIp'
          property :caller_supplied_user_agent, as: 'callerSuppliedUserAgent'
        end
      end
      
      class CheckInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :unused_arguments, as: 'unusedArguments'
        end
      end
      
      class ReleaseQuotaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
          property :service_config_id, as: 'serviceConfigId'
          collection :release_errors, as: 'releaseErrors', class: Google::Apis::ServicecontrolV1::QuotaError, decorator: Google::Apis::ServicecontrolV1::QuotaError::Representation
      
          collection :quota_metrics, as: 'quotaMetrics', class: Google::Apis::ServicecontrolV1::MetricValueSet, decorator: Google::Apis::ServicecontrolV1::MetricValueSet::Representation
      
        end
      end
      
      class AllocateQuotaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocation_mode, as: 'allocationMode'
          property :service_config_id, as: 'serviceConfigId'
          property :allocate_operation, as: 'allocateOperation', class: Google::Apis::ServicecontrolV1::QuotaOperation, decorator: Google::Apis::ServicecontrolV1::QuotaOperation::Representation
      
        end
      end
      
      class MetricValueSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
          collection :metric_values, as: 'metricValues', class: Google::Apis::ServicecontrolV1::MetricValue, decorator: Google::Apis::ServicecontrolV1::MetricValue::Representation
      
        end
      end
      
      class ReportError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status', class: Google::Apis::ServicecontrolV1::Status, decorator: Google::Apis::ServicecontrolV1::Status::Representation
      
          property :operation_id, as: 'operationId'
        end
      end
      
      class StartReconciliationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reconciliation_operation, as: 'reconciliationOperation', class: Google::Apis::ServicecontrolV1::QuotaOperation, decorator: Google::Apis::ServicecontrolV1::QuotaOperation::Representation
      
          property :service_config_id, as: 'serviceConfigId'
        end
      end
      
      class CheckError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :detail, as: 'detail'
        end
      end
      
      class QuotaInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :quota_consumed, as: 'quotaConsumed'
          collection :quota_metrics, as: 'quotaMetrics', class: Google::Apis::ServicecontrolV1::MetricValueSet, decorator: Google::Apis::ServicecontrolV1::MetricValueSet::Representation
      
          collection :limit_exceeded, as: 'limitExceeded'
        end
      end
      
      class CheckRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :skip_activation_check, as: 'skipActivationCheck'
          property :operation, as: 'operation', class: Google::Apis::ServicecontrolV1::Operation, decorator: Google::Apis::ServicecontrolV1::Operation::Representation
      
          property :request_project_settings, as: 'requestProjectSettings'
          property :service_config_id, as: 'serviceConfigId'
        end
      end
      
      class QuotaOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :consumer_id, as: 'consumerId'
          property :operation_id, as: 'operationId'
          property :quota_mode, as: 'quotaMode'
          property :method_name, as: 'methodName'
          collection :quota_metrics, as: 'quotaMetrics', class: Google::Apis::ServicecontrolV1::MetricValueSet, decorator: Google::Apis::ServicecontrolV1::MetricValueSet::Representation
      
        end
      end
      
      class EndReconciliationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reconciliation_operation, as: 'reconciliationOperation', class: Google::Apis::ServicecontrolV1::QuotaOperation, decorator: Google::Apis::ServicecontrolV1::QuotaOperation::Representation
      
          property :service_config_id, as: 'serviceConfigId'
        end
      end
      
      class ReportInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
          property :quota_info, as: 'quotaInfo', class: Google::Apis::ServicecontrolV1::QuotaInfo, decorator: Google::Apis::ServicecontrolV1::QuotaInfo::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_properties, as: 'quotaProperties', class: Google::Apis::ServicecontrolV1::QuotaProperties, decorator: Google::Apis::ServicecontrolV1::QuotaProperties::Representation
      
          property :consumer_id, as: 'consumerId'
          property :operation_id, as: 'operationId'
          property :end_time, as: 'endTime'
          property :operation_name, as: 'operationName'
          property :start_time, as: 'startTime'
          property :importance, as: 'importance'
          property :resource_container, as: 'resourceContainer'
          hash :labels, as: 'labels'
          collection :log_entries, as: 'logEntries', class: Google::Apis::ServicecontrolV1::LogEntry, decorator: Google::Apis::ServicecontrolV1::LogEntry::Representation
      
          hash :user_labels, as: 'userLabels'
          collection :metric_value_sets, as: 'metricValueSets', class: Google::Apis::ServicecontrolV1::MetricValueSet, decorator: Google::Apis::ServicecontrolV1::MetricValueSet::Representation
      
        end
      end
      
      class ReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :report_errors, as: 'reportErrors', class: Google::Apis::ServicecontrolV1::ReportError, decorator: Google::Apis::ServicecontrolV1::ReportError::Representation
      
          collection :report_infos, as: 'reportInfos', class: Google::Apis::ServicecontrolV1::ReportInfo, decorator: Google::Apis::ServicecontrolV1::ReportInfo::Representation
      
          property :service_config_id, as: 'serviceConfigId'
        end
      end
      
      class CheckResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
          collection :check_errors, as: 'checkErrors', class: Google::Apis::ServicecontrolV1::CheckError, decorator: Google::Apis::ServicecontrolV1::CheckError::Representation
      
          property :check_info, as: 'checkInfo', class: Google::Apis::ServicecontrolV1::CheckInfo, decorator: Google::Apis::ServicecontrolV1::CheckInfo::Representation
      
          property :quota_info, as: 'quotaInfo', class: Google::Apis::ServicecontrolV1::QuotaInfo, decorator: Google::Apis::ServicecontrolV1::QuotaInfo::Representation
      
          property :service_config_id, as: 'serviceConfigId'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details, as: 'details'
          property :code, as: 'code'
          property :message, as: 'message'
        end
      end
      
      class ReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::ServicecontrolV1::Operation, decorator: Google::Apis::ServicecontrolV1::Operation::Representation
      
          property :service_config_id, as: 'serviceConfigId'
        end
      end
      
      class AuditLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_response_items, :numeric_string => true, as: 'numResponseItems'
          property :authentication_info, as: 'authenticationInfo', class: Google::Apis::ServicecontrolV1::AuthenticationInfo, decorator: Google::Apis::ServicecontrolV1::AuthenticationInfo::Representation
      
          property :status, as: 'status', class: Google::Apis::ServicecontrolV1::Status, decorator: Google::Apis::ServicecontrolV1::Status::Representation
      
          property :service_name, as: 'serviceName'
          hash :response, as: 'response'
          property :method_name, as: 'methodName'
          property :resource_name, as: 'resourceName'
          collection :authorization_info, as: 'authorizationInfo', class: Google::Apis::ServicecontrolV1::AuthorizationInfo, decorator: Google::Apis::ServicecontrolV1::AuthorizationInfo::Representation
      
          hash :request, as: 'request'
          hash :service_data, as: 'serviceData'
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::ServicecontrolV1::RequestMetadata, decorator: Google::Apis::ServicecontrolV1::RequestMetadata::Representation
      
        end
      end
      
      class LogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :severity, as: 'severity'
          property :name, as: 'name'
          property :insert_id, as: 'insertId'
          hash :struct_payload, as: 'structPayload'
          property :text_payload, as: 'textPayload'
          hash :proto_payload, as: 'protoPayload'
          property :timestamp, as: 'timestamp'
          hash :labels, as: 'labels'
        end
      end
      
      class MetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :money_value, as: 'moneyValue', class: Google::Apis::ServicecontrolV1::Money, decorator: Google::Apis::ServicecontrolV1::Money::Representation
      
          property :string_value, as: 'stringValue'
          hash :labels, as: 'labels'
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :distribution_value, as: 'distributionValue', class: Google::Apis::ServicecontrolV1::Distribution, decorator: Google::Apis::ServicecontrolV1::Distribution::Representation
      
          property :bool_value, as: 'boolValue'
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
          property :currency_code, as: 'currencyCode'
        end
      end
      
      class EndReconciliationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
          collection :reconciliation_errors, as: 'reconciliationErrors', class: Google::Apis::ServicecontrolV1::QuotaError, decorator: Google::Apis::ServicecontrolV1::QuotaError::Representation
      
          property :service_config_id, as: 'serviceConfigId'
          collection :quota_metrics, as: 'quotaMetrics', class: Google::Apis::ServicecontrolV1::MetricValueSet, decorator: Google::Apis::ServicecontrolV1::MetricValueSet::Representation
      
        end
      end
      
      class Distribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maximum, as: 'maximum'
          property :sum_of_squared_deviation, as: 'sumOfSquaredDeviation'
          property :exponential_buckets, as: 'exponentialBuckets', class: Google::Apis::ServicecontrolV1::ExponentialBuckets, decorator: Google::Apis::ServicecontrolV1::ExponentialBuckets::Representation
      
          property :minimum, as: 'minimum'
          property :linear_buckets, as: 'linearBuckets', class: Google::Apis::ServicecontrolV1::LinearBuckets, decorator: Google::Apis::ServicecontrolV1::LinearBuckets::Representation
      
          property :count, :numeric_string => true, as: 'count'
          property :mean, as: 'mean'
          collection :bucket_counts, as: 'bucketCounts'
          property :explicit_buckets, as: 'explicitBuckets', class: Google::Apis::ServicecontrolV1::ExplicitBuckets, decorator: Google::Apis::ServicecontrolV1::ExplicitBuckets::Representation
      
        end
      end
      
      class ExplicitBuckets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bounds, as: 'bounds'
        end
      end
    end
  end
end
