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
    module AppengineV1beta4
      
      class Application
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UrlDispatchRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AutomaticScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CpuUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RequestUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DiskUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class NetworkUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BasicScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ManualScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Network
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Resources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UrlMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class StaticFilesHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class StaticDirectoryHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ScriptHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ApiEndpointHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ErrorHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Library
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ApiConfigHandler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class HealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FileInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ContainerInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SourceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Module
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TrafficSplit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListModulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OperationMetadataV1Beta5
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Application
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :id, as: 'id'
          collection :dispatch_rules, as: 'dispatchRules', class: Google::Apis::AppengineV1beta4::UrlDispatchRule, decorator: Google::Apis::AppengineV1beta4::UrlDispatchRule::Representation
      
          property :location, as: 'location'
          property :code_bucket, as: 'codeBucket'
          property :default_bucket, as: 'defaultBucket'
        end
      end
      
      class UrlDispatchRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :path, as: 'path'
          property :module, as: 'module'
        end
      end
      
      class Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :id, as: 'id'
          property :automatic_scaling, as: 'automaticScaling', class: Google::Apis::AppengineV1beta4::AutomaticScaling, decorator: Google::Apis::AppengineV1beta4::AutomaticScaling::Representation
      
          property :basic_scaling, as: 'basicScaling', class: Google::Apis::AppengineV1beta4::BasicScaling, decorator: Google::Apis::AppengineV1beta4::BasicScaling::Representation
      
          property :manual_scaling, as: 'manualScaling', class: Google::Apis::AppengineV1beta4::ManualScaling, decorator: Google::Apis::AppengineV1beta4::ManualScaling::Representation
      
          collection :inbound_services, as: 'inboundServices'
          property :instance_class, as: 'instanceClass'
          property :network, as: 'network', class: Google::Apis::AppengineV1beta4::Network, decorator: Google::Apis::AppengineV1beta4::Network::Representation
      
          property :resources, as: 'resources', class: Google::Apis::AppengineV1beta4::Resources, decorator: Google::Apis::AppengineV1beta4::Resources::Representation
      
          property :runtime, as: 'runtime'
          property :threadsafe, as: 'threadsafe'
          property :vm, as: 'vm'
          hash :beta_settings, as: 'betaSettings'
          property :env, as: 'env'
          property :serving_status, as: 'servingStatus'
          property :deployer, as: 'deployer'
          property :creation_time, as: 'creationTime'
          collection :handlers, as: 'handlers', class: Google::Apis::AppengineV1beta4::UrlMap, decorator: Google::Apis::AppengineV1beta4::UrlMap::Representation
      
          collection :error_handlers, as: 'errorHandlers', class: Google::Apis::AppengineV1beta4::ErrorHandler, decorator: Google::Apis::AppengineV1beta4::ErrorHandler::Representation
      
          collection :libraries, as: 'libraries', class: Google::Apis::AppengineV1beta4::Library, decorator: Google::Apis::AppengineV1beta4::Library::Representation
      
          property :api_config, as: 'apiConfig', class: Google::Apis::AppengineV1beta4::ApiConfigHandler, decorator: Google::Apis::AppengineV1beta4::ApiConfigHandler::Representation
      
          hash :env_variables, as: 'envVariables'
          property :default_expiration, as: 'defaultExpiration'
          property :health_check, as: 'healthCheck', class: Google::Apis::AppengineV1beta4::HealthCheck, decorator: Google::Apis::AppengineV1beta4::HealthCheck::Representation
      
          property :nobuild_files_regex, as: 'nobuildFilesRegex'
          property :deployment, as: 'deployment', class: Google::Apis::AppengineV1beta4::Deployment, decorator: Google::Apis::AppengineV1beta4::Deployment::Representation
      
        end
      end
      
      class AutomaticScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cool_down_period, as: 'coolDownPeriod'
          property :cpu_utilization, as: 'cpuUtilization', class: Google::Apis::AppengineV1beta4::CpuUtilization, decorator: Google::Apis::AppengineV1beta4::CpuUtilization::Representation
      
          property :max_concurrent_requests, as: 'maxConcurrentRequests'
          property :max_idle_instances, as: 'maxIdleInstances'
          property :max_total_instances, as: 'maxTotalInstances'
          property :max_pending_latency, as: 'maxPendingLatency'
          property :min_idle_instances, as: 'minIdleInstances'
          property :min_total_instances, as: 'minTotalInstances'
          property :min_pending_latency, as: 'minPendingLatency'
          property :request_utilization, as: 'requestUtilization', class: Google::Apis::AppengineV1beta4::RequestUtilization, decorator: Google::Apis::AppengineV1beta4::RequestUtilization::Representation
      
          property :disk_utilization, as: 'diskUtilization', class: Google::Apis::AppengineV1beta4::DiskUtilization, decorator: Google::Apis::AppengineV1beta4::DiskUtilization::Representation
      
          property :network_utilization, as: 'networkUtilization', class: Google::Apis::AppengineV1beta4::NetworkUtilization, decorator: Google::Apis::AppengineV1beta4::NetworkUtilization::Representation
      
        end
      end
      
      class CpuUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_window_length, as: 'aggregationWindowLength'
          property :target_utilization, as: 'targetUtilization'
        end
      end
      
      class RequestUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_request_count_per_sec, as: 'targetRequestCountPerSec'
          property :target_concurrent_requests, as: 'targetConcurrentRequests'
        end
      end
      
      class DiskUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_write_bytes_per_sec, as: 'targetWriteBytesPerSec'
          property :target_write_ops_per_sec, as: 'targetWriteOpsPerSec'
          property :target_read_bytes_per_sec, as: 'targetReadBytesPerSec'
          property :target_read_ops_per_sec, as: 'targetReadOpsPerSec'
        end
      end
      
      class NetworkUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_sent_bytes_per_sec, as: 'targetSentBytesPerSec'
          property :target_sent_packets_per_sec, as: 'targetSentPacketsPerSec'
          property :target_received_bytes_per_sec, as: 'targetReceivedBytesPerSec'
          property :target_received_packets_per_sec, as: 'targetReceivedPacketsPerSec'
        end
      end
      
      class BasicScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idle_timeout, as: 'idleTimeout'
          property :max_instances, as: 'maxInstances'
        end
      end
      
      class ManualScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instances, as: 'instances'
        end
      end
      
      class Network
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :forwarded_ports, as: 'forwardedPorts'
          property :instance_tag, as: 'instanceTag'
          property :name, as: 'name'
        end
      end
      
      class Resources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu, as: 'cpu'
          property :disk_gb, as: 'diskGb'
          property :memory_gb, as: 'memoryGb'
        end
      end
      
      class UrlMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url_regex, as: 'urlRegex'
          property :static_files, as: 'staticFiles', class: Google::Apis::AppengineV1beta4::StaticFilesHandler, decorator: Google::Apis::AppengineV1beta4::StaticFilesHandler::Representation
      
          property :static_directory, as: 'staticDirectory', class: Google::Apis::AppengineV1beta4::StaticDirectoryHandler, decorator: Google::Apis::AppengineV1beta4::StaticDirectoryHandler::Representation
      
          property :script, as: 'script', class: Google::Apis::AppengineV1beta4::ScriptHandler, decorator: Google::Apis::AppengineV1beta4::ScriptHandler::Representation
      
          property :api_endpoint, as: 'apiEndpoint', class: Google::Apis::AppengineV1beta4::ApiEndpointHandler, decorator: Google::Apis::AppengineV1beta4::ApiEndpointHandler::Representation
      
          property :security_level, as: 'securityLevel'
          property :login, as: 'login'
          property :auth_fail_action, as: 'authFailAction'
          property :redirect_http_response_code, as: 'redirectHttpResponseCode'
        end
      end
      
      class StaticFilesHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :upload_path_regex, as: 'uploadPathRegex'
          hash :http_headers, as: 'httpHeaders'
          property :mime_type, as: 'mimeType'
          property :expiration, as: 'expiration'
          property :require_matching_file, as: 'requireMatchingFile'
          property :application_readable, as: 'applicationReadable'
        end
      end
      
      class StaticDirectoryHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :directory, as: 'directory'
          hash :http_headers, as: 'httpHeaders'
          property :mime_type, as: 'mimeType'
          property :expiration, as: 'expiration'
          property :require_matching_file, as: 'requireMatchingFile'
          property :application_readable, as: 'applicationReadable'
        end
      end
      
      class ScriptHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :script_path, as: 'scriptPath'
        end
      end
      
      class ApiEndpointHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :script_path, as: 'scriptPath'
        end
      end
      
      class ErrorHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
          property :static_file, as: 'staticFile'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class Library
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :version, as: 'version'
        end
      end
      
      class ApiConfigHandler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_fail_action, as: 'authFailAction'
          property :login, as: 'login'
          property :script, as: 'script'
          property :security_level, as: 'securityLevel'
          property :url, as: 'url'
        end
      end
      
      class HealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_health_check, as: 'disableHealthCheck'
          property :host, as: 'host'
          property :healthy_threshold, as: 'healthyThreshold'
          property :unhealthy_threshold, as: 'unhealthyThreshold'
          property :restart_threshold, as: 'restartThreshold'
          property :check_interval, as: 'checkInterval'
          property :timeout, as: 'timeout'
        end
      end
      
      class Deployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :files, as: 'files', class: Google::Apis::AppengineV1beta4::FileInfo, decorator: Google::Apis::AppengineV1beta4::FileInfo::Representation
      
          property :container, as: 'container', class: Google::Apis::AppengineV1beta4::ContainerInfo, decorator: Google::Apis::AppengineV1beta4::ContainerInfo::Representation
      
          collection :source_references, as: 'sourceReferences', class: Google::Apis::AppengineV1beta4::SourceReference, decorator: Google::Apis::AppengineV1beta4::SourceReference::Representation
      
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
      
      class ContainerInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image'
        end
      end
      
      class SourceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :repository, as: 'repository'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :metadata, as: 'metadata'
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AppengineV1beta4::Status, decorator: Google::Apis::AppengineV1beta4::Status::Representation
      
          hash :response, as: 'response'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          collection :details, as: 'details'
        end
      end
      
      class ListVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :versions, as: 'versions', class: Google::Apis::AppengineV1beta4::Version, decorator: Google::Apis::AppengineV1beta4::Version::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Module
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :id, as: 'id'
          property :split, as: 'split', class: Google::Apis::AppengineV1beta4::TrafficSplit, decorator: Google::Apis::AppengineV1beta4::TrafficSplit::Representation
      
        end
      end
      
      class TrafficSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shard_by, as: 'shardBy'
          hash :allocations, as: 'allocations'
        end
      end
      
      class ListModulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :modules, as: 'modules', class: Google::Apis::AppengineV1beta4::Module, decorator: Google::Apis::AppengineV1beta4::Module::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::AppengineV1beta4::Operation, decorator: Google::Apis::AppengineV1beta4::Operation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_type, as: 'operationType'
          property :insert_time, as: 'insertTime'
          property :end_time, as: 'endTime'
          property :user, as: 'user'
          property :target, as: 'target'
          property :method_prop, as: 'method'
        end
      end
      
      class OperationMetadataV1Beta5
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :method_prop, as: 'method'
          property :insert_time, as: 'insertTime'
          property :end_time, as: 'endTime'
          property :user, as: 'user'
          property :target, as: 'target'
        end
      end
    end
  end
end
