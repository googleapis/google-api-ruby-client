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
    module RunV1
      
      class Addressable
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
      
      class AuthorizedDomain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CsiVolumeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelExecutionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigMapEnvSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigMapKeySelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigMapVolumeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Configuration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigurationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigurationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Container
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContainerOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContainerPort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainMappingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainMappingStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmptyDirVolumeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvFromSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvVar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvVarSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Execution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionTemplateSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV1Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1ApprovalConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1ApprovalResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1ArtifactObjects
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Artifacts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Build
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1BuildApproval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1BuildOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1BuildOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1BuildStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1BuiltImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1ConnectedRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1FailureInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1FileHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1GitSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Hash
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1InlineSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1MavenArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1NpmPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1PoolOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1PythonPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1RepoSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Results
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Secret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1SecretManagerSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Secrets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1SourceProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1StorageSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1StorageSourceManifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1TimeSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1UploadedNpmPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1UploadedPythonPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Warning
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
      
      class GoogleLongrunningWaitOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpGetAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyToPath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAuthorizedDomainsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConfigurationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDomainMappingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExecutionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMeta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRoutesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTasksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalObjectReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NfsVolumeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectMeta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Overrides
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OwnerReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Probe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Revision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevisionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevisionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevisionTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Route
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouteSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouteStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretEnvSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretKeySelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretVolumeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatusCause
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatusDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TcpSocketAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Task
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskAttemptResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskTemplateSpec
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
      
      class TrafficTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VolumeMount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Addressable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::RunV1::AuditLogConfig, decorator: Google::Apis::RunV1::AuditLogConfig::Representation
      
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
      
      class AuthorizedDomain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::RunV1::Expr, decorator: Google::Apis::RunV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CsiVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :driver, as: 'driver'
          property :read_only, as: 'readOnly'
          hash :volume_attributes, as: 'volumeAttributes'
        end
      end
      
      class CancelExecutionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ConfigMapEnvSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_object_reference, as: 'localObjectReference', class: Google::Apis::RunV1::LocalObjectReference, decorator: Google::Apis::RunV1::LocalObjectReference::Representation
      
          property :name, as: 'name'
          property :optional, as: 'optional'
        end
      end
      
      class ConfigMapKeySelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :local_object_reference, as: 'localObjectReference', class: Google::Apis::RunV1::LocalObjectReference, decorator: Google::Apis::RunV1::LocalObjectReference::Representation
      
          property :name, as: 'name'
          property :optional, as: 'optional'
        end
      end
      
      class ConfigMapVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_mode, as: 'defaultMode'
          collection :items, as: 'items', class: Google::Apis::RunV1::KeyToPath, decorator: Google::Apis::RunV1::KeyToPath::Representation
      
          property :name, as: 'name'
          property :optional, as: 'optional'
        end
      end
      
      class Configuration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ObjectMeta, decorator: Google::Apis::RunV1::ObjectMeta::Representation
      
          property :spec, as: 'spec', class: Google::Apis::RunV1::ConfigurationSpec, decorator: Google::Apis::RunV1::ConfigurationSpec::Representation
      
          property :status, as: 'status', class: Google::Apis::RunV1::ConfigurationStatus, decorator: Google::Apis::RunV1::ConfigurationStatus::Representation
      
        end
      end
      
      class ConfigurationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :template, as: 'template', class: Google::Apis::RunV1::RevisionTemplate, decorator: Google::Apis::RunV1::RevisionTemplate::Representation
      
        end
      end
      
      class ConfigurationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::RunV1::GoogleCloudRunV1Condition, decorator: Google::Apis::RunV1::GoogleCloudRunV1Condition::Representation
      
          property :latest_created_revision_name, as: 'latestCreatedRevisionName'
          property :latest_ready_revision_name, as: 'latestReadyRevisionName'
          property :observed_generation, as: 'observedGeneration'
        end
      end
      
      class Container
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          collection :command, as: 'command'
          collection :env, as: 'env', class: Google::Apis::RunV1::EnvVar, decorator: Google::Apis::RunV1::EnvVar::Representation
      
          collection :env_from, as: 'envFrom', class: Google::Apis::RunV1::EnvFromSource, decorator: Google::Apis::RunV1::EnvFromSource::Representation
      
          property :image, as: 'image'
          property :image_pull_policy, as: 'imagePullPolicy'
          property :liveness_probe, as: 'livenessProbe', class: Google::Apis::RunV1::Probe, decorator: Google::Apis::RunV1::Probe::Representation
      
          property :name, as: 'name'
          collection :ports, as: 'ports', class: Google::Apis::RunV1::ContainerPort, decorator: Google::Apis::RunV1::ContainerPort::Representation
      
          property :readiness_probe, as: 'readinessProbe', class: Google::Apis::RunV1::Probe, decorator: Google::Apis::RunV1::Probe::Representation
      
          property :resources, as: 'resources', class: Google::Apis::RunV1::ResourceRequirements, decorator: Google::Apis::RunV1::ResourceRequirements::Representation
      
          property :security_context, as: 'securityContext', class: Google::Apis::RunV1::SecurityContext, decorator: Google::Apis::RunV1::SecurityContext::Representation
      
          property :startup_probe, as: 'startupProbe', class: Google::Apis::RunV1::Probe, decorator: Google::Apis::RunV1::Probe::Representation
      
          property :termination_message_path, as: 'terminationMessagePath'
          property :termination_message_policy, as: 'terminationMessagePolicy'
          collection :volume_mounts, as: 'volumeMounts', class: Google::Apis::RunV1::VolumeMount, decorator: Google::Apis::RunV1::VolumeMount::Representation
      
          property :working_dir, as: 'workingDir'
        end
      end
      
      class ContainerOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :clear_args, as: 'clearArgs'
          collection :env, as: 'env', class: Google::Apis::RunV1::EnvVar, decorator: Google::Apis::RunV1::EnvVar::Representation
      
          property :name, as: 'name'
        end
      end
      
      class ContainerPort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_port, as: 'containerPort'
          property :name, as: 'name'
          property :protocol, as: 'protocol'
        end
      end
      
      class DomainMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ObjectMeta, decorator: Google::Apis::RunV1::ObjectMeta::Representation
      
          property :spec, as: 'spec', class: Google::Apis::RunV1::DomainMappingSpec, decorator: Google::Apis::RunV1::DomainMappingSpec::Representation
      
          property :status, as: 'status', class: Google::Apis::RunV1::DomainMappingStatus, decorator: Google::Apis::RunV1::DomainMappingStatus::Representation
      
        end
      end
      
      class DomainMappingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_mode, as: 'certificateMode'
          property :force_override, as: 'forceOverride'
          property :route_name, as: 'routeName'
        end
      end
      
      class DomainMappingStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::RunV1::GoogleCloudRunV1Condition, decorator: Google::Apis::RunV1::GoogleCloudRunV1Condition::Representation
      
          property :mapped_route_name, as: 'mappedRouteName'
          property :observed_generation, as: 'observedGeneration'
          collection :resource_records, as: 'resourceRecords', class: Google::Apis::RunV1::ResourceRecord, decorator: Google::Apis::RunV1::ResourceRecord::Representation
      
          property :url, as: 'url'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EmptyDirVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :medium, as: 'medium'
          property :size_limit, as: 'sizeLimit'
        end
      end
      
      class EnvFromSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_map_ref, as: 'configMapRef', class: Google::Apis::RunV1::ConfigMapEnvSource, decorator: Google::Apis::RunV1::ConfigMapEnvSource::Representation
      
          property :prefix, as: 'prefix'
          property :secret_ref, as: 'secretRef', class: Google::Apis::RunV1::SecretEnvSource, decorator: Google::Apis::RunV1::SecretEnvSource::Representation
      
        end
      end
      
      class EnvVar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
          property :value_from, as: 'valueFrom', class: Google::Apis::RunV1::EnvVarSource, decorator: Google::Apis::RunV1::EnvVarSource::Representation
      
        end
      end
      
      class EnvVarSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_map_key_ref, as: 'configMapKeyRef', class: Google::Apis::RunV1::ConfigMapKeySelector, decorator: Google::Apis::RunV1::ConfigMapKeySelector::Representation
      
          property :secret_key_ref, as: 'secretKeyRef', class: Google::Apis::RunV1::SecretKeySelector, decorator: Google::Apis::RunV1::SecretKeySelector::Representation
      
        end
      end
      
      class ExecAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :command, as: 'command'
        end
      end
      
      class Execution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ObjectMeta, decorator: Google::Apis::RunV1::ObjectMeta::Representation
      
          property :spec, as: 'spec', class: Google::Apis::RunV1::ExecutionSpec, decorator: Google::Apis::RunV1::ExecutionSpec::Representation
      
          property :status, as: 'status', class: Google::Apis::RunV1::ExecutionStatus, decorator: Google::Apis::RunV1::ExecutionStatus::Representation
      
        end
      end
      
      class ExecutionReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_timestamp, as: 'completionTimestamp'
          property :creation_timestamp, as: 'creationTimestamp'
          property :name, as: 'name'
        end
      end
      
      class ExecutionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parallelism, as: 'parallelism'
          property :task_count, as: 'taskCount'
          property :template, as: 'template', class: Google::Apis::RunV1::TaskTemplateSpec, decorator: Google::Apis::RunV1::TaskTemplateSpec::Representation
      
        end
      end
      
      class ExecutionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancelled_count, as: 'cancelledCount'
          property :completion_time, as: 'completionTime'
          collection :conditions, as: 'conditions', class: Google::Apis::RunV1::GoogleCloudRunV1Condition, decorator: Google::Apis::RunV1::GoogleCloudRunV1Condition::Representation
      
          property :failed_count, as: 'failedCount'
          property :log_uri, as: 'logUri'
          property :observed_generation, as: 'observedGeneration'
          property :retried_count, as: 'retriedCount'
          property :running_count, as: 'runningCount'
          property :start_time, as: 'startTime'
          property :succeeded_count, as: 'succeededCount'
        end
      end
      
      class ExecutionTemplateSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ObjectMeta, decorator: Google::Apis::RunV1::ObjectMeta::Representation
      
          property :spec, as: 'spec', class: Google::Apis::RunV1::ExecutionSpec, decorator: Google::Apis::RunV1::ExecutionSpec::Representation
      
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
      
      class GrpcAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :port, as: 'port'
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudRunV1Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_transition_time, as: 'lastTransitionTime'
          property :message, as: 'message'
          property :reason, as: 'reason'
          property :severity, as: 'severity'
          property :status, as: 'status'
          property :type, as: 'type'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1ApprovalConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_required, as: 'approvalRequired'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1ApprovalResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_time, as: 'approvalTime'
          property :approver_account, as: 'approverAccount'
          property :comment, as: 'comment'
          property :decision, as: 'decision'
          property :url, as: 'url'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1ArtifactObjects
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          collection :paths, as: 'paths'
          property :timing, as: 'timing', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Artifacts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :images, as: 'images'
          collection :maven_artifacts, as: 'mavenArtifacts', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1MavenArtifact, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1MavenArtifact::Representation
      
          collection :npm_packages, as: 'npmPackages', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1NpmPackage, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1NpmPackage::Representation
      
          property :objects, as: 'objects', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ArtifactObjects, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ArtifactObjects::Representation
      
          collection :python_packages, as: 'pythonPackages', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1PythonPackage, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1PythonPackage::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Build
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval, as: 'approval', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1BuildApproval, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1BuildApproval::Representation
      
          property :artifacts, as: 'artifacts', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Artifacts, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Artifacts::Representation
      
          property :available_secrets, as: 'availableSecrets', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Secrets, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Secrets::Representation
      
          property :build_trigger_id, as: 'buildTriggerId'
          property :create_time, as: 'createTime'
          property :failure_info, as: 'failureInfo', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FailureInfo, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FailureInfo::Representation
      
          property :finish_time, as: 'finishTime'
          property :id, as: 'id'
          collection :images, as: 'images'
          property :log_url, as: 'logUrl'
          property :logs_bucket, as: 'logsBucket'
          property :name, as: 'name'
          property :options, as: 'options', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1BuildOptions, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1BuildOptions::Representation
      
          property :project_id, as: 'projectId'
          property :queue_ttl, as: 'queueTtl'
          property :results, as: 'results', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Results, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Results::Representation
      
          collection :secrets, as: 'secrets', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Secret, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Secret::Representation
      
          property :service_account, as: 'serviceAccount'
          property :source, as: 'source', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Source, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Source::Representation
      
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1SourceProvenance, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1SourceProvenance::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_detail, as: 'statusDetail'
          collection :steps, as: 'steps', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1BuildStep, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1BuildStep::Representation
      
          hash :substitutions, as: 'substitutions'
          collection :tags, as: 'tags'
          property :timeout, as: 'timeout'
          hash :timing, as: 'timing', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          collection :warnings, as: 'warnings', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Warning, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Warning::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1BuildApproval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ApprovalConfig, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ApprovalConfig::Representation
      
          property :result, as: 'result', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ApprovalResult, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ApprovalResult::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1BuildOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build, as: 'build', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Build, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Build::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1BuildOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automap_substitutions, as: 'automapSubstitutions'
          property :default_logs_bucket_behavior, as: 'defaultLogsBucketBehavior'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :dynamic_substitutions, as: 'dynamicSubstitutions'
          collection :env, as: 'env'
          property :log_streaming_option, as: 'logStreamingOption'
          property :logging, as: 'logging'
          property :machine_type, as: 'machineType'
          property :pool, as: 'pool', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1PoolOption, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1PoolOption::Representation
      
          property :requested_verify_option, as: 'requestedVerifyOption'
          collection :secret_env, as: 'secretEnv'
          collection :source_provenance_hash, as: 'sourceProvenanceHash'
          property :substitution_option, as: 'substitutionOption'
          collection :volumes, as: 'volumes', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Volume, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Volume::Representation
      
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1BuildStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allow_exit_codes, as: 'allowExitCodes'
          property :allow_failure, as: 'allowFailure'
          collection :args, as: 'args'
          property :automap_substitutions, as: 'automapSubstitutions'
          property :dir, as: 'dir'
          property :entrypoint, as: 'entrypoint'
          collection :env, as: 'env'
          property :exit_code, as: 'exitCode'
          property :id, as: 'id'
          property :name, as: 'name'
          property :pull_timing, as: 'pullTiming', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :script, as: 'script'
          collection :secret_env, as: 'secretEnv'
          property :status, as: 'status'
          property :timeout, as: 'timeout'
          property :timing, as: 'timing', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          collection :volumes, as: 'volumes', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Volume, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Volume::Representation
      
          collection :wait_for, as: 'waitFor'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1BuiltImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digest, as: 'digest'
          property :name, as: 'name'
          property :push_timing, as: 'pushTiming', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1ConnectedRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dir, as: 'dir'
          property :repository, as: 'repository'
          property :revision, as: 'revision'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1FailureInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          property :type, as: 'type'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1FileHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Hash, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1Hash::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1GitSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dir, as: 'dir'
          property :revision, as: 'revision'
          property :url, as: 'url'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Hash
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1InlineSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :env_map, as: 'envMap'
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1MavenArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_id, as: 'artifactId'
          property :group_id, as: 'groupId'
          property :path, as: 'path'
          property :repository, as: 'repository'
          property :version, as: 'version'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1NpmPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :package_path, as: 'packagePath'
          property :repository, as: 'repository'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1PoolOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1PythonPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :paths, as: 'paths'
          property :repository, as: 'repository'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1RepoSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_name, as: 'branchName'
          property :commit_sha, as: 'commitSha'
          property :dir, as: 'dir'
          property :invert_regex, as: 'invertRegex'
          property :project_id, as: 'projectId'
          property :repo_name, as: 'repoName'
          hash :substitutions, as: 'substitutions'
          property :tag_name, as: 'tagName'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Results
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_manifest, as: 'artifactManifest'
          property :artifact_timing, as: 'artifactTiming', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          collection :build_step_images, as: 'buildStepImages'
          collection :build_step_outputs, as: 'buildStepOutputs'
          collection :images, as: 'images', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1BuiltImage, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1BuiltImage::Representation
      
          collection :maven_artifacts, as: 'mavenArtifacts', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1UploadedMavenArtifact, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1UploadedMavenArtifact::Representation
      
          collection :npm_packages, as: 'npmPackages', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1UploadedNpmPackage, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1UploadedNpmPackage::Representation
      
          property :num_artifacts, :numeric_string => true, as: 'numArtifacts'
          collection :python_packages, as: 'pythonPackages', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1UploadedPythonPackage, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1UploadedPythonPackage::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Secret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
          hash :secret_env, as: 'secretEnv'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1SecretManagerSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :env, as: 'env'
          property :version_name, as: 'versionName'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Secrets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inline, as: 'inline', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1InlineSecret, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1InlineSecret::Representation
      
          collection :secret_manager, as: 'secretManager', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1SecretManagerSecret, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1SecretManagerSecret::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connected_repository, as: 'connectedRepository', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ConnectedRepository, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ConnectedRepository::Representation
      
          property :git_source, as: 'gitSource', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1GitSource, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1GitSource::Representation
      
          property :repo_source, as: 'repoSource', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1RepoSource, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1RepoSource::Representation
      
          property :storage_source, as: 'storageSource', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1StorageSource, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1StorageSource::Representation
      
          property :storage_source_manifest, as: 'storageSourceManifest', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1StorageSourceManifest, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1StorageSourceManifest::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1SourceProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :resolved_connected_repository, as: 'resolvedConnectedRepository', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ConnectedRepository, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1ConnectedRepository::Representation
      
          property :resolved_git_source, as: 'resolvedGitSource', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1GitSource, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1GitSource::Representation
      
          property :resolved_repo_source, as: 'resolvedRepoSource', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1RepoSource, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1RepoSource::Representation
      
          property :resolved_storage_source, as: 'resolvedStorageSource', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1StorageSource, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1StorageSource::Representation
      
          property :resolved_storage_source_manifest, as: 'resolvedStorageSourceManifest', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1StorageSourceManifest, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1StorageSourceManifest::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1StorageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
          property :source_fetcher, as: 'sourceFetcher'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1StorageSourceManifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1TimeSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1UploadedNpmPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1UploadedPythonPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV1::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Warning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :priority, as: 'priority'
          property :text, as: 'text'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::RunV1::GoogleLongrunningOperation, decorator: Google::Apis::RunV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::RunV1::GoogleRpcStatus, decorator: Google::Apis::RunV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleLongrunningWaitOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timeout, as: 'timeout'
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
      
      class HttpGetAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          collection :http_headers, as: 'httpHeaders', class: Google::Apis::RunV1::HttpHeader, decorator: Google::Apis::RunV1::HttpHeader::Representation
      
          property :path, as: 'path'
          property :port, as: 'port'
          property :scheme, as: 'scheme'
        end
      end
      
      class HttpHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ObjectMeta, decorator: Google::Apis::RunV1::ObjectMeta::Representation
      
          property :spec, as: 'spec', class: Google::Apis::RunV1::JobSpec, decorator: Google::Apis::RunV1::JobSpec::Representation
      
          property :status, as: 'status', class: Google::Apis::RunV1::JobStatus, decorator: Google::Apis::RunV1::JobStatus::Representation
      
        end
      end
      
      class JobSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :template, as: 'template', class: Google::Apis::RunV1::ExecutionTemplateSpec, decorator: Google::Apis::RunV1::ExecutionTemplateSpec::Representation
      
        end
      end
      
      class JobStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::RunV1::GoogleCloudRunV1Condition, decorator: Google::Apis::RunV1::GoogleCloudRunV1Condition::Representation
      
          property :execution_count, as: 'executionCount'
          property :latest_created_execution, as: 'latestCreatedExecution', class: Google::Apis::RunV1::ExecutionReference, decorator: Google::Apis::RunV1::ExecutionReference::Representation
      
          property :observed_generation, as: 'observedGeneration'
        end
      end
      
      class KeyToPath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :mode, as: 'mode'
          property :path, as: 'path'
        end
      end
      
      class ListAuthorizedDomainsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :domains, as: 'domains', class: Google::Apis::RunV1::AuthorizedDomain, decorator: Google::Apis::RunV1::AuthorizedDomain::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListConfigurationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          collection :items, as: 'items', class: Google::Apis::RunV1::Configuration, decorator: Google::Apis::RunV1::Configuration::Representation
      
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ListMeta, decorator: Google::Apis::RunV1::ListMeta::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDomainMappingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          collection :items, as: 'items', class: Google::Apis::RunV1::DomainMapping, decorator: Google::Apis::RunV1::DomainMapping::Representation
      
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ListMeta, decorator: Google::Apis::RunV1::ListMeta::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListExecutionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          collection :items, as: 'items', class: Google::Apis::RunV1::Execution, decorator: Google::Apis::RunV1::Execution::Representation
      
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ListMeta, decorator: Google::Apis::RunV1::ListMeta::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          collection :items, as: 'items', class: Google::Apis::RunV1::Job, decorator: Google::Apis::RunV1::Job::Representation
      
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ListMeta, decorator: Google::Apis::RunV1::ListMeta::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::RunV1::Location, decorator: Google::Apis::RunV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMeta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :continue, as: 'continue'
          property :resource_version, as: 'resourceVersion'
          property :self_link, as: 'selfLink'
        end
      end
      
      class ListRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          collection :items, as: 'items', class: Google::Apis::RunV1::Revision, decorator: Google::Apis::RunV1::Revision::Representation
      
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ListMeta, decorator: Google::Apis::RunV1::ListMeta::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRoutesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          collection :items, as: 'items', class: Google::Apis::RunV1::Route, decorator: Google::Apis::RunV1::Route::Representation
      
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ListMeta, decorator: Google::Apis::RunV1::ListMeta::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          collection :items, as: 'items', class: Google::Apis::RunV1::Service, decorator: Google::Apis::RunV1::Service::Representation
      
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ListMeta, decorator: Google::Apis::RunV1::ListMeta::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListTasksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          collection :items, as: 'items', class: Google::Apis::RunV1::Task, decorator: Google::Apis::RunV1::Task::Representation
      
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ListMeta, decorator: Google::Apis::RunV1::ListMeta::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class LocalObjectReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
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
      
      class NfsVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :read_only, as: 'readOnly'
          property :server, as: 'server'
        end
      end
      
      class ObjectMeta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :cluster_name, as: 'clusterName'
          property :creation_timestamp, as: 'creationTimestamp'
          property :deletion_grace_period_seconds, as: 'deletionGracePeriodSeconds'
          property :deletion_timestamp, as: 'deletionTimestamp'
          collection :finalizers, as: 'finalizers'
          property :generate_name, as: 'generateName'
          property :generation, as: 'generation'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :namespace, as: 'namespace'
          collection :owner_references, as: 'ownerReferences', class: Google::Apis::RunV1::OwnerReference, decorator: Google::Apis::RunV1::OwnerReference::Representation
      
          property :resource_version, as: 'resourceVersion'
          property :self_link, as: 'selfLink'
          property :uid, as: 'uid'
        end
      end
      
      class Overrides
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :container_overrides, as: 'containerOverrides', class: Google::Apis::RunV1::ContainerOverride, decorator: Google::Apis::RunV1::ContainerOverride::Representation
      
          property :task_count, as: 'taskCount'
          property :timeout_seconds, as: 'timeoutSeconds'
        end
      end
      
      class OwnerReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :block_owner_deletion, as: 'blockOwnerDeletion'
          property :controller, as: 'controller'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :uid, as: 'uid'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::RunV1::AuditConfig, decorator: Google::Apis::RunV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::RunV1::Binding, decorator: Google::Apis::RunV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Probe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exec, as: 'exec', class: Google::Apis::RunV1::ExecAction, decorator: Google::Apis::RunV1::ExecAction::Representation
      
          property :failure_threshold, as: 'failureThreshold'
          property :grpc, as: 'grpc', class: Google::Apis::RunV1::GrpcAction, decorator: Google::Apis::RunV1::GrpcAction::Representation
      
          property :http_get, as: 'httpGet', class: Google::Apis::RunV1::HttpGetAction, decorator: Google::Apis::RunV1::HttpGetAction::Representation
      
          property :initial_delay_seconds, as: 'initialDelaySeconds'
          property :period_seconds, as: 'periodSeconds'
          property :success_threshold, as: 'successThreshold'
          property :tcp_socket, as: 'tcpSocket', class: Google::Apis::RunV1::TcpSocketAction, decorator: Google::Apis::RunV1::TcpSocketAction::Representation
      
          property :timeout_seconds, as: 'timeoutSeconds'
        end
      end
      
      class ResourceRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :rrdata, as: 'rrdata'
          property :type, as: 'type'
        end
      end
      
      class ResourceRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :limits, as: 'limits'
          hash :requests, as: 'requests'
        end
      end
      
      class Revision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ObjectMeta, decorator: Google::Apis::RunV1::ObjectMeta::Representation
      
          property :spec, as: 'spec', class: Google::Apis::RunV1::RevisionSpec, decorator: Google::Apis::RunV1::RevisionSpec::Representation
      
          property :status, as: 'status', class: Google::Apis::RunV1::RevisionStatus, decorator: Google::Apis::RunV1::RevisionStatus::Representation
      
        end
      end
      
      class RevisionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_concurrency, as: 'containerConcurrency'
          collection :containers, as: 'containers', class: Google::Apis::RunV1::Container, decorator: Google::Apis::RunV1::Container::Representation
      
          property :enable_service_links, as: 'enableServiceLinks'
          collection :image_pull_secrets, as: 'imagePullSecrets', class: Google::Apis::RunV1::LocalObjectReference, decorator: Google::Apis::RunV1::LocalObjectReference::Representation
      
          property :service_account_name, as: 'serviceAccountName'
          property :timeout_seconds, as: 'timeoutSeconds'
          collection :volumes, as: 'volumes', class: Google::Apis::RunV1::Volume, decorator: Google::Apis::RunV1::Volume::Representation
      
        end
      end
      
      class RevisionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::RunV1::GoogleCloudRunV1Condition, decorator: Google::Apis::RunV1::GoogleCloudRunV1Condition::Representation
      
          property :desired_replicas, as: 'desiredReplicas'
          property :image_digest, as: 'imageDigest'
          property :log_url, as: 'logUrl'
          property :observed_generation, as: 'observedGeneration'
          property :service_name, as: 'serviceName'
        end
      end
      
      class RevisionTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ObjectMeta, decorator: Google::Apis::RunV1::ObjectMeta::Representation
      
          property :spec, as: 'spec', class: Google::Apis::RunV1::RevisionSpec, decorator: Google::Apis::RunV1::RevisionSpec::Representation
      
        end
      end
      
      class Route
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ObjectMeta, decorator: Google::Apis::RunV1::ObjectMeta::Representation
      
          property :spec, as: 'spec', class: Google::Apis::RunV1::RouteSpec, decorator: Google::Apis::RunV1::RouteSpec::Representation
      
          property :status, as: 'status', class: Google::Apis::RunV1::RouteStatus, decorator: Google::Apis::RunV1::RouteStatus::Representation
      
        end
      end
      
      class RouteSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :traffic, as: 'traffic', class: Google::Apis::RunV1::TrafficTarget, decorator: Google::Apis::RunV1::TrafficTarget::Representation
      
        end
      end
      
      class RouteStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::RunV1::Addressable, decorator: Google::Apis::RunV1::Addressable::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::RunV1::GoogleCloudRunV1Condition, decorator: Google::Apis::RunV1::GoogleCloudRunV1Condition::Representation
      
          property :observed_generation, as: 'observedGeneration'
          collection :traffic, as: 'traffic', class: Google::Apis::RunV1::TrafficTarget, decorator: Google::Apis::RunV1::TrafficTarget::Representation
      
          property :url, as: 'url'
        end
      end
      
      class RunJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :overrides, as: 'overrides', class: Google::Apis::RunV1::Overrides, decorator: Google::Apis::RunV1::Overrides::Representation
      
        end
      end
      
      class SecretEnvSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_object_reference, as: 'localObjectReference', class: Google::Apis::RunV1::LocalObjectReference, decorator: Google::Apis::RunV1::LocalObjectReference::Representation
      
          property :name, as: 'name'
          property :optional, as: 'optional'
        end
      end
      
      class SecretKeySelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :local_object_reference, as: 'localObjectReference', class: Google::Apis::RunV1::LocalObjectReference, decorator: Google::Apis::RunV1::LocalObjectReference::Representation
      
          property :name, as: 'name'
          property :optional, as: 'optional'
        end
      end
      
      class SecretVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_mode, as: 'defaultMode'
          collection :items, as: 'items', class: Google::Apis::RunV1::KeyToPath, decorator: Google::Apis::RunV1::KeyToPath::Representation
      
          property :optional, as: 'optional'
          property :secret_name, as: 'secretName'
        end
      end
      
      class SecurityContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :run_as_user, as: 'runAsUser'
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ObjectMeta, decorator: Google::Apis::RunV1::ObjectMeta::Representation
      
          property :spec, as: 'spec', class: Google::Apis::RunV1::ServiceSpec, decorator: Google::Apis::RunV1::ServiceSpec::Representation
      
          property :status, as: 'status', class: Google::Apis::RunV1::ServiceStatus, decorator: Google::Apis::RunV1::ServiceStatus::Representation
      
        end
      end
      
      class ServiceSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :template, as: 'template', class: Google::Apis::RunV1::RevisionTemplate, decorator: Google::Apis::RunV1::RevisionTemplate::Representation
      
          collection :traffic, as: 'traffic', class: Google::Apis::RunV1::TrafficTarget, decorator: Google::Apis::RunV1::TrafficTarget::Representation
      
        end
      end
      
      class ServiceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::RunV1::Addressable, decorator: Google::Apis::RunV1::Addressable::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::RunV1::GoogleCloudRunV1Condition, decorator: Google::Apis::RunV1::GoogleCloudRunV1Condition::Representation
      
          property :latest_created_revision_name, as: 'latestCreatedRevisionName'
          property :latest_ready_revision_name, as: 'latestReadyRevisionName'
          property :observed_generation, as: 'observedGeneration'
          collection :traffic, as: 'traffic', class: Google::Apis::RunV1::TrafficTarget, decorator: Google::Apis::RunV1::TrafficTarget::Representation
      
          property :url, as: 'url'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::RunV1::Policy, decorator: Google::Apis::RunV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :details, as: 'details', class: Google::Apis::RunV1::StatusDetails, decorator: Google::Apis::RunV1::StatusDetails::Representation
      
          property :message, as: 'message'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ListMeta, decorator: Google::Apis::RunV1::ListMeta::Representation
      
          property :reason, as: 'reason'
          property :status, as: 'status'
        end
      end
      
      class StatusCause
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
          property :message, as: 'message'
          property :reason, as: 'reason'
        end
      end
      
      class StatusDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :causes, as: 'causes', class: Google::Apis::RunV1::StatusCause, decorator: Google::Apis::RunV1::StatusCause::Representation
      
          property :group, as: 'group'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :retry_after_seconds, as: 'retryAfterSeconds'
          property :uid, as: 'uid'
        end
      end
      
      class TcpSocketAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
        end
      end
      
      class Task
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1::ObjectMeta, decorator: Google::Apis::RunV1::ObjectMeta::Representation
      
          property :spec, as: 'spec', class: Google::Apis::RunV1::TaskSpec, decorator: Google::Apis::RunV1::TaskSpec::Representation
      
          property :status, as: 'status', class: Google::Apis::RunV1::TaskStatus, decorator: Google::Apis::RunV1::TaskStatus::Representation
      
        end
      end
      
      class TaskAttemptResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exit_code, as: 'exitCode'
          property :status, as: 'status', class: Google::Apis::RunV1::GoogleRpcStatus, decorator: Google::Apis::RunV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class TaskSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :containers, as: 'containers', class: Google::Apis::RunV1::Container, decorator: Google::Apis::RunV1::Container::Representation
      
          property :max_retries, as: 'maxRetries'
          property :service_account_name, as: 'serviceAccountName'
          property :timeout_seconds, :numeric_string => true, as: 'timeoutSeconds'
          collection :volumes, as: 'volumes', class: Google::Apis::RunV1::Volume, decorator: Google::Apis::RunV1::Volume::Representation
      
        end
      end
      
      class TaskStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_time, as: 'completionTime'
          collection :conditions, as: 'conditions', class: Google::Apis::RunV1::GoogleCloudRunV1Condition, decorator: Google::Apis::RunV1::GoogleCloudRunV1Condition::Representation
      
          property :index, as: 'index'
          property :last_attempt_result, as: 'lastAttemptResult', class: Google::Apis::RunV1::TaskAttemptResult, decorator: Google::Apis::RunV1::TaskAttemptResult::Representation
      
          property :log_uri, as: 'logUri'
          property :observed_generation, as: 'observedGeneration'
          property :retried, as: 'retried'
          property :start_time, as: 'startTime'
        end
      end
      
      class TaskTemplateSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :spec, as: 'spec', class: Google::Apis::RunV1::TaskSpec, decorator: Google::Apis::RunV1::TaskSpec::Representation
      
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
      
      class TrafficTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configuration_name, as: 'configurationName'
          property :latest_revision, as: 'latestRevision'
          property :percent, as: 'percent'
          property :revision_name, as: 'revisionName'
          property :tag, as: 'tag'
          property :url, as: 'url'
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_map, as: 'configMap', class: Google::Apis::RunV1::ConfigMapVolumeSource, decorator: Google::Apis::RunV1::ConfigMapVolumeSource::Representation
      
          property :csi, as: 'csi', class: Google::Apis::RunV1::CsiVolumeSource, decorator: Google::Apis::RunV1::CsiVolumeSource::Representation
      
          property :empty_dir, as: 'emptyDir', class: Google::Apis::RunV1::EmptyDirVolumeSource, decorator: Google::Apis::RunV1::EmptyDirVolumeSource::Representation
      
          property :name, as: 'name'
          property :nfs, as: 'nfs', class: Google::Apis::RunV1::NfsVolumeSource, decorator: Google::Apis::RunV1::NfsVolumeSource::Representation
      
          property :secret, as: 'secret', class: Google::Apis::RunV1::SecretVolumeSource, decorator: Google::Apis::RunV1::SecretVolumeSource::Representation
      
        end
      end
      
      class VolumeMount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mount_path, as: 'mountPath'
          property :name, as: 'name'
          property :read_only, as: 'readOnly'
          property :sub_path, as: 'subPath'
        end
      end
    end
  end
end
