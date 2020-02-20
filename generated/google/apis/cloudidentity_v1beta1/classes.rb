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
        # Console. Must be of the form `identitysources/`identity_source_id`.
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
      
      # A group within the Cloud Identity Groups API.
      # A `Group` is a collection of entities, where each entity is either a user or
      # another group.
      class Group
        include Google::Apis::Core::Hashable
      
        # Optional. Additional entity key aliases for a Group.
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
    end
  end
end
