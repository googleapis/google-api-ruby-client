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
    module AndroiddeviceprovisioningV1
      
      # Request message to claim a device on behalf of a customer.
      class ClaimDeviceRequest
        include Google::Apis::Core::Hashable
      
        # The customer to claim for.
        # Corresponds to the JSON property `customerId`
        # @return [Fixnum]
        attr_accessor :customer_id
      
        # Identifies a unique device.
        # Corresponds to the JSON property `deviceIdentifier`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::DeviceIdentifier]
        attr_accessor :device_identifier
      
        # The section to claim.
        # Corresponds to the JSON property `sectionType`
        # @return [String]
        attr_accessor :section_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @device_identifier = args[:device_identifier] if args.key?(:device_identifier)
          @section_type = args[:section_type] if args.key?(:section_type)
        end
      end
      
      # Response message containing device id of the claim.
      class ClaimDeviceResponse
        include Google::Apis::Core::Hashable
      
        # The device ID of the claimed device.
        # Corresponds to the JSON property `deviceId`
        # @return [Fixnum]
        attr_accessor :device_id
      
        # The resource name of the device in the format
        # `partners/[PARTNER_ID]/devices/[DEVICE_ID]`.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_name = args[:device_name] if args.key?(:device_name)
        end
      end
      
      # Request to claim devices asynchronously in batch.
      class ClaimDevicesRequest
        include Google::Apis::Core::Hashable
      
        # List of claims.
        # Corresponds to the JSON property `claims`
        # @return [Array<Google::Apis::AndroiddeviceprovisioningV1::PartnerClaim>]
        attr_accessor :claims
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @claims = args[:claims] if args.key?(:claims)
        end
      end
      
      # A customer resource in the zero-touch enrollment API.
      class Company
        include Google::Apis::Core::Hashable
      
        # Input only. Optional. Email address of customer's users in the admin role.
        # Each email address must be associated with a Google Account.
        # Corresponds to the JSON property `adminEmails`
        # @return [Array<String>]
        attr_accessor :admin_emails
      
        # Output only. The ID of the company. Assigned by the server.
        # Corresponds to the JSON property `companyId`
        # @return [Fixnum]
        attr_accessor :company_id
      
        # Required. The name of the company. For example _XYZ Corp_. Characters
        # allowed are: Latin letters, numerals, hyphens, and spaces. Displayed to the
        # customer's employees in the zero-touch enrollment portal.
        # Corresponds to the JSON property `companyName`
        # @return [String]
        attr_accessor :company_name
      
        # Output only. The API resource name of the company in the format
        # `partners/[PARTNER_ID]/customers/[CUSTOMER_ID]`. Assigned by the server.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Input only. Email address of customer's users in the owner role. At least
        # one `owner_email` is required. Each email address must be associated with a
        # Google Account. Owners share the same access as admins but can also add,
        # delete, and edit your organization's portal users.
        # Corresponds to the JSON property `ownerEmails`
        # @return [Array<String>]
        attr_accessor :owner_emails
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_emails = args[:admin_emails] if args.key?(:admin_emails)
          @company_id = args[:company_id] if args.key?(:company_id)
          @company_name = args[:company_name] if args.key?(:company_name)
          @name = args[:name] if args.key?(:name)
          @owner_emails = args[:owner_emails] if args.key?(:owner_emails)
        end
      end
      
      # Request message to create a customer.
      class CreateCustomerRequest
        include Google::Apis::Core::Hashable
      
        # A customer resource in the zero-touch enrollment API.
        # Corresponds to the JSON property `customer`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::Company]
        attr_accessor :customer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
        end
      end
      
      # An Android device.
      class Device
        include Google::Apis::Core::Hashable
      
        # Claims.
        # Corresponds to the JSON property `claims`
        # @return [Array<Google::Apis::AndroiddeviceprovisioningV1::DeviceClaim>]
        attr_accessor :claims
      
        # The resource name of the configuration.
        # Only set for customers.
        # Corresponds to the JSON property `configuration`
        # @return [String]
        attr_accessor :configuration
      
        # Device ID.
        # Corresponds to the JSON property `deviceId`
        # @return [Fixnum]
        attr_accessor :device_id
      
        # Identifies a unique device.
        # Corresponds to the JSON property `deviceIdentifier`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::DeviceIdentifier]
        attr_accessor :device_identifier
      
        # A key-value pair of the device metadata.
        # Corresponds to the JSON property `deviceMetadata`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::DeviceMetadata]
        attr_accessor :device_metadata
      
        # Resource name in `partners/[PARTNER_ID]/devices/[DEVICE_ID]`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @claims = args[:claims] if args.key?(:claims)
          @configuration = args[:configuration] if args.key?(:configuration)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_identifier = args[:device_identifier] if args.key?(:device_identifier)
          @device_metadata = args[:device_metadata] if args.key?(:device_metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Information about a device claimed for a partner.
      class DeviceClaim
        include Google::Apis::Core::Hashable
      
        # Owner ID.
        # Corresponds to the JSON property `ownerCompanyId`
        # @return [Fixnum]
        attr_accessor :owner_company_id
      
        # Section type of the device claim.
        # Corresponds to the JSON property `sectionType`
        # @return [String]
        attr_accessor :section_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @owner_company_id = args[:owner_company_id] if args.key?(:owner_company_id)
          @section_type = args[:section_type] if args.key?(:section_type)
        end
      end
      
      # Identifies a unique device.
      class DeviceIdentifier
        include Google::Apis::Core::Hashable
      
        # IMEI number.
        # Corresponds to the JSON property `imei`
        # @return [String]
        attr_accessor :imei
      
        # Manufacturer name to match `android.os.Build.MANUFACTURER` (required).
        # Allowed values listed in
        # [manufacturer names](/zero-touch/resources/manufacturer-names).
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # MEID number.
        # Corresponds to the JSON property `meid`
        # @return [String]
        attr_accessor :meid
      
        # Serial number (optional).
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @imei = args[:imei] if args.key?(:imei)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @meid = args[:meid] if args.key?(:meid)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
      
      # A key-value pair of the device metadata.
      class DeviceMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata entries
        # Corresponds to the JSON property `entries`
        # @return [Hash<String,String>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # Long running operation metadata.
      class DevicesLongRunningOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Number of devices parsed in your requests.
        # Corresponds to the JSON property `devicesCount`
        # @return [Fixnum]
        attr_accessor :devices_count
      
        # The overall processing status.
        # Corresponds to the JSON property `processingStatus`
        # @return [String]
        attr_accessor :processing_status
      
        # Processing progress from 0 to 100.
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @devices_count = args[:devices_count] if args.key?(:devices_count)
          @processing_status = args[:processing_status] if args.key?(:processing_status)
          @progress = args[:progress] if args.key?(:progress)
        end
      end
      
      # Long running operation response.
      class DevicesLongRunningOperationResponse
        include Google::Apis::Core::Hashable
      
        # Processing status for each device.
        # One `PerDeviceStatus` per device. The order is the same as in your requests.
        # Corresponds to the JSON property `perDeviceStatus`
        # @return [Array<Google::Apis::AndroiddeviceprovisioningV1::OperationPerDevice>]
        attr_accessor :per_device_status
      
        # Number of succeesfully processed ones.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @per_device_status = args[:per_device_status] if args.key?(:per_device_status)
          @success_count = args[:success_count] if args.key?(:success_count)
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
      
      # Request to find devices.
      class FindDevicesByDeviceIdentifierRequest
        include Google::Apis::Core::Hashable
      
        # Identifies a unique device.
        # Corresponds to the JSON property `deviceIdentifier`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::DeviceIdentifier]
        attr_accessor :device_identifier
      
        # Number of devices to show.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # Page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_identifier = args[:device_identifier] if args.key?(:device_identifier)
          @limit = args[:limit] if args.key?(:limit)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # Response containing found devices.
      class FindDevicesByDeviceIdentifierResponse
        include Google::Apis::Core::Hashable
      
        # Found devices.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::AndroiddeviceprovisioningV1::Device>]
        attr_accessor :devices
      
        # Page token of the next page.
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
      
      # Request to find devices by customers.
      class FindDevicesByOwnerRequest
        include Google::Apis::Core::Hashable
      
        # List of customer IDs to search for.
        # Corresponds to the JSON property `customerId`
        # @return [Array<Fixnum>]
        attr_accessor :customer_id
      
        # The number of devices to show in the result.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # Page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The section type.
        # Corresponds to the JSON property `sectionType`
        # @return [String]
        attr_accessor :section_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @limit = args[:limit] if args.key?(:limit)
          @page_token = args[:page_token] if args.key?(:page_token)
          @section_type = args[:section_type] if args.key?(:section_type)
        end
      end
      
      # Response containing found devices.
      class FindDevicesByOwnerResponse
        include Google::Apis::Core::Hashable
      
        # Devices found.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::AndroiddeviceprovisioningV1::Device>]
        attr_accessor :devices
      
        # Page token of the next page.
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
      
      # Response message of all customers related to this partner.
      class ListCustomersResponse
        include Google::Apis::Core::Hashable
      
        # List of customers related to this partner.
        # Corresponds to the JSON property `customers`
        # @return [Array<Google::Apis::AndroiddeviceprovisioningV1::Company>]
        attr_accessor :customers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customers = args[:customers] if args.key?(:customers)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
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
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::Status]
        attr_accessor :error
      
        # This field will contain a `DevicesLongRunningOperationMetadata` object if the
        # operation is created by `claimAsync`, `unclaimAsync`, or `updateMetadataAsync`.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should have the format of `operations/some/unique/name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # This field will contain a `DevicesLongRunningOperationResponse` object if the
        # operation is created by `claimAsync`, `unclaimAsync`, or `updateMetadataAsync`.
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
      
      # Operation the server received for every device.
      class OperationPerDevice
        include Google::Apis::Core::Hashable
      
        # Identifies one claim request.
        # Corresponds to the JSON property `claim`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::PartnerClaim]
        attr_accessor :claim
      
        # Stores the processing result for each device.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::PerDeviceStatusInBatch]
        attr_accessor :result
      
        # Identifies one unclaim request.
        # Corresponds to the JSON property `unclaim`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::PartnerUnclaim]
        attr_accessor :unclaim
      
        # Identifies metdata updates to one device.
        # Corresponds to the JSON property `updateMetadata`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::UpdateMetadataArguments]
        attr_accessor :update_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @claim = args[:claim] if args.key?(:claim)
          @result = args[:result] if args.key?(:result)
          @unclaim = args[:unclaim] if args.key?(:unclaim)
          @update_metadata = args[:update_metadata] if args.key?(:update_metadata)
        end
      end
      
      # Identifies one claim request.
      class PartnerClaim
        include Google::Apis::Core::Hashable
      
        # Customer ID to claim for.
        # Corresponds to the JSON property `customerId`
        # @return [Fixnum]
        attr_accessor :customer_id
      
        # Identifies a unique device.
        # Corresponds to the JSON property `deviceIdentifier`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::DeviceIdentifier]
        attr_accessor :device_identifier
      
        # A key-value pair of the device metadata.
        # Corresponds to the JSON property `deviceMetadata`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::DeviceMetadata]
        attr_accessor :device_metadata
      
        # Section type to claim.
        # Corresponds to the JSON property `sectionType`
        # @return [String]
        attr_accessor :section_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @device_identifier = args[:device_identifier] if args.key?(:device_identifier)
          @device_metadata = args[:device_metadata] if args.key?(:device_metadata)
          @section_type = args[:section_type] if args.key?(:section_type)
        end
      end
      
      # Identifies one unclaim request.
      class PartnerUnclaim
        include Google::Apis::Core::Hashable
      
        # Device ID of the device.
        # Corresponds to the JSON property `deviceId`
        # @return [Fixnum]
        attr_accessor :device_id
      
        # Identifies a unique device.
        # Corresponds to the JSON property `deviceIdentifier`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::DeviceIdentifier]
        attr_accessor :device_identifier
      
        # Section type to unclaim.
        # Corresponds to the JSON property `sectionType`
        # @return [String]
        attr_accessor :section_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_identifier = args[:device_identifier] if args.key?(:device_identifier)
          @section_type = args[:section_type] if args.key?(:section_type)
        end
      end
      
      # Stores the processing result for each device.
      class PerDeviceStatusInBatch
        include Google::Apis::Core::Hashable
      
        # Device ID of the device if process succeeds.
        # Corresponds to the JSON property `deviceId`
        # @return [Fixnum]
        attr_accessor :device_id
      
        # Error identifier.
        # Corresponds to the JSON property `errorIdentifier`
        # @return [String]
        attr_accessor :error_identifier
      
        # Error message.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Process result.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @error_identifier = args[:error_identifier] if args.key?(:error_identifier)
          @error_message = args[:error_message] if args.key?(:error_message)
          @status = args[:status] if args.key?(:status)
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
      
      # Request message to unclaim a device.
      class UnclaimDeviceRequest
        include Google::Apis::Core::Hashable
      
        # The device ID returned by `ClaimDevice`.
        # Corresponds to the JSON property `deviceId`
        # @return [Fixnum]
        attr_accessor :device_id
      
        # Identifies a unique device.
        # Corresponds to the JSON property `deviceIdentifier`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::DeviceIdentifier]
        attr_accessor :device_identifier
      
        # The section type to unclaim for.
        # Corresponds to the JSON property `sectionType`
        # @return [String]
        attr_accessor :section_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_identifier = args[:device_identifier] if args.key?(:device_identifier)
          @section_type = args[:section_type] if args.key?(:section_type)
        end
      end
      
      # Request to unclaim devices asynchronously in batch.
      class UnclaimDevicesRequest
        include Google::Apis::Core::Hashable
      
        # List of devices to unclaim.
        # Corresponds to the JSON property `unclaims`
        # @return [Array<Google::Apis::AndroiddeviceprovisioningV1::PartnerUnclaim>]
        attr_accessor :unclaims
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unclaims = args[:unclaims] if args.key?(:unclaims)
        end
      end
      
      # Request to update device metadata in batch.
      class UpdateDeviceMetadataInBatchRequest
        include Google::Apis::Core::Hashable
      
        # List of metadata updates.
        # Corresponds to the JSON property `updates`
        # @return [Array<Google::Apis::AndroiddeviceprovisioningV1::UpdateMetadataArguments>]
        attr_accessor :updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @updates = args[:updates] if args.key?(:updates)
        end
      end
      
      # Request to set metadata for a device.
      class UpdateDeviceMetadataRequest
        include Google::Apis::Core::Hashable
      
        # A key-value pair of the device metadata.
        # Corresponds to the JSON property `deviceMetadata`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::DeviceMetadata]
        attr_accessor :device_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_metadata = args[:device_metadata] if args.key?(:device_metadata)
        end
      end
      
      # Identifies metdata updates to one device.
      class UpdateMetadataArguments
        include Google::Apis::Core::Hashable
      
        # Device ID of the device.
        # Corresponds to the JSON property `deviceId`
        # @return [Fixnum]
        attr_accessor :device_id
      
        # Identifies a unique device.
        # Corresponds to the JSON property `deviceIdentifier`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::DeviceIdentifier]
        attr_accessor :device_identifier
      
        # A key-value pair of the device metadata.
        # Corresponds to the JSON property `deviceMetadata`
        # @return [Google::Apis::AndroiddeviceprovisioningV1::DeviceMetadata]
        attr_accessor :device_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_identifier = args[:device_identifier] if args.key?(:device_identifier)
          @device_metadata = args[:device_metadata] if args.key?(:device_metadata)
        end
      end
    end
  end
end
