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
    module CloudresourcemanagerV1beta1
      
      # A Project is a high-level Google Cloud Platform entity. It is a container for
      # ACLs, APIs, AppEngine Apps, VMs, and other Google Cloud Platform resources.
      class Project
        include Google::Apis::Core::Hashable
      
        # The number uniquely identifying the project. Example: 415104041262 Read-only.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        # The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase
        # letters, digits, or hyphens. It must start with a letter. Trailing hyphens are
        # prohibited. Example: tokyo-rain-123 Read-only after creation.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The Project lifecycle state. Read-only.
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # The user-assigned display name of the Project. It must be 4 to 30 characters.
        # Allowed characters are: lowercase and uppercase letters, numbers, hyphen,
        # single-quote, double-quote, space, and exclamation point. Example: My Project
        # Read-write.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Creation time. Read-only.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The labels associated with this Project. Label keys must be between 1 and 63
        # characters long and must conform to the following regular expression: \[a-z\](\
        # [-a-z0-9\]*\[a-z0-9\])?. Label values must be between 0 and 63 characters long
        # and must conform to the regular expression (\[a-z\](\[-a-z0-9\]*\[a-z0-9\])?)?.
        # No more than 256 labels can be associated with a given resource. Clients
        # should store labels in a representation such as JSON that does not depend on
        # specific characters being disallowed. Example: "environment" : "dev" Read-
        # write.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A container to reference an id for any resource type. A `resource` in Google
        # Cloud Platform is a generic term for something you (a developer) may want to
        # interact with through one of our API's. Some examples are an AppEngine app, a
        # Compute Engine instance, a Cloud SQL database, and so on.
        # Corresponds to the JSON property `parent`
        # @return [Google::Apis::CloudresourcemanagerV1beta1::ResourceId]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_number = args[:project_number] if args.key?(:project_number)
          @project_id = args[:project_id] if args.key?(:project_id)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
          @name = args[:name] if args.key?(:name)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # A container to reference an id for any resource type. A `resource` in Google
      # Cloud Platform is a generic term for something you (a developer) may want to
      # interact with through one of our API's. Some examples are an AppEngine app, a
      # Compute Engine instance, a Cloud SQL database, and so on.
      class ResourceId
        include Google::Apis::Core::Hashable
      
        # Required field representing the resource type this id is for. At present, the
        # valid types are "project" and "organization".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Required field for the type-specific id. This should correspond to the id used
        # in the type-specific API's.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # A page of the response received from the ListProjects method. A paginated
      # response where more pages are available has `next_page_token` set. This token
      # can be used in a subsequent request to retrieve the next request page.
      class ListProjectsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Projects that matched the list filter. This list can be paginated.
        # Corresponds to the JSON property `projects`
        # @return [Array<Google::Apis::CloudresourcemanagerV1beta1::Project>]
        attr_accessor :projects
      
        # Pagination token. If the result set is too large to fit in a single response,
        # this token is returned. It encodes the position of the current result cursor.
        # Feeding this value into a new list request with the `page_token` parameter
        # gives the next page of the results. When `next_page_token` is not filled in,
        # there is no next page and the list returned is the last page in the result set.
        # Pagination tokens have a limited lifetime.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @projects = args[:projects] if args.key?(:projects)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request sent to the UndeleteProject method.
      class UndeleteProjectRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request sent to the GetAncestry method.
      class GetAncestryRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response from the GetAncestry method.
      class GetAncestryResponse
        include Google::Apis::Core::Hashable
      
        # Ancestors are ordered from bottom to top of the resource hierarchy. The first
        # ancestor is the project itself, followed by the project's parent, etc.
        # Corresponds to the JSON property `ancestor`
        # @return [Array<Google::Apis::CloudresourcemanagerV1beta1::Ancestor>]
        attr_accessor :ancestor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ancestor = args[:ancestor] if args.key?(:ancestor)
        end
      end
      
      # Identifying information for a single ancestor of a project.
      class Ancestor
        include Google::Apis::Core::Hashable
      
        # A container to reference an id for any resource type. A `resource` in Google
        # Cloud Platform is a generic term for something you (a developer) may want to
        # interact with through one of our API's. Some examples are an AppEngine app, a
        # Compute Engine instance, a Cloud SQL database, and so on.
        # Corresponds to the JSON property `resourceId`
        # @return [Google::Apis::CloudresourcemanagerV1beta1::ResourceId]
        attr_accessor :resource_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
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
      
      # Defines an Identity and Access Management (IAM) policy. It is used to specify
      # access control policies for Cloud Platform resources. A `Policy` consists of a
      # list of `bindings`. A `Binding` binds a list of `members` to a `role`, where
      # the members can be user accounts, Google groups, Google domains, and service
      # accounts. A `role` is a named list of permissions defined by IAM. **Example** `
      # "bindings": [ ` "role": "roles/owner", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-other-app@
      # appspot.gserviceaccount.com", ] `, ` "role": "roles/viewer", "members": ["user:
      # sean@example.com"] ` ] ` For a description of IAM and its features, see the [
      # IAM developer's guide](https://cloud.google.com/iam).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Version of the `Policy`. The default version is 0.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # Associates a list of `members` to a `role`. Multiple `bindings` must not be
        # specified for the same `role`. `bindings` with no members will result in an
        # error.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::CloudresourcemanagerV1beta1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. If no `etag` is provided in the
        # call to `setIamPolicy`, then the existing policy is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version = args[:version] if args.key?(:version)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`. Required
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Specifies the identities requesting access for a Cloud Platform resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. * `
        # user:`emailid``: An email address that represents a specific Google account.
        # For example, `alice@gmail.com` or `joe@example.com`. * `serviceAccount:`
        # emailid``: An email address that represents a service account. For example, `
        # my-other-app@appspot.gserviceaccount.com`. * `group:`emailid``: An email
        # address that represents a Google group. For example, `admins@example.com`. * `
        # domain:`domain``: A Google Apps domain name that represents all the users of
        # that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @role = args[:role] if args.key?(:role)
          @members = args[:members] if args.key?(:members)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Defines an Identity and Access Management (IAM) policy. It is used to specify
        # access control policies for Cloud Platform resources. A `Policy` consists of a
        # list of `bindings`. A `Binding` binds a list of `members` to a `role`, where
        # the members can be user accounts, Google groups, Google domains, and service
        # accounts. A `role` is a named list of permissions defined by IAM. **Example** `
        # "bindings": [ ` "role": "roles/owner", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-other-app@
        # appspot.gserviceaccount.com", ] `, ` "role": "roles/viewer", "members": ["user:
        # sean@example.com"] ` ] ` For a description of IAM and its features, see the [
        # IAM developer's guide](https://cloud.google.com/iam).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
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
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
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
      
      # The response returned from the `ListOrganizations` method.
      class ListOrganizationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Organizations that matched the list query, possibly paginated.
        # Corresponds to the JSON property `organizations`
        # @return [Array<Google::Apis::CloudresourcemanagerV1beta1::Organization>]
        attr_accessor :organizations
      
        # A pagination token to be used to retrieve the next page of results. If the
        # result is too large to fit within the page size specified in the request, this
        # field will be set with a token that can be used to fetch the next page of
        # results. If this field is empty, it indicates that this response contains the
        # last page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @organizations = args[:organizations] if args.key?(:organizations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The root node in the resource hierarchy to which a particular entity's (e.g.,
      # company) resources belong.
      class Organization
        include Google::Apis::Core::Hashable
      
        # Output Only. The resource name of the organization. This is the organization's
        # relative path in the API. Its format is "organizations/[organization_id]". For
        # example, "organizations/1234".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An immutable id for the Organization that is assigned on creation. This should
        # be omitted when creating a new Organization. This field is read-only. This
        # field is deprecated and will be removed in v1. Use name instead.
        # Corresponds to the JSON property `organizationId`
        # @return [String]
        attr_accessor :organization_id
      
        # A friendly string to be used to refer to the Organization in the UI. Assigned
        # by the server, set to the firm name of the Google For Work customer that owns
        # this organization. @OutputOnly
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The entity that owns an Organization. The lifetime of the Organization and all
        # of its descendants are bound to the `OrganizationOwner`. If the `
        # OrganizationOwner` is deleted, the Organization and all its descendants will
        # be deleted.
        # Corresponds to the JSON property `owner`
        # @return [Google::Apis::CloudresourcemanagerV1beta1::OrganizationOwner]
        attr_accessor :owner
      
        # Timestamp when the Organization was created. Assigned by the server. @
        # OutputOnly
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # The organization's current lifecycle state. Assigned by the server. @
        # OutputOnly
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @organization_id = args[:organization_id] if args.key?(:organization_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @owner = args[:owner] if args.key?(:owner)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
        end
      end
      
      # The entity that owns an Organization. The lifetime of the Organization and all
      # of its descendants are bound to the `OrganizationOwner`. If the `
      # OrganizationOwner` is deleted, the Organization and all its descendants will
      # be deleted.
      class OrganizationOwner
        include Google::Apis::Core::Hashable
      
        # The Google for Work customer id used in the Directory API.
        # Corresponds to the JSON property `directoryCustomerId`
        # @return [String]
        attr_accessor :directory_customer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @directory_customer_id = args[:directory_customer_id] if args.key?(:directory_customer_id)
        end
      end
      
      # A status object which is used as the `metadata` field for the Operation
      # returned by CreateProject. It provides insight for when significant phases of
      # Project creation have completed.
      class ProjectCreationStatus
        include Google::Apis::Core::Hashable
      
        # Creation time of the project creation workflow.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # True if the project can be retrieved using GetProject. No other operations on
        # the project are guaranteed to work until the project creation is complete.
        # Corresponds to the JSON property `gettable`
        # @return [Boolean]
        attr_accessor :gettable
        alias_method :gettable?, :gettable
      
        # True if the project creation process is complete.
        # Corresponds to the JSON property `ready`
        # @return [Boolean]
        attr_accessor :ready
        alias_method :ready?, :ready
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @gettable = args[:gettable] if args.key?(:gettable)
          @ready = args[:ready] if args.key?(:ready)
        end
      end
      
      # Metadata describing a long running folder operation
      class FolderOperation
        include Google::Apis::Core::Hashable
      
        # The display name of the folder.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The type of this operation.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The resource name of the folder's parent. Only applicable when the
        # operation_type is MOVE.
        # Corresponds to the JSON property `sourceParent`
        # @return [String]
        attr_accessor :source_parent
      
        # The resource name of the folder or organization we are either creating the
        # folder under or moving the folder to.
        # Corresponds to the JSON property `destinationParent`
        # @return [String]
        attr_accessor :destination_parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @source_parent = args[:source_parent] if args.key?(:source_parent)
          @destination_parent = args[:destination_parent] if args.key?(:destination_parent)
        end
      end
      
      # A classification of the Folder Operation error.
      class FolderOperationError
        include Google::Apis::Core::Hashable
      
        # The type of operation error experienced.
        # Corresponds to the JSON property `errorMessageId`
        # @return [String]
        attr_accessor :error_message_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message_id = args[:error_message_id] if args.key?(:error_message_id)
        end
      end
    end
  end
end
