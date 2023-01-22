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
    module CloudidentityV1
      
      class AddIdpCredentialOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddIdpCredentialRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelUserInvitationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckTransitiveMembershipResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateGroupMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInboundSamlSsoProfileOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInboundSsoAssignmentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateMembershipMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteGroupMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteIdpCredentialOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteInboundSamlSsoProfileOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteInboundSsoAssignmentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteMembershipMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DsaPublicKeyInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamicGroupMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamicGroupQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamicGroupStatus
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
      
      class GetMembershipGraphMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetMembershipGraphResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1AndroidAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
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
      
      class GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
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
      
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
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
      
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
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
      
      class GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1CustomAttributeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
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
      
      class GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
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
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
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
      
      class GroupRelation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdpCredential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InboundSamlSsoProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InboundSsoAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IsInvitableUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListIdpCredentialsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInboundSamlSsoProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInboundSsoAssignmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMembershipsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUserInvitationsResponse
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
      
      class MemberRelation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MemberRestriction
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
      
      class MembershipRoleRestrictionEvaluation
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
      
      class RestrictionEvaluation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestrictionEvaluations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RsaPublicKeyInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SamlIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SamlSpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SamlSsoInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchTransitiveGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchTransitiveMembershipsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecuritySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendUserInvitationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignInBehavior
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitiveMembershipRole
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateGroupMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInboundSamlSsoProfileOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInboundSsoAssignmentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateMembershipMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateMembershipRolesParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserInvitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddIdpCredentialOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AddIdpCredentialRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pem_data, as: 'pemData'
        end
      end
      
      class CancelUserInvitationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CheckTransitiveMembershipResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_membership, as: 'hasMembership'
        end
      end
      
      class CreateGroupMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CreateInboundSamlSsoProfileOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CreateInboundSsoAssignmentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CreateMembershipMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeleteGroupMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeleteIdpCredentialOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeleteInboundSamlSsoProfileOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeleteInboundSsoAssignmentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeleteMembershipMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DsaPublicKeyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_size, as: 'keySize'
        end
      end
      
      class DynamicGroupMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :queries, as: 'queries', class: Google::Apis::CloudidentityV1::DynamicGroupQuery, decorator: Google::Apis::CloudidentityV1::DynamicGroupQuery::Representation
      
          property :status, as: 'status', class: Google::Apis::CloudidentityV1::DynamicGroupStatus, decorator: Google::Apis::CloudidentityV1::DynamicGroupStatus::Representation
      
        end
      end
      
      class DynamicGroupQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class DynamicGroupStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
          property :status_time, as: 'statusTime'
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
      
      class GetMembershipGraphMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GetMembershipGraphResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :adjacency_list, as: 'adjacencyList', class: Google::Apis::CloudidentityV1::MembershipAdjacencyList, decorator: Google::Apis::CloudidentityV1::MembershipAdjacencyList::Representation
      
          collection :groups, as: 'groups', class: Google::Apis::CloudidentityV1::Group, decorator: Google::Apis::CloudidentityV1::Group::Representation
      
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
      
      class GoogleAppsCloudidentityDevicesV1ApproveDeviceUserMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleAppsCloudidentityDevicesV1BlockDeviceUserMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleAppsCloudidentityDevicesV1CreateDeviceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleAppsCloudidentityDevicesV1DeleteDeviceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1DeleteDeviceUserMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :device_id, as: 'deviceId'
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
      
      class GoogleAppsCloudidentityDevicesV1ListEndpointAppsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleAppsCloudidentityDevicesV1SignoutDeviceUserMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1UpdateClientStateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1UpdateDeviceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
          property :remove_reset_lock, as: 'removeResetLock'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device, as: 'device', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1Device, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1Device::Representation
      
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1WipeDeviceUserMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :dynamic_group_metadata, as: 'dynamicGroupMetadata', class: Google::Apis::CloudidentityV1::DynamicGroupMetadata, decorator: Google::Apis::CloudidentityV1::DynamicGroupMetadata::Representation
      
          property :group_key, as: 'groupKey', class: Google::Apis::CloudidentityV1::EntityKey, decorator: Google::Apis::CloudidentityV1::EntityKey::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GroupRelation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :group, as: 'group'
          property :group_key, as: 'groupKey', class: Google::Apis::CloudidentityV1::EntityKey, decorator: Google::Apis::CloudidentityV1::EntityKey::Representation
      
          hash :labels, as: 'labels'
          property :relation_type, as: 'relationType'
          collection :roles, as: 'roles', class: Google::Apis::CloudidentityV1::TransitiveMembershipRole, decorator: Google::Apis::CloudidentityV1::TransitiveMembershipRole::Representation
      
        end
      end
      
      class IdpCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dsa_key_info, as: 'dsaKeyInfo', class: Google::Apis::CloudidentityV1::DsaPublicKeyInfo, decorator: Google::Apis::CloudidentityV1::DsaPublicKeyInfo::Representation
      
          property :name, as: 'name'
          property :rsa_key_info, as: 'rsaKeyInfo', class: Google::Apis::CloudidentityV1::RsaPublicKeyInfo, decorator: Google::Apis::CloudidentityV1::RsaPublicKeyInfo::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class InboundSamlSsoProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
          property :display_name, as: 'displayName'
          property :idp_config, as: 'idpConfig', class: Google::Apis::CloudidentityV1::SamlIdpConfig, decorator: Google::Apis::CloudidentityV1::SamlIdpConfig::Representation
      
          property :name, as: 'name'
          property :sp_config, as: 'spConfig', class: Google::Apis::CloudidentityV1::SamlSpConfig, decorator: Google::Apis::CloudidentityV1::SamlSpConfig::Representation
      
        end
      end
      
      class InboundSsoAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer, as: 'customer'
          property :name, as: 'name'
          property :rank, as: 'rank'
          property :saml_sso_info, as: 'samlSsoInfo', class: Google::Apis::CloudidentityV1::SamlSsoInfo, decorator: Google::Apis::CloudidentityV1::SamlSsoInfo::Representation
      
          property :sign_in_behavior, as: 'signInBehavior', class: Google::Apis::CloudidentityV1::SignInBehavior, decorator: Google::Apis::CloudidentityV1::SignInBehavior::Representation
      
          property :sso_mode, as: 'ssoMode'
          property :target_group, as: 'targetGroup'
          property :target_org_unit, as: 'targetOrgUnit'
        end
      end
      
      class IsInvitableUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_invitable_user, as: 'isInvitableUser'
        end
      end
      
      class ListGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :groups, as: 'groups', class: Google::Apis::CloudidentityV1::Group, decorator: Google::Apis::CloudidentityV1::Group::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListIdpCredentialsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :idp_credentials, as: 'idpCredentials', class: Google::Apis::CloudidentityV1::IdpCredential, decorator: Google::Apis::CloudidentityV1::IdpCredential::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInboundSamlSsoProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inbound_saml_sso_profiles, as: 'inboundSamlSsoProfiles', class: Google::Apis::CloudidentityV1::InboundSamlSsoProfile, decorator: Google::Apis::CloudidentityV1::InboundSamlSsoProfile::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInboundSsoAssignmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inbound_sso_assignments, as: 'inboundSsoAssignments', class: Google::Apis::CloudidentityV1::InboundSsoAssignment, decorator: Google::Apis::CloudidentityV1::InboundSsoAssignment::Representation
      
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
      
      class ListUserInvitationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :user_invitations, as: 'userInvitations', class: Google::Apis::CloudidentityV1::UserInvitation, decorator: Google::Apis::CloudidentityV1::UserInvitation::Representation
      
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
      
      class MemberRelation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :member, as: 'member'
          collection :preferred_member_key, as: 'preferredMemberKey', class: Google::Apis::CloudidentityV1::EntityKey, decorator: Google::Apis::CloudidentityV1::EntityKey::Representation
      
          property :relation_type, as: 'relationType'
          collection :roles, as: 'roles', class: Google::Apis::CloudidentityV1::TransitiveMembershipRole, decorator: Google::Apis::CloudidentityV1::TransitiveMembershipRole::Representation
      
        end
      end
      
      class MemberRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluation, as: 'evaluation', class: Google::Apis::CloudidentityV1::RestrictionEvaluation, decorator: Google::Apis::CloudidentityV1::RestrictionEvaluation::Representation
      
          property :query, as: 'query'
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
      
      class MembershipAdjacencyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :edges, as: 'edges', class: Google::Apis::CloudidentityV1::Membership, decorator: Google::Apis::CloudidentityV1::Membership::Representation
      
          property :group, as: 'group'
        end
      end
      
      class MembershipRole
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiry_detail, as: 'expiryDetail', class: Google::Apis::CloudidentityV1::ExpiryDetail, decorator: Google::Apis::CloudidentityV1::ExpiryDetail::Representation
      
          property :name, as: 'name'
          property :restriction_evaluations, as: 'restrictionEvaluations', class: Google::Apis::CloudidentityV1::RestrictionEvaluations, decorator: Google::Apis::CloudidentityV1::RestrictionEvaluations::Representation
      
        end
      end
      
      class MembershipRoleRestrictionEvaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class ModifyMembershipRolesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :add_roles, as: 'addRoles', class: Google::Apis::CloudidentityV1::MembershipRole, decorator: Google::Apis::CloudidentityV1::MembershipRole::Representation
      
          collection :remove_roles, as: 'removeRoles'
          collection :update_roles_params, as: 'updateRolesParams', class: Google::Apis::CloudidentityV1::UpdateMembershipRolesParams, decorator: Google::Apis::CloudidentityV1::UpdateMembershipRolesParams::Representation
      
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
      
      class RestrictionEvaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class RestrictionEvaluations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :member_restriction_evaluation, as: 'memberRestrictionEvaluation', class: Google::Apis::CloudidentityV1::MembershipRoleRestrictionEvaluation, decorator: Google::Apis::CloudidentityV1::MembershipRoleRestrictionEvaluation::Representation
      
        end
      end
      
      class RsaPublicKeyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_size, as: 'keySize'
        end
      end
      
      class SamlIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :change_password_uri, as: 'changePasswordUri'
          property :entity_id, as: 'entityId'
          property :logout_redirect_uri, as: 'logoutRedirectUri'
          property :single_sign_on_service_uri, as: 'singleSignOnServiceUri'
        end
      end
      
      class SamlSpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assertion_consumer_service_uri, as: 'assertionConsumerServiceUri'
          property :entity_id, as: 'entityId'
        end
      end
      
      class SamlSsoInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inbound_saml_sso_profile, as: 'inboundSamlSsoProfile'
        end
      end
      
      class SearchGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :groups, as: 'groups', class: Google::Apis::CloudidentityV1::Group, decorator: Google::Apis::CloudidentityV1::Group::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SearchTransitiveGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :memberships, as: 'memberships', class: Google::Apis::CloudidentityV1::GroupRelation, decorator: Google::Apis::CloudidentityV1::GroupRelation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SearchTransitiveMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :memberships, as: 'memberships', class: Google::Apis::CloudidentityV1::MemberRelation, decorator: Google::Apis::CloudidentityV1::MemberRelation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SecuritySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :member_restriction, as: 'memberRestriction', class: Google::Apis::CloudidentityV1::MemberRestriction, decorator: Google::Apis::CloudidentityV1::MemberRestriction::Representation
      
          property :name, as: 'name'
        end
      end
      
      class SendUserInvitationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SignInBehavior
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redirect_condition, as: 'redirectCondition'
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
      
      class TransitiveMembershipRole
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :role, as: 'role'
        end
      end
      
      class UpdateGroupMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdateInboundSamlSsoProfileOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdateInboundSsoAssignmentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdateMembershipMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdateMembershipRolesParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_mask, as: 'fieldMask'
          property :membership_role, as: 'membershipRole', class: Google::Apis::CloudidentityV1::MembershipRole, decorator: Google::Apis::CloudidentityV1::MembershipRole::Representation
      
        end
      end
      
      class UserInvitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mails_sent_count, :numeric_string => true, as: 'mailsSentCount'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
    end
  end
end
