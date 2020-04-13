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
    module CloudidentityV1beta1
      
      # Resource representing the Android specific attributes of a Device.
      class AndroidAttributes
        include Google::Apis::Core::Hashable
      
        # Baseband version of Android device.
        # Corresponds to the JSON property `basebandVersion`
        # @return [String]
        attr_accessor :baseband_version
      
        # Device bootloader version. Example: 0.6.7.
        # Corresponds to the JSON property `bootloaderVersion`
        # @return [String]
        attr_accessor :bootloader_version
      
        # Build number of Android device.
        # Corresponds to the JSON property `buildNumber`
        # @return [String]
        attr_accessor :build_number
      
        # Whether developer options is enabled on device.
        # Corresponds to the JSON property `enabledDeveloperOptions`
        # @return [Boolean]
        attr_accessor :enabled_developer_options
        alias_method :enabled_developer_options?, :enabled_developer_options
      
        # Whether applications from unknown sources can be installed on device.
        # Corresponds to the JSON property `enabledUnknownSources`
        # @return [Boolean]
        attr_accessor :enabled_unknown_sources
        alias_method :enabled_unknown_sources?, :enabled_unknown_sources
      
        # Whether adb (USB debugging) is enabled on device.
        # Corresponds to the JSON property `enabledUsbDebugging`
        # @return [Boolean]
        attr_accessor :enabled_usb_debugging
        alias_method :enabled_usb_debugging?, :enabled_usb_debugging
      
        # Device encryption state.
        # Corresponds to the JSON property `encryptionState`
        # @return [String]
        attr_accessor :encryption_state
      
        # Device hardware. Example: Sprout.
        # Corresponds to the JSON property `hardware`
        # @return [String]
        attr_accessor :hardware
      
        # Kernel version of Android device.
        # Corresponds to the JSON property `kernelVersion`
        # @return [String]
        attr_accessor :kernel_version
      
        # Domain name for Google accounts on device. Type for other accounts on
        # device. Will only be populated if |ownership_privilege| is
        # |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in
        # to the device policy app if that account's domain has only one account.
        # Examples: "com.example", "xyz.com".
        # Corresponds to the JSON property `otherAccounts`
        # @return [Array<String>]
        attr_accessor :other_accounts
      
        # Whether this account is on an owner/primary profile.
        # For phones, only true for owner profiles. Android 4+ devices
        # can have secondary or restricted user profiles.
        # Corresponds to the JSON property `ownerProfileAccount`
        # @return [Boolean]
        attr_accessor :owner_profile_account
        alias_method :owner_profile_account?, :owner_profile_account
      
        # Ownership privileges on device.
        # Corresponds to the JSON property `ownershipPrivilege`
        # @return [String]
        attr_accessor :ownership_privilege
      
        # OS security patch update time on device.
        # Corresponds to the JSON property `securityPatchTime`
        # @return [String]
        attr_accessor :security_patch_time
      
        # Whether device supports Android work profiles. If false, this service
        # will not block access to corp data even if an administrator turns on the
        # "Enforce Work Profile" policy.
        # Corresponds to the JSON property `supportsWorkProfile`
        # @return [Boolean]
        attr_accessor :supports_work_profile
        alias_method :supports_work_profile?, :supports_work_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baseband_version = args[:baseband_version] if args.key?(:baseband_version)
          @bootloader_version = args[:bootloader_version] if args.key?(:bootloader_version)
          @build_number = args[:build_number] if args.key?(:build_number)
          @enabled_developer_options = args[:enabled_developer_options] if args.key?(:enabled_developer_options)
          @enabled_unknown_sources = args[:enabled_unknown_sources] if args.key?(:enabled_unknown_sources)
          @enabled_usb_debugging = args[:enabled_usb_debugging] if args.key?(:enabled_usb_debugging)
          @encryption_state = args[:encryption_state] if args.key?(:encryption_state)
          @hardware = args[:hardware] if args.key?(:hardware)
          @kernel_version = args[:kernel_version] if args.key?(:kernel_version)
          @other_accounts = args[:other_accounts] if args.key?(:other_accounts)
          @owner_profile_account = args[:owner_profile_account] if args.key?(:owner_profile_account)
          @ownership_privilege = args[:ownership_privilege] if args.key?(:ownership_privilege)
          @security_patch_time = args[:security_patch_time] if args.key?(:security_patch_time)
          @supports_work_profile = args[:supports_work_profile] if args.key?(:supports_work_profile)
        end
      end
      
      # Response message for approving the device to access user data.
      class ApproveDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # A DeviceUser is a resource representing a user's use of a Device
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
      
      # Response message for blocking the device from accessing user data.
      class BlockDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # A DeviceUser is a resource representing a user's use of a Device
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
      
      # Response message for cancelling an unfinished device wipe.
      class CancelWipeDeviceResponse
        include Google::Apis::Core::Hashable
      
        # Represents a Device known to Google Cloud, independent of the device
        # ownership, type, and whether it is assigned or in use by a user.
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
      
      # Response message for cancelling an unfinished user account wipe.
      class CancelWipeDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # A DeviceUser is a resource representing a user's use of a Device
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
      
      # Represents a Device known to Google Cloud, independent of the device
      # ownership, type, and whether it is assigned or in use by a user.
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
      
        # Output only. Device brand. Example: Samsung.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Output only. Represents whether the Device is compromised.
        # Corresponds to the JSON property `compromisedState`
        # @return [String]
        attr_accessor :compromised_state
      
        # Output only. When the Company-Owned device was imported. This field is empty
        # for BYOD
        # devices.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Type of device.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # Output only. IMEI number of device if GSM device; empty otherwise.
        # Corresponds to the JSON property `imei`
        # @return [String]
        attr_accessor :imei
      
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
        # resource_names)
        # of the Device in format: `devices/`device_id``, where device_id is
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
      
        # Whether the device is owned by the company or an individual
        # Corresponds to the JSON property `ownerType`
        # @return [String]
        attr_accessor :owner_type
      
        # Output only. OS release version. Example: 6.0.
        # Corresponds to the JSON property `releaseVersion`
        # @return [String]
        attr_accessor :release_version
      
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
          @brand = args[:brand] if args.key?(:brand)
          @compromised_state = args[:compromised_state] if args.key?(:compromised_state)
          @create_time = args[:create_time] if args.key?(:create_time)
          @device_type = args[:device_type] if args.key?(:device_type)
          @imei = args[:imei] if args.key?(:imei)
          @last_sync_time = args[:last_sync_time] if args.key?(:last_sync_time)
          @management_state = args[:management_state] if args.key?(:management_state)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @meid = args[:meid] if args.key?(:meid)
          @model = args[:model] if args.key?(:model)
          @name = args[:name] if args.key?(:name)
          @network_operator = args[:network_operator] if args.key?(:network_operator)
          @os_version = args[:os_version] if args.key?(:os_version)
          @owner_type = args[:owner_type] if args.key?(:owner_type)
          @release_version = args[:release_version] if args.key?(:release_version)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @wifi_mac_addresses = args[:wifi_mac_addresses] if args.key?(:wifi_mac_addresses)
        end
      end
      
      # A DeviceUser is a resource representing a user's use of a Device
      class DeviceUser
        include Google::Apis::Core::Hashable
      
        # Compromised State of the DeviceUser object
        # Corresponds to the JSON property `compromisedState`
        # @return [String]
        attr_accessor :compromised_state
      
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
        # resource_names) of
        # the DeviceUser in format: `devices/`device_id`/deviceUsers/`user_id``,
        # where user_id is the ID of the user associated with the user session.
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
      
      # An EndpointApp represents an app that is installed on a device
      class EndpointApp
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the app displayed to the user
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. [Resource name](https://cloud.google.com/apis/design/
        # resource_names) of
        # the EndpointApp in format:
        # `devices/`device`/deviceUsers/`device_user`/endpointApps/`endpoint_app``,
        # where client_app_id is the ID of the app associated with the Device.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Full package name of the installed app
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Output only. Names of all permissions granted to the installed app
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        # Output only. Version code of the installed app
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        # Output only. Version name of the installed app
        # Corresponds to the JSON property `versionName`
        # @return [String]
        attr_accessor :version_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @package_name = args[:package_name] if args.key?(:package_name)
          @permissions = args[:permissions] if args.key?(:permissions)
          @version_code = args[:version_code] if args.key?(:version_code)
          @version_name = args[:version_name] if args.key?(:version_name)
        end
      end
      
      # A unique identifier for an entity in the Cloud Identity Groups API.
      # An entity can represent either a group with an optional `namespace` or a user
      # without a `namespace`. The combination of `id` and `namespace` must be
      # unique; however, the same `id` can be used with different `namespace`s.
      class EntityKey
        include Google::Apis::Core::Hashable
      
        # The ID of the entity.
        # For Google-managed entities, the `id` must be the email address of an
        # existing group or user.
        # For external-identity-mapped entities, the `id` must be a string conforming
        # to the Identity Source's requirements.
        # Must be unique within a `namespace`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The namespace in which the entity exists.
        # If not specified, the `EntityKey` represents a Google-managed entity such
        # as a Google user or a Google Group.
        # If specified, the `EntityKey` represents an external-identity-mapped group.
        # The namespace must correspond to an identity source created in Admin
        # Console and must be in the form of `identitysources/`identity_source_id`.
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
      
      # The response message for MembershipsService.GetMembershipGraph.
      class GetMembershipGraphResponse
        include Google::Apis::Core::Hashable
      
        # The membership graph's path information represented as an adjacency list.
        # Corresponds to the JSON property `adjacencyList`
        # @return [Array<Google::Apis::CloudidentityV1beta1::MembershipAdjacencyList>]
        attr_accessor :adjacency_list
      
        # The resources representing each group in the adjacency list. Each
        # group in this list can be correlated to a 'group' of the
        # MembershipAdjacencyList using the 'name' of the Group resource.
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
      
      # A group within the Cloud Identity Groups API.
      # A `Group` is a collection of entities, where each entity is either a user,
      # another group or a service account.
      class Group
        include Google::Apis::Core::Hashable
      
        # Additional entity key aliases for a Group.
        # Corresponds to the JSON property `additionalGroupKeys`
        # @return [Array<Google::Apis::CloudidentityV1beta1::EntityKey>]
        attr_accessor :additional_group_keys
      
        # Output only. The time when the `Group` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # An extended description to help users determine the purpose of a `Group`.
        # Must not be longer than 4,096 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display name of the `Group`.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A unique identifier for an entity in the Cloud Identity Groups API.
        # An entity can represent either a group with an optional `namespace` or a user
        # without a `namespace`. The combination of `id` and `namespace` must be
        # unique; however, the same `id` can be used with different `namespace`s.
        # Corresponds to the JSON property `groupKey`
        # @return [Google::Apis::CloudidentityV1beta1::EntityKey]
        attr_accessor :group_key
      
        # Required. The labels that apply to the `Group`.
        # Must not contain more than one entry. Must contain the entry
        # `'cloudidentity.googleapis.com/groups.discussion_forum': ''` if the `Group`
        # is a Google Group or `'system/groups/external': ''` if the `Group` is an
        # external-identity-mapped group.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The [resource name](https://cloud.google.com/apis/design/
        # resource_names) of
        # the `Group`.
        # Shall be of the form `groups/`group_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The resource name of the entity under which this `Group`
        # resides in the
        # Cloud Identity resource hierarchy.
        # Must be of the form `identitysources/`identity_source_id`` for external-
        # identity-mapped groups or `customers/`customer_id`` for Google Groups.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Output only. The time when the `Group` was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_group_keys = args[:additional_group_keys] if args.key?(:additional_group_keys)
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
      
      # Response message that is returned in LRO result of ListDeviceUsers Operation.
      class ListDeviceUsersResponse
        include Google::Apis::Core::Hashable
      
        # Devices meeting the list restrictions.
        # Corresponds to the JSON property `deviceUsers`
        # @return [Array<Google::Apis::CloudidentityV1beta1::DeviceUser>]
        attr_accessor :device_users
      
        # Token to retrieve the next page of results. Empty if there are no more
        # results.
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
      
      # Response message that is returned in LRO result of ListDevices Operation.
      class ListDevicesResponse
        include Google::Apis::Core::Hashable
      
        # Devices meeting the list restrictions.
        # Corresponds to the JSON property `devices`
        # @return [Array<Google::Apis::CloudidentityV1beta1::Device>]
        attr_accessor :devices
      
        # Token to retrieve the next page of results. Empty if there are no more
        # results.
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
      
      # Response message for listing all apps on the device.
      class ListEndpointAppsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching EndpointApps found as a result of the request.
        # Corresponds to the JSON property `endpointApps`
        # @return [Array<Google::Apis::CloudidentityV1beta1::EndpointApp>]
        attr_accessor :endpoint_apps
      
        # Token to retrieve the next page of results. Empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint_apps = args[:endpoint_apps] if args.key?(:endpoint_apps)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for GroupsService.ListGroups.
      class ListGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The `Group`s under the specified `parent`.
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::CloudidentityV1beta1::Group>]
        attr_accessor :groups
      
        # A continuation token to retrieve the next page of results, or empty if
        # there are no more results available.
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
      
      # The response message for MembershipsService.ListMemberships.
      class ListMembershipsResponse
        include Google::Apis::Core::Hashable
      
        # The `Membership`s under the specified `parent`.
        # Corresponds to the JSON property `memberships`
        # @return [Array<Google::Apis::CloudidentityV1beta1::Membership>]
        attr_accessor :memberships
      
        # A continuation token to retrieve the next page of results, or empty if
        # there are no more results available.
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
      
      # The response message for GroupsService.LookupGroupName.
      class LookupGroupNameResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The [resource name](https://cloud.google.com/apis/design/
        # resource_names) of
        # the looked-up `Group`.
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
        # the looked-up `Membership`.
        # Must be of the form `groups/`group_id`/memberships/`membership_id``.
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
      
        # The obfuscated customer Id that may be passed back to other
        # Devices API methods such as List, Get, etc.
        # Corresponds to the JSON property `customer`
        # @return [String]
        attr_accessor :customer
      
        # [Resource names](https://cloud.google.com/apis/design/resource_names) of
        # the DeviceUsers in the format:
        # `devices/`device_id`/deviceUsers/`user_resource_id``, where
        # device_id is the unique ID assigned to a Device and
        # user_resource_id is the unique user ID
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        # Token to retrieve the next page of results. Empty if there are no more
        # results.
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
      
      # A membership within the Cloud Identity Groups API.
      # A `Membership` defines a relationship between a `Group` and an entity
      # belonging to that `Group`, referred to as a "member".
      class Membership
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the `Membership` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A unique identifier for an entity in the Cloud Identity Groups API.
        # An entity can represent either a group with an optional `namespace` or a user
        # without a `namespace`. The combination of `id` and `namespace` must be
        # unique; however, the same `id` can be used with different `namespace`s.
        # Corresponds to the JSON property `memberKey`
        # @return [Google::Apis::CloudidentityV1beta1::EntityKey]
        attr_accessor :member_key
      
        # Output only. The [resource name](https://cloud.google.com/apis/design/
        # resource_names) of
        # the `Membership`.
        # Shall be of the form `groups/`group_id`/memberships/`membership_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A unique identifier for an entity in the Cloud Identity Groups API.
        # An entity can represent either a group with an optional `namespace` or a user
        # without a `namespace`. The combination of `id` and `namespace` must be
        # unique; however, the same `id` can be used with different `namespace`s.
        # Corresponds to the JSON property `preferredMemberKey`
        # @return [Google::Apis::CloudidentityV1beta1::EntityKey]
        attr_accessor :preferred_member_key
      
        # The `MembershipRole`s that apply to the `Membership`.
        # If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`.
        # Must not contain duplicate `MembershipRole`s with the same `name`.
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::CloudidentityV1beta1::MembershipRole>]
        attr_accessor :roles
      
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
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Membership graph's path information as an adjacency list.
      class MembershipAdjacencyList
        include Google::Apis::Core::Hashable
      
        # Each edge contains information about the member that belongs to this group.
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
      
      # A membership role within the Cloud Identity Groups API.
      # A `MembershipRole` defines the privileges granted to a `Membership`.
      class MembershipRole
        include Google::Apis::Core::Hashable
      
        # The name of the `MembershipRole`.
        # Must be one of `OWNER`, `MANAGER`, `MEMBER`.
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
      
      # The request message for MembershipsService.ModifyMembershipRoles.
      class ModifyMembershipRolesRequest
        include Google::Apis::Core::Hashable
      
        # The `MembershipRole`s to be added.
        # Adding or removing roles in the same request as updating roles is not
        # supported.
        # Must not be set if `update_roles_params` is set.
        # Corresponds to the JSON property `addRoles`
        # @return [Array<Google::Apis::CloudidentityV1beta1::MembershipRole>]
        attr_accessor :add_roles
      
        # The `name`s of the `MembershipRole`s to be removed.
        # Adding or removing roles in the same request as updating roles is not
        # supported.
        # It is not possible to remove the `MEMBER` `MembershipRole`. If you wish to
        # delete a `Membership`, call MembershipsService.DeleteMembership
        # instead.
        # Must not contain `MEMBER`. Must not be set if `update_roles_params` is set.
        # Corresponds to the JSON property `removeRoles`
        # @return [Array<String>]
        attr_accessor :remove_roles
      
        # The `MembershipRole`s to be updated.
        # Updating roles in the same request as adding or removing roles is not
        # supported.
        # Must not be set if either `add_roles` or `remove_roles` is set.
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
      
        # A membership within the Cloud Identity Groups API.
        # A `Membership` defines a relationship between a `Group` and an entity
        # belonging to that `Group`, referred to as a "member".
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
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::CloudidentityV1beta1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
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
      
      # The response message for GroupsService.SearchGroups.
      class SearchGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The `Group`s that match the search query.
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::CloudidentityV1beta1::Group>]
        attr_accessor :groups
      
        # A continuation token to retrieve the next page of results, or empty if
        # there are no more results available.
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
      
      # The `Status` type defines a logical error model that is suitable for
      # different programming environments, including REST APIs and RPC APIs. It is
      # used by [gRPC](https://github.com/grpc). Each `Status` message contains
      # three pieces of data: error code, error message, and error details.
      # You can find out more about this error model and how to work with it in the
      # [API Design Guide](https://cloud.google.com/apis/design/errors).
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
      
      # The details of an update to a `MembershipRole`.
      class UpdateMembershipRolesParams
        include Google::Apis::Core::Hashable
      
        # The fully-qualified names of fields to update.
        # May only contain the field `expiry_detail`.
        # Corresponds to the JSON property `fieldMask`
        # @return [String]
        attr_accessor :field_mask
      
        # A membership role within the Cloud Identity Groups API.
        # A `MembershipRole` defines the privileges granted to a `Membership`.
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
      
      # Response message for wiping all data on the device.
      class WipeDeviceResponse
        include Google::Apis::Core::Hashable
      
        # Represents a Device known to Google Cloud, independent of the device
        # ownership, type, and whether it is assigned or in use by a user.
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
      
      # Response message for wiping the user's account from the device.
      class WipeDeviceUserResponse
        include Google::Apis::Core::Hashable
      
        # A DeviceUser is a resource representing a user's use of a Device
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
