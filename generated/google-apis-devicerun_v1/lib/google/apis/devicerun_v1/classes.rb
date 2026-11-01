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
    module DevicerunV1
      
      # Android-specific device attributes.
      class CatalogAndroidDeviceDetails
        include Google::Apis::Core::Hashable
      
        # Output only. Mirrors the AOSP `ro.build.type` property, e.g. "user", "
        # userdebug", "eng". Empty if unknown.
        # Corresponds to the JSON property `buildType`
        # @return [String]
        attr_accessor :build_type
      
        # Output only. Lists ABIs supported by the device (android.os.Build.
        # SUPPORTED_ABIS), most preferred first, e.g. "arm64-v8a".
        # Corresponds to the JSON property `supportedAbis`
        # @return [Array<String>]
        attr_accessor :supported_abis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_type = args[:build_type] if args.key?(:build_type)
          @supported_abis = args[:supported_abis] if args.key?(:supported_abis)
        end
      end
      
      # AndroidX Test Orchestrator-specific attributes. Reserved for future
      # orchestrator-only fields.
      class CatalogAndroidxTestOrchestratorDetails
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Per-product metadata for the Automation (DeviceRun) product.
      class CatalogAutomationSupport
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A single routable device configuration in the catalog.
      class CatalogDevice
        include Google::Apis::Core::Hashable
      
        # Output only. Reasons for access denial. This model is accessible/usable if
        # this list is empty, otherwise the model is viewable only.
        # Corresponds to the JSON property `accessDeniedReasons`
        # @return [Array<String>]
        attr_accessor :access_denied_reasons
      
        # Android-specific device attributes.
        # Corresponds to the JSON property `androidDetails`
        # @return [Google::Apis::DevicerunV1::CatalogAndroidDeviceDetails]
        attr_accessor :android_details
      
        # Fleet availability for a device configuration.
        # Corresponds to the JSON property `availability`
        # @return [Google::Apis::DevicerunV1::CatalogDeviceAvailability]
        attr_accessor :availability
      
        # Output only. Provides a human-readable display name, e.g. "Pixel 5".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Specifies the form factor of the device.
        # Corresponds to the JSON property `formFactor`
        # @return [String]
        attr_accessor :form_factor
      
        # Output only. Indicates whether the device is physical or virtual.
        # Corresponds to the JSON property `hardwareType`
        # @return [String]
        attr_accessor :hardware_type
      
        # iOS-specific device attributes. Reserved for future iOS-only fields.
        # Corresponds to the JSON property `iosDetails`
        # @return [Google::Apis::DevicerunV1::CatalogIosDeviceDetails]
        attr_accessor :ios_details
      
        # The lab hosting a device.
        # Corresponds to the JSON property `labInfo`
        # @return [Google::Apis::DevicerunV1::CatalogLabInfo]
        attr_accessor :lab_info
      
        # Output only. Additional information. Informational only. May change over the
        # lifecycle of a device.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Catalog resource lifecycle: maturity state plus key lifecycle dates.
        # Corresponds to the JSON property `lifecycle`
        # @return [Google::Apis::DevicerunV1::CatalogLifecycle]
        attr_accessor :lifecycle
      
        # Output only. Specifies the hardware manufacturer of the device.
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # Output only. Provides a human-readable model identifier for this device,
        # independent of OS version. May be empty. Platform-dependent: * Android
        # physical: hardware codename (android.os.Build.DEVICE), e.g. "shiba". * Android
        # virtual: AVD model identifier, e.g. "MediumPhone.arm". * iOS: model identifier,
        # e.g. "iphone14pro".
        # Corresponds to the JSON property `modelCode`
        # @return [String]
        attr_accessor :model_code
      
        # Identifier. Identifies the device resource. Format: `projects/`project`/
        # locations/`location`/devices/`device``. The `device` segment is an opaque,
        # stable string. Clients must not parse it to derive or assume device-specific
        # details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Specifies the OS version, e.g. "30" (Android API level) or "17.4"
        # (iOS).
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # Output only. Specifies the platform of the device.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # Screen measurements of a device.
        # Corresponds to the JSON property `primaryScreen`
        # @return [Google::Apis::DevicerunV1::CatalogScreenMetrics]
        attr_accessor :primary_screen
      
        # Output only. Products/Services supported by this device.
        # Corresponds to the JSON property `supportedProducts`
        # @return [Array<Google::Apis::DevicerunV1::CatalogSupportedProduct>]
        attr_accessor :supported_products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_denied_reasons = args[:access_denied_reasons] if args.key?(:access_denied_reasons)
          @android_details = args[:android_details] if args.key?(:android_details)
          @availability = args[:availability] if args.key?(:availability)
          @display_name = args[:display_name] if args.key?(:display_name)
          @form_factor = args[:form_factor] if args.key?(:form_factor)
          @hardware_type = args[:hardware_type] if args.key?(:hardware_type)
          @ios_details = args[:ios_details] if args.key?(:ios_details)
          @lab_info = args[:lab_info] if args.key?(:lab_info)
          @labels = args[:labels] if args.key?(:labels)
          @lifecycle = args[:lifecycle] if args.key?(:lifecycle)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @model_code = args[:model_code] if args.key?(:model_code)
          @name = args[:name] if args.key?(:name)
          @os_version = args[:os_version] if args.key?(:os_version)
          @platform = args[:platform] if args.key?(:platform)
          @primary_screen = args[:primary_screen] if args.key?(:primary_screen)
          @supported_products = args[:supported_products] if args.key?(:supported_products)
        end
      end
      
      # Fleet availability for a device configuration.
      class CatalogDeviceAvailability
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies the current availability bucket (idle, immediately
        # allocatable devices) for this device configuration. This is a best-effort
        # snapshot, refreshed periodically. It fluctuates depending on traffic as other
        # requests allocate devices.
        # Corresponds to the JSON property `available`
        # @return [String]
        attr_accessor :available
      
        # Output only. Specifies the current capacity bucket for this device
        # configuration. Represents the total number of online devices (idle or in use).
        # Corresponds to the JSON property `capacity`
        # @return [String]
        attr_accessor :capacity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available = args[:available] if args.key?(:available)
          @capacity = args[:capacity] if args.key?(:capacity)
        end
      end
      
      # Per-product metadata for the DeviceStreaming product.
      class CatalogDeviceStreamingSupport
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies the minimum Android Studio version that supports this
        # device. Optional; only set when the device is known to work only at or above a
        # certain Android Studio version. Expected format "major.minor.micro.patch", e.g.
        # "5921.22.2211.8881706".
        # Corresponds to the JSON property `minimumAndroidStudioVersion`
        # @return [String]
        attr_accessor :minimum_android_studio_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @minimum_android_studio_version = args[:minimum_android_studio_version] if args.key?(:minimum_android_studio_version)
        end
      end
      
      # iOS-specific device attributes. Reserved for future iOS-only fields.
      class CatalogIosDeviceDetails
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The lab hosting a device.
      class CatalogLabInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Display name of the lab where the device is hosted. If empty, the
        # device is hosted in a Google owned lab.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The Unicode country/region code (CLDR) of the lab where the
        # device is hosted, e.g. "US" for United States, "KR" for South Korea. Empty
        # when the hosting region is not published.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Catalog resource lifecycle: maturity state plus key lifecycle dates.
      class CatalogLifecycle
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `removalDate`
        # @return [Google::Apis::DevicerunV1::Date]
        attr_accessor :removal_date
      
        # Output only. Specifies the current maturity state of the resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @removal_date = args[:removal_date] if args.key?(:removal_date)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Response including listed devices.
      class CatalogListDevicesResponse
        include Google::Apis::Core::Hashable
      
        # The list of devices.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::DevicerunV1::CatalogDevice>]
        attr_accessor :devices
      
        # Token to receive the next page of devices. This will be absent if the end of
        # the response list has been reached.
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
      
      # Response including listed software versions.
      class CatalogListSoftwareVersionsResponse
        include Google::Apis::Core::Hashable
      
        # Token to receive the next page of software versions. This will be absent if
        # the end of the response list has been reached.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of software versions.
        # Corresponds to the JSON property `softwareVersions`
        # @return [Array<Google::Apis::DevicerunV1::CatalogSoftwareVersion>]
        attr_accessor :software_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @software_versions = args[:software_versions] if args.key?(:software_versions)
        end
      end
      
      # Screen measurements of a device.
      class CatalogScreenMetrics
        include Google::Apis::Core::Hashable
      
        # Output only. Pixel density in dots per inch (dpi).
        # Corresponds to the JSON property `densityDpi`
        # @return [Fixnum]
        attr_accessor :density_dpi
      
        # Output only. Height in pixels.
        # Corresponds to the JSON property `heightPx`
        # @return [Fixnum]
        attr_accessor :height_px
      
        # Output only. Width in pixels.
        # Corresponds to the JSON property `widthPx`
        # @return [Fixnum]
        attr_accessor :width_px
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @density_dpi = args[:density_dpi] if args.key?(:density_dpi)
          @height_px = args[:height_px] if args.key?(:height_px)
          @width_px = args[:width_px] if args.key?(:width_px)
        end
      end
      
      # A single software version in the catalog.
      class CatalogSoftwareVersion
        include Google::Apis::Core::Hashable
      
        # AndroidX Test Orchestrator-specific attributes. Reserved for future
        # orchestrator-only fields.
        # Corresponds to the JSON property `androidxTestOrchestratorDetails`
        # @return [Google::Apis::DevicerunV1::CatalogAndroidxTestOrchestratorDetails]
        attr_accessor :androidx_test_orchestrator_details
      
        # Output only. Provides a human-readable name for this version, e.g. "AndroidX
        # Test Orchestrator 1.4.1".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Indicates whether the system uses this version when a request
        # does not select one explicitly. Exactly one version per `software_type` is the
        # default, and it may change over time.
        # Corresponds to the JSON property `isDefault`
        # @return [Boolean]
        attr_accessor :is_default
        alias_method :is_default?, :is_default
      
        # Catalog resource lifecycle: maturity state plus key lifecycle dates.
        # Corresponds to the JSON property `lifecycle`
        # @return [Google::Apis::DevicerunV1::CatalogLifecycle]
        attr_accessor :lifecycle
      
        # Identifier. Identifies the software version resource. Format: `projects/`
        # project`/locations/`location`/softwareVersions/`software_version``. The `
        # software_version` segment is an opaque, stable string. Clients must not parse
        # it to derive or assume the version.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Specifies which software this is a version of. Filter on this
        # field to narrow the collection to a single kind of software, for example `
        # software_type = "ANDROIDX_TEST_ORCHESTRATOR"`.
        # Corresponds to the JSON property `softwareType`
        # @return [String]
        attr_accessor :software_type
      
        # Output only. Specifies the version identifier, e.g. "1.4.1". Unique within a `
        # software_type`.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # Xcode-specific attributes.
        # Corresponds to the JSON property `xcodeDetails`
        # @return [Google::Apis::DevicerunV1::CatalogXcodeDetails]
        attr_accessor :xcode_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @androidx_test_orchestrator_details = args[:androidx_test_orchestrator_details] if args.key?(:androidx_test_orchestrator_details)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_default = args[:is_default] if args.key?(:is_default)
          @lifecycle = args[:lifecycle] if args.key?(:lifecycle)
          @name = args[:name] if args.key?(:name)
          @software_type = args[:software_type] if args.key?(:software_type)
          @version = args[:version] if args.key?(:version)
          @xcode_details = args[:xcode_details] if args.key?(:xcode_details)
        end
      end
      
      # Declares that a device supports a given Device Cloud product, with optional
      # per-product metadata. Discriminated by which product-specific message is set;
      # adding a new product = new oneof arm + new per-product message.
      class CatalogSupportedProduct
        include Google::Apis::Core::Hashable
      
        # Per-product metadata for the Automation (DeviceRun) product.
        # Corresponds to the JSON property `automation`
        # @return [Google::Apis::DevicerunV1::CatalogAutomationSupport]
        attr_accessor :automation
      
        # Per-product metadata for the DeviceStreaming product.
        # Corresponds to the JSON property `deviceStreaming`
        # @return [Google::Apis::DevicerunV1::CatalogDeviceStreamingSupport]
        attr_accessor :device_streaming
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automation = args[:automation] if args.key?(:automation)
          @device_streaming = args[:device_streaming] if args.key?(:device_streaming)
        end
      end
      
      # Xcode-specific attributes.
      class CatalogXcodeDetails
        include Google::Apis::Core::Hashable
      
        # Output only. Lists the iOS versions this Xcode can run tests against, e.g. "16.
        # 6". This is a property of the toolchain, so it says nothing about whether a
        # device on that iOS version is available; list the `Device` collection to find
        # out.
        # Corresponds to the JSON property `supportedIosVersions`
        # @return [Array<String>]
        attr_accessor :supported_ios_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @supported_ios_versions = args[:supported_ios_versions] if args.key?(:supported_ios_versions)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
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
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DevicerunV1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DevicerunV1::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
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
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DevicerunV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
    end
  end
end
