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
    module RunV1alpha1
      
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
      
      class Container
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContainerPort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
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
      
      class HttpGetAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceTemplateSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobCondition
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
      
      class ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMeta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalObjectReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectMeta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OwnerReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Probe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceRequirements
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
      
      class TcpSocketAction
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
      
      class ConfigMapEnvSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_object_reference, as: 'localObjectReference', class: Google::Apis::RunV1alpha1::LocalObjectReference, decorator: Google::Apis::RunV1alpha1::LocalObjectReference::Representation
      
          property :name, as: 'name'
          property :optional, as: 'optional'
        end
      end
      
      class ConfigMapKeySelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :local_object_reference, as: 'localObjectReference', class: Google::Apis::RunV1alpha1::LocalObjectReference, decorator: Google::Apis::RunV1alpha1::LocalObjectReference::Representation
      
          property :name, as: 'name'
          property :optional, as: 'optional'
        end
      end
      
      class ConfigMapVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_mode, as: 'defaultMode'
          collection :items, as: 'items', class: Google::Apis::RunV1alpha1::KeyToPath, decorator: Google::Apis::RunV1alpha1::KeyToPath::Representation
      
          property :name, as: 'name'
          property :optional, as: 'optional'
        end
      end
      
      class Container
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          collection :command, as: 'command'
          collection :env, as: 'env', class: Google::Apis::RunV1alpha1::EnvVar, decorator: Google::Apis::RunV1alpha1::EnvVar::Representation
      
          collection :env_from, as: 'envFrom', class: Google::Apis::RunV1alpha1::EnvFromSource, decorator: Google::Apis::RunV1alpha1::EnvFromSource::Representation
      
          property :image, as: 'image'
          property :image_pull_policy, as: 'imagePullPolicy'
          property :liveness_probe, as: 'livenessProbe', class: Google::Apis::RunV1alpha1::Probe, decorator: Google::Apis::RunV1alpha1::Probe::Representation
      
          property :name, as: 'name'
          collection :ports, as: 'ports', class: Google::Apis::RunV1alpha1::ContainerPort, decorator: Google::Apis::RunV1alpha1::ContainerPort::Representation
      
          property :readiness_probe, as: 'readinessProbe', class: Google::Apis::RunV1alpha1::Probe, decorator: Google::Apis::RunV1alpha1::Probe::Representation
      
          property :resources, as: 'resources', class: Google::Apis::RunV1alpha1::ResourceRequirements, decorator: Google::Apis::RunV1alpha1::ResourceRequirements::Representation
      
          property :security_context, as: 'securityContext', class: Google::Apis::RunV1alpha1::SecurityContext, decorator: Google::Apis::RunV1alpha1::SecurityContext::Representation
      
          property :startup_probe, as: 'startupProbe', class: Google::Apis::RunV1alpha1::Probe, decorator: Google::Apis::RunV1alpha1::Probe::Representation
      
          property :termination_message_path, as: 'terminationMessagePath'
          property :termination_message_policy, as: 'terminationMessagePolicy'
          collection :volume_mounts, as: 'volumeMounts', class: Google::Apis::RunV1alpha1::VolumeMount, decorator: Google::Apis::RunV1alpha1::VolumeMount::Representation
      
          property :working_dir, as: 'workingDir'
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
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnvFromSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_map_ref, as: 'configMapRef', class: Google::Apis::RunV1alpha1::ConfigMapEnvSource, decorator: Google::Apis::RunV1alpha1::ConfigMapEnvSource::Representation
      
          property :prefix, as: 'prefix'
          property :secret_ref, as: 'secretRef', class: Google::Apis::RunV1alpha1::SecretEnvSource, decorator: Google::Apis::RunV1alpha1::SecretEnvSource::Representation
      
        end
      end
      
      class EnvVar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
          property :value_from, as: 'valueFrom', class: Google::Apis::RunV1alpha1::EnvVarSource, decorator: Google::Apis::RunV1alpha1::EnvVarSource::Representation
      
        end
      end
      
      class EnvVarSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_map_key_ref, as: 'configMapKeyRef', class: Google::Apis::RunV1alpha1::ConfigMapKeySelector, decorator: Google::Apis::RunV1alpha1::ConfigMapKeySelector::Representation
      
          property :secret_key_ref, as: 'secretKeyRef', class: Google::Apis::RunV1alpha1::SecretKeySelector, decorator: Google::Apis::RunV1alpha1::SecretKeySelector::Representation
      
        end
      end
      
      class ExecAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :command, as: 'command'
        end
      end
      
      class HttpGetAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          collection :http_headers, as: 'httpHeaders', class: Google::Apis::RunV1alpha1::HttpHeader, decorator: Google::Apis::RunV1alpha1::HttpHeader::Representation
      
          property :path, as: 'path'
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
      
      class InstanceSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_deadline_seconds, :numeric_string => true, as: 'activeDeadlineSeconds'
          collection :containers, as: 'containers', class: Google::Apis::RunV1alpha1::Container, decorator: Google::Apis::RunV1alpha1::Container::Representation
      
          property :restart_policy, as: 'restartPolicy'
          property :service_account_name, as: 'serviceAccountName'
          property :termination_grace_period_seconds, :numeric_string => true, as: 'terminationGracePeriodSeconds'
          collection :volumes, as: 'volumes', class: Google::Apis::RunV1alpha1::Volume, decorator: Google::Apis::RunV1alpha1::Volume::Representation
      
        end
      end
      
      class InstanceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_time, as: 'completionTime'
          property :failed, as: 'failed'
          property :index, as: 'index'
          property :last_exit_code, as: 'lastExitCode'
          property :restarted, as: 'restarted'
          property :start_time, as: 'startTime'
          property :succeeded, as: 'succeeded'
        end
      end
      
      class InstanceTemplateSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :spec, as: 'spec', class: Google::Apis::RunV1alpha1::InstanceSpec, decorator: Google::Apis::RunV1alpha1::InstanceSpec::Representation
      
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1alpha1::ObjectMeta, decorator: Google::Apis::RunV1alpha1::ObjectMeta::Representation
      
          property :spec, as: 'spec', class: Google::Apis::RunV1alpha1::JobSpec, decorator: Google::Apis::RunV1alpha1::JobSpec::Representation
      
          property :status, as: 'status', class: Google::Apis::RunV1alpha1::JobStatus, decorator: Google::Apis::RunV1alpha1::JobStatus::Representation
      
        end
      end
      
      class JobCondition
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
      
      class JobSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_deadline_seconds, :numeric_string => true, as: 'activeDeadlineSeconds'
          property :backoff_limit, as: 'backoffLimit'
          property :completions, as: 'completions'
          property :parallelism, as: 'parallelism'
          property :template, as: 'template', class: Google::Apis::RunV1alpha1::InstanceTemplateSpec, decorator: Google::Apis::RunV1alpha1::InstanceTemplateSpec::Representation
      
          property :ttl_seconds_after_finished, as: 'ttlSecondsAfterFinished'
        end
      end
      
      class JobStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :completion_time, as: 'completionTime'
          collection :conditions, as: 'conditions', class: Google::Apis::RunV1alpha1::JobCondition, decorator: Google::Apis::RunV1alpha1::JobCondition::Representation
      
          property :failed, as: 'failed'
          property :image_digest, as: 'imageDigest'
          collection :instances, as: 'instances', class: Google::Apis::RunV1alpha1::InstanceStatus, decorator: Google::Apis::RunV1alpha1::InstanceStatus::Representation
      
          property :observed_generation, as: 'observedGeneration'
          property :start_time, as: 'startTime'
          property :succeeded, as: 'succeeded'
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
      
      class ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          collection :items, as: 'items', class: Google::Apis::RunV1alpha1::Job, decorator: Google::Apis::RunV1alpha1::Job::Representation
      
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::RunV1alpha1::ListMeta, decorator: Google::Apis::RunV1alpha1::ListMeta::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
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
      
      class LocalObjectReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
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
          collection :owner_references, as: 'ownerReferences', class: Google::Apis::RunV1alpha1::OwnerReference, decorator: Google::Apis::RunV1alpha1::OwnerReference::Representation
      
          property :resource_version, as: 'resourceVersion'
          property :self_link, as: 'selfLink'
          property :uid, as: 'uid'
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
      
      class Probe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exec, as: 'exec', class: Google::Apis::RunV1alpha1::ExecAction, decorator: Google::Apis::RunV1alpha1::ExecAction::Representation
      
          property :failure_threshold, as: 'failureThreshold'
          property :http_get, as: 'httpGet', class: Google::Apis::RunV1alpha1::HttpGetAction, decorator: Google::Apis::RunV1alpha1::HttpGetAction::Representation
      
          property :initial_delay_seconds, as: 'initialDelaySeconds'
          property :period_seconds, as: 'periodSeconds'
          property :success_threshold, as: 'successThreshold'
          property :tcp_socket, as: 'tcpSocket', class: Google::Apis::RunV1alpha1::TcpSocketAction, decorator: Google::Apis::RunV1alpha1::TcpSocketAction::Representation
      
          property :timeout_seconds, as: 'timeoutSeconds'
        end
      end
      
      class ResourceRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :limits, as: 'limits'
          hash :requests, as: 'requests'
        end
      end
      
      class SecretEnvSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_object_reference, as: 'localObjectReference', class: Google::Apis::RunV1alpha1::LocalObjectReference, decorator: Google::Apis::RunV1alpha1::LocalObjectReference::Representation
      
          property :name, as: 'name'
          property :optional, as: 'optional'
        end
      end
      
      class SecretKeySelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :local_object_reference, as: 'localObjectReference', class: Google::Apis::RunV1alpha1::LocalObjectReference, decorator: Google::Apis::RunV1alpha1::LocalObjectReference::Representation
      
          property :name, as: 'name'
          property :optional, as: 'optional'
        end
      end
      
      class SecretVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_mode, as: 'defaultMode'
          collection :items, as: 'items', class: Google::Apis::RunV1alpha1::KeyToPath, decorator: Google::Apis::RunV1alpha1::KeyToPath::Representation
      
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
      
      class TcpSocketAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_map, as: 'configMap', class: Google::Apis::RunV1alpha1::ConfigMapVolumeSource, decorator: Google::Apis::RunV1alpha1::ConfigMapVolumeSource::Representation
      
          property :name, as: 'name'
          property :secret, as: 'secret', class: Google::Apis::RunV1alpha1::SecretVolumeSource, decorator: Google::Apis::RunV1alpha1::SecretVolumeSource::Representation
      
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
