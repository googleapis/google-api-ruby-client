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
      
      # Specifies the audit configuration for a service.
      # The configuration determines which permission types are logged, and what
      # identities, if any, are exempted from logging.
      # An AuditConfig must have one or more AuditLogConfigs.
      # If there are AuditConfigs for both `allServices` and a specific service,
      # the union of the two AuditConfigs is used for that service: the log_types
      # specified in each AuditConfig are enabled, and the exempted_members in each
      # AuditConfig are exempted.
      # Example Policy with multiple AuditConfigs:
      # `
      # "audit_configs": [
      # `
      # "service": "allServices"
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # "exempted_members": [
      # "user:foo@gmail.com"
      # ]
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # `,
      # `
      # "log_type": "ADMIN_READ",
      # `
      # ]
      # `,
      # `
      # "service": "fooservice.googleapis.com"
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # "exempted_members": [
      # "user:bar@gmail.com"
      # ]
      # `
      # ]
      # `
      # ]
      # `
      # For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
      # logging. It also exempts foo@gmail.com from DATA_READ logging, and
      # bar@gmail.com from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Next ID: 4
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::CloudiotV1beta1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # 
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # Specifies a service that will be enabled for audit logging.
        # For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
        # `allServices` is a special value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions.
      # Example:
      # `
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # "exempted_members": [
      # "user:foo@gmail.com"
      # ]
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # `
      # ]
      # `
      # This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
      # foo@gmail.com from DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of
        # permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents an expression text. Example:
        # title: "User account presence"
        # description: "Determines whether the request has a user account"
        # expression: "size(request.user) > 0"
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::CloudiotV1beta1::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource.
        # `members` can have the following values:
        # * `allUsers`: A special identifier that represents anyone who is
        # on the internet; with or without a Google account.
        # * `allAuthenticatedUsers`: A special identifier that represents anyone
        # who is authenticated with a Google account or a service account.
        # * `user:`emailid``: An email address that represents a specific Google
        # account. For example, `alice@gmail.com` or `joe@example.com`.
        # * `serviceAccount:`emailid``: An email address that represents a service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`.
        # * `group:`emailid``: An email address that represents a Google group.
        # For example, `admins@example.com`.
        # * `domain:`domain``: A Google Apps domain name that represents all the
        # users of that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`.
        # For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
        # Required
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # The device resource.
      class Device
        include Google::Apis::Core::Hashable
      
        # The device configuration and its metadata. Eventually delivered to devices.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::CloudiotV1beta1::DeviceConfig]
        attr_accessor :config
      
        # The credentials used to authenticate this device. To allow credential
        # rotation without interruption, multiple device credentials can be bound to
        # this device. No more than 3 credentials can be bound to a single device at
        # a time.
        # Corresponds to the JSON property `credentials`
        # @return [Array<Google::Apis::CloudiotV1beta1::DeviceCredential>]
        attr_accessor :credentials
      
        # If a device is disabled, communication from it will be blocked. Can be used
        # to temporarily prevent the device from connecting if, for example, the
        # sensor is generating bad data and needs maintenance.
        # Corresponds to the JSON property `enabledState`
        # @return [String]
        attr_accessor :enabled_state
      
        # The user-defined device identifier. The device ID must be unique
        # within a device registry.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output only] The last time a cloud-to-device config version acknowledgment
        # was received from the device.
        # Corresponds to the JSON property `lastConfigAckTime`
        # @return [String]
        attr_accessor :last_config_ack_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `lastErrorStatus`
        # @return [Google::Apis::CloudiotV1beta1::Status]
        attr_accessor :last_error_status
      
        # [Output only] The last time an error happened, e.g., failed to publish to
        # Cloud Pub/Sub. This field is the timestamp of 'last_error_status'.
        # Corresponds to the JSON property `lastErrorTime`
        # @return [String]
        attr_accessor :last_error_time
      
        # [Output only] The last time an event was received. Timestamps are
        # periodically collected and written to storage; they may be stale by a few
        # minutes.
        # Corresponds to the JSON property `lastEventTime`
        # @return [String]
        attr_accessor :last_event_time
      
        # [Output only] The last time a heartbeat was received. Timestamps are
        # periodically collected and written to storage; they may be stale by a few
        # minutes.
        # Corresponds to the JSON property `lastHeartbeatTime`
        # @return [String]
        attr_accessor :last_heartbeat_time
      
        # The resource path name. For example,
        # `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or
        # `projects/p1/locations/us-central1/registries/registry0/devices/`num_id``.
        # When `name` is populated as a response from the service, it always ends
        # in the device numeric ID.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output only] A server-defined unique numeric ID for the device. This is a
        # more compact way to identify devices, and it is globally unique.
        # Corresponds to the JSON property `numId`
        # @return [Fixnum]
        attr_accessor :num_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @credentials = args[:credentials] if args.key?(:credentials)
          @enabled_state = args[:enabled_state] if args.key?(:enabled_state)
          @id = args[:id] if args.key?(:id)
          @last_config_ack_time = args[:last_config_ack_time] if args.key?(:last_config_ack_time)
          @last_error_status = args[:last_error_status] if args.key?(:last_error_status)
          @last_error_time = args[:last_error_time] if args.key?(:last_error_time)
          @last_event_time = args[:last_event_time] if args.key?(:last_event_time)
          @last_heartbeat_time = args[:last_heartbeat_time] if args.key?(:last_heartbeat_time)
          @name = args[:name] if args.key?(:name)
          @num_id = args[:num_id] if args.key?(:num_id)
        end
      end
      
      # The device configuration and its metadata. Eventually delivered to devices.
      class DeviceConfig
        include Google::Apis::Core::Hashable
      
        # [Output only] The time when this version state was updated in the Cloud IoT
        # Core service. This timestamp is set by the server.
        # Corresponds to the JSON property `cloudUpdateTime`
        # @return [String]
        attr_accessor :cloud_update_time
      
        # The data for a device configuration. Only binary data is currently supported.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::CloudiotV1beta1::DeviceConfigData]
        attr_accessor :data
      
        # [Output only] The time when the Cloud IoT Core server received the
        # acknowledgment from the device, indicating that the device has received
        # this configuration version. If this field is not present, the device has
        # not yet acknowledged that it received this version. Note that when sending
        # the config to the device, there may have been many config versions on the
        # Cloud IoT Core service while the device was disconnected; and on
        # connection, only the latest version is sent to the device. Some of the
        # versions may never be sent to the device, and therefore are never
        # acknowledged. This timestamp is set by the Cloud IoT Core service.
        # Corresponds to the JSON property `deviceAckTime`
        # @return [String]
        attr_accessor :device_ack_time
      
        # [Output only] The version of this update. The version number is assigned by
        # the server, and is always greater than zero after device creation. The
        # version must be zero on the `CreateDevice` request if a `config` is
        # specified; the response of `CreateDevice` will always have a value of one.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_update_time = args[:cloud_update_time] if args.key?(:cloud_update_time)
          @data = args[:data] if args.key?(:data)
          @device_ack_time = args[:device_ack_time] if args.key?(:device_ack_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The data for a device configuration. Only binary data is currently supported.
      class DeviceConfigData
        include Google::Apis::Core::Hashable
      
        # The configuration sent to the device, as bytes.
        # Corresponds to the JSON property `binaryData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :binary_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary_data = args[:binary_data] if args.key?(:binary_data)
        end
      end
      
      # A server-stored device credential used for authentication.
      class DeviceCredential
        include Google::Apis::Core::Hashable
      
        # [Optional] The time at which this credential becomes invalid. This
        # credential will be ignored for new client authentication requests after
        # this timestamp; however, it will not be automatically deleted.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # A public key format and data.
        # Corresponds to the JSON property `publicKey`
        # @return [Google::Apis::CloudiotV1beta1::PublicKeyCredential]
        attr_accessor :public_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @public_key = args[:public_key] if args.key?(:public_key)
        end
      end
      
      # A container for a group of devices.
      class DeviceRegistry
        include Google::Apis::Core::Hashable
      
        # Configuration to forward messages such as telemetry events.
        # Corresponds to the JSON property `eventNotificationConfig`
        # @return [Google::Apis::CloudiotV1beta1::NotificationConfig]
        attr_accessor :event_notification_config
      
        # The identifier of this device registry. For example, `myRegistry`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The configuration of MQTT for a device registry.
        # Corresponds to the JSON property `mqttConfig`
        # @return [Google::Apis::CloudiotV1beta1::MqttConfig]
        attr_accessor :mqtt_config
      
        # The resource path name. For example,
        # `projects/example-project/locations/us-central1/registries/my-registry`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_notification_config = args[:event_notification_config] if args.key?(:event_notification_config)
          @id = args[:id] if args.key?(:id)
          @mqtt_config = args[:mqtt_config] if args.key?(:mqtt_config)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents an expression text. Example:
      # title: "User account presence"
      # description: "Determines whether the request has a user account"
      # expression: "size(request.user) > 0"
      class Expr
        include Google::Apis::Core::Hashable
      
        # An optional description of the expression. This is a longer text which
        # describes the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in
        # Common Expression Language syntax.
        # The application context of the containing message determines which
        # well-known feature set of CEL is supported.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # An optional string indicating the location of the expression for error
        # reporting, e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # An optional title for the expression, i.e. a short string describing
        # its purpose. This can be used e.g. in UIs which allow to enter the
        # expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for `ListDeviceConfigVersions`.
      class ListDeviceConfigVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The device configuration for the last few versions. Versions are listed
        # in decreasing order, starting from the most recent one.
        # Corresponds to the JSON property `deviceConfigs`
        # @return [Array<Google::Apis::CloudiotV1beta1::DeviceConfig>]
        attr_accessor :device_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_configs = args[:device_configs] if args.key?(:device_configs)
        end
      end
      
      # Response for `ListDeviceRegistries`.
      class ListDeviceRegistriesResponse
        include Google::Apis::Core::Hashable
      
        # The registries that matched the query.
        # Corresponds to the JSON property `deviceRegistries`
        # @return [Array<Google::Apis::CloudiotV1beta1::DeviceRegistry>]
        attr_accessor :device_registries
      
        # If not empty, indicates that there may be more registries that match the
        # request; this value should be passed in a new
        # `ListDeviceRegistriesRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_registries = args[:device_registries] if args.key?(:device_registries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for `ListDevices`.
      class ListDevicesResponse
        include Google::Apis::Core::Hashable
      
        # The devices that match the request.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::CloudiotV1beta1::Device>]
        attr_accessor :devices
      
        # If not empty, indicates that there may be more devices that match the
        # request; this value should be passed in a new `ListDevicesRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @devices = args[:devices] if args.key?(:devices)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request for `ModifyCloudToDeviceConfig`.
      class ModifyCloudToDeviceConfigRequest
        include Google::Apis::Core::Hashable
      
        # The data for a device configuration. Only binary data is currently supported.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::CloudiotV1beta1::DeviceConfigData]
        attr_accessor :data
      
        # The version number to update. If this value is zero, it will not check the
        # version number of the server and will always update the current version;
        # otherwise, this update will fail if the version number found on the server
        # does not match this version number. This is used to support multiple
        # simultaneous updates without losing data.
        # Corresponds to the JSON property `versionToUpdate`
        # @return [Fixnum]
        attr_accessor :version_to_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @version_to_update = args[:version_to_update] if args.key?(:version_to_update)
        end
      end
      
      # The configuration of MQTT for a device registry.
      class MqttConfig
        include Google::Apis::Core::Hashable
      
        # If enabled, allows connections using the MQTT protocol. Otherwise any MQTT
        # connection to this registry will fail.
        # Corresponds to the JSON property `mqttConfigState`
        # @return [String]
        attr_accessor :mqtt_config_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mqtt_config_state = args[:mqtt_config_state] if args.key?(:mqtt_config_state)
        end
      end
      
      # Configuration to forward messages such as telemetry events.
      class NotificationConfig
        include Google::Apis::Core::Hashable
      
        # A Cloud Pub/Sub topic name. For example,
        # `projects/myProject/topics/deviceEvents`.
        # Corresponds to the JSON property `pubsubTopicName`
        # @return [String]
        attr_accessor :pubsub_topic_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pubsub_topic_name = args[:pubsub_topic_name] if args.key?(:pubsub_topic_name)
        end
      end
      
      # Defines an Identity and Access Management (IAM) policy. It is used to
      # specify access control policies for Cloud Platform resources.
      # A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
      # `members` to a `role`, where the members can be user accounts, Google groups,
      # Google domains, and service accounts. A `role` is a named list of permissions
      # defined by IAM.
      # **Example**
      # `
      # "bindings": [
      # `
      # "role": "roles/owner",
      # "members": [
      # "user:mike@example.com",
      # "group:admins@example.com",
      # "domain:google.com",
      # "serviceAccount:my-other-app@appspot.gserviceaccount.com",
      # ]
      # `,
      # `
      # "role": "roles/viewer",
      # "members": ["user:sean@example.com"]
      # `
      # ]
      # `
      # For a description of IAM and its features, see the
      # [IAM developer's guide](https://cloud.google.com/iam/docs).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::CloudiotV1beta1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`.
        # `bindings` with no members will result in an error.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::CloudiotV1beta1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of a policy from overwriting each other.
        # It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform policy updates in order to avoid race
        # conditions: An `etag` is returned in the response to `getIamPolicy`, and
        # systems are expected to put that etag in the request to `setIamPolicy` to
        # ensure that their change will be applied to the same version of the policy.
        # If no `etag` is provided in the call to `setIamPolicy`, then the existing
        # policy is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # 
        # Corresponds to the JSON property `iamOwned`
        # @return [Boolean]
        attr_accessor :iam_owned
        alias_method :iam_owned?, :iam_owned
      
        # Deprecated.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @iam_owned = args[:iam_owned] if args.key?(:iam_owned)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A public key format and data.
      class PublicKeyCredential
        include Google::Apis::Core::Hashable
      
        # The format of the key.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # The key data.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Defines an Identity and Access Management (IAM) policy. It is used to
        # specify access control policies for Cloud Platform resources.
        # A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
        # `members` to a `role`, where the members can be user accounts, Google groups,
        # Google domains, and service accounts. A `role` is a named list of permissions
        # defined by IAM.
        # **Example**
        # `
        # "bindings": [
        # `
        # "role": "roles/owner",
        # "members": [
        # "user:mike@example.com",
        # "group:admins@example.com",
        # "domain:google.com",
        # "serviceAccount:my-other-app@appspot.gserviceaccount.com",
        # ]
        # `,
        # `
        # "role": "roles/viewer",
        # "members": ["user:sean@example.com"]
        # `
        # ]
        # `
        # For a description of IAM and its features, see the
        # [IAM developer's guide](https://cloud.google.com/iam/docs).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::CloudiotV1beta1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the
        # following default mask is used:
        # paths: "bindings, etag"
        # This field is only used by Cloud IAM.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` that can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with
        # wildcards (such as '*' or 'storage.*') are not allowed. For more
        # information see
        # [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is
        # allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
    end
  end
end
