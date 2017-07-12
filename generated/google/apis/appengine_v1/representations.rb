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
    module AppengineV1
      
      class ApiEndpointHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutomaticScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZipInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Library
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContainerInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndpointsApiService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiConfigHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StaticFilesHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BasicScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CpuUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityAwareProxy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManualScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadataV1
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Network
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Application
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivenessCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadinessCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DebugInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadataV1Beta5
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepairApplicationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScriptHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadataExperimental
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrafficSplit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadataV1Beta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadataV1Alpha
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlDispatchRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiEndpointHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :script_path, as: 'scriptPath'
        end
      end
      
      class AutomaticScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_utilization, as: 'networkUtilization', class: Google::Apis::AppengineV1::NetworkUtilization, decorator: Google::Apis::AppengineV1::NetworkUtilization::Representation
      
          property :max_concurrent_requests, as: 'maxConcurrentRequests'
          property :cool_down_period, as: 'coolDownPeriod'
          property :max_pending_latency, as: 'maxPendingLatency'
          property :cpu_utilization, as: 'cpuUtilization', class: Google::Apis::AppengineV1::CpuUtilization, decorator: Google::Apis::AppengineV1::CpuUtilization::Representation
      
          property :disk_utilization, as: 'diskUtilization', class: Google::Apis::AppengineV1::DiskUtilization, decorator: Google::Apis::AppengineV1::DiskUtilization::Representation
      
          property :min_pending_latency, as: 'minPendingLatency'
          property :max_idle_instances, as: 'maxIdleInstances'
          property :request_utilization, as: 'requestUtilization', class: Google::Apis::AppengineV1::RequestUtilization, decorator: Google::Apis::AppengineV1::RequestUtilization::Representation
      
          property :min_idle_instances, as: 'minIdleInstances'
          property :max_total_instances, as: 'maxTotalInstances'
          property :min_total_instances, as: 'minTotalInstances'
        end
      end
      
      class ZipInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :files_count, as: 'filesCount'
          property :source_url, as: 'sourceUrl'
        end
      end
      
      class Library
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :version, as: 'version'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :locations, as: 'locations', class: Google::Apis::AppengineV1::Location, decorator: Google::Apis::AppengineV1::Location::Representation
      
        end
      end
      
      class ContainerInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image'
        end
      end
      
      class RequestUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_request_count_per_second, as: 'targetRequestCountPerSecond'
          property :target_concurrent_requests, as: 'targetConcurrentRequests'
        end
      end
      
      class UrlMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :security_level, as: 'securityLevel'
          property :auth_fail_action, as: 'authFailAction'
          property :script, as: 'script', class: Google::Apis::AppengineV1::ScriptHandler, decorator: Google::Apis::AppengineV1::ScriptHandler::Representation
      
          property :url_regex, as: 'urlRegex'
          property :login, as: 'login'
          property :api_endpoint, as: 'apiEndpoint', class: Google::Apis::AppengineV1::ApiEndpointHandler, decorator: Google::Apis::AppengineV1::ApiEndpointHandler::Representation
      
          property :static_files, as: 'staticFiles', class: Google::Apis::AppengineV1::StaticFilesHandler, decorator: Google::Apis::AppengineV1::StaticFilesHandler::Representation
      
          property :redirect_http_response_code, as: 'redirectHttpResponseCode'
        end
      end
      
      class EndpointsApiService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_id, as: 'configId'
          property :name, as: 'name'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :response, as: 'response'
          property :name, as: 'name'
          property :error, as: 'error', class: Google::Apis::AppengineV1::Status, decorator: Google::Apis::AppengineV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :done, as: 'done'
        end
      end
      
      class ApiConfigHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
          property :security_level, as: 'securityLevel'
          property :auth_fail_action, as: 'authFailAction'
          property :script, as: 'script'
          property :login, as: 'login'
        end
      end
      
      class StaticFilesHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_readable, as: 'applicationReadable'
          hash :http_headers, as: 'httpHeaders'
          property :upload_path_regex, as: 'uploadPathRegex'
          property :path, as: 'path'
          property :mime_type, as: 'mimeType'
          property :require_matching_file, as: 'requireMatchingFile'
          property :expiration, as: 'expiration'
        end
      end
      
      class BasicScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_instances, as: 'maxInstances'
          property :idle_timeout, as: 'idleTimeout'
        end
      end
      
      class DiskUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_read_ops_per_second, as: 'targetReadOpsPerSecond'
          property :target_read_bytes_per_second, as: 'targetReadBytesPerSecond'
          property :target_write_ops_per_second, as: 'targetWriteOpsPerSecond'
          property :target_write_bytes_per_second, as: 'targetWriteBytesPerSecond'
        end
      end
      
      class CpuUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_window_length, as: 'aggregationWindowLength'
          property :target_utilization, as: 'targetUtilization'
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
      
      class IdentityAwareProxy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :oauth2_client_secret, as: 'oauth2ClientSecret'
          property :oauth2_client_id, as: 'oauth2ClientId'
          property :oauth2_client_secret_sha256, as: 'oauth2ClientSecretSha256'
        end
      end
      
      class ManualScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instances, as: 'instances'
        end
      end
      
      class LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flexible_environment_available, as: 'flexibleEnvironmentAvailable'
          property :standard_environment_available, as: 'standardEnvironmentAvailable'
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :split, as: 'split', class: Google::Apis::AppengineV1::TrafficSplit, decorator: Google::Apis::AppengineV1::TrafficSplit::Representation
      
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::AppengineV1::Operation, decorator: Google::Apis::AppengineV1::Operation::Representation
      
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user, as: 'user'
          property :target, as: 'target'
          property :method_prop, as: 'method'
          property :end_time, as: 'endTime'
          property :operation_type, as: 'operationType'
          property :insert_time, as: 'insertTime'
        end
      end
      
      class OperationMetadataV1
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target, as: 'target'
          property :user, as: 'user'
          property :ephemeral_message, as: 'ephemeralMessage'
          property :method_prop, as: 'method'
          property :end_time, as: 'endTime'
          property :insert_time, as: 'insertTime'
          collection :warning, as: 'warning'
        end
      end
      
      class ErrorHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mime_type, as: 'mimeType'
          property :error_code, as: 'errorCode'
          property :static_file, as: 'staticFile'
        end
      end
      
      class Network
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subnetwork_name, as: 'subnetworkName'
          property :instance_tag, as: 'instanceTag'
          collection :forwarded_ports, as: 'forwardedPorts'
          property :name, as: 'name'
        end
      end
      
      class Application
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_domain, as: 'authDomain'
          property :iap, as: 'iap', class: Google::Apis::AppengineV1::IdentityAwareProxy, decorator: Google::Apis::AppengineV1::IdentityAwareProxy::Representation
      
          property :code_bucket, as: 'codeBucket'
          property :default_bucket, as: 'defaultBucket'
          collection :dispatch_rules, as: 'dispatchRules', class: Google::Apis::AppengineV1::UrlDispatchRule, decorator: Google::Apis::AppengineV1::UrlDispatchRule::Representation
      
          property :gcr_domain, as: 'gcrDomain'
          property :name, as: 'name'
          property :default_cookie_expiration, as: 'defaultCookieExpiration'
          property :id, as: 'id'
          property :location_id, as: 'locationId'
          property :serving_status, as: 'servingStatus'
          property :default_hostname, as: 'defaultHostname'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_latency, as: 'averageLatency'
          property :vm_ip, as: 'vmIp'
          property :memory_usage, :numeric_string => true, as: 'memoryUsage'
          property :id, as: 'id'
          property :vm_status, as: 'vmStatus'
          property :errors, as: 'errors'
          property :availability, as: 'availability'
          property :start_time, as: 'startTime'
          property :vm_debug_enabled, as: 'vmDebugEnabled'
          property :requests, as: 'requests'
          property :app_engine_release, as: 'appEngineRelease'
          property :vm_name, as: 'vmName'
          property :vm_id, as: 'vmId'
          property :qps, as: 'qps'
          property :vm_zone_name, as: 'vmZoneName'
          property :name, as: 'name'
        end
      end
      
      class LivenessCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :initial_delay, as: 'initialDelay'
          property :path, as: 'path'
          property :success_threshold, as: 'successThreshold'
          property :host, as: 'host'
          property :check_interval, as: 'checkInterval'
          property :failure_threshold, as: 'failureThreshold'
          property :timeout, as: 'timeout'
        end
      end
      
      class NetworkUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_received_packets_per_second, as: 'targetReceivedPacketsPerSecond'
          property :target_sent_bytes_per_second, as: 'targetSentBytesPerSecond'
          property :target_received_bytes_per_second, as: 'targetReceivedBytesPerSecond'
          property :target_sent_packets_per_second, as: 'targetSentPacketsPerSecond'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          hash :labels, as: 'labels'
          property :name, as: 'name'
        end
      end
      
      class HealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timeout, as: 'timeout'
          property :unhealthy_threshold, as: 'unhealthyThreshold'
          property :disable_health_check, as: 'disableHealthCheck'
          property :host, as: 'host'
          property :restart_threshold, as: 'restartThreshold'
          property :healthy_threshold, as: 'healthyThreshold'
          property :check_interval, as: 'checkInterval'
        end
      end
      
      class ReadinessCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :success_threshold, as: 'successThreshold'
          property :host, as: 'host'
          property :check_interval, as: 'checkInterval'
          property :failure_threshold, as: 'failureThreshold'
          property :timeout, as: 'timeout'
        end
      end
      
      class DebugInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ssh_key, as: 'sshKey'
        end
      end
      
      class OperationMetadataV1Beta5
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :method_prop, as: 'method'
          property :insert_time, as: 'insertTime'
          property :end_time, as: 'endTime'
          property :target, as: 'target'
          property :user, as: 'user'
        end
      end
      
      class Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resources, as: 'resources', class: Google::Apis::AppengineV1::Resources, decorator: Google::Apis::AppengineV1::Resources::Representation
      
          collection :inbound_services, as: 'inboundServices'
          collection :error_handlers, as: 'errorHandlers', class: Google::Apis::AppengineV1::ErrorHandler, decorator: Google::Apis::AppengineV1::ErrorHandler::Representation
      
          property :default_expiration, as: 'defaultExpiration'
          collection :libraries, as: 'libraries', class: Google::Apis::AppengineV1::Library, decorator: Google::Apis::AppengineV1::Library::Representation
      
          property :nobuild_files_regex, as: 'nobuildFilesRegex'
          property :basic_scaling, as: 'basicScaling', class: Google::Apis::AppengineV1::BasicScaling, decorator: Google::Apis::AppengineV1::BasicScaling::Representation
      
          property :runtime, as: 'runtime'
          property :created_by, as: 'createdBy'
          property :id, as: 'id'
          hash :env_variables, as: 'envVariables'
          property :liveness_check, as: 'livenessCheck', class: Google::Apis::AppengineV1::LivenessCheck, decorator: Google::Apis::AppengineV1::LivenessCheck::Representation
      
          property :network, as: 'network', class: Google::Apis::AppengineV1::Network, decorator: Google::Apis::AppengineV1::Network::Representation
      
          hash :beta_settings, as: 'betaSettings'
          property :env, as: 'env'
          collection :handlers, as: 'handlers', class: Google::Apis::AppengineV1::UrlMap, decorator: Google::Apis::AppengineV1::UrlMap::Representation
      
          property :automatic_scaling, as: 'automaticScaling', class: Google::Apis::AppengineV1::AutomaticScaling, decorator: Google::Apis::AppengineV1::AutomaticScaling::Representation
      
          property :disk_usage_bytes, :numeric_string => true, as: 'diskUsageBytes'
          property :health_check, as: 'healthCheck', class: Google::Apis::AppengineV1::HealthCheck, decorator: Google::Apis::AppengineV1::HealthCheck::Representation
      
          property :threadsafe, as: 'threadsafe'
          property :readiness_check, as: 'readinessCheck', class: Google::Apis::AppengineV1::ReadinessCheck, decorator: Google::Apis::AppengineV1::ReadinessCheck::Representation
      
          property :manual_scaling, as: 'manualScaling', class: Google::Apis::AppengineV1::ManualScaling, decorator: Google::Apis::AppengineV1::ManualScaling::Representation
      
          property :name, as: 'name'
          property :api_config, as: 'apiConfig', class: Google::Apis::AppengineV1::ApiConfigHandler, decorator: Google::Apis::AppengineV1::ApiConfigHandler::Representation
      
          property :endpoints_api_service, as: 'endpointsApiService', class: Google::Apis::AppengineV1::EndpointsApiService, decorator: Google::Apis::AppengineV1::EndpointsApiService::Representation
      
          property :vm, as: 'vm'
          property :version_url, as: 'versionUrl'
          property :instance_class, as: 'instanceClass'
          property :serving_status, as: 'servingStatus'
          property :runtime_api_version, as: 'runtimeApiVersion'
          property :deployment, as: 'deployment', class: Google::Apis::AppengineV1::Deployment, decorator: Google::Apis::AppengineV1::Deployment::Representation
      
          property :create_time, as: 'createTime'
        end
      end
      
      class RepairApplicationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ScriptHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :script_path, as: 'scriptPath'
        end
      end
      
      class FileInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_url, as: 'sourceUrl'
          property :sha1_sum, as: 'sha1Sum'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class OperationMetadataExperimental
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :insert_time, as: 'insertTime'
          property :end_time, as: 'endTime'
          property :target, as: 'target'
          property :user, as: 'user'
          property :method_prop, as: 'method'
        end
      end
      
      class TrafficSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :allocations, as: 'allocations'
          property :shard_by, as: 'shardBy'
        end
      end
      
      class OperationMetadataV1Beta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :warning, as: 'warning'
          property :insert_time, as: 'insertTime'
          property :user, as: 'user'
          property :target, as: 'target'
          property :ephemeral_message, as: 'ephemeralMessage'
          property :method_prop, as: 'method'
          property :end_time, as: 'endTime'
        end
      end
      
      class ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::AppengineV1::Service, decorator: Google::Apis::AppengineV1::Service::Representation
      
        end
      end
      
      class Resources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :memory_gb, as: 'memoryGb'
          property :cpu, as: 'cpu'
          collection :volumes, as: 'volumes', class: Google::Apis::AppengineV1::Volume, decorator: Google::Apis::AppengineV1::Volume::Representation
      
          property :disk_gb, as: 'diskGb'
        end
      end
      
      class Deployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :zip, as: 'zip', class: Google::Apis::AppengineV1::ZipInfo, decorator: Google::Apis::AppengineV1::ZipInfo::Representation
      
          property :container, as: 'container', class: Google::Apis::AppengineV1::ContainerInfo, decorator: Google::Apis::AppengineV1::ContainerInfo::Representation
      
          hash :files, as: 'files', class: Google::Apis::AppengineV1::FileInfo, decorator: Google::Apis::AppengineV1::FileInfo::Representation
      
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size_gb, as: 'sizeGb'
          property :name, as: 'name'
          property :volume_type, as: 'volumeType'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AppengineV1::Instance, decorator: Google::Apis::AppengineV1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class OperationMetadataV1Alpha
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :warning, as: 'warning'
          property :insert_time, as: 'insertTime'
          property :target, as: 'target'
          property :user, as: 'user'
          property :ephemeral_message, as: 'ephemeralMessage'
          property :method_prop, as: 'method'
          property :end_time, as: 'endTime'
        end
      end
      
      class UrlDispatchRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :service, as: 'service'
          property :domain, as: 'domain'
        end
      end
      
      class ListVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :versions, as: 'versions', class: Google::Apis::AppengineV1::Version, decorator: Google::Apis::AppengineV1::Version::Representation
      
        end
      end
    end
  end
end
