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
    module CloudidentityV1
      
      # An EntityKey uniquely identifies an Entity. Namespaces are used to provide
      # isolation for IDs. A single ID can be reused across namespaces but the
      # combination of a namespace and an ID must be unique.
      class EntityKey
        include Google::Apis::Core::Hashable
      
        # The ID of the entity within the given namespace. The ID must be unique within
        # its namespace.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Namespaces provide isolation for IDs, so an ID only needs to be unique within
        # its namespace. Namespaces are currently only created as part of IdentitySource
        # creation from Admin Console. A namespace `"identitysources/`identity_source_id`
        # "` is created corresponding to every Identity Source `identity_source_id`.
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
      
      # Response message for approving the device to access user data.
      class GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # Represents a user's use of a Device in the Cloud Identity Devices API. A
        # DeviceUser is a resource representing a user's use of a Device
        # Corresponds to the JSON property `deviceUser`
        # @return [Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser]
        attr_accessor :device_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_user = args[:device_user] if args.key?(:device_user)
        end
      end
      
      # Response message for blocking the device from accessing user data.
      class GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # Represents a user's use of a Device in the Cloud Identity Devices API. A
        # DeviceUser is a resource representing a user's use of a Device
        # Corresponds to the JSON property `deviceUser`
        # @return [Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser]
        attr_accessor :device_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_user = args[:device_user] if args.key?(:device_user)
        end
      end
      
      # Response message for cancelling an unfinished device wipe.
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
        include Google::Apis::Core::Hashable
      
        # A Device within the Cloud Identity Devices API. Represents a Device known to
        # Google Cloud, independent of the device ownership, type, and whether it is
        # assigned or in use by a user.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1Device]
        attr_accessor :device
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device = args[:device] if args.key?(:device)
        end
      end
      
      # Response message for cancelling an unfinished user account wipe.
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # Represents a user's use of a Device in the Cloud Identity Devices API. A
        # DeviceUser is a resource representing a user's use of a Device
        # Corresponds to the JSON property `deviceUser`
        # @return [Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser]
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
      
        # The Health score of the resource
        # Corresponds to the JSON property `healthScore`
        # @return [String]
        attr_accessor :health_score
      
        # The map of key-value attributes stored by callers specific to a device. The
        # total serialized length of this map may not exceed 10KB. No limit is placed on
        # the number of attributes in a map.
        # Corresponds to the JSON property `keyValuePairs`
        # @return [Hash<String,Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1CustomAttributeValue>]
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
      
      # A Device within the Cloud Identity Devices API. Represents a Device known to
      # Google Cloud, independent of the device ownership, type, and whether it is
      # assigned or in use by a user.
      class GoogleAppsCloudidentityDevicesV1Device
        include Google::Apis::Core::Hashable
      
        # Resource representing the Android specific attributes of a Device.
        # Corresponds to the JSON property `androidSpecificAttributes`
        # @return [Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1AndroidAttributes]
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
          @compromised_state = args[:compromised_state] if args.key?(:compromised_state)
          @create_time = args[:create_time] if args.key?(:create_time)
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
        # resource_names) of the DeviceUser in format: `devices/`device_id`/deviceUsers/`
        # user_id``, where user_id is the ID of the user associated with the user
        # session.
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
      
      # Response message for wiping all data on the device.
      class GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
        include Google::Apis::Core::Hashable
      
        # A Device within the Cloud Identity Devices API. Represents a Device known to
        # Google Cloud, independent of the device ownership, type, and whether it is
        # assigned or in use by a user.
        # Corresponds to the JSON property `device`
        # @return [Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1Device]
        attr_accessor :device
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device = args[:device] if args.key?(:device)
        end
      end
      
      # Response message for wiping the user's account from the device.
      class GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # Represents a user's use of a Device in the Cloud Identity Devices API. A
        # DeviceUser is a resource representing a user's use of a Device
        # Corresponds to the JSON property `deviceUser`
        # @return [Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser]
        attr_accessor :device_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_user = args[:device_user] if args.key?(:device_user)
        end
      end
      
      # Resource representing a Group.
      class Group
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the Group was created. Output only.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # An extended description to help users determine the purpose of a Group. For
        # example, you can include information about who should join the Group, the
        # types of messages to send to the Group, links to FAQs about the Group, or
        # related Groups. Maximum length is 4,096 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The Group's display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # An EntityKey uniquely identifies an Entity. Namespaces are used to provide
        # isolation for IDs. A single ID can be reused across namespaces but the
        # combination of a namespace and an ID must be unique.
        # Corresponds to the JSON property `groupKey`
        # @return [Google::Apis::CloudidentityV1::EntityKey]
        attr_accessor :group_key
      
        # Required. `Required`. Labels for Group resource. For creating Groups under a
        # namespace, set label key to 'labels/system/groups/external' and label value as
        # empty.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. [Resource name](https://cloud.google.com/apis/design/
        # resource_names) of the Group in the format: `groups/`group_id``, where
        # group_id is the unique ID assigned to the Group. Must be left blank while
        # creating a Group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The entity under which this Group resides in Cloud
        # Identity resource hierarchy. Must be set when creating a Group, read-only
        # afterwards. Currently allowed types: `identitysources`.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Output only. The time when the Group was last updated. Output only.
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
          @group_key = args[:group_key] if args.key?(:group_key)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for ListGroups operation.
      class ListGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Groups returned in response to list request. The results are not sorted.
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::CloudidentityV1::Group>]
        attr_accessor :groups
      
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
          @groups = args[:groups] if args.key?(:groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListMembershipsResponse
        include Google::Apis::Core::Hashable
      
        # List of Memberships.
        # Corresponds to the JSON property `memberships`
        # @return [Array<Google::Apis::CloudidentityV1::Membership>]
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
      
      # 
      class LookupGroupNameResponse
        include Google::Apis::Core::Hashable
      
        # [Resource name](https://cloud.google.com/apis/design/resource_names) of the
        # Group in the format: `groups/`group_id``, where `group_id` is the unique ID
        # assigned to the Group.
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
      
      # 
      class LookupMembershipNameResponse
        include Google::Apis::Core::Hashable
      
        # [Resource name](https://cloud.google.com/apis/design/resource_names) of the
        # Membership being looked up. Format: `groups/`group_id`/memberships/`member_id``
        # , where `group_id` is the unique ID assigned to the Group to which Membership
        # belongs to, and `member_id` is the unique ID assigned to the member.
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
      
      # Resource representing a Membership within a Group
      class Membership
        include Google::Apis::Core::Hashable
      
        # Output only. Creation timestamp of the Membership. Output only.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. [Resource name](https://cloud.google.com/apis/design/
        # resource_names) of the Membership in the format: `groups/`group_id`/
        # memberships/`member_id``, where group_id is the unique ID assigned to the
        # Group to which Membership belongs to, and member_id is the unique ID assigned
        # to the member Must be left blank while creating a Membership.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An EntityKey uniquely identifies an Entity. Namespaces are used to provide
        # isolation for IDs. A single ID can be reused across namespaces but the
        # combination of a namespace and an ID must be unique.
        # Corresponds to the JSON property `preferredMemberKey`
        # @return [Google::Apis::CloudidentityV1::EntityKey]
        attr_accessor :preferred_member_key
      
        # Roles for a member within the Group. Currently supported MembershipRoles: `"
        # MEMBER"`.
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::CloudidentityV1::MembershipRole>]
        attr_accessor :roles
      
        # Output only. Last updated timestamp of the Membership. Output only.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @preferred_member_key = args[:preferred_member_key] if args.key?(:preferred_member_key)
          @roles = args[:roles] if args.key?(:roles)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Resource representing a role within a Membership.
      class MembershipRole
        include Google::Apis::Core::Hashable
      
        # MembershipRole in string format. Currently supported MembershipRoles: `"MEMBER"
        # `.
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
        # @return [Google::Apis::CloudidentityV1::Status]
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
      
      # 
      class SearchGroupsResponse
        include Google::Apis::Core::Hashable
      
        # List of Groups satisfying the search query.
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::CloudidentityV1::Group>]
        attr_accessor :groups
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results available for specified query.
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
    end
  end
end
