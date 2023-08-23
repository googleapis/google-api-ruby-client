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
    module HomegraphV1
      
      # Third-party device ID for one device.
      class AgentDeviceId
        include Google::Apis::Core::Hashable
      
        # Third-party device ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Alternate third-party device ID.
      class AgentOtherDeviceId
        include Google::Apis::Core::Hashable
      
        # Project ID for your smart home Action.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # Unique third-party device ID.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @device_id = args[:device_id] if args.key?(:device_id)
        end
      end
      
      # Third-party device definition.
      class Device
        include Google::Apis::Core::Hashable
      
        # Attributes for the traits supported by the device.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Object>]
        attr_accessor :attributes
      
        # Custom device attributes stored in Home Graph and provided to your smart home
        # Action in each [QUERY](https://developers.google.com/assistant/smarthome/
        # reference/intent/query) and [EXECUTE](https://developers.google.com/assistant/
        # smarthome/reference/intent/execute) intent.
        # Corresponds to the JSON property `customData`
        # @return [Hash<String,Object>]
        attr_accessor :custom_data
      
        # Device information.
        # Corresponds to the JSON property `deviceInfo`
        # @return [Google::Apis::HomegraphV1::DeviceInfo]
        attr_accessor :device_info
      
        # Third-party device ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifiers used to describe the device.
        # Corresponds to the JSON property `name`
        # @return [Google::Apis::HomegraphV1::DeviceNames]
        attr_accessor :name
      
        # Indicates whether your smart home Action will report notifications to Google
        # for this device via ReportStateAndNotification. If your smart home Action
        # enables users to control device notifications, you should update this field
        # and call RequestSyncDevices.
        # Corresponds to the JSON property `notificationSupportedByAgent`
        # @return [Boolean]
        attr_accessor :notification_supported_by_agent
        alias_method :notification_supported_by_agent?, :notification_supported_by_agent
      
        # Alternate IDs associated with this device. This is used to identify cloud
        # synced devices enabled for [local fulfillment](https://developers.google.com/
        # assistant/smarthome/concepts/local).
        # Corresponds to the JSON property `otherDeviceIds`
        # @return [Array<Google::Apis::HomegraphV1::AgentOtherDeviceId>]
        attr_accessor :other_device_ids
      
        # Suggested name for the room where this device is installed. Google attempts to
        # use this value during user setup.
        # Corresponds to the JSON property `roomHint`
        # @return [String]
        attr_accessor :room_hint
      
        # Suggested name for the structure where this device is installed. Google
        # attempts to use this value during user setup.
        # Corresponds to the JSON property `structureHint`
        # @return [String]
        attr_accessor :structure_hint
      
        # Traits supported by the device. See [device traits](https://developers.google.
        # com/assistant/smarthome/traits).
        # Corresponds to the JSON property `traits`
        # @return [Array<String>]
        attr_accessor :traits
      
        # Hardware type of the device. See [device types](https://developers.google.com/
        # assistant/smarthome/guides).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Indicates whether your smart home Action will report state of this device to
        # Google via ReportStateAndNotification.
        # Corresponds to the JSON property `willReportState`
        # @return [Boolean]
        attr_accessor :will_report_state
        alias_method :will_report_state?, :will_report_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @custom_data = args[:custom_data] if args.key?(:custom_data)
          @device_info = args[:device_info] if args.key?(:device_info)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @notification_supported_by_agent = args[:notification_supported_by_agent] if args.key?(:notification_supported_by_agent)
          @other_device_ids = args[:other_device_ids] if args.key?(:other_device_ids)
          @room_hint = args[:room_hint] if args.key?(:room_hint)
          @structure_hint = args[:structure_hint] if args.key?(:structure_hint)
          @traits = args[:traits] if args.key?(:traits)
          @type = args[:type] if args.key?(:type)
          @will_report_state = args[:will_report_state] if args.key?(:will_report_state)
        end
      end
      
      # Device information.
      class DeviceInfo
        include Google::Apis::Core::Hashable
      
        # Device hardware version.
        # Corresponds to the JSON property `hwVersion`
        # @return [String]
        attr_accessor :hw_version
      
        # Device manufacturer.
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # Device model.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Device software version.
        # Corresponds to the JSON property `swVersion`
        # @return [String]
        attr_accessor :sw_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hw_version = args[:hw_version] if args.key?(:hw_version)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @model = args[:model] if args.key?(:model)
          @sw_version = args[:sw_version] if args.key?(:sw_version)
        end
      end
      
      # Identifiers used to describe the device.
      class DeviceNames
        include Google::Apis::Core::Hashable
      
        # List of names provided by the manufacturer rather than the user, such as
        # serial numbers, SKUs, etc.
        # Corresponds to the JSON property `defaultNames`
        # @return [Array<String>]
        attr_accessor :default_names
      
        # Primary name of the device, generally provided by the user.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Additional names provided by the user for the device.
        # Corresponds to the JSON property `nicknames`
        # @return [Array<String>]
        attr_accessor :nicknames
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_names = args[:default_names] if args.key?(:default_names)
          @name = args[:name] if args.key?(:name)
          @nicknames = args[:nicknames] if args.key?(:nicknames)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request type for the [`Query`](#google.home.graph.v1.HomeGraphApiService.Query)
      # call.
      class QueryRequest
        include Google::Apis::Core::Hashable
      
        # Required. Third-party user ID.
        # Corresponds to the JSON property `agentUserId`
        # @return [String]
        attr_accessor :agent_user_id
      
        # Required. Inputs containing third-party device IDs for which to get the device
        # states.
        # Corresponds to the JSON property `inputs`
        # @return [Array<Google::Apis::HomegraphV1::QueryRequestInput>]
        attr_accessor :inputs
      
        # Request ID used for debugging.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_user_id = args[:agent_user_id] if args.key?(:agent_user_id)
          @inputs = args[:inputs] if args.key?(:inputs)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Device ID inputs to QueryRequest.
      class QueryRequestInput
        include Google::Apis::Core::Hashable
      
        # Payload containing device IDs.
        # Corresponds to the JSON property `payload`
        # @return [Google::Apis::HomegraphV1::QueryRequestPayload]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
        end
      end
      
      # Payload containing device IDs.
      class QueryRequestPayload
        include Google::Apis::Core::Hashable
      
        # Third-party device IDs for which to get the device states.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::HomegraphV1::AgentDeviceId>]
        attr_accessor :devices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @devices = args[:devices] if args.key?(:devices)
        end
      end
      
      # Response type for the [`Query`](#google.home.graph.v1.HomeGraphApiService.
      # Query) call. This should follow the same format as the Google smart home `
      # action.devices.QUERY` [response](https://developers.google.com/assistant/
      # smarthome/reference/intent/query). # Example ```json ` "requestId": "ff36a3cc-
      # ec34-11e6-b1a0-64510650abcf", "payload": ` "devices": ` "123": ` "on": true, "
      # online": true `, "456": ` "on": true, "online": true, "brightness": 80, "color"
      # : ` "name": "cerulean", "spectrumRGB": 31655 ` ` ` ` ` ```
      class QueryResponse
        include Google::Apis::Core::Hashable
      
        # Payload containing device states information.
        # Corresponds to the JSON property `payload`
        # @return [Google::Apis::HomegraphV1::QueryResponsePayload]
        attr_accessor :payload
      
        # Request ID used for debugging. Copied from the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Payload containing device states information.
      class QueryResponsePayload
        include Google::Apis::Core::Hashable
      
        # States of the devices. Map of third-party device ID to struct of device states.
        # Corresponds to the JSON property `devices`
        # @return [Hash<String,Hash<String,Object>>]
        attr_accessor :devices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @devices = args[:devices] if args.key?(:devices)
        end
      end
      
      # The states and notifications specific to a device.
      class ReportStateAndNotificationDevice
        include Google::Apis::Core::Hashable
      
        # Notifications metadata for devices. See the **Device NOTIFICATIONS** section
        # of the individual trait [reference guides](https://developers.google.com/
        # assistant/smarthome/traits).
        # Corresponds to the JSON property `notifications`
        # @return [Hash<String,Object>]
        attr_accessor :notifications
      
        # States of devices to update. See the **Device STATES** section of the
        # individual trait [reference guides](https://developers.google.com/assistant/
        # smarthome/traits).
        # Corresponds to the JSON property `states`
        # @return [Hash<String,Object>]
        attr_accessor :states
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notifications = args[:notifications] if args.key?(:notifications)
          @states = args[:states] if args.key?(:states)
        end
      end
      
      # Request type for the [`ReportStateAndNotification`](#google.home.graph.v1.
      # HomeGraphApiService.ReportStateAndNotification) call. It may include states,
      # notifications, or both. States and notifications are defined per `device_id` (
      # for example, "123" and "456" in the following example). # Example ```json ` "
      # requestId": "ff36a3cc-ec34-11e6-b1a0-64510650abcf", "agentUserId": "1234", "
      # payload": ` "devices": ` "states": ` "123": ` "on": true `, "456": ` "on":
      # true, "brightness": 10 ` `, ` ` ` ```
      class ReportStateAndNotificationRequest
        include Google::Apis::Core::Hashable
      
        # Required. Third-party user ID.
        # Corresponds to the JSON property `agentUserId`
        # @return [String]
        attr_accessor :agent_user_id
      
        # Unique identifier per event (for example, a doorbell press).
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # Token to maintain state in the follow up notification response. Deprecated.
        # See the [notifications guide](https://developers.google.com/assistant/
        # smarthome/develop/notifications) for details on implementing follow up
        # notifications.
        # Corresponds to the JSON property `followUpToken`
        # @return [String]
        attr_accessor :follow_up_token
      
        # Payload containing the state and notification information for devices.
        # Corresponds to the JSON property `payload`
        # @return [Google::Apis::HomegraphV1::StateAndNotificationPayload]
        attr_accessor :payload
      
        # Request ID used for debugging.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_user_id = args[:agent_user_id] if args.key?(:agent_user_id)
          @event_id = args[:event_id] if args.key?(:event_id)
          @follow_up_token = args[:follow_up_token] if args.key?(:follow_up_token)
          @payload = args[:payload] if args.key?(:payload)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Response type for the [`ReportStateAndNotification`](#google.home.graph.v1.
      # HomeGraphApiService.ReportStateAndNotification) call.
      class ReportStateAndNotificationResponse
        include Google::Apis::Core::Hashable
      
        # Request ID copied from ReportStateAndNotificationRequest.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Request type for the [`RequestSyncDevices`](#google.home.graph.v1.
      # HomeGraphApiService.RequestSyncDevices) call.
      class RequestSyncDevicesRequest
        include Google::Apis::Core::Hashable
      
        # Required. Third-party user ID.
        # Corresponds to the JSON property `agentUserId`
        # @return [String]
        attr_accessor :agent_user_id
      
        # Optional. If set, the request will be added to a queue and a response will be
        # returned immediately. This enables concurrent requests for the given `
        # agent_user_id`, but the caller will not receive any error responses.
        # Corresponds to the JSON property `async`
        # @return [Boolean]
        attr_accessor :async
        alias_method :async?, :async
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_user_id = args[:agent_user_id] if args.key?(:agent_user_id)
          @async = args[:async] if args.key?(:async)
        end
      end
      
      # Response type for the [`RequestSyncDevices`](#google.home.graph.v1.
      # HomeGraphApiService.RequestSyncDevices) call. Intentionally empty upon success.
      # An HTTP response code is returned with more details upon failure.
      class RequestSyncDevicesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Payload containing the state and notification information for devices.
      class StateAndNotificationPayload
        include Google::Apis::Core::Hashable
      
        # The states and notifications specific to a device.
        # Corresponds to the JSON property `devices`
        # @return [Google::Apis::HomegraphV1::ReportStateAndNotificationDevice]
        attr_accessor :devices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @devices = args[:devices] if args.key?(:devices)
        end
      end
      
      # Request type for the [`Sync`](#google.home.graph.v1.HomeGraphApiService.Sync)
      # call.
      class SyncRequest
        include Google::Apis::Core::Hashable
      
        # Required. Third-party user ID.
        # Corresponds to the JSON property `agentUserId`
        # @return [String]
        attr_accessor :agent_user_id
      
        # Request ID used for debugging.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_user_id = args[:agent_user_id] if args.key?(:agent_user_id)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Response type for the [`Sync`](#google.home.graph.v1.HomeGraphApiService.Sync)
      # call. This should follow the same format as the Google smart home `action.
      # devices.SYNC` [response](https://developers.google.com/assistant/smarthome/
      # reference/intent/sync). # Example ```json ` "requestId": "ff36a3cc-ec34-11e6-
      # b1a0-64510650abcf", "payload": ` "agentUserId": "1836.15267389", "devices": [`
      # "id": "123", "type": "action.devices.types.OUTLET", "traits": [ "action.
      # devices.traits.OnOff" ], "name": ` "defaultNames": ["My Outlet 1234"], "name":
      # "Night light", "nicknames": ["wall plug"] `, "willReportState": false, "
      # deviceInfo": ` "manufacturer": "lights-out-inc", "model": "hs1234", "hwVersion"
      # : "3.2", "swVersion": "11.4" `, "customData": ` "fooValue": 74, "barValue":
      # true, "bazValue": "foo" ` `] ` ` ```
      class SyncResponse
        include Google::Apis::Core::Hashable
      
        # Payload containing device information.
        # Corresponds to the JSON property `payload`
        # @return [Google::Apis::HomegraphV1::SyncResponsePayload]
        attr_accessor :payload
      
        # Request ID used for debugging. Copied from the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Payload containing device information.
      class SyncResponsePayload
        include Google::Apis::Core::Hashable
      
        # Third-party user ID
        # Corresponds to the JSON property `agentUserId`
        # @return [String]
        attr_accessor :agent_user_id
      
        # Devices associated with the third-party user.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::HomegraphV1::Device>]
        attr_accessor :devices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_user_id = args[:agent_user_id] if args.key?(:agent_user_id)
          @devices = args[:devices] if args.key?(:devices)
        end
      end
    end
  end
end
