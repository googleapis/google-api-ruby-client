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
    module MonitoringV3
      
      class Aggregation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlertPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailabilityCriteria
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BasicAuthentication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BasicSli
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BucketOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudEndpoints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterIstio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CollectdPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CollectdPayloadError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CollectdValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CollectdValueError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateCollectdTimeSeriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateCollectdTimeSeriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateTimeSeriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateTimeSeriesSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Custom
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Distribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DistributionCut
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Documentation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DroppedLabels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Exemplar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Explicit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Exponential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetNotificationChannelVerificationCodeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetNotificationChannelVerificationCodeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMonitoringV3Range
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Group
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InternalChecker
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatencyCriteria
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Linear
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAlertPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGroupMembersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMetricDescriptorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMonitoredResourceDescriptorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNotificationChannelDescriptorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNotificationChannelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServiceLevelObjectivesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTimeSeriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUptimeCheckConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUptimeCheckIpsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MeshIstio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricAbsence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricDescriptorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricThreshold
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResourceDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResourceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoringQueryLanguageCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MutationRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationChannel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationChannelDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Option
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerformanceThreshold
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Point
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PointData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryTimeSeriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryTimeSeriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Range
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestBasedSli
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendNotificationChannelVerificationCodeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceLevelIndicator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceLevelObjective
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpanContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TcpCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Telemetry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSeriesData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSeriesDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSeriesRatio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Trigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypedValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UptimeCheckConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UptimeCheckIp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValueDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyNotificationChannelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsBasedSli
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Aggregation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alignment_period, as: 'alignmentPeriod'
          property :cross_series_reducer, as: 'crossSeriesReducer'
          collection :group_by_fields, as: 'groupByFields'
          property :per_series_aligner, as: 'perSeriesAligner'
        end
      end
      
      class AlertPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :combiner, as: 'combiner'
          collection :conditions, as: 'conditions', class: Google::Apis::MonitoringV3::Condition, decorator: Google::Apis::MonitoringV3::Condition::Representation
      
          property :creation_record, as: 'creationRecord', class: Google::Apis::MonitoringV3::MutationRecord, decorator: Google::Apis::MonitoringV3::MutationRecord::Representation
      
          property :display_name, as: 'displayName'
          property :documentation, as: 'documentation', class: Google::Apis::MonitoringV3::Documentation, decorator: Google::Apis::MonitoringV3::Documentation::Representation
      
          property :enabled, as: 'enabled'
          property :mutation_record, as: 'mutationRecord', class: Google::Apis::MonitoringV3::MutationRecord, decorator: Google::Apis::MonitoringV3::MutationRecord::Representation
      
          property :name, as: 'name'
          collection :notification_channels, as: 'notificationChannels'
          hash :user_labels, as: 'userLabels'
          property :validity, as: 'validity', class: Google::Apis::MonitoringV3::Status, decorator: Google::Apis::MonitoringV3::Status::Representation
      
        end
      end
      
      class AppEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :module_id, as: 'moduleId'
        end
      end
      
      class AvailabilityCriteria
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class BasicAuthentication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password'
          property :username, as: 'username'
        end
      end
      
      class BasicSli
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability, as: 'availability', class: Google::Apis::MonitoringV3::AvailabilityCriteria, decorator: Google::Apis::MonitoringV3::AvailabilityCriteria::Representation
      
          property :latency, as: 'latency', class: Google::Apis::MonitoringV3::LatencyCriteria, decorator: Google::Apis::MonitoringV3::LatencyCriteria::Representation
      
          collection :location, as: 'location'
          collection :method_prop, as: 'method'
          collection :version, as: 'version'
        end
      end
      
      class BucketOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explicit_buckets, as: 'explicitBuckets', class: Google::Apis::MonitoringV3::Explicit, decorator: Google::Apis::MonitoringV3::Explicit::Representation
      
          property :exponential_buckets, as: 'exponentialBuckets', class: Google::Apis::MonitoringV3::Exponential, decorator: Google::Apis::MonitoringV3::Exponential::Representation
      
          property :linear_buckets, as: 'linearBuckets', class: Google::Apis::MonitoringV3::Linear, decorator: Google::Apis::MonitoringV3::Linear::Representation
      
        end
      end
      
      class CloudEndpoints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class ClusterIstio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_name, as: 'clusterName'
          property :location, as: 'location'
          property :service_name, as: 'serviceName'
          property :service_namespace, as: 'serviceNamespace'
        end
      end
      
      class CollectdPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          hash :metadata, as: 'metadata', class: Google::Apis::MonitoringV3::TypedValue, decorator: Google::Apis::MonitoringV3::TypedValue::Representation
      
          property :plugin, as: 'plugin'
          property :plugin_instance, as: 'pluginInstance'
          property :start_time, as: 'startTime'
          property :type, as: 'type'
          property :type_instance, as: 'typeInstance'
          collection :values, as: 'values', class: Google::Apis::MonitoringV3::CollectdValue, decorator: Google::Apis::MonitoringV3::CollectdValue::Representation
      
        end
      end
      
      class CollectdPayloadError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::MonitoringV3::Status, decorator: Google::Apis::MonitoringV3::Status::Representation
      
          property :index, as: 'index'
          collection :value_errors, as: 'valueErrors', class: Google::Apis::MonitoringV3::CollectdValueError, decorator: Google::Apis::MonitoringV3::CollectdValueError::Representation
      
        end
      end
      
      class CollectdValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source_name, as: 'dataSourceName'
          property :data_source_type, as: 'dataSourceType'
          property :value, as: 'value', class: Google::Apis::MonitoringV3::TypedValue, decorator: Google::Apis::MonitoringV3::TypedValue::Representation
      
        end
      end
      
      class CollectdValueError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::MonitoringV3::Status, decorator: Google::Apis::MonitoringV3::Status::Representation
      
          property :index, as: 'index'
        end
      end
      
      class Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition_absent, as: 'conditionAbsent', class: Google::Apis::MonitoringV3::MetricAbsence, decorator: Google::Apis::MonitoringV3::MetricAbsence::Representation
      
          property :condition_monitoring_query_language, as: 'conditionMonitoringQueryLanguage', class: Google::Apis::MonitoringV3::MonitoringQueryLanguageCondition, decorator: Google::Apis::MonitoringV3::MonitoringQueryLanguageCondition::Representation
      
          property :condition_threshold, as: 'conditionThreshold', class: Google::Apis::MonitoringV3::MetricThreshold, decorator: Google::Apis::MonitoringV3::MetricThreshold::Representation
      
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class ContentMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :matcher, as: 'matcher'
        end
      end
      
      class CreateCollectdTimeSeriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collectd_payloads, as: 'collectdPayloads', class: Google::Apis::MonitoringV3::CollectdPayload, decorator: Google::Apis::MonitoringV3::CollectdPayload::Representation
      
          property :collectd_version, as: 'collectdVersion'
          property :resource, as: 'resource', class: Google::Apis::MonitoringV3::MonitoredResource, decorator: Google::Apis::MonitoringV3::MonitoredResource::Representation
      
        end
      end
      
      class CreateCollectdTimeSeriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :payload_errors, as: 'payloadErrors', class: Google::Apis::MonitoringV3::CollectdPayloadError, decorator: Google::Apis::MonitoringV3::CollectdPayloadError::Representation
      
          property :summary, as: 'summary', class: Google::Apis::MonitoringV3::CreateTimeSeriesSummary, decorator: Google::Apis::MonitoringV3::CreateTimeSeriesSummary::Representation
      
        end
      end
      
      class CreateTimeSeriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :time_series, as: 'timeSeries', class: Google::Apis::MonitoringV3::TimeSeries, decorator: Google::Apis::MonitoringV3::TimeSeries::Representation
      
        end
      end
      
      class CreateTimeSeriesSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::MonitoringV3::Error, decorator: Google::Apis::MonitoringV3::Error::Representation
      
          property :success_point_count, as: 'successPointCount'
          property :total_point_count, as: 'totalPointCount'
        end
      end
      
      class Custom
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Distribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bucket_counts, as: 'bucketCounts'
          property :bucket_options, as: 'bucketOptions', class: Google::Apis::MonitoringV3::BucketOptions, decorator: Google::Apis::MonitoringV3::BucketOptions::Representation
      
          property :count, :numeric_string => true, as: 'count'
          collection :exemplars, as: 'exemplars', class: Google::Apis::MonitoringV3::Exemplar, decorator: Google::Apis::MonitoringV3::Exemplar::Representation
      
          property :mean, as: 'mean'
          property :range, as: 'range', class: Google::Apis::MonitoringV3::Range, decorator: Google::Apis::MonitoringV3::Range::Representation
      
          property :sum_of_squared_deviation, as: 'sumOfSquaredDeviation'
        end
      end
      
      class DistributionCut
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distribution_filter, as: 'distributionFilter'
          property :range, as: 'range', class: Google::Apis::MonitoringV3::GoogleMonitoringV3Range, decorator: Google::Apis::MonitoringV3::GoogleMonitoringV3Range::Representation
      
        end
      end
      
      class Documentation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class DroppedLabels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :label, as: 'label'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Error
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :point_count, as: 'pointCount'
          property :status, as: 'status', class: Google::Apis::MonitoringV3::Status, decorator: Google::Apis::MonitoringV3::Status::Representation
      
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
      
      class Explicit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bounds, as: 'bounds'
        end
      end
      
      class Exponential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :growth_factor, as: 'growthFactor'
          property :num_finite_buckets, as: 'numFiniteBuckets'
          property :scale, as: 'scale'
        end
      end
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cardinality, as: 'cardinality'
          property :default_value, as: 'defaultValue'
          property :json_name, as: 'jsonName'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :number, as: 'number'
          property :oneof_index, as: 'oneofIndex'
          collection :options, as: 'options', class: Google::Apis::MonitoringV3::Option, decorator: Google::Apis::MonitoringV3::Option::Representation
      
          property :packed, as: 'packed'
          property :type_url, as: 'typeUrl'
        end
      end
      
      class GetNotificationChannelVerificationCodeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
        end
      end
      
      class GetNotificationChannelVerificationCodeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :expire_time, as: 'expireTime'
        end
      end
      
      class GoogleMonitoringV3Range
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
      
      class Group
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :filter, as: 'filter'
          property :is_cluster, as: 'isCluster'
          property :name, as: 'name'
          property :parent_name, as: 'parentName'
        end
      end
      
      class HttpCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_info, as: 'authInfo', class: Google::Apis::MonitoringV3::BasicAuthentication, decorator: Google::Apis::MonitoringV3::BasicAuthentication::Representation
      
          property :body, :base64 => true, as: 'body'
          property :content_type, as: 'contentType'
          hash :headers, as: 'headers'
          property :mask_headers, as: 'maskHeaders'
          property :path, as: 'path'
          property :port, as: 'port'
          property :request_method, as: 'requestMethod'
          property :use_ssl, as: 'useSsl'
          property :validate_ssl, as: 'validateSsl'
        end
      end
      
      class InternalChecker
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :gcp_zone, as: 'gcpZone'
          property :name, as: 'name'
          property :network, as: 'network'
          property :peer_project_id, as: 'peerProjectId'
          property :state, as: 'state'
        end
      end
      
      class LabelDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :key, as: 'key'
          property :value_type, as: 'valueType'
        end
      end
      
      class LabelValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :string_value, as: 'stringValue'
        end
      end
      
      class LatencyCriteria
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :threshold, as: 'threshold'
        end
      end
      
      class Linear
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_finite_buckets, as: 'numFiniteBuckets'
          property :offset, as: 'offset'
          property :width, as: 'width'
        end
      end
      
      class ListAlertPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alert_policies, as: 'alertPolicies', class: Google::Apis::MonitoringV3::AlertPolicy, decorator: Google::Apis::MonitoringV3::AlertPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListGroupMembersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :members, as: 'members', class: Google::Apis::MonitoringV3::MonitoredResource, decorator: Google::Apis::MonitoringV3::MonitoredResource::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group, as: 'group', class: Google::Apis::MonitoringV3::Group, decorator: Google::Apis::MonitoringV3::Group::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMetricDescriptorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metric_descriptors, as: 'metricDescriptors', class: Google::Apis::MonitoringV3::MetricDescriptor, decorator: Google::Apis::MonitoringV3::MetricDescriptor::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMonitoredResourceDescriptorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resource_descriptors, as: 'resourceDescriptors', class: Google::Apis::MonitoringV3::MonitoredResourceDescriptor, decorator: Google::Apis::MonitoringV3::MonitoredResourceDescriptor::Representation
      
        end
      end
      
      class ListNotificationChannelDescriptorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channel_descriptors, as: 'channelDescriptors', class: Google::Apis::MonitoringV3::NotificationChannelDescriptor, decorator: Google::Apis::MonitoringV3::NotificationChannelDescriptor::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListNotificationChannelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notification_channels, as: 'notificationChannels', class: Google::Apis::MonitoringV3::NotificationChannel, decorator: Google::Apis::MonitoringV3::NotificationChannel::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListServiceLevelObjectivesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :service_level_objectives, as: 'serviceLevelObjectives', class: Google::Apis::MonitoringV3::ServiceLevelObjective, decorator: Google::Apis::MonitoringV3::ServiceLevelObjective::Representation
      
        end
      end
      
      class ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::MonitoringV3::Service, decorator: Google::Apis::MonitoringV3::Service::Representation
      
        end
      end
      
      class ListTimeSeriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :execution_errors, as: 'executionErrors', class: Google::Apis::MonitoringV3::Status, decorator: Google::Apis::MonitoringV3::Status::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :time_series, as: 'timeSeries', class: Google::Apis::MonitoringV3::TimeSeries, decorator: Google::Apis::MonitoringV3::TimeSeries::Representation
      
          property :unit, as: 'unit'
        end
      end
      
      class ListUptimeCheckConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
          collection :uptime_check_configs, as: 'uptimeCheckConfigs', class: Google::Apis::MonitoringV3::UptimeCheckConfig, decorator: Google::Apis::MonitoringV3::UptimeCheckConfig::Representation
      
        end
      end
      
      class ListUptimeCheckIpsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :uptime_check_ips, as: 'uptimeCheckIps', class: Google::Apis::MonitoringV3::UptimeCheckIp, decorator: Google::Apis::MonitoringV3::UptimeCheckIp::Representation
      
        end
      end
      
      class MeshIstio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mesh_uid, as: 'meshUid'
          property :service_name, as: 'serviceName'
          property :service_namespace, as: 'serviceNamespace'
        end
      end
      
      class Metric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :type, as: 'type'
        end
      end
      
      class MetricAbsence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aggregations, as: 'aggregations', class: Google::Apis::MonitoringV3::Aggregation, decorator: Google::Apis::MonitoringV3::Aggregation::Representation
      
          property :duration, as: 'duration'
          property :filter, as: 'filter'
          property :trigger, as: 'trigger', class: Google::Apis::MonitoringV3::Trigger, decorator: Google::Apis::MonitoringV3::Trigger::Representation
      
        end
      end
      
      class MetricDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :labels, as: 'labels', class: Google::Apis::MonitoringV3::LabelDescriptor, decorator: Google::Apis::MonitoringV3::LabelDescriptor::Representation
      
          property :launch_stage, as: 'launchStage'
          property :metadata, as: 'metadata', class: Google::Apis::MonitoringV3::MetricDescriptorMetadata, decorator: Google::Apis::MonitoringV3::MetricDescriptorMetadata::Representation
      
          property :metric_kind, as: 'metricKind'
          collection :monitored_resource_types, as: 'monitoredResourceTypes'
          property :name, as: 'name'
          property :type, as: 'type'
          property :unit, as: 'unit'
          property :value_type, as: 'valueType'
        end
      end
      
      class MetricDescriptorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingest_delay, as: 'ingestDelay'
          property :launch_stage, as: 'launchStage'
          property :sample_period, as: 'samplePeriod'
        end
      end
      
      class MetricRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :range, as: 'range', class: Google::Apis::MonitoringV3::GoogleMonitoringV3Range, decorator: Google::Apis::MonitoringV3::GoogleMonitoringV3Range::Representation
      
          property :time_series, as: 'timeSeries'
        end
      end
      
      class MetricThreshold
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aggregations, as: 'aggregations', class: Google::Apis::MonitoringV3::Aggregation, decorator: Google::Apis::MonitoringV3::Aggregation::Representation
      
          property :comparison, as: 'comparison'
          collection :denominator_aggregations, as: 'denominatorAggregations', class: Google::Apis::MonitoringV3::Aggregation, decorator: Google::Apis::MonitoringV3::Aggregation::Representation
      
          property :denominator_filter, as: 'denominatorFilter'
          property :duration, as: 'duration'
          property :filter, as: 'filter'
          property :threshold_value, as: 'thresholdValue'
          property :trigger, as: 'trigger', class: Google::Apis::MonitoringV3::Trigger, decorator: Google::Apis::MonitoringV3::Trigger::Representation
      
        end
      end
      
      class MonitoredResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :type, as: 'type'
        end
      end
      
      class MonitoredResourceDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :labels, as: 'labels', class: Google::Apis::MonitoringV3::LabelDescriptor, decorator: Google::Apis::MonitoringV3::LabelDescriptor::Representation
      
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class MonitoredResourceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :system_labels, as: 'systemLabels'
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class MonitoringQueryLanguageCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :query, as: 'query'
          property :trigger, as: 'trigger', class: Google::Apis::MonitoringV3::Trigger, decorator: Google::Apis::MonitoringV3::Trigger::Representation
      
        end
      end
      
      class MutationRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mutate_time, as: 'mutateTime'
          property :mutated_by, as: 'mutatedBy'
        end
      end
      
      class NotificationChannel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :enabled, as: 'enabled'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :type, as: 'type'
          hash :user_labels, as: 'userLabels'
          property :verification_status, as: 'verificationStatus'
        end
      end
      
      class NotificationChannelDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :labels, as: 'labels', class: Google::Apis::MonitoringV3::LabelDescriptor, decorator: Google::Apis::MonitoringV3::LabelDescriptor::Representation
      
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class Option
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :value, as: 'value'
        end
      end
      
      class PerformanceThreshold
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_sli_performance, as: 'basicSliPerformance', class: Google::Apis::MonitoringV3::BasicSli, decorator: Google::Apis::MonitoringV3::BasicSli::Representation
      
          property :performance, as: 'performance', class: Google::Apis::MonitoringV3::RequestBasedSli, decorator: Google::Apis::MonitoringV3::RequestBasedSli::Representation
      
          property :threshold, as: 'threshold'
        end
      end
      
      class Point
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval', class: Google::Apis::MonitoringV3::TimeInterval, decorator: Google::Apis::MonitoringV3::TimeInterval::Representation
      
          property :value, as: 'value', class: Google::Apis::MonitoringV3::TypedValue, decorator: Google::Apis::MonitoringV3::TypedValue::Representation
      
        end
      end
      
      class PointData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_interval, as: 'timeInterval', class: Google::Apis::MonitoringV3::TimeInterval, decorator: Google::Apis::MonitoringV3::TimeInterval::Representation
      
          collection :values, as: 'values', class: Google::Apis::MonitoringV3::TypedValue, decorator: Google::Apis::MonitoringV3::TypedValue::Representation
      
        end
      end
      
      class QueryTimeSeriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :query, as: 'query'
        end
      end
      
      class QueryTimeSeriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::MonitoringV3::Status, decorator: Google::Apis::MonitoringV3::Status::Representation
      
          collection :time_series_data, as: 'timeSeriesData', class: Google::Apis::MonitoringV3::TimeSeriesData, decorator: Google::Apis::MonitoringV3::TimeSeriesData::Representation
      
          property :time_series_descriptor, as: 'timeSeriesDescriptor', class: Google::Apis::MonitoringV3::TimeSeriesDescriptor, decorator: Google::Apis::MonitoringV3::TimeSeriesDescriptor::Representation
      
        end
      end
      
      class Range
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
      
      class RequestBasedSli
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distribution_cut, as: 'distributionCut', class: Google::Apis::MonitoringV3::DistributionCut, decorator: Google::Apis::MonitoringV3::DistributionCut::Representation
      
          property :good_total_ratio, as: 'goodTotalRatio', class: Google::Apis::MonitoringV3::TimeSeriesRatio, decorator: Google::Apis::MonitoringV3::TimeSeriesRatio::Representation
      
        end
      end
      
      class ResourceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group_id, as: 'groupId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class SendNotificationChannelVerificationCodeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_engine, as: 'appEngine', class: Google::Apis::MonitoringV3::AppEngine, decorator: Google::Apis::MonitoringV3::AppEngine::Representation
      
          property :cloud_endpoints, as: 'cloudEndpoints', class: Google::Apis::MonitoringV3::CloudEndpoints, decorator: Google::Apis::MonitoringV3::CloudEndpoints::Representation
      
          property :cluster_istio, as: 'clusterIstio', class: Google::Apis::MonitoringV3::ClusterIstio, decorator: Google::Apis::MonitoringV3::ClusterIstio::Representation
      
          property :custom, as: 'custom', class: Google::Apis::MonitoringV3::Custom, decorator: Google::Apis::MonitoringV3::Custom::Representation
      
          property :display_name, as: 'displayName'
          property :mesh_istio, as: 'meshIstio', class: Google::Apis::MonitoringV3::MeshIstio, decorator: Google::Apis::MonitoringV3::MeshIstio::Representation
      
          property :name, as: 'name'
          property :telemetry, as: 'telemetry', class: Google::Apis::MonitoringV3::Telemetry, decorator: Google::Apis::MonitoringV3::Telemetry::Representation
      
        end
      end
      
      class ServiceLevelIndicator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_sli, as: 'basicSli', class: Google::Apis::MonitoringV3::BasicSli, decorator: Google::Apis::MonitoringV3::BasicSli::Representation
      
          property :request_based, as: 'requestBased', class: Google::Apis::MonitoringV3::RequestBasedSli, decorator: Google::Apis::MonitoringV3::RequestBasedSli::Representation
      
          property :windows_based, as: 'windowsBased', class: Google::Apis::MonitoringV3::WindowsBasedSli, decorator: Google::Apis::MonitoringV3::WindowsBasedSli::Representation
      
        end
      end
      
      class ServiceLevelObjective
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calendar_period, as: 'calendarPeriod'
          property :display_name, as: 'displayName'
          property :goal, as: 'goal'
          property :name, as: 'name'
          property :rolling_period, as: 'rollingPeriod'
          property :service_level_indicator, as: 'serviceLevelIndicator', class: Google::Apis::MonitoringV3::ServiceLevelIndicator, decorator: Google::Apis::MonitoringV3::ServiceLevelIndicator::Representation
      
        end
      end
      
      class SourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_name, as: 'fileName'
        end
      end
      
      class SpanContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :span_name, as: 'spanName'
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
      
      class TcpCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :port, as: 'port'
        end
      end
      
      class Telemetry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class TimeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class TimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::MonitoringV3::MonitoredResourceMetadata, decorator: Google::Apis::MonitoringV3::MonitoredResourceMetadata::Representation
      
          property :metric, as: 'metric', class: Google::Apis::MonitoringV3::Metric, decorator: Google::Apis::MonitoringV3::Metric::Representation
      
          property :metric_kind, as: 'metricKind'
          collection :points, as: 'points', class: Google::Apis::MonitoringV3::Point, decorator: Google::Apis::MonitoringV3::Point::Representation
      
          property :resource, as: 'resource', class: Google::Apis::MonitoringV3::MonitoredResource, decorator: Google::Apis::MonitoringV3::MonitoredResource::Representation
      
          property :unit, as: 'unit'
          property :value_type, as: 'valueType'
        end
      end
      
      class TimeSeriesData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :label_values, as: 'labelValues', class: Google::Apis::MonitoringV3::LabelValue, decorator: Google::Apis::MonitoringV3::LabelValue::Representation
      
          collection :point_data, as: 'pointData', class: Google::Apis::MonitoringV3::PointData, decorator: Google::Apis::MonitoringV3::PointData::Representation
      
        end
      end
      
      class TimeSeriesDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :label_descriptors, as: 'labelDescriptors', class: Google::Apis::MonitoringV3::LabelDescriptor, decorator: Google::Apis::MonitoringV3::LabelDescriptor::Representation
      
          collection :point_descriptors, as: 'pointDescriptors', class: Google::Apis::MonitoringV3::ValueDescriptor, decorator: Google::Apis::MonitoringV3::ValueDescriptor::Representation
      
        end
      end
      
      class TimeSeriesRatio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bad_service_filter, as: 'badServiceFilter'
          property :good_service_filter, as: 'goodServiceFilter'
          property :total_service_filter, as: 'totalServiceFilter'
        end
      end
      
      class Trigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :percent, as: 'percent'
        end
      end
      
      class Type
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::MonitoringV3::Field, decorator: Google::Apis::MonitoringV3::Field::Representation
      
          property :name, as: 'name'
          collection :oneofs, as: 'oneofs'
          collection :options, as: 'options', class: Google::Apis::MonitoringV3::Option, decorator: Google::Apis::MonitoringV3::Option::Representation
      
          property :source_context, as: 'sourceContext', class: Google::Apis::MonitoringV3::SourceContext, decorator: Google::Apis::MonitoringV3::SourceContext::Representation
      
          property :syntax, as: 'syntax'
        end
      end
      
      class TypedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :distribution_value, as: 'distributionValue', class: Google::Apis::MonitoringV3::Distribution, decorator: Google::Apis::MonitoringV3::Distribution::Representation
      
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :string_value, as: 'stringValue'
        end
      end
      
      class UptimeCheckConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content_matchers, as: 'contentMatchers', class: Google::Apis::MonitoringV3::ContentMatcher, decorator: Google::Apis::MonitoringV3::ContentMatcher::Representation
      
          property :display_name, as: 'displayName'
          property :http_check, as: 'httpCheck', class: Google::Apis::MonitoringV3::HttpCheck, decorator: Google::Apis::MonitoringV3::HttpCheck::Representation
      
          collection :internal_checkers, as: 'internalCheckers', class: Google::Apis::MonitoringV3::InternalChecker, decorator: Google::Apis::MonitoringV3::InternalChecker::Representation
      
          property :is_internal, as: 'isInternal'
          property :monitored_resource, as: 'monitoredResource', class: Google::Apis::MonitoringV3::MonitoredResource, decorator: Google::Apis::MonitoringV3::MonitoredResource::Representation
      
          property :name, as: 'name'
          property :period, as: 'period'
          property :resource_group, as: 'resourceGroup', class: Google::Apis::MonitoringV3::ResourceGroup, decorator: Google::Apis::MonitoringV3::ResourceGroup::Representation
      
          collection :selected_regions, as: 'selectedRegions'
          property :tcp_check, as: 'tcpCheck', class: Google::Apis::MonitoringV3::TcpCheck, decorator: Google::Apis::MonitoringV3::TcpCheck::Representation
      
          property :timeout, as: 'timeout'
        end
      end
      
      class UptimeCheckIp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :location, as: 'location'
          property :region, as: 'region'
        end
      end
      
      class ValueDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :metric_kind, as: 'metricKind'
          property :unit, as: 'unit'
          property :value_type, as: 'valueType'
        end
      end
      
      class VerifyNotificationChannelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class WindowsBasedSli
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :good_bad_metric_filter, as: 'goodBadMetricFilter'
          property :good_total_ratio_threshold, as: 'goodTotalRatioThreshold', class: Google::Apis::MonitoringV3::PerformanceThreshold, decorator: Google::Apis::MonitoringV3::PerformanceThreshold::Representation
      
          property :metric_mean_in_range, as: 'metricMeanInRange', class: Google::Apis::MonitoringV3::MetricRange, decorator: Google::Apis::MonitoringV3::MetricRange::Representation
      
          property :metric_sum_in_range, as: 'metricSumInRange', class: Google::Apis::MonitoringV3::MetricRange, decorator: Google::Apis::MonitoringV3::MetricRange::Representation
      
          property :window_period, as: 'windowPeriod'
        end
      end
    end
  end
end
