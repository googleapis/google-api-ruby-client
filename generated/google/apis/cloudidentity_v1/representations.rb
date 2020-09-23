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
      
      class EntityKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1AndroidAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1ClientState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1CustomAttributeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1DeviceUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1ListDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Group
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMembershipsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupGroupNameResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupMembershipNameResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Membership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipRole
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyMembershipRolesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyMembershipRolesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :namespace, as: 'namespace'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1AndroidAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled_unknown_sources, as: 'enabledUnknownSources'
          property :owner_profile_account, as: 'ownerProfileAccount'
          property :ownership_privilege, as: 'ownershipPrivilege'
          property :supports_work_profile, as: 'supportsWorkProfile'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1ApproveDeviceUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_user, as: 'deviceUser', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser::Representation
      
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1BlockDeviceUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_user, as: 'deviceUser', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser::Representation
      
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device, as: 'device', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1Device, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1Device::Representation
      
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_user, as: 'deviceUser', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser::Representation
      
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1ClientState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :asset_tags, as: 'assetTags'
          property :compliance_state, as: 'complianceState'
          property :create_time, as: 'createTime'
          property :custom_id, as: 'customId'
          property :etag, as: 'etag'
          property :health_score, as: 'healthScore'
          hash :key_value_pairs, as: 'keyValuePairs', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1CustomAttributeValue, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1CustomAttributeValue::Representation
      
          property :last_update_time, as: 'lastUpdateTime'
          property :managed, as: 'managed'
          property :name, as: 'name'
          property :owner_type, as: 'ownerType'
          property :score_reason, as: 'scoreReason'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1CustomAttributeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :number_value, as: 'numberValue'
          property :string_value, as: 'stringValue'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1Device
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_specific_attributes, as: 'androidSpecificAttributes', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1AndroidAttributes, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1AndroidAttributes::Representation
      
          property :asset_tag, as: 'assetTag'
          property :baseband_version, as: 'basebandVersion'
          property :bootloader_version, as: 'bootloaderVersion'
          property :brand, as: 'brand'
          property :build_number, as: 'buildNumber'
          property :compromised_state, as: 'compromisedState'
          property :create_time, as: 'createTime'
          property :device_type, as: 'deviceType'
          property :enabled_developer_options, as: 'enabledDeveloperOptions'
          property :enabled_usb_debugging, as: 'enabledUsbDebugging'
          property :encryption_state, as: 'encryptionState'
          property :imei, as: 'imei'
          property :kernel_version, as: 'kernelVersion'
          property :last_sync_time, as: 'lastSyncTime'
          property :management_state, as: 'managementState'
          property :manufacturer, as: 'manufacturer'
          property :meid, as: 'meid'
          property :model, as: 'model'
          property :name, as: 'name'
          property :network_operator, as: 'networkOperator'
          property :os_version, as: 'osVersion'
          collection :other_accounts, as: 'otherAccounts'
          property :owner_type, as: 'ownerType'
          property :release_version, as: 'releaseVersion'
          property :security_patch_time, as: 'securityPatchTime'
          property :serial_number, as: 'serialNumber'
          collection :wifi_mac_addresses, as: 'wifiMacAddresses'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1DeviceUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compromised_state, as: 'compromisedState'
          property :create_time, as: 'createTime'
          property :first_sync_time, as: 'firstSyncTime'
          property :language_code, as: 'languageCode'
          property :last_sync_time, as: 'lastSyncTime'
          property :management_state, as: 'managementState'
          property :name, as: 'name'
          property :password_state, as: 'passwordState'
          property :user_agent, as: 'userAgent'
          property :user_email, as: 'userEmail'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :client_states, as: 'clientStates', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1ClientState, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1ClientState::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_users, as: 'deviceUsers', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1ListDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1Device, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1Device::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
          collection :names, as: 'names'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device, as: 'device', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1Device, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1Device::Representation
      
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_user, as: 'deviceUser', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1DeviceUser::Representation
      
        end
      end
      
      class Group
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :group_key, as: 'groupKey', class: Google::Apis::CloudidentityV1::EntityKey, decorator: Google::Apis::CloudidentityV1::EntityKey::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ListGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :groups, as: 'groups', class: Google::Apis::CloudidentityV1::Group, decorator: Google::Apis::CloudidentityV1::Group::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :memberships, as: 'memberships', class: Google::Apis::CloudidentityV1::Membership, decorator: Google::Apis::CloudidentityV1::Membership::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class LookupGroupNameResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class LookupMembershipNameResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Membership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :preferred_member_key, as: 'preferredMemberKey', class: Google::Apis::CloudidentityV1::EntityKey, decorator: Google::Apis::CloudidentityV1::EntityKey::Representation
      
          collection :roles, as: 'roles', class: Google::Apis::CloudidentityV1::MembershipRole, decorator: Google::Apis::CloudidentityV1::MembershipRole::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MembershipRole
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class ModifyMembershipRolesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :add_roles, as: 'addRoles', class: Google::Apis::CloudidentityV1::MembershipRole, decorator: Google::Apis::CloudidentityV1::MembershipRole::Representation
      
          collection :remove_roles, as: 'removeRoles'
        end
      end
      
      class ModifyMembershipRolesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :membership, as: 'membership', class: Google::Apis::CloudidentityV1::Membership, decorator: Google::Apis::CloudidentityV1::Membership::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudidentityV1::Status, decorator: Google::Apis::CloudidentityV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class SearchGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :groups, as: 'groups', class: Google::Apis::CloudidentityV1::Group, decorator: Google::Apis::CloudidentityV1::Group::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
    end
  end
end
