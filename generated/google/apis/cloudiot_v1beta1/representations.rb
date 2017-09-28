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
    module CloudiotV1beta1
      
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
      
      class Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceConfigData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceCredential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceRegistry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpDeviceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpDeviceState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpPublishEventRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpPublishEventResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpSetDeviceStateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDeviceConfigVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDeviceRegistriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyCloudToDeviceConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MqttConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublicKeyCredential
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
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::CloudiotV1beta1::AuditLogConfig, decorator: Google::Apis::CloudiotV1beta1::AuditLogConfig::Representation
      
          collection :exempted_members, as: 'exemptedMembers'
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
          property :condition, as: 'condition', class: Google::Apis::CloudiotV1beta1::Expr, decorator: Google::Apis::CloudiotV1beta1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class Device
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::CloudiotV1beta1::DeviceConfig, decorator: Google::Apis::CloudiotV1beta1::DeviceConfig::Representation
      
          collection :credentials, as: 'credentials', class: Google::Apis::CloudiotV1beta1::DeviceCredential, decorator: Google::Apis::CloudiotV1beta1::DeviceCredential::Representation
      
          property :enabled_state, as: 'enabledState'
          property :id, as: 'id'
          property :last_config_ack_time, as: 'lastConfigAckTime'
          property :last_error_status, as: 'lastErrorStatus', class: Google::Apis::CloudiotV1beta1::Status, decorator: Google::Apis::CloudiotV1beta1::Status::Representation
      
          property :last_error_time, as: 'lastErrorTime'
          property :last_event_time, as: 'lastEventTime'
          property :last_heartbeat_time, as: 'lastHeartbeatTime'
          property :name, as: 'name'
          property :num_id, :numeric_string => true, as: 'numId'
        end
      end
      
      class DeviceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_update_time, as: 'cloudUpdateTime'
          property :data, as: 'data', class: Google::Apis::CloudiotV1beta1::DeviceConfigData, decorator: Google::Apis::CloudiotV1beta1::DeviceConfigData::Representation
      
          property :device_ack_time, as: 'deviceAckTime'
          property :version, :numeric_string => true, as: 'version'
        end
      end
      
      class DeviceConfigData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_data, :base64 => true, as: 'binaryData'
        end
      end
      
      class DeviceCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_time, as: 'expirationTime'
          property :public_key, as: 'publicKey', class: Google::Apis::CloudiotV1beta1::PublicKeyCredential, decorator: Google::Apis::CloudiotV1beta1::PublicKeyCredential::Representation
      
        end
      end
      
      class DeviceRegistry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_notification_config, as: 'eventNotificationConfig', class: Google::Apis::CloudiotV1beta1::NotificationConfig, decorator: Google::Apis::CloudiotV1beta1::NotificationConfig::Representation
      
          property :id, as: 'id'
          property :mqtt_config, as: 'mqttConfig', class: Google::Apis::CloudiotV1beta1::MqttConfig, decorator: Google::Apis::CloudiotV1beta1::MqttConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class HttpDeviceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_data, :base64 => true, as: 'binaryData'
          property :version, :numeric_string => true, as: 'version'
        end
      end
      
      class HttpDeviceState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_data, :base64 => true, as: 'binaryData'
        end
      end
      
      class HttpPublishEventRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_data, :base64 => true, as: 'binaryData'
          property :sub_folder, as: 'subFolder'
        end
      end
      
      class HttpPublishEventResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class HttpSetDeviceStateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state', class: Google::Apis::CloudiotV1beta1::HttpDeviceState, decorator: Google::Apis::CloudiotV1beta1::HttpDeviceState::Representation
      
        end
      end
      
      class ListDeviceConfigVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_configs, as: 'deviceConfigs', class: Google::Apis::CloudiotV1beta1::DeviceConfig, decorator: Google::Apis::CloudiotV1beta1::DeviceConfig::Representation
      
        end
      end
      
      class ListDeviceRegistriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_registries, as: 'deviceRegistries', class: Google::Apis::CloudiotV1beta1::DeviceRegistry, decorator: Google::Apis::CloudiotV1beta1::DeviceRegistry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::CloudiotV1beta1::Device, decorator: Google::Apis::CloudiotV1beta1::Device::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ModifyCloudToDeviceConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data', class: Google::Apis::CloudiotV1beta1::DeviceConfigData, decorator: Google::Apis::CloudiotV1beta1::DeviceConfigData::Representation
      
          property :version_to_update, :numeric_string => true, as: 'versionToUpdate'
        end
      end
      
      class MqttConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mqtt_config_state, as: 'mqttConfigState'
        end
      end
      
      class NotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_topic_name, as: 'pubsubTopicName'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::CloudiotV1beta1::AuditConfig, decorator: Google::Apis::CloudiotV1beta1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::CloudiotV1beta1::Binding, decorator: Google::Apis::CloudiotV1beta1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :iam_owned, as: 'iamOwned'
          property :version, as: 'version'
        end
      end
      
      class PublicKeyCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :key, as: 'key'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::CloudiotV1beta1::Policy, decorator: Google::Apis::CloudiotV1beta1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
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
