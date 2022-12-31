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
    module CloudidentityV1beta1
      
      # LRO response metadata for InboundSamlSsoProfilesService.AddIdpCredential.
      class AddIdpCredentialOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request for creating an IdpCredential with its associated payload. An
      # InboundSamlSsoProfile can own up to 2 credentials.
      class AddIdpCredentialRequest
        include Google::Apis::Core::Hashable
      
        # PEM encoded x509 certificate containing the public key for verifying IdP
        # signatures.
        # Corresponds to the JSON property `pemData`
        # @return [String]
        attr_accessor :pem_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pem_data = args[:pem_data] if args.key?(:pem_data)
        end
      end
      
      # Resource representing the Android specific attributes of a Device.
      class AndroidAttributes
        include Google::Apis::Core::Hashable
      
        # Whether applications from unknown sources can be installed on device.
        # Corresponds to the JSON property `enabledUnknownSources`
        # @return [Boolean]
        attr_accessor :enabled_unknown_sources
        alias_method :enabled_unknown_sources?, :enabled_unknown_sources
      
        # Whether this account is on an owner/primary profile. For phones, only true for
        # owner profiles. Android 4+ devices can have secondary or restricted user
        # profiles.
        # Corresponds to the JSON property `ownerProfileAccount`
        # @return [Boolean]
        attr_accessor :owner_profile_account
        alias_method :owner_profile_account?, :owner_profile_account
      
        # Ownership privileges on device.
        # Corresponds to the JSON property `ownershipPrivilege`
        # @return [String]
        attr_accessor :ownership_privilege
      
        # Whether device supports Android work profiles. If false, this service will not
        # block access to corp data even if an administrator turns on the "Enforce Work
        # Profile" policy.
        # Corresponds to the JSON property `supportsWorkProfile`
        # @return [Boolean]
        attr_accessor :supports_work_profile
        alias_method :supports_work_profile?, :supports_work_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled_unknown_sources = args[:enabled_unknown_sources] if args.key?(:enabled_unknown_sources)
          @owner_profile_account = args[:owner_profile_account] if args.key?(:owner_profile_account)
          @ownership_privilege = args[:ownership_privilege] if args.key?(:ownership_privilege)
          @supports_work_profile = args[:supports_work_profile] if args.key?(:supports_work_profile)
        end
      end
      
      # Request message for approving the device to access user data.
      class ApproveDeviceUserRequest
        include Google::Apis::Core::Hashable
      
        # Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        # of the customer. If you're using this API for your own organization, use `
        # customers/my_customer` If you're using this API to manage another organization,
        # use `customers/`customer_id``, where customer_id is the customer to whom the
        # device belongs.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
        end
      end
      
      # Response message for approving the device to access user data.
      class ApproveDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # Represents a user's use of a Device in the Cloud Identity Devices API. A
        # DeviceUser is a resource representing a user's use of a Device
        # Corresponds to the JSON property `deviceUser`
        # @return [Google::Apis::CloudidentityV1beta1::DeviceUser]
        attr_accessor :device_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_user = args[:device_user] if args.key?(:device_user)
        end
      end
      
      # Request message for blocking account on device.
      class BlockDeviceUserRequest
        include Google::Apis::Core::Hashable
      
        # Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        # of the customer. If you're using this API for your own organization, use `
        # customers/my_customer` If you're using this API to manage another organization,
        # use `customers/`customer_id``, where customer_id is the customer to whom the
        # device belongs.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
        end
      end
      
      # Response message for blocking the device from accessing user data.
      class BlockDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # Represents a user's use of a Device in the Cloud Identity Devices API. A
        # DeviceUser is a resource representing a user's use of a Device
        # Corresponds to the JSON property `deviceUser`
        # @return [Google::Apis::CloudidentityV1beta1::DeviceUser]
        attr_accessor :device_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_user = args[:device_user] if args.key?(:device_user)
        end
      end
      
      # Request to cancel sent invitation for target email in UserInvitation.
      class CancelUserInvitationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for cancelling an unfinished device wipe.
      class CancelWipeDeviceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        # of the customer. If you're using this API for your own organization, use `
        # customers/my_customer` If you're using this API to manage another organization,
        # use `customers/`customer_id``, where customer_id is the customer to whom the
        # device belongs.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
        end
      end
      
      # Response message for cancelling an unfinished device wipe.
      class CancelWipeDeviceResponse
        include Google::Apis::Core::Hashable
      
        # A Device within the Cloud Identity Devices API. Represents a Device known to
        # Google Cloud, independent of the device ownership, type, and whether it is
        # assigned or in use by a user.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::CloudidentityV1beta1::Device]
        attr_accessor :device
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device = args[:device] if args.key?(:device)
        end
      end
      
      # Request message for cancelling an unfinished user account wipe.
      class CancelWipeDeviceUserRequest
        include Google::Apis::Core::Hashable
      
        # Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        # of the customer. If you're using this API for your own organization, use `
        # customers/my_customer` If you're using this API to manage another organization,
        # use `customers/`customer_id``, where customer_id is the customer to whom the
        # device belongs.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
        end
      end
      
      # Response message for cancelling an unfinished user account wipe.
      class CancelWipeDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # Represents a user's use of a Device in the Cloud Identity Devices API. A
        # DeviceUser is a resource representing a user's use of a Device
        # Corresponds to the JSON property `deviceUser`
        # @return [Google::Apis::CloudidentityV1beta1::DeviceUser]
        attr_accessor :device_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_user = args[:device_user] if args.key?(:device_user)
        end
      end
      
      # Stores information about a certificate.
      class CertificateAttributes
        include Google::Apis::Core::Hashable
      
        # CertificateTemplate (v3 Extension in X.509).
        # Corresponds to the JSON property `certificateTemplate`
        # @return [Google::Apis::CloudidentityV1beta1::CertificateTemplate]
        attr_accessor :certificate_template
      
        # The encoded certificate fingerprint.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # The name of the issuer of this certificate.
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # Serial number of the certificate, Example: "123456789".
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # The subject name of this certificate.
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        # The certificate thumbprint.
        # Corresponds to the JSON property `thumbprint`
        # @return [String]
        attr_accessor :thumbprint
      
        # Validation state of this certificate.
        # Corresponds to the JSON property `validationState`
        # @return [String]
        attr_accessor :validation_state
      
        # Certificate not valid at or after this timestamp.
        # Corresponds to the JSON property `validityExpirationTime`
        # @return [String]
        attr_accessor :validity_expiration_time
      
        # Certificate not valid before this timestamp.
        # Corresponds to the JSON property `validityStartTime`
        # @return [String]
        attr_accessor :validity_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_template = args[:certificate_template] if args.key?(:certificate_template)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @issuer = args[:issuer] if args.key?(:issuer)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @subject = args[:subject] if args.key?(:subject)
          @thumbprint = args[:thumbprint] if args.key?(:thumbprint)
          @validation_state = args[:validation_state] if args.key?(:validation_state)
          @validity_expiration_time = args[:validity_expiration_time] if args.key?(:validity_expiration_time)
          @validity_start_time = args[:validity_start_time] if args.key?(:validity_start_time)
        end
      end
      
      # CertificateTemplate (v3 Extension in X.509).
      class CertificateTemplate
        include Google::Apis::Core::Hashable
      
        # The template id of the template. Example: "1.3.6.1.4.1.311.21.8.15608621.
        # 11768144.5720724.16068415.6889630.81.2472537.7784047".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The Major version of the template. Example: 100.
        # Corresponds to the JSON property `majorVersion`
        # @return [Fixnum]
        attr_accessor :major_version
      
        # The minor version of the template. Example: 12.
        # Corresponds to the JSON property `minorVersion`
        # @return [Fixnum]
        attr_accessor :minor_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @major_version = args[:major_version] if args.key?(:major_version)
          @minor_version = args[:minor_version] if args.key?(:minor_version)
        end
      end
      
      # The response message for MembershipsService.CheckTransitiveMembership.
      class CheckTransitiveMembershipResponse
        include Google::Apis::Core::Hashable
      
        # Response does not include the possible roles of a member since the behavior of
        # this rpc is not all-or-nothing unlike the other rpcs. So, it may not be
        # possible to list all the roles definitively, due to possible lack of
        # authorization in some of the paths.
        # Corresponds to the JSON property `hasMembership`
        # @return [Boolean]
        attr_accessor :has_membership
        alias_method :has_membership?, :has_membership
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_membership = args[:has_membership] if args.key?(:has_membership)
        end
      end
      
      # Represents the state associated with an API client calling the Devices API.
      # Resource representing ClientState and supports updates from API users
      class ClientState
        include Google::Apis::Core::Hashable
      
        # The caller can specify asset tags for this resource
        # Corresponds to the JSON property `assetTags`
        # @return [Array<String>]
        attr_accessor :asset_tags
      
        # The compliance state of the resource as specified by the API client.
        # Corresponds to the JSON property `complianceState`
        # @return [String]
        attr_accessor :compliance_state
      
        # Output only. The time the client state data was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # This field may be used to store a unique identifier for the API resource
        # within which these CustomAttributes are a field.
        # Corresponds to the JSON property `customId`
        # @return [String]
        attr_accessor :custom_id
      
        # The token that needs to be passed back for concurrency control in updates.
        # Token needs to be passed back in UpdateRequest
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The Health score of the resource
        # Corresponds to the JSON property `healthScore`
        # @return [String]
        attr_accessor :health_score
      
        # The map of key-value attributes stored by callers specific to a device. The
        # total serialized length of this map may not exceed 10KB. No limit is placed on
        # the number of attributes in a map.
        # Corresponds to the JSON property `keyValuePairs`
        # @return [Hash<String,Google::Apis::CloudidentityV1beta1::CustomAttributeValue>]
        attr_accessor :key_value_pairs
      
        # Output only. The time the client state data was last updated.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # The management state of the resource as specified by the API client.
        # Corresponds to the JSON property `managed`
        # @return [String]
        attr_accessor :managed
      
        # Output only. [Resource name](https://cloud.google.com/apis/design/
        # resource_names) of the ClientState in format: `devices/`device_id`/deviceUsers/
        # `device_user_id`/clientState/`partner_id``, where partner_id corresponds to
        # the partner storing the data.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The owner of the ClientState
        # Corresponds to the JSON property `ownerType`
        # @return [String]
        attr_accessor :owner_type
      
        # A descriptive cause of the health score.
        # Corresponds to the JSON property `scoreReason`
        # @return [String]
        attr_accessor :score_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_tags = args[:asset_tags] if args.key?(:asset_tags)
          @compliance_state = args[:compliance_state] if args.key?(:compliance_state)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_id = args[:custom_id] if args.key?(:custom_id)
          @etag = args[:etag] if args.key?(:etag)
          @health_score = args[:health_score] if args.key?(:health_score)
          @key_value_pairs = args[:key_value_pairs] if args.key?(:key_value_pairs)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @managed = args[:managed] if args.key?(:managed)
          @name = args[:name] if args.key?(:name)
          @owner_type = args[:owner_type] if args.key?(:owner_type)
          @score_reason = args[:score_reason] if args.key?(:score_reason)
        end
      end
      
      # Request message for creating a Company Owned device.
      class CreateDeviceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        # of the customer. If you're using this API for your own organization, use `
        # customers/my_customer` If you're using this API to manage another organization,
        # use `customers/`customer_id``, where customer_id is the customer to whom the
        # device belongs.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # A Device within the Cloud Identity Devices API. Represents a Device known to
        # Google Cloud, independent of the device ownership, type, and whether it is
        # assigned or in use by a user.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::CloudidentityV1beta1::Device]
        attr_accessor :device
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
          @device = args[:device] if args.key?(:device)
        end
      end
      
      # LRO response metadata for InboundSamlSsoProfilesService.
      # CreateInboundSamlSsoProfile.
      class CreateInboundSamlSsoProfileOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # LRO response metadata for InboundSsoAssignmentsService.
      # CreateInboundSsoAssignment.
      class CreateInboundSsoAssignmentOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Additional custom attribute values may be one of these types
      class CustomAttributeValue
        include Google::Apis::Core::Hashable
      
        # Represents a boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Represents a double value.
        # Corresponds to the JSON property `numberValue`
        # @return [Float]
        attr_accessor :number_value
      
        # Represents a string value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @number_value = args[:number_value] if args.key?(:number_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # LRO response metadata for InboundSamlSsoProfilesService.DeleteIdpCredential.
      class DeleteIdpCredentialOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # LRO response metadata for InboundSamlSsoProfilesService.
      # DeleteInboundSamlSsoProfile.
      class DeleteInboundSamlSsoProfileOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # LRO response metadata for InboundSsoAssignmentsService.
      # DeleteInboundSsoAssignment.
      class DeleteInboundSsoAssignmentOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Device within the Cloud Identity Devices API. Represents a Device known to
      # Google Cloud, independent of the device ownership, type, and whether it is
      # assigned or in use by a user.
      class Device
        include Google::Apis::Core::Hashable
      
        # Resource representing the Android specific attributes of a Device.
        # Corresponds to the JSON property `androidSpecificAttributes`
        # @return [Google::Apis::CloudidentityV1beta1::AndroidAttributes]
        attr_accessor :android_specific_attributes
      
        # Asset tag of the device.
        # Corresponds to the JSON property `assetTag`
        # @return [String]
        attr_accessor :asset_tag
      
        # Output only. Baseband version of the device.
        # Corresponds to the JSON property `basebandVersion`
        # @return [String]
        attr_accessor :baseband_version
      
        # Output only. Device bootloader version. Example: 0.6.7.
        # Corresponds to the JSON property `bootloaderVersion`
        # @return [String]
        attr_accessor :bootloader_version
      
        # Output only. Device brand. Example: Samsung.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Output only. Build number of the device.
        # Corresponds to the JSON property `buildNumber`
        # @return [String]
        attr_accessor :build_number
      
        # List of the clients the device is reporting to.
        # Corresponds to the JSON property `clientTypes`
        # @return [Array<String>]
        attr_accessor :client_types
      
        # Output only. Represents whether the Device is compromised.
        # Corresponds to the JSON property `compromisedState`
        # @return [String]
        attr_accessor :compromised_state
      
        # Output only. When the Company-Owned device was imported. This field is empty
        # for BYOD devices.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Unique identifier for the device.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # Output only. Type of device.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # Output only. Whether developer options is enabled on device.
        # Corresponds to the JSON property `enabledDeveloperOptions`
        # @return [Boolean]
        attr_accessor :enabled_developer_options
        alias_method :enabled_developer_options?, :enabled_developer_options
      
        # Output only. Whether USB debugging is enabled on device.
        # Corresponds to the JSON property `enabledUsbDebugging`
        # @return [Boolean]
        attr_accessor :enabled_usb_debugging
        alias_method :enabled_usb_debugging?, :enabled_usb_debugging
      
        # Output only. Device encryption state.
        # Corresponds to the JSON property `encryptionState`
        # @return [String]
        attr_accessor :encryption_state
      
        # Resource representing the Endpoint Verification-specific attributes of a
        # Device. https://cloud.google.com/endpoint-verification/docs/overview
        # Corresponds to the JSON property `endpointVerificationSpecificAttributes`
        # @return [Google::Apis::CloudidentityV1beta1::EndpointVerificationSpecificAttributes]
        attr_accessor :endpoint_verification_specific_attributes
      
        # Host name of the device.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Output only. IMEI number of device if GSM device; empty otherwise.
        # Corresponds to the JSON property `imei`
        # @return [String]
        attr_accessor :imei
      
        # Output only. Kernel version of the device.
        # Corresponds to the JSON property `kernelVersion`
        # @return [String]
        attr_accessor :kernel_version
      
        # Most recent time when device synced with this service.
        # Corresponds to the JSON property `lastSyncTime`
        # @return [String]
        attr_accessor :last_sync_time
      
        # Output only. Management state of the device
        # Corresponds to the JSON property `managementState`
        # @return [String]
        attr_accessor :management_state
      
        # Output only. Device manufacturer. Example: Motorola.
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # Output only. MEID number of device if CDMA device; empty otherwise.
        # Corresponds to the JSON property `meid`
        # @return [String]
        attr_accessor :meid
      
        # Output only. Model name of device. Example: Pixel 3.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Output only. [Resource name](https://cloud.google.com/apis/design/
        # resource_names) of the Device in format: `devices/`device_id``, where
        # device_id is the unique id assigned to the Device.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Mobile or network operator of device, if available.
        # Corresponds to the JSON property `networkOperator`
        # @return [String]
        attr_accessor :network_operator
      
        # Output only. OS version of the device. Example: Android 8.1.0.
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # Output only. Domain name for Google accounts on device. Type for other
        # accounts on device. On Android, will only be populated if |ownership_privilege|
        # is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in
        # to the device policy app if that account's domain has only one account.
        # Examples: "com.example", "xyz.com".
        # Corresponds to the JSON property `otherAccounts`
        # @return [Array<String>]
        attr_accessor :other_accounts
      
        # Output only. Whether the device is owned by the company or an individual
        # Corresponds to the JSON property `ownerType`
        # @return [String]
        attr_accessor :owner_type
      
        # Output only. OS release version. Example: 6.0.
        # Corresponds to the JSON property `releaseVersion`
        # @return [String]
        attr_accessor :release_version
      
        # Output only. OS security patch update time on device.
        # Corresponds to the JSON property `securityPatchTime`
        # @return [String]
        attr_accessor :security_patch_time
      
        # Serial Number of device. Example: HT82V1A01076.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # WiFi MAC addresses of device.
        # Corresponds to the JSON property `wifiMacAddresses`
        # @return [Array<String>]
        attr_accessor :wifi_mac_addresses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_specific_attributes = args[:android_specific_attributes] if args.key?(:android_specific_attributes)
          @asset_tag = args[:asset_tag] if args.key?(:asset_tag)
          @baseband_version = args[:baseband_version] if args.key?(:baseband_version)
          @bootloader_version = args[:bootloader_version] if args.key?(:bootloader_version)
          @brand = args[:brand] if args.key?(:brand)
          @build_number = args[:build_number] if args.key?(:build_number)
          @client_types = args[:client_types] if args.key?(:client_types)
          @compromised_state = args[:compromised_state] if args.key?(:compromised_state)
          @create_time = args[:create_time] if args.key?(:create_time)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_type = args[:device_type] if args.key?(:device_type)
          @enabled_developer_options = args[:enabled_developer_options] if args.key?(:enabled_developer_options)
          @enabled_usb_debugging = args[:enabled_usb_debugging] if args.key?(:enabled_usb_debugging)
          @encryption_state = args[:encryption_state] if args.key?(:encryption_state)
          @endpoint_verification_specific_attributes = args[:endpoint_verification_specific_attributes] if args.key?(:endpoint_verification_specific_attributes)
          @hostname = args[:hostname] if args.key?(:hostname)
          @imei = args[:imei] if args.key?(:imei)
          @kernel_version = args[:kernel_version] if args.key?(:kernel_version)
          @last_sync_time = args[:last_sync_time] if args.key?(:last_sync_time)
          @management_state = args[:management_state] if args.key?(:management_state)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @meid = args[:meid] if args.key?(:meid)
          @model = args[:model] if args.key?(:model)
          @name = args[:name] if args.key?(:name)
          @network_operator = args[:network_operator] if args.key?(:network_operator)
          @os_version = args[:os_version] if args.key?(:os_version)
          @other_accounts = args[:other_accounts] if args.key?(:other_accounts)
          @owner_type = args[:owner_type] if args.key?(:owner_type)
          @release_version = args[:release_version] if args.key?(:release_version)
          @security_patch_time = args[:security_patch_time] if args.key?(:security_patch_time)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @wifi_mac_addresses = args[:wifi_mac_addresses] if args.key?(:wifi_mac_addresses)
        end
      end
      
      # Represents a user's use of a Device in the Cloud Identity Devices API. A
      # DeviceUser is a resource representing a user's use of a Device
      class DeviceUser
        include Google::Apis::Core::Hashable
      
        # Compromised State of the DeviceUser object
        # Corresponds to the JSON property `compromisedState`
        # @return [String]
        attr_accessor :compromised_state
      
        # When the user first signed in to the device
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Most recent time when user registered with this service.
        # Corresponds to the JSON property `firstSyncTime`
        # @return [String]
        attr_accessor :first_sync_time
      
        # Output only. Default locale used on device, in IETF BCP-47 format.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Output only. Last time when user synced with policies.
        # Corresponds to the JSON property `lastSyncTime`
        # @return [String]
        attr_accessor :last_sync_time
      
        # Output only. Management state of the user on the device.
        # Corresponds to the JSON property `managementState`
        # @return [String]
        attr_accessor :management_state
      
        # Output only. [Resource name](https://cloud.google.com/apis/design/
        # resource_names) of the DeviceUser in format: `devices/`device_id`/deviceUsers/`
        # device_user_id``, where `device_user_id` uniquely identifies a user's use of a
        # device.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Password state of the DeviceUser object
        # Corresponds to the JSON property `passwordState`
        # @return [String]
        attr_accessor :password_state
      
        # Output only. User agent on the device for this specific user
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Email address of the user registered on the device.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compromised_state = args[:compromised_state] if args.key?(:compromised_state)
          @create_time = args[:create_time] if args.key?(:create_time)
          @first_sync_time = args[:first_sync_time] if args.key?(:first_sync_time)
          @language_code = args[:language_code] if args.key?(:language_code)
          @last_sync_time = args[:last_sync_time] if args.key?(:last_sync_time)
          @management_state = args[:management_state] if args.key?(:management_state)
          @name = args[:name] if args.key?(:name)
          @password_state = args[:password_state] if args.key?(:password_state)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # Information of a DSA public key.
      class DsaPublicKeyInfo
        include Google::Apis::Core::Hashable
      
        # Key size in bits (size of parameter P).
        # Corresponds to the JSON property `keySize`
        # @return [Fixnum]
        attr_accessor :key_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_size = args[:key_size] if args.key?(:key_size)
        end
      end
      
      # Dynamic group metadata like queries and status.
      class DynamicGroupMetadata
        include Google::Apis::Core::Hashable
      
        # Memberships will be the union of all queries. Only one entry with USER
        # resource is currently supported. Customers can create up to 100 dynamic groups.
        # Corresponds to the JSON property `queries`
        # @return [Array<Google::Apis::CloudidentityV1beta1::DynamicGroupQuery>]
        attr_accessor :queries
      
        # The current status of a dynamic group along with timestamp.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::CloudidentityV1beta1::DynamicGroupStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @queries = args[:queries] if args.key?(:queries)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Defines a query on a resource.
      class DynamicGroupQuery
        include Google::Apis::Core::Hashable
      
        # Query that determines the memberships of the dynamic group. Examples: All
        # users with at least one `organizations.department` of engineering. `user.
        # organizations.exists(org, org.department=='engineering')` All users with at
        # least one location that has `area` of `foo` and `building_id` of `bar`. `user.
        # locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users
        # with any variation of the name John Doe (case-insensitive queries add `
        # equalsIgnoreCase()` to the value being queried). `user.name.value.
        # equalsIgnoreCase('jOhn DoE')`
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # 
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query = args[:query] if args.key?(:query)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # The current status of a dynamic group along with timestamp.
      class DynamicGroupStatus
        include Google::Apis::Core::Hashable
      
        # Status of the dynamic group.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The latest time at which the dynamic group is guaranteed to be in the given
        # status. If status is `UP_TO_DATE`, the latest time at which the dynamic group
        # was confirmed to be up-to-date. If status is `UPDATING_MEMBERSHIPS`, the time
        # at which dynamic group was created.
        # Corresponds to the JSON property `statusTime`
        # @return [String]
        attr_accessor :status_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @status_time = args[:status_time] if args.key?(:status_time)
        end
      end
      
      # Resource representing the Endpoint Verification-specific attributes of a
      # Device. https://cloud.google.com/endpoint-verification/docs/overview
      class EndpointVerificationSpecificAttributes
        include Google::Apis::Core::Hashable
      
        # Details of certificates.
        # Corresponds to the JSON property `certificateAttributes`
        # @return [Array<Google::Apis::CloudidentityV1beta1::CertificateAttributes>]
        attr_accessor :certificate_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_attributes = args[:certificate_attributes] if args.key?(:certificate_attributes)
        end
      end
      
      # A unique identifier for an entity in the Cloud Identity Groups API. An entity
      # can represent either a group with an optional `namespace` or a user without a `
      # namespace`. The combination of `id` and `namespace` must be unique; however,
      # the same `id` can be used with different `namespace`s.
      class EntityKey
        include Google::Apis::Core::Hashable
      
        # The ID of the entity. For Google-managed entities, the `id` must be the email
        # address of an existing group or user. For external-identity-mapped entities,
        # the `id` must be a string conforming to the Identity Source's requirements.
        # Must be unique within a `namespace`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The namespace in which the entity exists. If not specified, the `EntityKey`
        # represents a Google-managed entity such as a Google user or a Google Group. If
        # specified, the `EntityKey` represents an external-identity-mapped group. The
        # namespace must correspond to an identity source created in Admin Console and
        # must be in the form of `identitysources/`identity_source_id``.
        # Corresponds to the JSON property `namespace`
        # @return [String]
        attr_accessor :namespace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @namespace = args[:namespace] if args.key?(:namespace)
        end
      end
      
      # The `MembershipRole` expiry details.
      class ExpiryDetail
        include Google::Apis::Core::Hashable
      
        # The time at which the `MembershipRole` will expire.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
        end
      end
      
      # The response message for MembershipsService.GetMembershipGraph.
      class GetMembershipGraphResponse
        include Google::Apis::Core::Hashable
      
        # The membership graph's path information represented as an adjacency list.
        # Corresponds to the JSON property `adjacencyList`
        # @return [Array<Google::Apis::CloudidentityV1beta1::MembershipAdjacencyList>]
        attr_accessor :adjacency_list
      
        # The resources representing each group in the adjacency list. Each group in
        # this list can be correlated to a 'group' of the MembershipAdjacencyList using
        # the 'name' of the Group resource.
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::CloudidentityV1beta1::Group>]
        attr_accessor :groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adjacency_list = args[:adjacency_list] if args.key?(:adjacency_list)
          @groups = args[:groups] if args.key?(:groups)
        end
      end
      
      # Resource representing the Android specific attributes of a Device.
      class GoogleAppsCloudidentityDevicesV1AndroidAttributes
        include Google::Apis::Core::Hashable
      
        # Whether applications from unknown sources can be installed on device.
        # Corresponds to the JSON property `enabledUnknownSources`
        # @return [Boolean]
        attr_accessor :enabled_unknown_sources
        alias_method :enabled_unknown_sources?, :enabled_unknown_sources
      
        # Whether this account is on an owner/primary profile. For phones, only true for
        # owner profiles. Android 4+ devices can have secondary or restricted user
        # profiles.
        # Corresponds to the JSON property `ownerProfileAccount`
        # @return [Boolean]
        attr_accessor :owner_profile_account
        alias_method :owner_profile_account?, :owner_profile_account
      
        # Ownership privileges on device.
        # Corresponds to the JSON property `ownershipPrivilege`
        # @return [String]
        attr_accessor :ownership_privilege
      
        # Whether device supports Android work profiles. If false, this service will not
        # block access to corp data even if an administrator turns on the "Enforce Work
        # Profile" policy.
        # Corresponds to the JSON property `supportsWorkProfile`
        # @return [Boolean]
        attr_accessor :supports_work_profile
        alias_method :supports_work_profile?, :supports_work_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled_unknown_sources = args[:enabled_unknown_sources] if args.key?(:enabled_unknown_sources)
          @owner_profile_account = args[:owner_profile_account] if args.key?(:owner_profile_account)
          @ownership_privilege = args[:ownership_privilege] if args.key?(:ownership_privilege)
          @supports_work_profile = args[:supports_work_profile] if args.key?(:supports_work_profile)
        end
      end
      
      # Metadata for ApproveDeviceUser LRO.
      class GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for approving the device to access user data.
      class GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # Represents a user's use of a Device in the Cloud Identity Devices API. A
        # DeviceUser is a resource representing a user's use of a Device
        # Corresponds to the JSON property `deviceUser`
        # @return [Google::Apis::CloudidentityV1beta1::GoogleAppsCloudidentityDevicesV1DeviceUser]
        attr_accessor :device_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_user = args[:device_user] if args.key?(:device_user)
        end
      end
      
      # Metadata for BlockDeviceUser LRO.
      class GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for blocking the device from accessing user data.
      class GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # Represents a user's use of a Device in the Cloud Identity Devices API. A
        # DeviceUser is a resource representing a user's use of a Device
        # Corresponds to the JSON property `deviceUser`
        # @return [Google::Apis::CloudidentityV1beta1::GoogleAppsCloudidentityDevicesV1DeviceUser]
        attr_accessor :device_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_user = args[:device_user] if args.key?(:device_user)
        end
      end
      
      # Metadata for CancelWipeDevice LRO.
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for cancelling an unfinished device wipe.
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
        include Google::Apis::Core::Hashable
      
        # A Device within the Cloud Identity Devices API. Represents a Device known to
        # Google Cloud, independent of the device ownership, type, and whether it is
        # assigned or in use by a user.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::CloudidentityV1beta1::GoogleAppsCloudidentityDevicesV1Device]
        attr_accessor :device
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device = args[:device] if args.key?(:device)
        end
      end
      
      # Metadata for CancelWipeDeviceUser LRO.
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for cancelling an unfinished user account wipe.
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # Represents a user's use of a Device in the Cloud Identity Devices API. A
        # DeviceUser is a resource representing a user's use of a Device
        # Corresponds to the JSON property `deviceUser`
        # @return [Google::Apis::CloudidentityV1beta1::GoogleAppsCloudidentityDevicesV1DeviceUser]
        attr_accessor :device_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_user = args[:device_user] if args.key?(:device_user)
        end
      end
      
      # Represents the state associated with an API client calling the Devices API.
      # Resource representing ClientState and supports updates from API users
      class GoogleAppsCloudidentityDevicesV1ClientState
        include Google::Apis::Core::Hashable
      
        # The caller can specify asset tags for this resource
        # Corresponds to the JSON property `assetTags`
        # @return [Array<String>]
        attr_accessor :asset_tags
      
        # The compliance state of the resource as specified by the API client.
        # Corresponds to the JSON property `complianceState`
        # @return [String]
        attr_accessor :compliance_state
      
        # Output only. The time the client state data was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # This field may be used to store a unique identifier for the API resource
        # within which these CustomAttributes are a field.
        # Corresponds to the JSON property `customId`
        # @return [String]
        attr_accessor :custom_id
      
        # The token that needs to be passed back for concurrency control in updates.
        # Token needs to be passed back in UpdateRequest
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The Health score of the resource. The Health score is the callers
        # specification of the condition of the device from a usability point of view.
        # For example, a third-party device management provider may specify a health
        # score based on its compliance with organizational policies.
        # Corresponds to the JSON property `healthScore`
        # @return [String]
        attr_accessor :health_score
      
        # The map of key-value attributes stored by callers specific to a device. The
        # total serialized length of this map may not exceed 10KB. No limit is placed on
        # the number of attributes in a map.
        # Corresponds to the JSON property `keyValuePairs`
        # @return [Hash<String,Google::Apis::CloudidentityV1beta1::GoogleAppsCloudidentityDevicesV1CustomAttributeValue>]
        attr_accessor :key_value_pairs
      
        # Output only. The time the client state data was last updated.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # The management state of the resource as specified by the API client.
        # Corresponds to the JSON property `managed`
        # @return [String]
        attr_accessor :managed
      
        # Output only. [Resource name](https://cloud.google.com/apis/design/
        # resource_names) of the ClientState in format: `devices/`device`/deviceUsers/`
        # device_user`/clientState/`partner``, where partner corresponds to the partner
        # storing the data. For partners belonging to the "BeyondCorp Alliance", this is
        # the partner ID specified to you by Google. For all other callers, this is a
        # string of the form: ``customer`-suffix`, where `customer` is your customer ID.
        # The *suffix* is any string the caller specifies. This string will be displayed
        # verbatim in the administration console. This suffix is used in setting up
        # Custom Access Levels in Context-Aware Access. Your organization's customer ID
        # can be obtained from the URL: `GET https://www.googleapis.com/admin/directory/
        # v1/customers/my_customer` The `id` field in the response contains the customer
        # ID starting with the letter 'C'. The customer ID to be used in this API is the
        # string after the letter 'C' (not including 'C')
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The owner of the ClientState
        # Corresponds to the JSON property `ownerType`
        # @return [String]
        attr_accessor :owner_type
      
        # A descriptive cause of the health score.
        # Corresponds to the JSON property `scoreReason`
        # @return [String]
        attr_accessor :score_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_tags = args[:asset_tags] if args.key?(:asset_tags)
          @compliance_state = args[:compliance_state] if args.key?(:compliance_state)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_id = args[:custom_id] if args.key?(:custom_id)
          @etag = args[:etag] if args.key?(:etag)
          @health_score = args[:health_score] if args.key?(:health_score)
          @key_value_pairs = args[:key_value_pairs] if args.key?(:key_value_pairs)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @managed = args[:managed] if args.key?(:managed)
          @name = args[:name] if args.key?(:name)
          @owner_type = args[:owner_type] if args.key?(:owner_type)
          @score_reason = args[:score_reason] if args.key?(:score_reason)
        end
      end
      
      # Metadata for CreateDevice LRO.
      class GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Additional custom attribute values may be one of these types
      class GoogleAppsCloudidentityDevicesV1CustomAttributeValue
        include Google::Apis::Core::Hashable
      
        # Represents a boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Represents a double value.
        # Corresponds to the JSON property `numberValue`
        # @return [Float]
        attr_accessor :number_value
      
        # Represents a string value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @number_value = args[:number_value] if args.key?(:number_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Metadata for DeleteDevice LRO.
      class GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for DeleteDeviceUser LRO.
      class GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Device within the Cloud Identity Devices API. Represents a Device known to
      # Google Cloud, independent of the device ownership, type, and whether it is
      # assigned or in use by a user.
      class GoogleAppsCloudidentityDevicesV1Device
        include Google::Apis::Core::Hashable
      
        # Resource representing the Android specific attributes of a Device.
        # Corresponds to the JSON property `androidSpecificAttributes`
        # @return [Google::Apis::CloudidentityV1beta1::GoogleAppsCloudidentityDevicesV1AndroidAttributes]
        attr_accessor :android_specific_attributes
      
        # Asset tag of the device.
        # Corresponds to the JSON property `assetTag`
        # @return [String]
        attr_accessor :asset_tag
      
        # Output only. Baseband version of the device.
        # Corresponds to the JSON property `basebandVersion`
        # @return [String]
        attr_accessor :baseband_version
      
        # Output only. Device bootloader version. Example: 0.6.7.
        # Corresponds to the JSON property `bootloaderVersion`
        # @return [String]
        attr_accessor :bootloader_version
      
        # Output only. Device brand. Example: Samsung.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Output only. Build number of the device.
        # Corresponds to the JSON property `buildNumber`
        # @return [String]
        attr_accessor :build_number
      
        # Output only. Represents whether the Device is compromised.
        # Corresponds to the JSON property `compromisedState`
        # @return [String]
        attr_accessor :compromised_state
      
        # Output only. When the Company-Owned device was imported. This field is empty
        # for BYOD devices.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Unique identifier for the device.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # Output only. Type of device.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # Output only. Whether developer options is enabled on device.
        # Corresponds to the JSON property `enabledDeveloperOptions`
        # @return [Boolean]
        attr_accessor :enabled_developer_options
        alias_method :enabled_developer_options?, :enabled_developer_options
      
        # Output only. Whether USB debugging is enabled on device.
        # Corresponds to the JSON property `enabledUsbDebugging`
        # @return [Boolean]
        attr_accessor :enabled_usb_debugging
        alias_method :enabled_usb_debugging?, :enabled_usb_debugging
      
        # Output only. Device encryption state.
        # Corresponds to the JSON property `encryptionState`
        # @return [String]
        attr_accessor :encryption_state
      
        # Output only. IMEI number of device if GSM device; empty otherwise.
        # Corresponds to the JSON property `imei`
        # @return [String]
        attr_accessor :imei
      
        # Output only. Kernel version of the device.
        # Corresponds to the JSON property `kernelVersion`
        # @return [String]
        attr_accessor :kernel_version
      
        # Most recent time when device synced with this service.
        # Corresponds to the JSON property `lastSyncTime`
        # @return [String]
        attr_accessor :last_sync_time
      
        # Output only. Management state of the device
        # Corresponds to the JSON property `managementState`
        # @return [String]
        attr_accessor :management_state
      
        # Output only. Device manufacturer. Example: Motorola.
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # Output only. MEID number of device if CDMA device; empty otherwise.
        # Corresponds to the JSON property `meid`
        # @return [String]
        attr_accessor :meid
      
        # Output only. Model name of device. Example: Pixel 3.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Output only. [Resource name](https://cloud.google.com/apis/design/
        # resource_names) of the Device in format: `devices/`device``, where device is
        # the unique id assigned to the Device.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Mobile or network operator of device, if available.
        # Corresponds to the JSON property `networkOperator`
        # @return [String]
        attr_accessor :network_operator
      
        # Output only. OS version of the device. Example: Android 8.1.0.
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # Output only. Domain name for Google accounts on device. Type for other
        # accounts on device. On Android, will only be populated if |ownership_privilege|
        # is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in
        # to the device policy app if that account's domain has only one account.
        # Examples: "com.example", "xyz.com".
        # Corresponds to the JSON property `otherAccounts`
        # @return [Array<String>]
        attr_accessor :other_accounts
      
        # Output only. Whether the device is owned by the company or an individual
        # Corresponds to the JSON property `ownerType`
        # @return [String]
        attr_accessor :owner_type
      
        # Output only. OS release version. Example: 6.0.
        # Corresponds to the JSON property `releaseVersion`
        # @return [String]
        attr_accessor :release_version
      
        # Output only. OS security patch update time on device.
        # Corresponds to the JSON property `securityPatchTime`
        # @return [String]
        attr_accessor :security_patch_time
      
        # Serial Number of device. Example: HT82V1A01076.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # WiFi MAC addresses of device.
        # Corresponds to the JSON property `wifiMacAddresses`
        # @return [Array<String>]
        attr_accessor :wifi_mac_addresses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_specific_attributes = args[:android_specific_attributes] if args.key?(:android_specific_attributes)
          @asset_tag = args[:asset_tag] if args.key?(:asset_tag)
          @baseband_version = args[:baseband_version] if args.key?(:baseband_version)
          @bootloader_version = args[:bootloader_version] if args.key?(:bootloader_version)
          @brand = args[:brand] if args.key?(:brand)
          @build_number = args[:build_number] if args.key?(:build_number)
          @compromised_state = args[:compromised_state] if args.key?(:compromised_state)
          @create_time = args[:create_time] if args.key?(:create_time)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_type = args[:device_type] if args.key?(:device_type)
          @enabled_developer_options = args[:enabled_developer_options] if args.key?(:enabled_developer_options)
          @enabled_usb_debugging = args[:enabled_usb_debugging] if args.key?(:enabled_usb_debugging)
          @encryption_state = args[:encryption_state] if args.key?(:encryption_state)
          @imei = args[:imei] if args.key?(:imei)
          @kernel_version = args[:kernel_version] if args.key?(:kernel_version)
          @last_sync_time = args[:last_sync_time] if args.key?(:last_sync_time)
          @management_state = args[:management_state] if args.key?(:management_state)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @meid = args[:meid] if args.key?(:meid)
          @model = args[:model] if args.key?(:model)
          @name = args[:name] if args.key?(:name)
          @network_operator = args[:network_operator] if args.key?(:network_operator)
          @os_version = args[:os_version] if args.key?(:os_version)
          @other_accounts = args[:other_accounts] if args.key?(:other_accounts)
          @owner_type = args[:owner_type] if args.key?(:owner_type)
          @release_version = args[:release_version] if args.key?(:release_version)
          @security_patch_time = args[:security_patch_time] if args.key?(:security_patch_time)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @wifi_mac_addresses = args[:wifi_mac_addresses] if args.key?(:wifi_mac_addresses)
        end
      end
      
      # Represents a user's use of a Device in the Cloud Identity Devices API. A
      # DeviceUser is a resource representing a user's use of a Device
      class GoogleAppsCloudidentityDevicesV1DeviceUser
        include Google::Apis::Core::Hashable
      
        # Compromised State of the DeviceUser object
        # Corresponds to the JSON property `compromisedState`
        # @return [String]
        attr_accessor :compromised_state
      
        # When the user first signed in to the device
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Most recent time when user registered with this service.
        # Corresponds to the JSON property `firstSyncTime`
        # @return [String]
        attr_accessor :first_sync_time
      
        # Output only. Default locale used on device, in IETF BCP-47 format.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Output only. Last time when user synced with policies.
        # Corresponds to the JSON property `lastSyncTime`
        # @return [String]
        attr_accessor :last_sync_time
      
        # Output only. Management state of the user on the device.
        # Corresponds to the JSON property `managementState`
        # @return [String]
        attr_accessor :management_state
      
        # Output only. [Resource name](https://cloud.google.com/apis/design/
        # resource_names) of the DeviceUser in format: `devices/`device`/deviceUsers/`
        # device_user``, where `device_user` uniquely identifies a user's use of a
        # device.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Password state of the DeviceUser object
        # Corresponds to the JSON property `passwordState`
        # @return [String]
        attr_accessor :password_state
      
        # Output only. User agent on the device for this specific user
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Email address of the user registered on the device.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compromised_state = args[:compromised_state] if args.key?(:compromised_state)
          @create_time = args[:create_time] if args.key?(:create_time)
          @first_sync_time = args[:first_sync_time] if args.key?(:first_sync_time)
          @language_code = args[:language_code] if args.key?(:language_code)
          @last_sync_time = args[:last_sync_time] if args.key?(:last_sync_time)
          @management_state = args[:management_state] if args.key?(:management_state)
          @name = args[:name] if args.key?(:name)
          @password_state = args[:password_state] if args.key?(:password_state)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # Metadata for ListEndpointApps LRO.
      class GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for SignoutDeviceUser LRO.
      class GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for UpdateClientState LRO.
      class GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for UpdateDevice LRO.
      class GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for WipeDevice LRO.
      class GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for wiping all data on the device.
      class GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
        include Google::Apis::Core::Hashable
      
        # A Device within the Cloud Identity Devices API. Represents a Device known to
        # Google Cloud, independent of the device ownership, type, and whether it is
        # assigned or in use by a user.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::CloudidentityV1beta1::GoogleAppsCloudidentityDevicesV1Device]
        attr_accessor :device
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device = args[:device] if args.key?(:device)
        end
      end
      
      # Metadata for WipeDeviceUser LRO.
      class GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for wiping the user's account from the device.
      class GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # Represents a user's use of a Device in the Cloud Identity Devices API. A
        # DeviceUser is a resource representing a user's use of a Device
        # Corresponds to the JSON property `deviceUser`
        # @return [Google::Apis::CloudidentityV1beta1::GoogleAppsCloudidentityDevicesV1DeviceUser]
        attr_accessor :device_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_user = args[:device_user] if args.key?(:device_user)
        end
      end
      
      # A group within the Cloud Identity Groups API. A `Group` is a collection of
      # entities, where each entity is either a user, another group, or a service
      # account.
      class Group
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the `Group` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # An extended description to help users determine the purpose of a `Group`. Must
        # not be longer than 4,096 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display name of the `Group`.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Dynamic group metadata like queries and status.
        # Corresponds to the JSON property `dynamicGroupMetadata`
        # @return [Google::Apis::CloudidentityV1beta1::DynamicGroupMetadata]
        attr_accessor :dynamic_group_metadata
      
        # A unique identifier for an entity in the Cloud Identity Groups API. An entity
        # can represent either a group with an optional `namespace` or a user without a `
        # namespace`. The combination of `id` and `namespace` must be unique; however,
        # the same `id` can be used with different `namespace`s.
        # Corresponds to the JSON property `groupKey`
        # @return [Google::Apis::CloudidentityV1beta1::EntityKey]
        attr_accessor :group_key
      
        # Required. One or more label entries that apply to the Group. Currently
        # supported labels contain a key with an empty value. Google Groups are the
        # default type of group and have a label with a key of `cloudidentity.googleapis.
        # com/groups.discussion_forum` and an empty value. Existing Google Groups can
        # have an additional label with a key of `cloudidentity.googleapis.com/groups.
        # security` and an empty value added to them. **This is an immutable change and
        # the security label cannot be removed once added.** Dynamic groups have a label
        # with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped
        # groups for Cloud Search have a label with a key of `system/groups/external`
        # and an empty value.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The [resource name](https://cloud.google.com/apis/design/
        # resource_names) of the `Group`. Shall be of the form `groups/`group_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The resource name of the entity under which this `Group`
        # resides in the Cloud Identity resource hierarchy. Must be of the form `
        # identitysources/`identity_source`` for external [identity-mapped groups](https:
        # //support.google.com/a/answer/9039510) or `customers/`customer_id`` for Google
        # Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [
        # Find your customer ID.] (https://support.google.com/cloudidentity/answer/
        # 10070793)
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Optional. The POSIX groups associated with the `Group`.
        # Corresponds to the JSON property `posixGroups`
        # @return [Array<Google::Apis::CloudidentityV1beta1::PosixGroup>]
        attr_accessor :posix_groups
      
        # Output only. The time when the `Group` was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @dynamic_group_metadata = args[:dynamic_group_metadata] if args.key?(:dynamic_group_metadata)
          @group_key = args[:group_key] if args.key?(:group_key)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @posix_groups = args[:posix_groups] if args.key?(:posix_groups)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message representing a transitive group of a user or a group.
      class GroupRelation
        include Google::Apis::Core::Hashable
      
        # Display name for this group.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name for this group.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # A unique identifier for an entity in the Cloud Identity Groups API. An entity
        # can represent either a group with an optional `namespace` or a user without a `
        # namespace`. The combination of `id` and `namespace` must be unique; however,
        # the same `id` can be used with different `namespace`s.
        # Corresponds to the JSON property `groupKey`
        # @return [Google::Apis::CloudidentityV1beta1::EntityKey]
        attr_accessor :group_key
      
        # Labels for Group resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The relation between the member and the transitive group.
        # Corresponds to the JSON property `relationType`
        # @return [String]
        attr_accessor :relation_type
      
        # Membership roles of the member for the group.
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::CloudidentityV1beta1::TransitiveMembershipRole>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @group = args[:group] if args.key?(:group)
          @group_key = args[:group_key] if args.key?(:group_key)
          @labels = args[:labels] if args.key?(:labels)
          @relation_type = args[:relation_type] if args.key?(:relation_type)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # Credential for verifying signatures produced by the Identity Provider.
      class IdpCredential
        include Google::Apis::Core::Hashable
      
        # Information of a DSA public key.
        # Corresponds to the JSON property `dsaKeyInfo`
        # @return [Google::Apis::CloudidentityV1beta1::DsaPublicKeyInfo]
        attr_accessor :dsa_key_info
      
        # Output only. [Resource name](https://cloud.google.com/apis/design/
        # resource_names) of the credential.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Information of a RSA public key.
        # Corresponds to the JSON property `rsaKeyInfo`
        # @return [Google::Apis::CloudidentityV1beta1::RsaPublicKeyInfo]
        attr_accessor :rsa_key_info
      
        # Output only. Time when the `IdpCredential` was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dsa_key_info = args[:dsa_key_info] if args.key?(:dsa_key_info)
          @name = args[:name] if args.key?(:name)
          @rsa_key_info = args[:rsa_key_info] if args.key?(:rsa_key_info)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A [SAML 2.0](https://www.oasis-open.org/standards#samlv2.0) federation between
      # a Google enterprise customer and a SAML identity provider.
      class InboundSamlSsoProfile
        include Google::Apis::Core::Hashable
      
        # Immutable. The customer. For example: `customers/C0123abc`.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # Human-readable name of the SAML SSO profile.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # SAML IDP (identity provider) configuration.
        # Corresponds to the JSON property `idpConfig`
        # @return [Google::Apis::CloudidentityV1beta1::SamlIdpConfig]
        attr_accessor :idp_config
      
        # Output only. [Resource name](https://cloud.google.com/apis/design/
        # resource_names) of the SAML SSO profile.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # SAML SP (service provider) configuration.
        # Corresponds to the JSON property `spConfig`
        # @return [Google::Apis::CloudidentityV1beta1::SamlSpConfig]
        attr_accessor :sp_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
          @display_name = args[:display_name] if args.key?(:display_name)
          @idp_config = args[:idp_config] if args.key?(:idp_config)
          @name = args[:name] if args.key?(:name)
          @sp_config = args[:sp_config] if args.key?(:sp_config)
        end
      end
      
      # Targets with "set" SSO assignments and their respective assignments.
      class InboundSsoAssignment
        include Google::Apis::Core::Hashable
      
        # Immutable. The customer. For example: `customers/C0123abc`.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # Output only. [Resource name](https://cloud.google.com/apis/design/
        # resource_names) of the Inbound SSO Assignment.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Must be zero (which is the default value so it can be omitted) for assignments
        # with `target_org_unit` set and must be greater-than-or-equal-to one for
        # assignments with `target_group` set.
        # Corresponds to the JSON property `rank`
        # @return [Fixnum]
        attr_accessor :rank
      
        # Details that are applicable when `sso_mode` == `SAML_SSO`.
        # Corresponds to the JSON property `samlSsoInfo`
        # @return [Google::Apis::CloudidentityV1beta1::SamlSsoInfo]
        attr_accessor :saml_sso_info
      
        # Controls sign-in behavior.
        # Corresponds to the JSON property `signInBehavior`
        # @return [Google::Apis::CloudidentityV1beta1::SignInBehavior]
        attr_accessor :sign_in_behavior
      
        # Inbound SSO behavior.
        # Corresponds to the JSON property `ssoMode`
        # @return [String]
        attr_accessor :sso_mode
      
        # Immutable. Must be of the form `groups/`group``.
        # Corresponds to the JSON property `targetGroup`
        # @return [String]
        attr_accessor :target_group
      
        # Immutable. Must be of the form `orgUnits/`org_unit``.
        # Corresponds to the JSON property `targetOrgUnit`
        # @return [String]
        attr_accessor :target_org_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
          @name = args[:name] if args.key?(:name)
          @rank = args[:rank] if args.key?(:rank)
          @saml_sso_info = args[:saml_sso_info] if args.key?(:saml_sso_info)
          @sign_in_behavior = args[:sign_in_behavior] if args.key?(:sign_in_behavior)
          @sso_mode = args[:sso_mode] if args.key?(:sso_mode)
          @target_group = args[:target_group] if args.key?(:target_group)
          @target_org_unit = args[:target_org_unit] if args.key?(:target_org_unit)
        end
      end
      
      # Response for IsInvitableUser RPC.
      class IsInvitableUserResponse
        include Google::Apis::Core::Hashable
      
        # Returns true if the email address is invitable.
        # Corresponds to the JSON property `isInvitableUser`
        # @return [Boolean]
        attr_accessor :is_invitable_user
        alias_method :is_invitable_user?, :is_invitable_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_invitable_user = args[:is_invitable_user] if args.key?(:is_invitable_user)
        end
      end
      
      # Response message that is returned in LRO result of ListClientStates Operation.
      class ListClientStatesResponse
        include Google::Apis::Core::Hashable
      
        # Client states meeting the list restrictions.
        # Corresponds to the JSON property `clientStates`
        # @return [Array<Google::Apis::CloudidentityV1beta1::ClientState>]
        attr_accessor :client_states
      
        # Token to retrieve the next page of results. Empty if there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_states = args[:client_states] if args.key?(:client_states)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message that is returned from the ListDeviceUsers method.
      class ListDeviceUsersResponse
        include Google::Apis::Core::Hashable
      
        # Devices meeting the list restrictions.
        # Corresponds to the JSON property `deviceUsers`
        # @return [Array<Google::Apis::CloudidentityV1beta1::DeviceUser>]
        attr_accessor :device_users
      
        # Token to retrieve the next page of results. Empty if there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_users = args[:device_users] if args.key?(:device_users)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message that is returned from the ListDevices method.
      class ListDevicesResponse
        include Google::Apis::Core::Hashable
      
        # Devices meeting the list restrictions.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::CloudidentityV1beta1::Device>]
        attr_accessor :devices
      
        # Token to retrieve the next page of results. Empty if there are no more results.
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
      
      # The response message for GroupsService.ListGroups.
      class ListGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The `Group` resources under the specified `parent`.
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::CloudidentityV1beta1::Group>]
        attr_accessor :groups
      
        # A continuation token to retrieve the next page of results, or empty if there
        # are no more results available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @groups = args[:groups] if args.key?(:groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response of the InboundSamlSsoProfilesService.ListIdpCredentials method.
      class ListIdpCredentialsResponse
        include Google::Apis::Core::Hashable
      
        # The IdpCredentials from the specified InboundSamlSsoProfile.
        # Corresponds to the JSON property `idpCredentials`
        # @return [Array<Google::Apis::CloudidentityV1beta1::IdpCredential>]
        attr_accessor :idp_credentials
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @idp_credentials = args[:idp_credentials] if args.key?(:idp_credentials)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response of the InboundSamlSsoProfilesService.ListInboundSamlSsoProfiles
      # method.
      class ListInboundSamlSsoProfilesResponse
        include Google::Apis::Core::Hashable
      
        # List of InboundSamlSsoProfiles.
        # Corresponds to the JSON property `inboundSamlSsoProfiles`
        # @return [Array<Google::Apis::CloudidentityV1beta1::InboundSamlSsoProfile>]
        attr_accessor :inbound_saml_sso_profiles
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inbound_saml_sso_profiles = args[:inbound_saml_sso_profiles] if args.key?(:inbound_saml_sso_profiles)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response of the InboundSsoAssignmentsService.ListInboundSsoAssignments method.
      class ListInboundSsoAssignmentsResponse
        include Google::Apis::Core::Hashable
      
        # The assignments.
        # Corresponds to the JSON property `inboundSsoAssignments`
        # @return [Array<Google::Apis::CloudidentityV1beta1::InboundSsoAssignment>]
        attr_accessor :inbound_sso_assignments
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inbound_sso_assignments = args[:inbound_sso_assignments] if args.key?(:inbound_sso_assignments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for MembershipsService.ListMemberships.
      class ListMembershipsResponse
        include Google::Apis::Core::Hashable
      
        # The `Membership`s under the specified `parent`.
        # Corresponds to the JSON property `memberships`
        # @return [Array<Google::Apis::CloudidentityV1beta1::Membership>]
        attr_accessor :memberships
      
        # A continuation token to retrieve the next page of results, or empty if there
        # are no more results available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memberships = args[:memberships] if args.key?(:memberships)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for OrgMembershipsService.ListOrgMemberships.
      class ListOrgMembershipsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The non-vacuous membership in an orgUnit.
        # Corresponds to the JSON property `orgMemberships`
        # @return [Array<Google::Apis::CloudidentityV1beta1::OrgMembership>]
        attr_accessor :org_memberships
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @org_memberships = args[:org_memberships] if args.key?(:org_memberships)
        end
      end
      
      # Response message for UserInvitation listing request.
      class ListUserInvitationsResponse
        include Google::Apis::Core::Hashable
      
        # The token for the next page. If not empty, indicates that there may be more `
        # UserInvitation` resources that match the listing request; this value can be
        # used in a subsequent ListUserInvitationsRequest to get continued results with
        # the current list call.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of UserInvitation resources.
        # Corresponds to the JSON property `userInvitations`
        # @return [Array<Google::Apis::CloudidentityV1beta1::UserInvitation>]
        attr_accessor :user_invitations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_invitations = args[:user_invitations] if args.key?(:user_invitations)
        end
      end
      
      # The response message for GroupsService.LookupGroupName.
      class LookupGroupNameResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The [resource name](https://cloud.google.com/apis/design/
        # resource_names) of the looked-up `Group`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The response message for MembershipsService.LookupMembershipName.
      class LookupMembershipNameResponse
        include Google::Apis::Core::Hashable
      
        # The [resource name](https://cloud.google.com/apis/design/resource_names) of
        # the looked-up `Membership`. Must be of the form `groups/`group_id`/memberships/
        # `membership_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Response containing resource names of the DeviceUsers associated with the
      # caller's credentials.
      class LookupSelfDeviceUsersResponse
        include Google::Apis::Core::Hashable
      
        # The customer Id that may be passed back to other Devices API methods such as
        # List, Get, etc.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # [Resource names](https://cloud.google.com/apis/design/resource_names) of the
        # DeviceUsers in the format: `devices/`device_id`/deviceUsers/`user_resource_id``
        # , where device_id is the unique ID assigned to a Device and user_resource_id
        # is the unique user ID
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        # Token to retrieve the next page of results. Empty if there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
          @names = args[:names] if args.key?(:names)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message representing a transitive membership of a group.
      class MemberRelation
        include Google::Apis::Core::Hashable
      
        # Resource name for this member.
        # Corresponds to the JSON property `member`
        # @return [String]
        attr_accessor :member
      
        # Entity key has an id and a namespace. In case of discussion forums, the id
        # will be an email address without a namespace.
        # Corresponds to the JSON property `preferredMemberKey`
        # @return [Array<Google::Apis::CloudidentityV1beta1::EntityKey>]
        attr_accessor :preferred_member_key
      
        # The relation between the group and the transitive membership.
        # Corresponds to the JSON property `relationType`
        # @return [String]
        attr_accessor :relation_type
      
        # The membership role details (i.e name of role and expiry time).
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::CloudidentityV1beta1::TransitiveMembershipRole>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @member = args[:member] if args.key?(:member)
          @preferred_member_key = args[:preferred_member_key] if args.key?(:preferred_member_key)
          @relation_type = args[:relation_type] if args.key?(:relation_type)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # The definition of MemberRestriction
      class MemberRestriction
        include Google::Apis::Core::Hashable
      
        # The evaluated state of this restriction.
        # Corresponds to the JSON property `evaluation`
        # @return [Google::Apis::CloudidentityV1beta1::RestrictionEvaluation]
        attr_accessor :evaluation
      
        # Member Restriction as defined by CEL expression. Supported restrictions are: `
        # member.customer_id` and `member.type`. Valid values for `member.type` are `1`,
        # `2` and `3`. They correspond to USER, SERVICE_ACCOUNT, and GROUP respectively.
        # The value for `member.customer_id` only supports `groupCustomerId()` currently
        # which means the customer id of the group will be used for restriction.
        # Supported operators are `&&`, `||` and `==`, corresponding to AND, OR, and
        # EQUAL. Examples: Allow only service accounts of given customer to be members. `
        # member.type == 2 && member.customer_id == groupCustomerId()` Allow only users
        # or groups to be members. `member.type == 1 || member.type == 3`
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluation = args[:evaluation] if args.key?(:evaluation)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # A membership within the Cloud Identity Groups API. A `Membership` defines a
      # relationship between a `Group` and an entity belonging to that `Group`,
      # referred to as a "member".
      class Membership
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the `Membership` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A unique identifier for an entity in the Cloud Identity Groups API. An entity
        # can represent either a group with an optional `namespace` or a user without a `
        # namespace`. The combination of `id` and `namespace` must be unique; however,
        # the same `id` can be used with different `namespace`s.
        # Corresponds to the JSON property `memberKey`
        # @return [Google::Apis::CloudidentityV1beta1::EntityKey]
        attr_accessor :member_key
      
        # Output only. The [resource name](https://cloud.google.com/apis/design/
        # resource_names) of the `Membership`. Shall be of the form `groups/`group_id`/
        # memberships/`membership_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A unique identifier for an entity in the Cloud Identity Groups API. An entity
        # can represent either a group with an optional `namespace` or a user without a `
        # namespace`. The combination of `id` and `namespace` must be unique; however,
        # the same `id` can be used with different `namespace`s.
        # Corresponds to the JSON property `preferredMemberKey`
        # @return [Google::Apis::CloudidentityV1beta1::EntityKey]
        attr_accessor :preferred_member_key
      
        # The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults
        # to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `
        # MembershipRole`s with the same `name`.
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::CloudidentityV1beta1::MembershipRole>]
        attr_accessor :roles
      
        # Output only. The type of the membership.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The time when the `Membership` was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @member_key = args[:member_key] if args.key?(:member_key)
          @name = args[:name] if args.key?(:name)
          @preferred_member_key = args[:preferred_member_key] if args.key?(:preferred_member_key)
          @roles = args[:roles] if args.key?(:roles)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Membership graph's path information as an adjacency list.
      class MembershipAdjacencyList
        include Google::Apis::Core::Hashable
      
        # Each edge contains information about the member that belongs to this group.
        # Note: Fields returned here will help identify the specific Membership resource
        # (e.g name, preferred_member_key and role), but may not be a comprehensive list
        # of all fields.
        # Corresponds to the JSON property `edges`
        # @return [Array<Google::Apis::CloudidentityV1beta1::Membership>]
        attr_accessor :edges
      
        # Resource name of the group that the members belong to.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @edges = args[:edges] if args.key?(:edges)
          @group = args[:group] if args.key?(:group)
        end
      end
      
      # A membership role within the Cloud Identity Groups API. A `MembershipRole`
      # defines the privileges granted to a `Membership`.
      class MembershipRole
        include Google::Apis::Core::Hashable
      
        # The `MembershipRole` expiry details.
        # Corresponds to the JSON property `expiryDetail`
        # @return [Google::Apis::CloudidentityV1beta1::ExpiryDetail]
        attr_accessor :expiry_detail
      
        # The name of the `MembershipRole`. Must be one of `OWNER`, `MANAGER`, `MEMBER`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Evaluations of restrictions applied to parent group on this membership.
        # Corresponds to the JSON property `restrictionEvaluations`
        # @return [Google::Apis::CloudidentityV1beta1::RestrictionEvaluations]
        attr_accessor :restriction_evaluations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiry_detail = args[:expiry_detail] if args.key?(:expiry_detail)
          @name = args[:name] if args.key?(:name)
          @restriction_evaluations = args[:restriction_evaluations] if args.key?(:restriction_evaluations)
        end
      end
      
      # The evaluated state of this restriction.
      class MembershipRoleRestrictionEvaluation
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the restriction
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The request message for MembershipsService.ModifyMembershipRoles.
      class ModifyMembershipRolesRequest
        include Google::Apis::Core::Hashable
      
        # The `MembershipRole`s to be added. Adding or removing roles in the same
        # request as updating roles is not supported. Must not be set if `
        # update_roles_params` is set.
        # Corresponds to the JSON property `addRoles`
        # @return [Array<Google::Apis::CloudidentityV1beta1::MembershipRole>]
        attr_accessor :add_roles
      
        # The `name`s of the `MembershipRole`s to be removed. Adding or removing roles
        # in the same request as updating roles is not supported. It is not possible to
        # remove the `MEMBER` `MembershipRole`. If you wish to delete a `Membership`,
        # call MembershipsService.DeleteMembership instead. Must not contain `MEMBER`.
        # Must not be set if `update_roles_params` is set.
        # Corresponds to the JSON property `removeRoles`
        # @return [Array<String>]
        attr_accessor :remove_roles
      
        # The `MembershipRole`s to be updated. Updating roles in the same request as
        # adding or removing roles is not supported. Must not be set if either `
        # add_roles` or `remove_roles` is set.
        # Corresponds to the JSON property `updateRolesParams`
        # @return [Array<Google::Apis::CloudidentityV1beta1::UpdateMembershipRolesParams>]
        attr_accessor :update_roles_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_roles = args[:add_roles] if args.key?(:add_roles)
          @remove_roles = args[:remove_roles] if args.key?(:remove_roles)
          @update_roles_params = args[:update_roles_params] if args.key?(:update_roles_params)
        end
      end
      
      # The response message for MembershipsService.ModifyMembershipRoles.
      class ModifyMembershipRolesResponse
        include Google::Apis::Core::Hashable
      
        # A membership within the Cloud Identity Groups API. A `Membership` defines a
        # relationship between a `Group` and an entity belonging to that `Group`,
        # referred to as a "member".
        # Corresponds to the JSON property `membership`
        # @return [Google::Apis::CloudidentityV1beta1::Membership]
        attr_accessor :membership
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @membership = args[:membership] if args.key?(:membership)
        end
      end
      
      # The request message for OrgMembershipsService.MoveOrgMembership.
      class MoveOrgMembershipRequest
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Customer on whose membership change is made. All
        # authorization will happen on the role assignments of this customer. Format:
        # customers/`$customerId` where `$customerId` is the `id` from the [Admin SDK `
        # Customer` resource](https://developers.google.com/admin-sdk/directory/
        # reference/rest/v1/customers). You may also use `customers/my_customer` to
        # specify your own organization.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # Required. Immutable. OrgUnit where the membership will be moved to. Format:
        # orgUnits/`$orgUnitId` where `$orgUnitId` is the `orgUnitId` from the [Admin
        # SDK `OrgUnit` resource](https://developers.google.com/admin-sdk/directory/
        # reference/rest/v1/orgunits).
        # Corresponds to the JSON property `destinationOrgUnit`
        # @return [String]
        attr_accessor :destination_org_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
          @destination_org_unit = args[:destination_org_unit] if args.key?(:destination_org_unit)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
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
        # @return [Google::Apis::CloudidentityV1beta1::Status]
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
      
      # A membership in an OrgUnit. An `OrgMembership` defines a relationship between
      # an `OrgUnit` and an entity belonging to that `OrgUnit`, referred to as a "
      # member".
      class OrgMembership
        include Google::Apis::Core::Hashable
      
        # Immutable. Org member id as full resource name. Format for shared drive
        # resource: //drive.googleapis.com/drives/`$memberId` where `$memberId` is the `
        # id` from [Drive API (V3) `Drive` resource](https://developers.google.com/drive/
        # api/v3/reference/drives#resource).
        # Corresponds to the JSON property `member`
        # @return [String]
        attr_accessor :member
      
        # Uri with which you can read the member. This follows https://aip.dev/122
        # Format for shared drive resource: https://drive.googleapis.com/drive/v3/drives/
        # `$memberId` where `$memberId` is the `id` from [Drive API (V3) `Drive`
        # resource](https://developers.google.com/drive/api/v3/reference/drives#resource)
        # .
        # Corresponds to the JSON property `memberUri`
        # @return [String]
        attr_accessor :member_uri
      
        # Required. Immutable. The [resource name](https://cloud.google.com/apis/design/
        # resource_names) of the OrgMembership. Format: orgUnits/`$orgUnitId`/
        # memberships/`$membership` The `$orgUnitId` is the `orgUnitId` from the [Admin
        # SDK `OrgUnit` resource](https://developers.google.com/admin-sdk/directory/
        # reference/rest/v1/orgunits). The `$membership` shall be of the form ``$
        # entityType`;`$memberId``, where `$entityType` is the enum value of [
        # OrgMembership.EntityType], and `memberId` is the `id` from [Drive API (V3) `
        # Drive` resource](https://developers.google.com/drive/api/v3/reference/drives#
        # resource) for OrgMembership.EntityType.SHARED_DRIVE.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. Entity type for the org member.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @member = args[:member] if args.key?(:member)
          @member_uri = args[:member_uri] if args.key?(:member_uri)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # POSIX Group definition to represent a group in a POSIX compliant system.
      class PosixGroup
        include Google::Apis::Core::Hashable
      
        # GID of the POSIX group.
        # Corresponds to the JSON property `gid`
        # @return [Fixnum]
        attr_accessor :gid
      
        # Name of the POSIX group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # System identifier for which group name and gid apply to. If not specified it
        # will default to empty value.
        # Corresponds to the JSON property `systemId`
        # @return [String]
        attr_accessor :system_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gid = args[:gid] if args.key?(:gid)
          @name = args[:name] if args.key?(:name)
          @system_id = args[:system_id] if args.key?(:system_id)
        end
      end
      
      # The evaluated state of this restriction.
      class RestrictionEvaluation
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the restriction
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Evaluations of restrictions applied to parent group on this membership.
      class RestrictionEvaluations
        include Google::Apis::Core::Hashable
      
        # The evaluated state of this restriction.
        # Corresponds to the JSON property `memberRestrictionEvaluation`
        # @return [Google::Apis::CloudidentityV1beta1::MembershipRoleRestrictionEvaluation]
        attr_accessor :member_restriction_evaluation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @member_restriction_evaluation = args[:member_restriction_evaluation] if args.key?(:member_restriction_evaluation)
        end
      end
      
      # Information of a RSA public key.
      class RsaPublicKeyInfo
        include Google::Apis::Core::Hashable
      
        # Key size in bits (size of the modulus).
        # Corresponds to the JSON property `keySize`
        # @return [Fixnum]
        attr_accessor :key_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_size = args[:key_size] if args.key?(:key_size)
        end
      end
      
      # SAML IDP (identity provider) configuration.
      class SamlIdpConfig
        include Google::Apis::Core::Hashable
      
        # The **Change Password URL** of the identity provider. Users will be sent to
        # this URL when changing their passwords at `myaccount.google.com`. This takes
        # precedence over the change password URL configured at customer-level. Must use
        # `HTTPS`.
        # Corresponds to the JSON property `changePasswordUri`
        # @return [String]
        attr_accessor :change_password_uri
      
        # Required. The SAML **Entity ID** of the identity provider.
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        # The **Logout Redirect URL** (sign-out page URL) of the identity provider. When
        # a user clicks the sign-out link on a Google page, they will be redirected to
        # this URL. This is a pure redirect with no attached SAML `LogoutRequest` i.e.
        # SAML single logout is currently not supported. Must use `HTTPS`.
        # Corresponds to the JSON property `logoutRedirectUri`
        # @return [String]
        attr_accessor :logout_redirect_uri
      
        # Required. The `SingleSignOnService` endpoint location (sign-in page URL) of
        # the identity provider. This is the URL where the `AuthnRequest` will be sent.
        # Must use `HTTPS`. Currently assumed to accept the `HTTP-Redirect` binding.
        # Corresponds to the JSON property `singleSignOnServiceUri`
        # @return [String]
        attr_accessor :single_sign_on_service_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @change_password_uri = args[:change_password_uri] if args.key?(:change_password_uri)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
          @logout_redirect_uri = args[:logout_redirect_uri] if args.key?(:logout_redirect_uri)
          @single_sign_on_service_uri = args[:single_sign_on_service_uri] if args.key?(:single_sign_on_service_uri)
        end
      end
      
      # SAML SP (service provider) configuration.
      class SamlSpConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The SAML **Assertion Consumer Service (ACS) URL** to be used for
        # the IDP-initiated login. Currently assumed to accept response messages via the
        # `HTTP-POST` binding.
        # Corresponds to the JSON property `assertionConsumerServiceUri`
        # @return [String]
        attr_accessor :assertion_consumer_service_uri
      
        # Output only. The SAML **Entity ID** for this service provider.
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assertion_consumer_service_uri = args[:assertion_consumer_service_uri] if args.key?(:assertion_consumer_service_uri)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
        end
      end
      
      # Details that are applicable when `sso_mode` == `SAML_SSO`.
      class SamlSsoInfo
        include Google::Apis::Core::Hashable
      
        # Required. Name of the `InboundSamlSsoProfile` to use. Must be of the form `
        # inboundSamlSsoProfiles/`inbound_saml_sso_profile``.
        # Corresponds to the JSON property `inboundSamlSsoProfile`
        # @return [String]
        attr_accessor :inbound_saml_sso_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inbound_saml_sso_profile = args[:inbound_saml_sso_profile] if args.key?(:inbound_saml_sso_profile)
        end
      end
      
      # The response message for GroupsService.SearchGroups.
      class SearchGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The `Group` resources that match the search query.
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::CloudidentityV1beta1::Group>]
        attr_accessor :groups
      
        # A continuation token to retrieve the next page of results, or empty if there
        # are no more results available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @groups = args[:groups] if args.key?(:groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for MembershipsService.SearchTransitiveGroups.
      class SearchTransitiveGroupsResponse
        include Google::Apis::Core::Hashable
      
        # List of transitive groups satisfying the query.
        # Corresponds to the JSON property `memberships`
        # @return [Array<Google::Apis::CloudidentityV1beta1::GroupRelation>]
        attr_accessor :memberships
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results available for listing.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memberships = args[:memberships] if args.key?(:memberships)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for MembershipsService.SearchTransitiveMemberships.
      class SearchTransitiveMembershipsResponse
        include Google::Apis::Core::Hashable
      
        # List of transitive memberships satisfying the query.
        # Corresponds to the JSON property `memberships`
        # @return [Array<Google::Apis::CloudidentityV1beta1::MemberRelation>]
        attr_accessor :memberships
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memberships = args[:memberships] if args.key?(:memberships)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The definiion of security settings.
      class SecuritySettings
        include Google::Apis::Core::Hashable
      
        # The definition of MemberRestriction
        # Corresponds to the JSON property `memberRestriction`
        # @return [Google::Apis::CloudidentityV1beta1::MemberRestriction]
        attr_accessor :member_restriction
      
        # Output only. The resource name of the security settings. Shall be of the form `
        # groups/`group_id`/securitySettings`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @member_restriction = args[:member_restriction] if args.key?(:member_restriction)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A request to send email for inviting target user corresponding to the
      # UserInvitation.
      class SendUserInvitationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Controls sign-in behavior.
      class SignInBehavior
        include Google::Apis::Core::Hashable
      
        # When to redirect sign-ins to the IdP.
        # Corresponds to the JSON property `redirectCondition`
        # @return [String]
        attr_accessor :redirect_condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @redirect_condition = args[:redirect_condition] if args.key?(:redirect_condition)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
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
      
      # Message representing the role of a TransitiveMembership.
      class TransitiveMembershipRole
        include Google::Apis::Core::Hashable
      
        # TransitiveMembershipRole in string format. Currently supported
        # TransitiveMembershipRoles: `"MEMBER"`, `"OWNER"`, and `"MANAGER"`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # LRO response metadata for InboundSamlSsoProfilesService.
      # UpdateInboundSamlSsoProfile.
      class UpdateInboundSamlSsoProfileOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # LRO response metadata for InboundSsoAssignmentsService.
      # UpdateInboundSsoAssignment.
      class UpdateInboundSsoAssignmentOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The details of an update to a `MembershipRole`.
      class UpdateMembershipRolesParams
        include Google::Apis::Core::Hashable
      
        # The fully-qualified names of fields to update. May only contain the field `
        # expiry_detail.expire_time`.
        # Corresponds to the JSON property `fieldMask`
        # @return [String]
        attr_accessor :field_mask
      
        # A membership role within the Cloud Identity Groups API. A `MembershipRole`
        # defines the privileges granted to a `Membership`.
        # Corresponds to the JSON property `membershipRole`
        # @return [Google::Apis::CloudidentityV1beta1::MembershipRole]
        attr_accessor :membership_role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_mask = args[:field_mask] if args.key?(:field_mask)
          @membership_role = args[:membership_role] if args.key?(:membership_role)
        end
      end
      
      # The `UserInvitation` resource represents an email that can be sent to an
      # unmanaged user account inviting them to join the customer's Google Workspace
      # or Cloud Identity account. An unmanaged account shares an email address domain
      # with the Google Workspace or Cloud Identity account but is not managed by it
      # yet. If the user accepts the `UserInvitation`, the user account will become
      # managed.
      class UserInvitation
        include Google::Apis::Core::Hashable
      
        # Number of invitation emails sent to the user.
        # Corresponds to the JSON property `mailsSentCount`
        # @return [Fixnum]
        attr_accessor :mails_sent_count
      
        # Shall be of the form `customers/`customer`/userinvitations/`user_email_address`
        # `.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # State of the `UserInvitation`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Time when the `UserInvitation` was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mails_sent_count = args[:mails_sent_count] if args.key?(:mails_sent_count)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for wiping all data on the device.
      class WipeDeviceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        # of the customer. If you're using this API for your own organization, use `
        # customers/my_customer` If you're using this API to manage another organization,
        # use `customers/`customer_id``, where customer_id is the customer to whom the
        # device belongs.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # Optional. Specifies if a user is able to factory reset a device after a Device
        # Wipe. On iOS, this is called "Activation Lock", while on Android, this is
        # known as "Factory Reset Protection". If true, this protection will be removed
        # from the device, so that a user can successfully factory reset. If false, the
        # setting is untouched on the device.
        # Corresponds to the JSON property `removeResetLock`
        # @return [Boolean]
        attr_accessor :remove_reset_lock
        alias_method :remove_reset_lock?, :remove_reset_lock
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
          @remove_reset_lock = args[:remove_reset_lock] if args.key?(:remove_reset_lock)
        end
      end
      
      # Response message for wiping all data on the device.
      class WipeDeviceResponse
        include Google::Apis::Core::Hashable
      
        # A Device within the Cloud Identity Devices API. Represents a Device known to
        # Google Cloud, independent of the device ownership, type, and whether it is
        # assigned or in use by a user.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::CloudidentityV1beta1::Device]
        attr_accessor :device
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device = args[:device] if args.key?(:device)
        end
      end
      
      # Request message for starting an account wipe on device.
      class WipeDeviceUserRequest
        include Google::Apis::Core::Hashable
      
        # Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        # of the customer. If you're using this API for your own organization, use `
        # customers/my_customer` If you're using this API to manage another organization,
        # use `customers/`customer_id``, where customer_id is the customer to whom the
        # device belongs.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer = args[:customer] if args.key?(:customer)
        end
      end
      
      # Response message for wiping the user's account from the device.
      class WipeDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # Represents a user's use of a Device in the Cloud Identity Devices API. A
        # DeviceUser is a resource representing a user's use of a Device
        # Corresponds to the JSON property `deviceUser`
        # @return [Google::Apis::CloudidentityV1beta1::DeviceUser]
        attr_accessor :device_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_user = args[:device_user] if args.key?(:device_user)
        end
      end
    end
  end
end
