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
    module RunV2
      
      class GoogleCloudRunOpV2BinaryAuthorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2CloudSqlInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2Container
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2ContainerPort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2EnvVar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2EnvVarSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2ListRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2ResourceRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2Revision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2RevisionScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2RevisionTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2SecretKeySelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2SecretVolumeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2TrafficTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2TrafficTargetStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2VersionToPath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2VolumeMount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2VpcAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsResponse
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
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunOpV2BinaryAuthorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :breakglass_justification, as: 'breakglassJustification'
          property :use_default, as: 'useDefault'
        end
      end
      
      class GoogleCloudRunOpV2CloudSqlInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connections, as: 'connections'
        end
      end
      
      class GoogleCloudRunOpV2Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_mapping_reason, as: 'domainMappingReason'
          property :execution_reason, as: 'executionReason'
          property :internal_reason, as: 'internalReason'
          property :last_transition_time, as: 'lastTransitionTime'
          property :message, as: 'message'
          property :reason, as: 'reason'
          property :revision_reason, as: 'revisionReason'
          property :severity, as: 'severity'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRunOpV2Container
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          collection :command, as: 'command'
          collection :env, as: 'env', class: Google::Apis::RunV2::GoogleCloudRunOpV2EnvVar, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2EnvVar::Representation
      
          property :image, as: 'image'
          property :name, as: 'name'
          collection :ports, as: 'ports', class: Google::Apis::RunV2::GoogleCloudRunOpV2ContainerPort, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2ContainerPort::Representation
      
          property :resources, as: 'resources', class: Google::Apis::RunV2::GoogleCloudRunOpV2ResourceRequirements, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2ResourceRequirements::Representation
      
          collection :volume_mounts, as: 'volumeMounts', class: Google::Apis::RunV2::GoogleCloudRunOpV2VolumeMount, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2VolumeMount::Representation
      
        end
      end
      
      class GoogleCloudRunOpV2ContainerPort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_port, as: 'containerPort'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRunOpV2EnvVar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
          property :value_source, as: 'valueSource', class: Google::Apis::RunV2::GoogleCloudRunOpV2EnvVarSource, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2EnvVarSource::Representation
      
        end
      end
      
      class GoogleCloudRunOpV2EnvVarSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_key_ref, as: 'secretKeyRef', class: Google::Apis::RunV2::GoogleCloudRunOpV2SecretKeySelector, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2SecretKeySelector::Representation
      
        end
      end
      
      class GoogleCloudRunOpV2ListRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :revisions, as: 'revisions', class: Google::Apis::RunV2::GoogleCloudRunOpV2Revision, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2Revision::Representation
      
        end
      end
      
      class GoogleCloudRunOpV2ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::RunV2::GoogleCloudRunOpV2Service, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2Service::Representation
      
        end
      end
      
      class GoogleCloudRunOpV2ResourceRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_idle, as: 'cpuIdle'
          hash :limits, as: 'limits'
        end
      end
      
      class GoogleCloudRunOpV2Revision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          collection :conditions, as: 'conditions', class: Google::Apis::RunV2::GoogleCloudRunOpV2Condition, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2Condition::Representation
      
          property :confidential, as: 'confidential'
          property :container_concurrency, as: 'containerConcurrency'
          collection :containers, as: 'containers', class: Google::Apis::RunV2::GoogleCloudRunOpV2Container, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2Container::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :encryption_key, as: 'encryptionKey'
          property :etag, as: 'etag'
          property :execution_environment, as: 'executionEnvironment'
          property :expire_time, as: 'expireTime'
          property :generation, :numeric_string => true, as: 'generation'
          hash :labels, as: 'labels'
          property :launch_stage, as: 'launchStage'
          property :log_uri, as: 'logUri'
          property :name, as: 'name'
          property :observed_generation, :numeric_string => true, as: 'observedGeneration'
          property :reconciling, as: 'reconciling'
          property :scaling, as: 'scaling', class: Google::Apis::RunV2::GoogleCloudRunOpV2RevisionScaling, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2RevisionScaling::Representation
      
          property :service, as: 'service'
          property :service_account, as: 'serviceAccount'
          property :timeout, as: 'timeout'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          collection :volumes, as: 'volumes', class: Google::Apis::RunV2::GoogleCloudRunOpV2Volume, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2Volume::Representation
      
          property :vpc_access, as: 'vpcAccess', class: Google::Apis::RunV2::GoogleCloudRunOpV2VpcAccess, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2VpcAccess::Representation
      
        end
      end
      
      class GoogleCloudRunOpV2RevisionScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_instance_count, as: 'maxInstanceCount'
          property :min_instance_count, as: 'minInstanceCount'
        end
      end
      
      class GoogleCloudRunOpV2RevisionTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :confidential, as: 'confidential'
          property :container_concurrency, as: 'containerConcurrency'
          collection :containers, as: 'containers', class: Google::Apis::RunV2::GoogleCloudRunOpV2Container, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2Container::Representation
      
          property :encryption_key, as: 'encryptionKey'
          property :execution_environment, as: 'executionEnvironment'
          hash :labels, as: 'labels'
          property :revision, as: 'revision'
          property :scaling, as: 'scaling', class: Google::Apis::RunV2::GoogleCloudRunOpV2RevisionScaling, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2RevisionScaling::Representation
      
          property :service_account, as: 'serviceAccount'
          property :timeout, as: 'timeout'
          collection :volumes, as: 'volumes', class: Google::Apis::RunV2::GoogleCloudRunOpV2Volume, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2Volume::Representation
      
          property :vpc_access, as: 'vpcAccess', class: Google::Apis::RunV2::GoogleCloudRunOpV2VpcAccess, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2VpcAccess::Representation
      
        end
      end
      
      class GoogleCloudRunOpV2SecretKeySelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret, as: 'secret'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudRunOpV2SecretVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_mode, as: 'defaultMode'
          collection :items, as: 'items', class: Google::Apis::RunV2::GoogleCloudRunOpV2VersionToPath, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2VersionToPath::Representation
      
          property :secret, as: 'secret'
        end
      end
      
      class GoogleCloudRunOpV2Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :binary_authorization, as: 'binaryAuthorization', class: Google::Apis::RunV2::GoogleCloudRunOpV2BinaryAuthorization, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2BinaryAuthorization::Representation
      
          property :client, as: 'client'
          property :client_version, as: 'clientVersion'
          collection :conditions, as: 'conditions', class: Google::Apis::RunV2::GoogleCloudRunOpV2Condition, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2Condition::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator'
          property :delete_time, as: 'deleteTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :expire_time, as: 'expireTime'
          property :generation, :numeric_string => true, as: 'generation'
          property :ingress, as: 'ingress'
          hash :labels, as: 'labels'
          property :last_modifier, as: 'lastModifier'
          property :latest_created_revision, as: 'latestCreatedRevision'
          property :latest_ready_revision, as: 'latestReadyRevision'
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          property :observed_generation, :numeric_string => true, as: 'observedGeneration'
          property :reconciling, as: 'reconciling'
          property :template, as: 'template', class: Google::Apis::RunV2::GoogleCloudRunOpV2RevisionTemplate, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2RevisionTemplate::Representation
      
          property :terminal_condition, as: 'terminalCondition', class: Google::Apis::RunV2::GoogleCloudRunOpV2Condition, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2Condition::Representation
      
          collection :traffic, as: 'traffic', class: Google::Apis::RunV2::GoogleCloudRunOpV2TrafficTarget, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2TrafficTarget::Representation
      
          collection :traffic_statuses, as: 'trafficStatuses', class: Google::Apis::RunV2::GoogleCloudRunOpV2TrafficTargetStatus, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2TrafficTargetStatus::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudRunOpV2TrafficTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percent, as: 'percent'
          property :revision, as: 'revision'
          property :tag, as: 'tag'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRunOpV2TrafficTargetStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percent, as: 'percent'
          property :revision, as: 'revision'
          property :tag, as: 'tag'
          property :type, as: 'type'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudRunOpV2VersionToPath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :path, as: 'path'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudRunOpV2Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql_instance, as: 'cloudSqlInstance', class: Google::Apis::RunV2::GoogleCloudRunOpV2CloudSqlInstance, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2CloudSqlInstance::Representation
      
          property :name, as: 'name'
          property :secret, as: 'secret', class: Google::Apis::RunV2::GoogleCloudRunOpV2SecretVolumeSource, decorator: Google::Apis::RunV2::GoogleCloudRunOpV2SecretVolumeSource::Representation
      
        end
      end
      
      class GoogleCloudRunOpV2VolumeMount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mount_path, as: 'mountPath'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRunOpV2VpcAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector, as: 'connector'
          property :egress, as: 'egress'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::RunV2::GoogleIamV1AuditLogConfig, decorator: Google::Apis::RunV2::GoogleIamV1AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleIamV1AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::RunV2::GoogleTypeExpr, decorator: Google::Apis::RunV2::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::RunV2::GoogleIamV1AuditConfig, decorator: Google::Apis::RunV2::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::RunV2::GoogleIamV1Binding, decorator: Google::Apis::RunV2::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::RunV2::GoogleIamV1Policy, decorator: Google::Apis::RunV2::GoogleIamV1Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::RunV2::GoogleLongrunningOperation, decorator: Google::Apis::RunV2::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::RunV2::GoogleRpcStatus, decorator: Google::Apis::RunV2::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleTypeExpr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
    end
  end
end
