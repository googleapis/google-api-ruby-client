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
    module HomegraphV1
      
      class AgentDeviceId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentOtherDeviceId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CameraEventStreamTrait
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommonEventDataStruct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Component
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComponentTraitUpdates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceBlameStruct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceNames
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EveUtilityTrait
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Events
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HomeEvents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HomeTraitPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HomeTraitUpdates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaUrlsStruct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MotionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartnerPresenceSignalTrait
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersonEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryRequestInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryRequestPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryResponsePayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportStateAndNotificationDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportStateAndNotificationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportStateAndNotificationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestSyncDevicesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestSyncDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Result
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StateAndNotificationPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StructurePresenceStateChangeEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StructurePresenceStateChangeReasonStruct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SyncRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SyncResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SyncResponsePayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ThermostatFanControlTrait
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TraitData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserBlameStruct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZoneStruct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentDeviceId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class AgentOtherDeviceId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
          property :device_id, as: 'deviceId'
        end
      end
      
      class CameraEventStreamTrait
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CommonEventDataStruct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :media_urls, as: 'mediaUrls', class: Google::Apis::HomegraphV1::MediaUrlsStruct, decorator: Google::Apis::HomegraphV1::MediaUrlsStruct::Representation
      
          property :session_id, as: 'sessionId'
          property :track_id, as: 'trackId'
        end
      end
      
      class Component
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :child_components, as: 'childComponents', class: Google::Apis::HomegraphV1::Component, decorator: Google::Apis::HomegraphV1::Component::Representation
      
          collection :device_types, as: 'deviceTypes'
          property :id, as: 'id'
          collection :trait_data, as: 'traitData', class: Google::Apis::HomegraphV1::TraitData, decorator: Google::Apis::HomegraphV1::TraitData::Representation
      
        end
      end
      
      class ComponentTraitUpdates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :component_id, as: 'componentId'
          collection :trait_data, as: 'traitData', class: Google::Apis::HomegraphV1::TraitData, decorator: Google::Apis::HomegraphV1::TraitData::Representation
      
        end
      end
      
      class Device
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          hash :custom_data, as: 'customData'
          property :device_info, as: 'deviceInfo', class: Google::Apis::HomegraphV1::DeviceInfo, decorator: Google::Apis::HomegraphV1::DeviceInfo::Representation
      
          property :id, as: 'id'
          property :name, as: 'name', class: Google::Apis::HomegraphV1::DeviceNames, decorator: Google::Apis::HomegraphV1::DeviceNames::Representation
      
          property :notification_supported_by_agent, as: 'notificationSupportedByAgent'
          collection :other_device_ids, as: 'otherDeviceIds', class: Google::Apis::HomegraphV1::AgentOtherDeviceId, decorator: Google::Apis::HomegraphV1::AgentOtherDeviceId::Representation
      
          property :room_hint, as: 'roomHint'
          property :structure_hint, as: 'structureHint'
          collection :traits, as: 'traits'
          property :type, as: 'type'
          property :will_report_state, as: 'willReportState'
        end
      end
      
      class DeviceBlameStruct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blame_type, as: 'blameType'
        end
      end
      
      class DeviceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hw_version, as: 'hwVersion'
          property :manufacturer, as: 'manufacturer'
          property :model, as: 'model'
          property :sw_version, as: 'swVersion'
        end
      end
      
      class DeviceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :trait_commit_timestamps, as: 'traitCommitTimestamps'
        end
      end
      
      class DeviceNames
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :default_names, as: 'defaultNames'
          property :name, as: 'name'
          collection :nicknames, as: 'nicknames'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EveUtilityTrait
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accepted_command_list, as: 'acceptedCommandList'
          property :accumulated_control_point, :numeric_string => true, as: 'accumulatedControlPoint'
          property :air_pressure, as: 'airPressure'
          property :altitude, as: 'altitude'
          property :child_lock, as: 'childLock'
          property :current, as: 'current'
          property :get_config, :base64 => true, as: 'getConfig'
          property :hold_position, as: 'holdPosition'
          property :last_event_time, :numeric_string => true, as: 'lastEventTime'
          property :logging_control_point, :base64 => true, as: 'loggingControlPoint'
          property :logging_data, :base64 => true, as: 'loggingData'
          property :logging_metadata, :base64 => true, as: 'loggingMetadata'
          property :logging_time, :base64 => true, as: 'loggingTime'
          property :motion_sensitivity, as: 'motionSensitivity'
          property :obstruction_detected, as: 'obstructionDetected'
          property :open_count, :numeric_string => true, as: 'openCount'
          property :rloc16, as: 'rloc16'
          property :set_config, :base64 => true, as: 'setConfig'
          property :status_fault, as: 'statusFault'
          property :voltage, as: 'voltage'
          property :watt, as: 'watt'
          property :watt_accumulated, as: 'wattAccumulated'
          property :weather_trend, as: 'weatherTrend'
        end
      end
      
      class EventData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :event, as: 'event'
          property :event_id, as: 'eventId'
          property :event_time, as: 'eventTime'
        end
      end
      
      class Events
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :component_id, as: 'componentId'
          collection :events, as: 'events', class: Google::Apis::HomegraphV1::EventData, decorator: Google::Apis::HomegraphV1::EventData::Representation
      
        end
      end
      
      class HomeEvents
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_id, as: 'deviceId'
          collection :events, as: 'events', class: Google::Apis::HomegraphV1::Events, decorator: Google::Apis::HomegraphV1::Events::Representation
      
        end
      end
      
      class HomeTraitPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :root_component, as: 'rootComponent', class: Google::Apis::HomegraphV1::Component, decorator: Google::Apis::HomegraphV1::Component::Representation
      
        end
      end
      
      class HomeTraitUpdates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :components, as: 'components', class: Google::Apis::HomegraphV1::ComponentTraitUpdates, decorator: Google::Apis::HomegraphV1::ComponentTraitUpdates::Representation
      
          property :device_id, as: 'deviceId'
        end
      end
      
      class MediaUrlsStruct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dash_manifest_url, as: 'dashManifestUrl'
          property :hls_master_playlist_url, as: 'hlsMasterPlaylistUrl'
          property :preview_url, as: 'previewUrl'
          property :thumbnail_url, as: 'thumbnailUrl'
        end
      end
      
      class MotionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_event_data, as: 'commonEventData', class: Google::Apis::HomegraphV1::CommonEventDataStruct, decorator: Google::Apis::HomegraphV1::CommonEventDataStruct::Representation
      
          collection :zones, as: 'zones', class: Google::Apis::HomegraphV1::ZoneStruct, decorator: Google::Apis::HomegraphV1::ZoneStruct::Representation
      
          property :zones_is_empty, as: 'zonesIsEmpty'
        end
      end
      
      class PartnerPresenceSignalTrait
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PersonEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_event_data, as: 'commonEventData', class: Google::Apis::HomegraphV1::CommonEventDataStruct, decorator: Google::Apis::HomegraphV1::CommonEventDataStruct::Representation
      
          collection :zones, as: 'zones', class: Google::Apis::HomegraphV1::ZoneStruct, decorator: Google::Apis::HomegraphV1::ZoneStruct::Representation
      
          property :zones_is_empty, as: 'zonesIsEmpty'
        end
      end
      
      class QueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_user_id, as: 'agentUserId'
          property :device_view, as: 'deviceView'
          property :include_device_metadata, as: 'includeDeviceMetadata'
          collection :inputs, as: 'inputs', class: Google::Apis::HomegraphV1::QueryRequestInput, decorator: Google::Apis::HomegraphV1::QueryRequestInput::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class QueryRequestInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payload, as: 'payload', class: Google::Apis::HomegraphV1::QueryRequestPayload, decorator: Google::Apis::HomegraphV1::QueryRequestPayload::Representation
      
        end
      end
      
      class QueryRequestPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::HomegraphV1::AgentDeviceId, decorator: Google::Apis::HomegraphV1::AgentDeviceId::Representation
      
        end
      end
      
      class QueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payload, as: 'payload', class: Google::Apis::HomegraphV1::QueryResponsePayload, decorator: Google::Apis::HomegraphV1::QueryResponsePayload::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class QueryResponsePayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :device_metadata, as: 'deviceMetadata', class: Google::Apis::HomegraphV1::DeviceMetadata, decorator: Google::Apis::HomegraphV1::DeviceMetadata::Representation
      
          hash :devices, as: 'devices'
          hash :home_trait_payload, as: 'homeTraitPayload', class: Google::Apis::HomegraphV1::HomeTraitPayload, decorator: Google::Apis::HomegraphV1::HomeTraitPayload::Representation
      
        end
      end
      
      class ReportStateAndNotificationDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :home_events, as: 'homeEvents', class: Google::Apis::HomegraphV1::HomeEvents, decorator: Google::Apis::HomegraphV1::HomeEvents::Representation
      
          collection :home_traits, as: 'homeTraits', class: Google::Apis::HomegraphV1::HomeTraitUpdates, decorator: Google::Apis::HomegraphV1::HomeTraitUpdates::Representation
      
          hash :notifications, as: 'notifications'
          hash :states, as: 'states'
        end
      end
      
      class ReportStateAndNotificationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_user_id, as: 'agentUserId'
          property :event_id, as: 'eventId'
          property :follow_up_token, as: 'followUpToken'
          property :payload, as: 'payload', class: Google::Apis::HomegraphV1::StateAndNotificationPayload, decorator: Google::Apis::HomegraphV1::StateAndNotificationPayload::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class ReportStateAndNotificationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :device_results, as: 'deviceResults', class: Google::Apis::HomegraphV1::Result, decorator: Google::Apis::HomegraphV1::Result::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class RequestSyncDevicesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_user_id, as: 'agentUserId'
          property :async, as: 'async'
        end
      end
      
      class RequestSyncDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Result
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :home_trait_commit_time, as: 'homeTraitCommitTime'
        end
      end
      
      class StateAndNotificationPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :devices, as: 'devices', class: Google::Apis::HomegraphV1::ReportStateAndNotificationDevice, decorator: Google::Apis::HomegraphV1::ReportStateAndNotificationDevice::Representation
      
        end
      end
      
      class StructurePresenceStateChangeEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :presence_state, as: 'presenceState'
          property :reason, as: 'reason', class: Google::Apis::HomegraphV1::StructurePresenceStateChangeReasonStruct, decorator: Google::Apis::HomegraphV1::StructurePresenceStateChangeReasonStruct::Representation
      
        end
      end
      
      class StructurePresenceStateChangeReasonStruct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_blame, as: 'deviceBlame', class: Google::Apis::HomegraphV1::DeviceBlameStruct, decorator: Google::Apis::HomegraphV1::DeviceBlameStruct::Representation
      
          property :user_blame, as: 'userBlame', class: Google::Apis::HomegraphV1::UserBlameStruct, decorator: Google::Apis::HomegraphV1::UserBlameStruct::Representation
      
        end
      end
      
      class SyncRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_user_id, as: 'agentUserId'
          property :request_id, as: 'requestId'
        end
      end
      
      class SyncResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payload, as: 'payload', class: Google::Apis::HomegraphV1::SyncResponsePayload, decorator: Google::Apis::HomegraphV1::SyncResponsePayload::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class SyncResponsePayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_user_id, as: 'agentUserId'
          collection :devices, as: 'devices', class: Google::Apis::HomegraphV1::Device, decorator: Google::Apis::HomegraphV1::Device::Representation
      
        end
      end
      
      class ThermostatFanControlTrait
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timer_duration, :numeric_string => true, as: 'timerDuration'
          property :timer_end, :numeric_string => true, as: 'timerEnd'
          property :timer_speed, as: 'timerSpeed'
        end
      end
      
      class TraitData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_time, as: 'commitTime'
          property :provider_update_time, as: 'providerUpdateTime'
          hash :trait, as: 'trait'
        end
      end
      
      class UserBlameStruct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blame_type, as: 'blameType'
          property :user_email, as: 'userEmail'
        end
      end
      
      class ZoneStruct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :zone_id, :numeric_string => true, as: 'zoneId'
        end
      end
    end
  end
end
