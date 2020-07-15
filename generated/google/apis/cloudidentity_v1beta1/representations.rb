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
      
      class AndroidAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproveDeviceUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BlockDeviceUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelWipeDeviceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelWipeDeviceUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomAttributeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndpointApp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExpiryDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetMembershipGraphResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Group
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientStatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDeviceUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEndpointAppsResponse
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
      
      class LookupSelfDeviceUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Membership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipAdjacencyList
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
      
      class UpdateMembershipRolesParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WipeDeviceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WipeDeviceUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AndroidAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled_unknown_sources, as: 'enabledUnknownSources'
          property :owner_profile_account, as: 'ownerProfileAccount'
          property :ownership_privilege, as: 'ownershipPrivilege'
          property :supports_work_profile, as: 'supportsWorkProfile'
        end
      end
      
      class ApproveDeviceUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_user, as: 'deviceUser', class: Google::Apis::CloudidentityV1beta1::DeviceUser, decorator: Google::Apis::CloudidentityV1beta1::DeviceUser::Representation
      
        end
      end
      
      class BlockDeviceUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_user, as: 'deviceUser', class: Google::Apis::CloudidentityV1beta1::DeviceUser, decorator: Google::Apis::CloudidentityV1beta1::DeviceUser::Representation
      
        end
      end
      
      class CancelWipeDeviceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device, as: 'device', class: Google::Apis::CloudidentityV1beta1::Device, decorator: Google::Apis::CloudidentityV1beta1::Device::Representation
      
        end
      end
      
      class CancelWipeDeviceUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_user, as: 'deviceUser', class: Google::Apis::CloudidentityV1beta1::DeviceUser, decorator: Google::Apis::CloudidentityV1beta1::DeviceUser::Representation
      
        end
      end
      
      class ClientState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :asset_tags, as: 'assetTags'
          property :compliance_state, as: 'complianceState'
          property :create_time, as: 'createTime'
          property :custom_id, as: 'customId'
          property :etag, as: 'etag'
          property :health_score, as: 'healthScore'
          hash :key_value_pairs, as: 'keyValuePairs', class: Google::Apis::CloudidentityV1beta1::CustomAttributeValue, decorator: Google::Apis::CloudidentityV1beta1::CustomAttributeValue::Representation
      
          property :last_update_time, as: 'lastUpdateTime'
          property :managed, as: 'managed'
          property :name, as: 'name'
          property :owner_type, as: 'ownerType'
          property :score_reason, as: 'scoreReason'
        end
      end
      
      class CustomAttributeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :number_value, as: 'numberValue'
          property :string_value, as: 'stringValue'
        end
      end
      
      class Device
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_specific_attributes, as: 'androidSpecificAttributes', class: Google::Apis::CloudidentityV1beta1::AndroidAttributes, decorator: Google::Apis::CloudidentityV1beta1::AndroidAttributes::Representation
      
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
      
      class DeviceUser
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
      
      class EndpointApp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :package_name, as: 'packageName'
          collection :permissions, as: 'permissions'
          property :version_code, as: 'versionCode'
          property :version_name, as: 'versionName'
        end
      end
      
      class EntityKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :namespace, as: 'namespace'
        end
      end
      
      class ExpiryDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
        end
      end
      
      class GetMembershipGraphResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :adjacency_list, as: 'adjacencyList', class: Google::Apis::CloudidentityV1beta1::MembershipAdjacencyList, decorator: Google::Apis::CloudidentityV1beta1::MembershipAdjacencyList::Representation
      
          collection :groups, as: 'groups', class: Google::Apis::CloudidentityV1beta1::Group, decorator: Google::Apis::CloudidentityV1beta1::Group::Representation
      
        end
      end
      
      class Group
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_group_keys, as: 'additionalGroupKeys', class: Google::Apis::CloudidentityV1beta1::EntityKey, decorator: Google::Apis::CloudidentityV1beta1::EntityKey::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :group_key, as: 'groupKey', class: Google::Apis::CloudidentityV1beta1::EntityKey, decorator: Google::Apis::CloudidentityV1beta1::EntityKey::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ListClientStatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :client_states, as: 'clientStates', class: Google::Apis::CloudidentityV1beta1::ClientState, decorator: Google::Apis::CloudidentityV1beta1::ClientState::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDeviceUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_users, as: 'deviceUsers', class: Google::Apis::CloudidentityV1beta1::DeviceUser, decorator: Google::Apis::CloudidentityV1beta1::DeviceUser::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::CloudidentityV1beta1::Device, decorator: Google::Apis::CloudidentityV1beta1::Device::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListEndpointAppsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoint_apps, as: 'endpointApps', class: Google::Apis::CloudidentityV1beta1::EndpointApp, decorator: Google::Apis::CloudidentityV1beta1::EndpointApp::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :groups, as: 'groups', class: Google::Apis::CloudidentityV1beta1::Group, decorator: Google::Apis::CloudidentityV1beta1::Group::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :memberships, as: 'memberships', class: Google::Apis::CloudidentityV1beta1::Membership, decorator: Google::Apis::CloudidentityV1beta1::Membership::Representation
      
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
      
      class LookupSelfDeviceUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
          collection :names, as: 'names'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Membership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :member_key, as: 'memberKey', class: Google::Apis::CloudidentityV1beta1::EntityKey, decorator: Google::Apis::CloudidentityV1beta1::EntityKey::Representation
      
          property :name, as: 'name'
          property :preferred_member_key, as: 'preferredMemberKey', class: Google::Apis::CloudidentityV1beta1::EntityKey, decorator: Google::Apis::CloudidentityV1beta1::EntityKey::Representation
      
          collection :roles, as: 'roles', class: Google::Apis::CloudidentityV1beta1::MembershipRole, decorator: Google::Apis::CloudidentityV1beta1::MembershipRole::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MembershipAdjacencyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :edges, as: 'edges', class: Google::Apis::CloudidentityV1beta1::Membership, decorator: Google::Apis::CloudidentityV1beta1::Membership::Representation
      
          property :group, as: 'group'
        end
      end
      
      class MembershipRole
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiry_detail, as: 'expiryDetail', class: Google::Apis::CloudidentityV1beta1::ExpiryDetail, decorator: Google::Apis::CloudidentityV1beta1::ExpiryDetail::Representation
      
          property :name, as: 'name'
        end
      end
      
      class ModifyMembershipRolesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :add_roles, as: 'addRoles', class: Google::Apis::CloudidentityV1beta1::MembershipRole, decorator: Google::Apis::CloudidentityV1beta1::MembershipRole::Representation
      
          collection :remove_roles, as: 'removeRoles'
          collection :update_roles_params, as: 'updateRolesParams', class: Google::Apis::CloudidentityV1beta1::UpdateMembershipRolesParams, decorator: Google::Apis::CloudidentityV1beta1::UpdateMembershipRolesParams::Representation
      
        end
      end
      
      class ModifyMembershipRolesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :membership, as: 'membership', class: Google::Apis::CloudidentityV1beta1::Membership, decorator: Google::Apis::CloudidentityV1beta1::Membership::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudidentityV1beta1::Status, decorator: Google::Apis::CloudidentityV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class SearchGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :groups, as: 'groups', class: Google::Apis::CloudidentityV1beta1::Group, decorator: Google::Apis::CloudidentityV1beta1::Group::Representation
      
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
      
      class UpdateMembershipRolesParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_mask, as: 'fieldMask'
          property :membership_role, as: 'membershipRole', class: Google::Apis::CloudidentityV1beta1::MembershipRole, decorator: Google::Apis::CloudidentityV1beta1::MembershipRole::Representation
      
        end
      end
      
      class WipeDeviceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device, as: 'device', class: Google::Apis::CloudidentityV1beta1::Device, decorator: Google::Apis::CloudidentityV1beta1::Device::Representation
      
        end
      end
      
      class WipeDeviceUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_user, as: 'deviceUser', class: Google::Apis::CloudidentityV1beta1::DeviceUser, decorator: Google::Apis::CloudidentityV1beta1::DeviceUser::Representation
      
        end
      end
    end
  end
end
