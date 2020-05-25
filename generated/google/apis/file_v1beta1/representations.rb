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
    module FileV1beta1
      
      class AttributeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BillingView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Distribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Exemplar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExplicitBuckets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExponentialBuckets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileShareConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiServicecontrolV1Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinearBuckets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogEntryOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogEntrySourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricValueSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TraceSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TruncatableString
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :int_value, :numeric_string => true, as: 'intValue'
          property :string_value, as: 'stringValue', class: Google::Apis::FileV1beta1::TruncatableString, decorator: Google::Apis::FileV1beta1::TruncatableString::Representation
      
        end
      end
      
      class Attributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attribute_map, as: 'attributeMap', class: Google::Apis::FileV1beta1::AttributeValue, decorator: Google::Apis::FileV1beta1::AttributeValue::Representation
      
          property :dropped_attributes_count, as: 'droppedAttributesCount'
        end
      end
      
      class BillingView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :report_requests, as: 'reportRequests', class: Google::Apis::FileV1beta1::ReportRequest, decorator: Google::Apis::FileV1beta1::ReportRequest::Representation
      
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Distribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bucket_counts, as: 'bucketCounts'
          property :count, :numeric_string => true, as: 'count'
          collection :exemplars, as: 'exemplars', class: Google::Apis::FileV1beta1::Exemplar, decorator: Google::Apis::FileV1beta1::Exemplar::Representation
      
          property :explicit_buckets, as: 'explicitBuckets', class: Google::Apis::FileV1beta1::ExplicitBuckets, decorator: Google::Apis::FileV1beta1::ExplicitBuckets::Representation
      
          property :exponential_buckets, as: 'exponentialBuckets', class: Google::Apis::FileV1beta1::ExponentialBuckets, decorator: Google::Apis::FileV1beta1::ExponentialBuckets::Representation
      
          property :linear_buckets, as: 'linearBuckets', class: Google::Apis::FileV1beta1::LinearBuckets, decorator: Google::Apis::FileV1beta1::LinearBuckets::Representation
      
          property :maximum, as: 'maximum'
          property :mean, as: 'mean'
          property :minimum, as: 'minimum'
          property :sum_of_squared_deviation, as: 'sumOfSquaredDeviation'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Exemplar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments'
          property :timestamp, as: 'timestamp'
          property :value, as: 'value'
        end
      end
      
      class ExplicitBuckets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bounds, as: 'bounds'
        end
      end
      
      class ExponentialBuckets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :growth_factor, as: 'growthFactor'
          property :num_finite_buckets, as: 'numFiniteBuckets'
          property :scale, as: 'scale'
        end
      end
      
      class FileShareConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_gb, :numeric_string => true, as: 'capacityGb'
          property :name, as: 'name'
        end
      end
      
      class GoogleApiServicecontrolV1Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_id, as: 'consumerId'
          property :end_time, as: 'endTime'
          property :importance, as: 'importance'
          hash :labels, as: 'labels'
          collection :log_entries, as: 'logEntries', class: Google::Apis::FileV1beta1::LogEntry, decorator: Google::Apis::FileV1beta1::LogEntry::Representation
      
          collection :metric_value_sets, as: 'metricValueSets', class: Google::Apis::FileV1beta1::MetricValueSet, decorator: Google::Apis::FileV1beta1::MetricValueSet::Representation
      
          property :operation_id, as: 'operationId'
          property :operation_name, as: 'operationName'
          property :quota_properties, as: 'quotaProperties', class: Google::Apis::FileV1beta1::QuotaProperties, decorator: Google::Apis::FileV1beta1::QuotaProperties::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::FileV1beta1::ResourceInfo, decorator: Google::Apis::FileV1beta1::ResourceInfo::Representation
      
          property :start_time, as: 'startTime'
          collection :trace_spans, as: 'traceSpans', class: Google::Apis::FileV1beta1::TraceSpan, decorator: Google::Apis::FileV1beta1::TraceSpan::Representation
      
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_defined_name, as: 'consumerDefinedName'
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          hash :maintenance_policy_names, as: 'maintenancePolicyNames'
          hash :maintenance_schedules, as: 'maintenanceSchedules', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule::Representation
      
          property :maintenance_settings, as: 'maintenanceSettings', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings::Representation
      
          property :name, as: 'name'
          hash :producer_metadata, as: 'producerMetadata'
          collection :provisioned_resources, as: 'provisionedResources', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource::Representation
      
          property :slm_instance_template, as: 'slmInstanceTemplate'
          property :slo_metadata, as: 'sloMetadata', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata::Representation
      
          hash :software_versions, as: 'softwareVersions'
          property :state, as: 'state'
          property :tenant_project_id, as: 'tenantProjectId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_reschedule, as: 'canReschedule'
          property :end_time, as: 'endTime'
          property :rollout_management_policy, as: 'rolloutManagementPolicy'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude, as: 'exclude'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exclusions, as: 'exclusions', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion::Representation
      
          property :location, as: 'location'
          property :node_id, as: 'nodeId'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_type, as: 'resourceType'
          property :resource_url, as: 'resourceUrl'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :eligible, as: 'eligible'
          property :reason, as: 'reason'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :reason, as: 'reason'
          property :sli_name, as: 'sliName'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :eligibility, as: 'eligibility', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility::Representation
      
          collection :exclusions, as: 'exclusions', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion::Representation
      
          collection :nodes, as: 'nodes', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata::Representation
      
          property :tier, as: 'tier'
        end
      end
      
      class HttpRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_fill_bytes, :numeric_string => true, as: 'cacheFillBytes'
          property :cache_hit, as: 'cacheHit'
          property :cache_lookup, as: 'cacheLookup'
          property :cache_validated_with_origin_server, as: 'cacheValidatedWithOriginServer'
          property :latency, as: 'latency'
          property :protocol, as: 'protocol'
          property :referer, as: 'referer'
          property :remote_ip, as: 'remoteIp'
          property :request_method, as: 'requestMethod'
          property :request_size, :numeric_string => true, as: 'requestSize'
          property :request_url, as: 'requestUrl'
          property :response_size, :numeric_string => true, as: 'responseSize'
          property :server_ip, as: 'serverIp'
          property :status, as: 'status'
          property :user_agent, as: 'userAgent'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          collection :file_shares, as: 'fileShares', class: Google::Apis::FileV1beta1::FileShareConfig, decorator: Google::Apis::FileV1beta1::FileShareConfig::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :networks, as: 'networks', class: Google::Apis::FileV1beta1::NetworkConfig, decorator: Google::Apis::FileV1beta1::NetworkConfig::Representation
      
          property :state, as: 'state'
          property :status_message, as: 'statusMessage'
          property :tier, as: 'tier'
        end
      end
      
      class LinearBuckets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_finite_buckets, as: 'numFiniteBuckets'
          property :offset, as: 'offset'
          property :width, as: 'width'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::FileV1beta1::Instance, decorator: Google::Apis::FileV1beta1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::FileV1beta1::Location, decorator: Google::Apis::FileV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::FileV1beta1::Operation, decorator: Google::Apis::FileV1beta1::Operation::Representation
      
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
      
      class LogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_request, as: 'httpRequest', class: Google::Apis::FileV1beta1::HttpRequest, decorator: Google::Apis::FileV1beta1::HttpRequest::Representation
      
          property :insert_id, as: 'insertId'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :operation, as: 'operation', class: Google::Apis::FileV1beta1::LogEntryOperation, decorator: Google::Apis::FileV1beta1::LogEntryOperation::Representation
      
          hash :proto_payload, as: 'protoPayload'
          property :severity, as: 'severity'
          property :source_location, as: 'sourceLocation', class: Google::Apis::FileV1beta1::LogEntrySourceLocation, decorator: Google::Apis::FileV1beta1::LogEntrySourceLocation::Representation
      
          hash :struct_payload, as: 'structPayload'
          property :text_payload, as: 'textPayload'
          property :timestamp, as: 'timestamp'
          property :trace, as: 'trace'
        end
      end
      
      class LogEntryOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first, as: 'first'
          property :id, as: 'id'
          property :last, as: 'last'
          property :producer, as: 'producer'
        end
      end
      
      class LogEntrySourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file, as: 'file'
          property :function, as: 'function'
          property :line, :numeric_string => true, as: 'line'
        end
      end
      
      class MetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :distribution_value, as: 'distributionValue', class: Google::Apis::FileV1beta1::Distribution, decorator: Google::Apis::FileV1beta1::Distribution::Representation
      
          property :double_value, as: 'doubleValue'
          property :end_time, as: 'endTime'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          hash :labels, as: 'labels'
          property :money_value, as: 'moneyValue', class: Google::Apis::FileV1beta1::Money, decorator: Google::Apis::FileV1beta1::Money::Representation
      
          property :start_time, as: 'startTime'
          property :string_value, as: 'stringValue'
        end
      end
      
      class MetricValueSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
          collection :metric_values, as: 'metricValues', class: Google::Apis::FileV1beta1::MetricValue, decorator: Google::Apis::FileV1beta1::MetricValue::Representation
      
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_addresses, as: 'ipAddresses'
          collection :modes, as: 'modes'
          property :network, as: 'network'
          property :reserved_ip_range, as: 'reservedIpRange'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::FileV1beta1::Status, decorator: Google::Apis::FileV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class QuotaProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_mode, as: 'quotaMode'
        end
      end
      
      class ReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::FileV1beta1::GoogleApiServicecontrolV1Operation, decorator: Google::Apis::FileV1beta1::GoogleApiServicecontrolV1Operation::Representation
      
          property :service_config_id, as: 'serviceConfigId'
          property :service_name, as: 'serviceName'
        end
      end
      
      class ResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_container, as: 'resourceContainer'
          property :resource_location, as: 'resourceLocation'
          property :resource_name, as: 'resourceName'
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
      
      class TraceSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::FileV1beta1::Attributes, decorator: Google::Apis::FileV1beta1::Attributes::Representation
      
          property :child_span_count, as: 'childSpanCount'
          property :display_name, as: 'displayName', class: Google::Apis::FileV1beta1::TruncatableString, decorator: Google::Apis::FileV1beta1::TruncatableString::Representation
      
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :parent_span_id, as: 'parentSpanId'
          property :same_process_as_parent_span, as: 'sameProcessAsParentSpan'
          property :span_id, as: 'spanId'
          property :span_kind, as: 'spanKind'
          property :start_time, as: 'startTime'
          property :status, as: 'status', class: Google::Apis::FileV1beta1::Status, decorator: Google::Apis::FileV1beta1::Status::Representation
      
        end
      end
      
      class TruncatableString
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :truncated_byte_count, as: 'truncatedByteCount'
          property :value, as: 'value'
        end
      end
    end
  end
end
