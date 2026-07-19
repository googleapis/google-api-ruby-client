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
      
      # Component of a provider device.
      class Component
        include Google::Apis::Core::Hashable
      
        # Optional. Child components.
        # Corresponds to the JSON property `childComponents`
        # @return [Array<Google::Apis::HomegraphV1::Component>]
        attr_accessor :child_components
      
        # Required. List of Device types associated with this component. Supported
        # device types are defined in cs//depot/google3/home/homeservicelayer/uddm/types/
        # uddm_device_types.proto and the type string is the enum name, for example:
        # ON_OFF_LIGHT => "ON_OFF_LIGHT".
        # Corresponds to the JSON property `deviceTypes`
        # @return [Array<String>]
        attr_accessor :device_types
      
        # Required. ID of the component from the device provider.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. List of trait data associated with the component.
        # Corresponds to the JSON property `traitData`
        # @return [Array<Google::Apis::HomegraphV1::TraitData>]
        attr_accessor :trait_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_components = args[:child_components] if args.key?(:child_components)
          @device_types = args[:device_types] if args.key?(:device_types)
          @id = args[:id] if args.key?(:id)
          @trait_data = args[:trait_data] if args.key?(:trait_data)
        end
      end
      
      # Contains the set of updates for a component.
      class ComponentTraitUpdates
        include Google::Apis::Core::Hashable
      
        # Required. ID of the component from the device provider.
        # Corresponds to the JSON property `componentId`
        # @return [String]
        attr_accessor :component_id
      
        # Required. The updated trait data for the component.
        # Corresponds to the JSON property `traitData`
        # @return [Array<Google::Apis::HomegraphV1::TraitData>]
        attr_accessor :trait_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @component_id = args[:component_id] if args.key?(:component_id)
          @trait_data = args[:trait_data] if args.key?(:trait_data)
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
        # Action in each [QUERY](https://developers.home.google.com/cloud-to-cloud/
        # intents/query) and [EXECUTE](https://developers.home.google.com/cloud-to-cloud/
        # intents/execute) intent. Data in this object has a few constraints: No
        # sensitive information, including but not limited to Personally Identifiable
        # Information.
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
        # synced devices enabled for [local fulfillment](https://developers.home.google.
        # com/local-home/overview).
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
      
        # Traits supported by the device. See [device traits](https://developers.home.
        # google.com/cloud-to-cloud/traits).
        # Corresponds to the JSON property `traits`
        # @return [Array<String>]
        attr_accessor :traits
      
        # Hardware type of the device. See [device types](https://developers.home.google.
        # com/cloud-to-cloud/guides).
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
      
      # Metadata for traits of a single device.
      class DeviceMetadata
        include Google::Apis::Core::Hashable
      
        # Map from the Trait ID (e.g., "action.devices.traits.OnOff") to its last
        # Spanner commit timestamp.
        # Corresponds to the JSON property `traitCommitTimestamps`
        # @return [Hash<String,String>]
        attr_accessor :trait_commit_timestamps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @trait_commit_timestamps = args[:trait_commit_timestamps] if args.key?(:trait_commit_timestamps)
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
      
        # Primary name of the device, generally provided by the user. Names will be
        # truncated if over the 60 Unicode code point (character) limit and no errors
        # will be thrown. Developers are responsible for handling long names.
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
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Contains the details for a single event.
      class EventData
        include Google::Apis::Core::Hashable
      
        # Required. The actual event payload.
        # Corresponds to the JSON property `event`
        # @return [Hash<String,Object>]
        attr_accessor :event
      
        # Required. The unique event ID from the device provider.
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # Required. The timestamp of the event.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event = args[:event] if args.key?(:event)
          @event_id = args[:event_id] if args.key?(:event_id)
          @event_time = args[:event_time] if args.key?(:event_time)
        end
      end
      
      # Contains a set of events for a specific component.
      class Events
        include Google::Apis::Core::Hashable
      
        # Optional. The ID of the provider component if the events are associated with a
        # specific component. Optional for WHDM events, required for UDDM events.
        # Corresponds to the JSON property `componentId`
        # @return [String]
        attr_accessor :component_id
      
        # Required. List of events associated with the component.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::HomegraphV1::EventData>]
        attr_accessor :events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @component_id = args[:component_id] if args.key?(:component_id)
          @events = args[:events] if args.key?(:events)
        end
      end
      
      # Contains the set of events for an item.
      class HomeEvents
        include Google::Apis::Core::Hashable
      
        # Required. / Unique identifier for the device.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # Required. List of events for the item.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::HomegraphV1::Events>]
        attr_accessor :events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @events = args[:events] if args.key?(:events)
        end
      end
      
      # Container for UDDM trait data associated with a device.
      class HomeTraitPayload
        include Google::Apis::Core::Hashable
      
        # Component of a provider device.
        # Corresponds to the JSON property `rootComponent`
        # @return [Google::Apis::HomegraphV1::Component]
        attr_accessor :root_component
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @root_component = args[:root_component] if args.key?(:root_component)
        end
      end
      
      # Contains the set of updates for a device.
      class HomeTraitUpdates
        include Google::Apis::Core::Hashable
      
        # Required. Trait updates for each component.
        # Corresponds to the JSON property `components`
        # @return [Array<Google::Apis::HomegraphV1::ComponentTraitUpdates>]
        attr_accessor :components
      
        # Required. Unique identifier for the device.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @components = args[:components] if args.key?(:components)
          @device_id = args[:device_id] if args.key?(:device_id)
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
      
        # Optional. Specifies the type of device data to be returned in the response.
        # This allows callers to request traditional Smart Home traits, Unified Device
        # Data Model (UDDM) traits, or both. If unspecified, defaults to
        # SMART_HOME_TRAIT_ONLY.
        # Corresponds to the JSON property `deviceView`
        # @return [String]
        attr_accessor :device_view
      
        # Optional. If true, the response will include device metadata in the
        # device_metadata field.
        # Corresponds to the JSON property `includeDeviceMetadata`
        # @return [Boolean]
        attr_accessor :include_device_metadata
        alias_method :include_device_metadata?, :include_device_metadata
      
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
          @device_view = args[:device_view] if args.key?(:device_view)
          @include_device_metadata = args[:include_device_metadata] if args.key?(:include_device_metadata)
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
      # action.devices.QUERY` [response](https://developers.home.google.com/cloud-to-
      # cloud/intents/query). Example: ```json ` "requestId": "ff36a3cc-ec34-11e6-b1a0-
      # 64510650abcf", "payload": ` "devices": ` "123": ` "on": true, "online": true `,
      # "456": ` "on": true, "online": true, "brightness": 80, "color": ` "name": "
      # cerulean", "spectrumRGB": 31655 ` ` ` ` ` ```
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
      
        # Map from the Trait ID (e.g., "action.devices.traits.OnOff") to its last
        # Spanner commit timestamp. If a trait has no recorded timestamp, it will be
        # omitted from this map.
        # Corresponds to the JSON property `deviceMetadata`
        # @return [Hash<String,Google::Apis::HomegraphV1::DeviceMetadata>]
        attr_accessor :device_metadata
      
        # States of the devices. Map of third-party device ID to struct of device states.
        # Corresponds to the JSON property `devices`
        # @return [Hash<String,Hash<String,Object>>]
        attr_accessor :devices
      
        # Map of device IDs to their Unified Device Data Model (UDDM) trait payloads.
        # This field is populated when `device_view` is set to HOME_TRAIT_ONLY or
        # HOME_TRAIT_AND_SMART_HOME_TRAIT.
        # Corresponds to the JSON property `homeTraitPayload`
        # @return [Hash<String,Google::Apis::HomegraphV1::HomeTraitPayload>]
        attr_accessor :home_trait_payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_metadata = args[:device_metadata] if args.key?(:device_metadata)
          @devices = args[:devices] if args.key?(:devices)
          @home_trait_payload = args[:home_trait_payload] if args.key?(:home_trait_payload)
        end
      end
      
      # The states and notifications specific to a device.
      class ReportStateAndNotificationDevice
        include Google::Apis::Core::Hashable
      
        # Optional. UDDM/WHDM trait events
        # Corresponds to the JSON property `homeEvents`
        # @return [Array<Google::Apis::HomegraphV1::HomeEvents>]
        attr_accessor :home_events
      
        # Optional. UDDM/WHDM trait updates.
        # Corresponds to the JSON property `homeTraits`
        # @return [Array<Google::Apis::HomegraphV1::HomeTraitUpdates>]
        attr_accessor :home_traits
      
        # Notifications metadata for devices. See the **Device NOTIFICATIONS** section
        # of the individual trait [reference guides](https://developers.home.google.com/
        # cloud-to-cloud/traits).
        # Corresponds to the JSON property `notifications`
        # @return [Hash<String,Object>]
        attr_accessor :notifications
      
        # States of devices to update. See the **Device STATES** section of the
        # individual trait [reference guides](https://developers.home.google.com/cloud-
        # to-cloud/traits).
        # Corresponds to the JSON property `states`
        # @return [Hash<String,Object>]
        attr_accessor :states
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @home_events = args[:home_events] if args.key?(:home_events)
          @home_traits = args[:home_traits] if args.key?(:home_traits)
          @notifications = args[:notifications] if args.key?(:notifications)
          @states = args[:states] if args.key?(:states)
        end
      end
      
      # Request type for the [`ReportStateAndNotification`](#google.home.graph.v1.
      # HomeGraphApiService.ReportStateAndNotification) call. It may include states,
      # notifications, home_traits, home_events, or any combination thereof. Smart
      # Home Device Traits (SHDT) `states` and `notifications` are defined per `
      # device_id` (for example, "123" and "456" in the following example). Google
      # Home Traits `home_traits` and `home_events` are lists of updates or events,
      # each associated with a `device_id` (for example, "789" in the following
      # example). Example: ```json ` "requestId": "ff36a3cc-ec34-11e6-b1a0-
      # 64510650abcf", "agentUserId": "1234", "payload": ` "devices": ` "states": ` "
      # 123": ` "on": true `, "456": ` "on": true, "brightness": 10 `, `, "homeTraits":
      # [ ` "deviceId": "789", "components": [ ` "componentId": "main", "traitData": [
      # ` "trait": ` "@type": "type.googleapis.com/home.graph.v1.OnOffTrait", "onOff":
      # true ` ` ] ` ] ` ], "homeEvents": [ ` "deviceId": "789", "events": [ ` "
      # componentId": "main", "events": [ ` "eventId": "event-123", "eventTime": "2026-
      # 01-01T00:00:00Z", "event": ` "@type": "type.googleapis.com/home.graph.v1.
      # DoorbellPressTrait.DoorbellPressedEvent" ` ` ] ` ] ` ] ` ` ` ```
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
      
        # Deprecated.
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
      # devices.SYNC` [response](https://developers.home.google.com/cloud-to-cloud/
      # intents/sync). Example: ```json ` "requestId": "ff36a3cc-ec34-11e6-b1a0-
      # 64510650abcf", "payload": ` "agentUserId": "1836.15267389", "devices": [` "id":
      # "123", "type": "action.devices.types.OUTLET", "traits": [ "action.devices.
      # traits.OnOff" ], "name": ` "defaultNames": ["My Outlet 1234"], "name": "Night
      # light", "nicknames": ["wall plug"] `, "willReportState": false, "deviceInfo": `
      # "manufacturer": "lights-out-inc", "model": "hs1234", "hwVersion": "3.2", "
      # swVersion": "11.4" `, "customData": ` "fooValue": 74, "barValue": true, "
      # bazValue": "foo" ` `] ` ` ```
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
      
      # Contains the trait payload for a single trait.
      class TraitData
        include Google::Apis::Core::Hashable
      
        # Other metadata for the trait. The time the client update was committed in the
        # server.
        # Corresponds to the JSON property `commitTime`
        # @return [String]
        attr_accessor :commit_time
      
        # Optional in write requests (e.g. ReportStateAndNotification). If set,
        # represents the provider version timestamp of the existing trait in the
        # database. The server will perform optimistic locking validation if this field
        # is present and the experiment is enabled. It will not be persisted to the
        # database.
        # Corresponds to the JSON property `providerVersionTime`
        # @return [String]
        attr_accessor :provider_version_time
      
        # The Provider Home API trait payload.
        # Corresponds to the JSON property `trait`
        # @return [Hash<String,Object>]
        attr_accessor :trait
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_time = args[:commit_time] if args.key?(:commit_time)
          @provider_version_time = args[:provider_version_time] if args.key?(:provider_version_time)
          @trait = args[:trait] if args.key?(:trait)
        end
      end
    end
  end
end
