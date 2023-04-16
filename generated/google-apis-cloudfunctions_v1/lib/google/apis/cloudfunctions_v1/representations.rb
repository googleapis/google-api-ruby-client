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
    module CloudfunctionsV1
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CallFunctionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CallFunctionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventTrigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailurePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateDownloadUrlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateDownloadUrlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateUploadUrlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateUploadUrlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2Stage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2StateMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2alphaLocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2alphaOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2alphaStateMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2betaLocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2betaOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2betaStage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2betaStateMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpsTrigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFunctionsResponse
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
      
      class LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadataV1
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Retry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretEnvVar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretVolume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Stage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
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
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::CloudfunctionsV1::AuditLogConfig, decorator: Google::Apis::CloudfunctionsV1::AuditLogConfig::Representation
      
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
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::CloudfunctionsV1::Expr, decorator: Google::Apis::CloudfunctionsV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CallFunctionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data'
        end
      end
      
      class CallFunctionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error'
          property :execution_id, as: 'executionId'
          property :result, as: 'result'
        end
      end
      
      class CloudFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_memory_mb, as: 'availableMemoryMb'
          hash :build_environment_variables, as: 'buildEnvironmentVariables'
          property :build_id, as: 'buildId'
          property :build_name, as: 'buildName'
          property :build_worker_pool, as: 'buildWorkerPool'
          property :description, as: 'description'
          property :docker_registry, as: 'dockerRegistry'
          property :docker_repository, as: 'dockerRepository'
          property :entry_point, as: 'entryPoint'
          hash :environment_variables, as: 'environmentVariables'
          property :event_trigger, as: 'eventTrigger', class: Google::Apis::CloudfunctionsV1::EventTrigger, decorator: Google::Apis::CloudfunctionsV1::EventTrigger::Representation
      
          property :https_trigger, as: 'httpsTrigger', class: Google::Apis::CloudfunctionsV1::HttpsTrigger, decorator: Google::Apis::CloudfunctionsV1::HttpsTrigger::Representation
      
          property :ingress_settings, as: 'ingressSettings'
          property :kms_key_name, as: 'kmsKeyName'
          hash :labels, as: 'labels'
          property :max_instances, as: 'maxInstances'
          property :min_instances, as: 'minInstances'
          property :name, as: 'name'
          property :network, as: 'network'
          property :runtime, as: 'runtime'
          collection :secret_environment_variables, as: 'secretEnvironmentVariables', class: Google::Apis::CloudfunctionsV1::SecretEnvVar, decorator: Google::Apis::CloudfunctionsV1::SecretEnvVar::Representation
      
          collection :secret_volumes, as: 'secretVolumes', class: Google::Apis::CloudfunctionsV1::SecretVolume, decorator: Google::Apis::CloudfunctionsV1::SecretVolume::Representation
      
          property :service_account_email, as: 'serviceAccountEmail'
          property :source_archive_url, as: 'sourceArchiveUrl'
          property :source_repository, as: 'sourceRepository', class: Google::Apis::CloudfunctionsV1::SourceRepository, decorator: Google::Apis::CloudfunctionsV1::SourceRepository::Representation
      
          property :source_token, as: 'sourceToken'
          property :source_upload_url, as: 'sourceUploadUrl'
          property :status, as: 'status'
          property :timeout, as: 'timeout'
          property :update_time, as: 'updateTime'
          property :version_id, :numeric_string => true, as: 'versionId'
          property :vpc_connector, as: 'vpcConnector'
          property :vpc_connector_egress_settings, as: 'vpcConnectorEgressSettings'
        end
      end
      
      class EventTrigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_type, as: 'eventType'
          property :failure_policy, as: 'failurePolicy', class: Google::Apis::CloudfunctionsV1::FailurePolicy, decorator: Google::Apis::CloudfunctionsV1::FailurePolicy::Representation
      
          property :resource, as: 'resource'
          property :service, as: 'service'
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
      
      class FailurePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retry, as: 'retry', class: Google::Apis::CloudfunctionsV1::Retry, decorator: Google::Apis::CloudfunctionsV1::Retry::Representation
      
        end
      end
      
      class GenerateDownloadUrlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version_id, :numeric_string => true, as: 'versionId'
        end
      end
      
      class GenerateDownloadUrlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :download_url, as: 'downloadUrl'
        end
      end
      
      class GenerateUploadUrlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class GenerateUploadUrlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :upload_url, as: 'uploadUrl'
        end
      end
      
      class GoogleCloudFunctionsV2OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          hash :request_resource, as: 'requestResource'
          collection :stages, as: 'stages', class: Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2Stage, decorator: Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2Stage::Representation
      
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudFunctionsV2Stage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :name, as: 'name'
          property :resource, as: 'resource'
          property :resource_uri, as: 'resourceUri'
          property :state, as: 'state'
          collection :state_messages, as: 'stateMessages', class: Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2StateMessage, decorator: Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2StateMessage::Representation
      
        end
      end
      
      class GoogleCloudFunctionsV2StateMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :severity, as: 'severity'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudFunctionsV2alphaLocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments'
        end
      end
      
      class GoogleCloudFunctionsV2alphaOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          hash :request_resource, as: 'requestResource'
          collection :stages, as: 'stages', class: Google::Apis::CloudfunctionsV1::Stage, decorator: Google::Apis::CloudfunctionsV1::Stage::Representation
      
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudFunctionsV2alphaStateMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :severity, as: 'severity'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudFunctionsV2betaLocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments'
        end
      end
      
      class GoogleCloudFunctionsV2betaOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          hash :request_resource, as: 'requestResource'
          collection :stages, as: 'stages', class: Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2betaStage, decorator: Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2betaStage::Representation
      
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudFunctionsV2betaStage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :name, as: 'name'
          property :resource, as: 'resource'
          property :resource_uri, as: 'resourceUri'
          property :state, as: 'state'
          collection :state_messages, as: 'stateMessages', class: Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2betaStateMessage, decorator: Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2betaStateMessage::Representation
      
        end
      end
      
      class GoogleCloudFunctionsV2betaStateMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :severity, as: 'severity'
          property :type, as: 'type'
        end
      end
      
      class HttpsTrigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :security_level, as: 'securityLevel'
          property :url, as: 'url'
        end
      end
      
      class ListFunctionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :functions, as: 'functions', class: Google::Apis::CloudfunctionsV1::CloudFunction, decorator: Google::Apis::CloudfunctionsV1::CloudFunction::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::CloudfunctionsV1::Location, decorator: Google::Apis::CloudfunctionsV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::CloudfunctionsV1::Operation, decorator: Google::Apis::CloudfunctionsV1::Operation::Representation
      
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
      
      class LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudfunctionsV1::Status, decorator: Google::Apis::CloudfunctionsV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadataV1
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_id, as: 'buildId'
          property :build_name, as: 'buildName'
          hash :request, as: 'request'
          property :source_token, as: 'sourceToken'
          property :target, as: 'target'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :version_id, :numeric_string => true, as: 'versionId'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::CloudfunctionsV1::AuditConfig, decorator: Google::Apis::CloudfunctionsV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::CloudfunctionsV1::Binding, decorator: Google::Apis::CloudfunctionsV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Retry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SecretEnvVar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :project_id, as: 'projectId'
          property :secret, as: 'secret'
          property :version, as: 'version'
        end
      end
      
      class SecretVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :version, as: 'version'
        end
      end
      
      class SecretVolume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mount_path, as: 'mountPath'
          property :project_id, as: 'projectId'
          property :secret, as: 'secret'
          collection :versions, as: 'versions', class: Google::Apis::CloudfunctionsV1::SecretVersion, decorator: Google::Apis::CloudfunctionsV1::SecretVersion::Representation
      
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::CloudfunctionsV1::Policy, decorator: Google::Apis::CloudfunctionsV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SourceRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_url, as: 'deployedUrl'
          property :url, as: 'url'
        end
      end
      
      class Stage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :name, as: 'name'
          property :resource, as: 'resource'
          property :resource_uri, as: 'resourceUri'
          property :state, as: 'state'
          collection :state_messages, as: 'stateMessages', class: Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2alphaStateMessage, decorator: Google::Apis::CloudfunctionsV1::GoogleCloudFunctionsV2alphaStateMessage::Representation
      
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
    end
  end
end
