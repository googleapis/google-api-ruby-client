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
    module NetworkconnectivityV1alpha1
      
      class AttributeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BillingView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
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
      
      class HttpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hub
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinearBuckets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListHubsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSpokesResponse
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
      
      class Operation
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
      
      class RouterApplianceInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Spoke
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
          property :string_value, as: 'stringValue', class: Google::Apis::NetworkconnectivityV1alpha1::TruncatableString, decorator: Google::Apis::NetworkconnectivityV1alpha1::TruncatableString::Representation
      
        end
      end
      
      class Attributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attribute_map, as: 'attributeMap', class: Google::Apis::NetworkconnectivityV1alpha1::AttributeValue, decorator: Google::Apis::NetworkconnectivityV1alpha1::AttributeValue::Representation
      
          property :dropped_attributes_count, as: 'droppedAttributesCount'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::NetworkconnectivityV1alpha1::AuditLogConfig, decorator: Google::Apis::NetworkconnectivityV1alpha1::AuditLogConfig::Representation
      
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
      
      class BillingView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :report_requests, as: 'reportRequests', class: Google::Apis::NetworkconnectivityV1alpha1::ReportRequest, decorator: Google::Apis::NetworkconnectivityV1alpha1::ReportRequest::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::NetworkconnectivityV1alpha1::Expr, decorator: Google::Apis::NetworkconnectivityV1alpha1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class Distribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bucket_counts, as: 'bucketCounts'
          property :count, :numeric_string => true, as: 'count'
          collection :exemplars, as: 'exemplars', class: Google::Apis::NetworkconnectivityV1alpha1::Exemplar, decorator: Google::Apis::NetworkconnectivityV1alpha1::Exemplar::Representation
      
          property :explicit_buckets, as: 'explicitBuckets', class: Google::Apis::NetworkconnectivityV1alpha1::ExplicitBuckets, decorator: Google::Apis::NetworkconnectivityV1alpha1::ExplicitBuckets::Representation
      
          property :exponential_buckets, as: 'exponentialBuckets', class: Google::Apis::NetworkconnectivityV1alpha1::ExponentialBuckets, decorator: Google::Apis::NetworkconnectivityV1alpha1::ExponentialBuckets::Representation
      
          property :linear_buckets, as: 'linearBuckets', class: Google::Apis::NetworkconnectivityV1alpha1::LinearBuckets, decorator: Google::Apis::NetworkconnectivityV1alpha1::LinearBuckets::Representation
      
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
          collection :operations, as: 'operations', class: Google::Apis::NetworkconnectivityV1alpha1::GoogleLongrunningOperation, decorator: Google::Apis::NetworkconnectivityV1alpha1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::NetworkconnectivityV1alpha1::GoogleRpcStatus, decorator: Google::Apis::NetworkconnectivityV1alpha1::GoogleRpcStatus::Representation
      
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
      
      class Hub
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :spokes, as: 'spokes'
          property :state, as: 'state'
          property :unique_id, as: 'uniqueId'
          property :update_time, as: 'updateTime'
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
      
      class ListHubsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hubs, as: 'hubs', class: Google::Apis::NetworkconnectivityV1alpha1::Hub, decorator: Google::Apis::NetworkconnectivityV1alpha1::Hub::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::NetworkconnectivityV1alpha1::Location, decorator: Google::Apis::NetworkconnectivityV1alpha1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListSpokesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :spokes, as: 'spokes', class: Google::Apis::NetworkconnectivityV1alpha1::Spoke, decorator: Google::Apis::NetworkconnectivityV1alpha1::Spoke::Representation
      
          collection :unreachable, as: 'unreachable'
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
          property :http_request, as: 'httpRequest', class: Google::Apis::NetworkconnectivityV1alpha1::HttpRequest, decorator: Google::Apis::NetworkconnectivityV1alpha1::HttpRequest::Representation
      
          property :insert_id, as: 'insertId'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :operation, as: 'operation', class: Google::Apis::NetworkconnectivityV1alpha1::LogEntryOperation, decorator: Google::Apis::NetworkconnectivityV1alpha1::LogEntryOperation::Representation
      
          hash :proto_payload, as: 'protoPayload'
          property :severity, as: 'severity'
          property :source_location, as: 'sourceLocation', class: Google::Apis::NetworkconnectivityV1alpha1::LogEntrySourceLocation, decorator: Google::Apis::NetworkconnectivityV1alpha1::LogEntrySourceLocation::Representation
      
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
          property :distribution_value, as: 'distributionValue', class: Google::Apis::NetworkconnectivityV1alpha1::Distribution, decorator: Google::Apis::NetworkconnectivityV1alpha1::Distribution::Representation
      
          property :double_value, as: 'doubleValue'
          property :end_time, as: 'endTime'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          hash :labels, as: 'labels'
          property :money_value, as: 'moneyValue', class: Google::Apis::NetworkconnectivityV1alpha1::Money, decorator: Google::Apis::NetworkconnectivityV1alpha1::Money::Representation
      
          property :start_time, as: 'startTime'
          property :string_value, as: 'stringValue'
        end
      end
      
      class MetricValueSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
          collection :metric_values, as: 'metricValues', class: Google::Apis::NetworkconnectivityV1alpha1::MetricValue, decorator: Google::Apis::NetworkconnectivityV1alpha1::MetricValue::Representation
      
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
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_id, as: 'consumerId'
          property :end_time, as: 'endTime'
          collection :extensions, as: 'extensions'
          property :importance, as: 'importance'
          hash :labels, as: 'labels'
          collection :log_entries, as: 'logEntries', class: Google::Apis::NetworkconnectivityV1alpha1::LogEntry, decorator: Google::Apis::NetworkconnectivityV1alpha1::LogEntry::Representation
      
          collection :metric_value_sets, as: 'metricValueSets', class: Google::Apis::NetworkconnectivityV1alpha1::MetricValueSet, decorator: Google::Apis::NetworkconnectivityV1alpha1::MetricValueSet::Representation
      
          property :operation_id, as: 'operationId'
          property :operation_name, as: 'operationName'
          property :quota_properties, as: 'quotaProperties', class: Google::Apis::NetworkconnectivityV1alpha1::QuotaProperties, decorator: Google::Apis::NetworkconnectivityV1alpha1::QuotaProperties::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::NetworkconnectivityV1alpha1::ResourceInfo, decorator: Google::Apis::NetworkconnectivityV1alpha1::ResourceInfo::Representation
      
          property :start_time, as: 'startTime'
          collection :trace_spans, as: 'traceSpans', class: Google::Apis::NetworkconnectivityV1alpha1::TraceSpan, decorator: Google::Apis::NetworkconnectivityV1alpha1::TraceSpan::Representation
      
          hash :user_labels, as: 'userLabels'
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
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::NetworkconnectivityV1alpha1::AuditConfig, decorator: Google::Apis::NetworkconnectivityV1alpha1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::NetworkconnectivityV1alpha1::Binding, decorator: Google::Apis::NetworkconnectivityV1alpha1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
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
          collection :operations, as: 'operations', class: Google::Apis::NetworkconnectivityV1alpha1::Operation, decorator: Google::Apis::NetworkconnectivityV1alpha1::Operation::Representation
      
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
      
      class RouterApplianceInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :network_interface, as: 'networkInterface'
          property :virtual_machine, as: 'virtualMachine'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::NetworkconnectivityV1alpha1::Policy, decorator: Google::Apis::NetworkconnectivityV1alpha1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Spoke
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :hub, as: 'hub'
          hash :labels, as: 'labels'
          collection :linked_interconnect_attachments, as: 'linkedInterconnectAttachments'
          collection :linked_router_appliance_instances, as: 'linkedRouterApplianceInstances', class: Google::Apis::NetworkconnectivityV1alpha1::RouterApplianceInstance, decorator: Google::Apis::NetworkconnectivityV1alpha1::RouterApplianceInstance::Representation
      
          collection :linked_vpn_tunnels, as: 'linkedVpnTunnels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :unique_id, as: 'uniqueId'
          property :update_time, as: 'updateTime'
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
      
      class TraceSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::NetworkconnectivityV1alpha1::Attributes, decorator: Google::Apis::NetworkconnectivityV1alpha1::Attributes::Representation
      
          property :child_span_count, as: 'childSpanCount'
          property :display_name, as: 'displayName', class: Google::Apis::NetworkconnectivityV1alpha1::TruncatableString, decorator: Google::Apis::NetworkconnectivityV1alpha1::TruncatableString::Representation
      
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :parent_span_id, as: 'parentSpanId'
          property :same_process_as_parent_span, as: 'sameProcessAsParentSpan'
          property :span_id, as: 'spanId'
          property :span_kind, as: 'spanKind'
          property :start_time, as: 'startTime'
          property :status, as: 'status', class: Google::Apis::NetworkconnectivityV1alpha1::GoogleRpcStatus, decorator: Google::Apis::NetworkconnectivityV1alpha1::GoogleRpcStatus::Representation
      
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
