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
    module IapV1
      
      # Access related settings for IAP protected apps.
      class AccessSettings
        include Google::Apis::Core::Hashable
      
        # Allows customers to configure HTTP request paths that'll allow HTTP OPTIONS
        # call to bypass authentication and authorization.
        # Corresponds to the JSON property `corsSettings`
        # @return [Google::Apis::IapV1::CorsSettings]
        attr_accessor :cors_settings
      
        # Allows customers to configure tenant_id for GCIP instance per-app.
        # Corresponds to the JSON property `gcipSettings`
        # @return [Google::Apis::IapV1::GcipSettings]
        attr_accessor :gcip_settings
      
        # Configuration for OAuth login&consent flow behavior.
        # Corresponds to the JSON property `oauthSettings`
        # @return [Google::Apis::IapV1::OAuthSettings]
        attr_accessor :oauth_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cors_settings = args[:cors_settings] if args.key?(:cors_settings)
          @gcip_settings = args[:gcip_settings] if args.key?(:gcip_settings)
          @oauth_settings = args[:oauth_settings] if args.key?(:oauth_settings)
        end
      end
      
      # Wrapper over application specific settings for IAP.
      class ApplicationSettings
        include Google::Apis::Core::Hashable
      
        # Configuration for RCTokens generated for CSM workloads protected by IAP.
        # RCTokens are IAP generated JWTs that can be verified at the application. The
        # RCToken is primarily used for ISTIO deployments, and can be scoped to a
        # single mesh by configuring the audience field accordingly
        # Corresponds to the JSON property `csmSettings`
        # @return [Google::Apis::IapV1::CsmSettings]
        attr_accessor :csm_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csm_settings = args[:csm_settings] if args.key?(:csm_settings)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents an expression text. Example:
        # title: "User account presence"
        # description: "Determines whether the request has a user account"
        # expression: "size(request.user) > 0"
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::IapV1::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource.
        # `members` can have the following values:
        # * `allUsers`: A special identifier that represents anyone who is
        # on the internet; with or without a Google account.
        # * `allAuthenticatedUsers`: A special identifier that represents anyone
        # who is authenticated with a Google account or a service account.
        # * `user:`emailid``: An email address that represents a specific Google
        # account. For example, `alice@example.com` .
        # * `serviceAccount:`emailid``: An email address that represents a service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`.
        # * `group:`emailid``: An email address that represents a Google group.
        # For example, `admins@example.com`.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For
        # example, `alice@example.com?uid=123456789012345678901`. If the user is
        # recovered, this value reverts to `user:`emailid`` and the recovered user
        # retains the role in the binding.
        # * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus
        # unique identifier) representing a service account that has been recently
        # deleted. For example,
        # `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to
        # `serviceAccount:`emailid`` and the undeleted service account retains the
        # role in the binding.
        # * `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently
        # deleted. For example, `admins@example.com?uid=123456789012345678901`. If
        # the group is recovered, this value reverts to `group:`emailid`` and the
        # recovered group retains the role in the binding.
        # * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`.
        # For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # OAuth brand data.
      # NOTE: Only contains a portion of the data that describes a brand.
      class Brand
        include Google::Apis::Core::Hashable
      
        # Application name displayed on OAuth consent screen.
        # Corresponds to the JSON property `applicationTitle`
        # @return [String]
        attr_accessor :application_title
      
        # Output only. Identifier of the brand.
        # NOTE: GCP project number achieves the same brand identification purpose as
        # only one brand per project can be created.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Whether the brand is only intended for usage inside the
        # GSuite organization only.
        # Corresponds to the JSON property `orgInternalOnly`
        # @return [Boolean]
        attr_accessor :org_internal_only
        alias_method :org_internal_only?, :org_internal_only
      
        # Support email displayed on the OAuth consent screen.
        # Corresponds to the JSON property `supportEmail`
        # @return [String]
        attr_accessor :support_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_title = args[:application_title] if args.key?(:application_title)
          @name = args[:name] if args.key?(:name)
          @org_internal_only = args[:org_internal_only] if args.key?(:org_internal_only)
          @support_email = args[:support_email] if args.key?(:support_email)
        end
      end
      
      # Allows customers to configure HTTP request paths that'll allow HTTP OPTIONS
      # call to bypass authentication and authorization.
      class CorsSettings
        include Google::Apis::Core::Hashable
      
        # Configuration to allow HTTP OPTIONS calls to skip authorization. If
        # undefined, IAP will not apply any special logic to OPTIONS requests.
        # Corresponds to the JSON property `allowHttpOptions`
        # @return [Boolean]
        attr_accessor :allow_http_options
        alias_method :allow_http_options?, :allow_http_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_http_options = args[:allow_http_options] if args.key?(:allow_http_options)
        end
      end
      
      # Configuration for RCTokens generated for CSM workloads protected by IAP.
      # RCTokens are IAP generated JWTs that can be verified at the application. The
      # RCToken is primarily used for ISTIO deployments, and can be scoped to a
      # single mesh by configuring the audience field accordingly
      class CsmSettings
        include Google::Apis::Core::Hashable
      
        # Audience claim set in the generated RCToken. This value is not validated by
        # IAP.
        # Corresponds to the JSON property `rctokenAud`
        # @return [String]
        attr_accessor :rctoken_aud
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rctoken_aud = args[:rctoken_aud] if args.key?(:rctoken_aud)
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
      
      # Represents an expression text. Example:
      # title: "User account presence"
      # description: "Determines whether the request has a user account"
      # expression: "size(request.user) > 0"
      class Expr
        include Google::Apis::Core::Hashable
      
        # An optional description of the expression. This is a longer text which
        # describes the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in
        # Common Expression Language syntax.
        # The application context of the containing message determines which
        # well-known feature set of CEL is supported.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # An optional string indicating the location of the expression for error
        # reporting, e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # An optional title for the expression, i.e. a short string describing
        # its purpose. This can be used e.g. in UIs which allow to enter the
        # expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Allows customers to configure tenant_id for GCIP instance per-app.
      class GcipSettings
        include Google::Apis::Core::Hashable
      
        # Login page URI associated with the GCIP tenants.
        # Typically, all resources within the same project share the same login page,
        # though it could be overridden at the sub resource level.
        # Corresponds to the JSON property `loginPageUri`
        # @return [String]
        attr_accessor :login_page_uri
      
        # GCIP tenant ids that are linked to the IAP resource.
        # tenant_ids could be a string beginning with a number character to indicate
        # authenticating with GCIP tenant flow, or in the format of _<ProjectNumber>
        # to indicate authenticating with GCIP agent flow.
        # If agent flow is used, tenant_ids should only contain one single element,
        # while for tenant flow, tenant_ids can contain multiple elements.
        # Corresponds to the JSON property `tenantIds`
        # @return [Array<String>]
        attr_accessor :tenant_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @login_page_uri = args[:login_page_uri] if args.key?(:login_page_uri)
          @tenant_ids = args[:tenant_ids] if args.key?(:tenant_ids)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::IapV1::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The policy format version to be returned.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected.
        # Requests for policies with any conditional bindings must specify version 3.
        # Policies without any conditional bindings may specify any valid value or
        # leave the field unset.
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # The IAP configurable settings.
      class IapSettings
        include Google::Apis::Core::Hashable
      
        # Access related settings for IAP protected apps.
        # Corresponds to the JSON property `accessSettings`
        # @return [Google::Apis::IapV1::AccessSettings]
        attr_accessor :access_settings
      
        # Wrapper over application specific settings for IAP.
        # Corresponds to the JSON property `applicationSettings`
        # @return [Google::Apis::IapV1::ApplicationSettings]
        attr_accessor :application_settings
      
        # Required. The resource name of the IAP protected resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_settings = args[:access_settings] if args.key?(:access_settings)
          @application_settings = args[:application_settings] if args.key?(:application_settings)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Contains the data that describes an Identity Aware Proxy owned client.
      class IdentityAwareProxyClient
        include Google::Apis::Core::Hashable
      
        # Human-friendly name given to the OAuth client.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Unique identifier of the OAuth client.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Client secret of the OAuth client.
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @secret = args[:secret] if args.key?(:secret)
        end
      end
      
      # Response message for ListBrands.
      class ListBrandsResponse
        include Google::Apis::Core::Hashable
      
        # Brands existing in the project.
        # Corresponds to the JSON property `brands`
        # @return [Array<Google::Apis::IapV1::Brand>]
        attr_accessor :brands
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brands = args[:brands] if args.key?(:brands)
        end
      end
      
      # Response message for ListIdentityAwareProxyClients.
      class ListIdentityAwareProxyClientsResponse
        include Google::Apis::Core::Hashable
      
        # Clients existing in the brand.
        # Corresponds to the JSON property `identityAwareProxyClients`
        # @return [Array<Google::Apis::IapV1::IdentityAwareProxyClient>]
        attr_accessor :identity_aware_proxy_clients
      
        # A token, which can be send as `page_token` to retrieve the next page.
        # If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identity_aware_proxy_clients = args[:identity_aware_proxy_clients] if args.key?(:identity_aware_proxy_clients)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Configuration for OAuth login&consent flow behavior.
      class OAuthSettings
        include Google::Apis::Core::Hashable
      
        # Domain hint to send as hd=? parameter in OAuth request flow. Enables
        # redirect to primary IDP by skipping Google's login screen.
        # https://developers.google.com/identity/protocols/OpenIDConnect#hd-param
        # Note: IAP does not verify that the id token's hd claim matches this value
        # since access behavior is managed by IAM policies.
        # Corresponds to the JSON property `loginHint`
        # @return [String]
        attr_accessor :login_hint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @login_hint = args[:login_hint] if args.key?(:login_hint)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources.
      # A `Policy` is a collection of `bindings`. A `binding` binds one or more
      # `members` to a single `role`. Members can be user accounts, service accounts,
      # Google groups, and domains (such as G Suite). A `role` is a named list of
      # permissions; each `role` can be an IAM predefined role or a user-created
      # custom role.
      # Optionally, a `binding` can specify a `condition`, which is a logical
      # expression that allows access to a resource only if the expression evaluates
      # to `true`. A condition can add constraints based on attributes of the
      # request, the resource, or both.
      # **JSON example:**
      # `
      # "bindings": [
      # `
      # "role": "roles/resourcemanager.organizationAdmin",
      # "members": [
      # "user:mike@example.com",
      # "group:admins@example.com",
      # "domain:google.com",
      # "serviceAccount:my-project-id@appspot.gserviceaccount.com"
      # ]
      # `,
      # `
      # "role": "roles/resourcemanager.organizationViewer",
      # "members": ["user:eve@example.com"],
      # "condition": `
      # "title": "expirable access",
      # "description": "Does not grant access after Sep 2020",
      # "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')
      # ",
      # `
      # `
      # ],
      # "etag": "BwWWja0YfJA=",
      # "version": 3
      # `
      # **YAML example:**
      # bindings:
      # - members:
      # - user:mike@example.com
      # - group:admins@example.com
      # - domain:google.com
      # - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin
      # - members:
      # - user:eve@example.com
      # role: roles/resourcemanager.organizationViewer
      # condition:
      # title: expirable access
      # description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
      # - etag: BwWWja0YfJA=
      # - version: 3
      # For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members` to a `role`. Optionally, may specify a
        # `condition` that determines how and when the `bindings` are applied. Each
        # of the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::IapV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of a policy from overwriting each other.
        # It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform policy updates in order to avoid race
        # conditions: An `etag` is returned in the response to `getIamPolicy`, and
        # systems are expected to put that etag in the request to `setIamPolicy` to
        # ensure that their change will be applied to the same version of the policy.
        # **Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows
        # you to overwrite a version `3` policy with a version `1` policy, and all of
        # the conditions in the version `3` policy are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy.
        # Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
        # are rejected.
        # Any operation that affects conditional role bindings must specify version
        # `3`. This requirement applies to the following operations:
        # * Getting a policy that includes a conditional role binding
        # * Adding a conditional role binding to a policy
        # * Changing a conditional role binding in a policy
        # * Removing any role binding, with or without a condition, from a policy
        # that includes conditions
        # **Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows
        # you to overwrite a version `3` policy with a version `1` policy, and all of
        # the conditions in the version `3` policy are lost.
        # If a policy does not include any conditions, operations on that policy may
        # specify any valid version or leave the field unset.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The request sent to ResetIdentityAwareProxyClientSecret.
      class ResetIdentityAwareProxyClientSecretRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources.
        # A `Policy` is a collection of `bindings`. A `binding` binds one or more
        # `members` to a single `role`. Members can be user accounts, service accounts,
        # Google groups, and domains (such as G Suite). A `role` is a named list of
        # permissions; each `role` can be an IAM predefined role or a user-created
        # custom role.
        # Optionally, a `binding` can specify a `condition`, which is a logical
        # expression that allows access to a resource only if the expression evaluates
        # to `true`. A condition can add constraints based on attributes of the
        # request, the resource, or both.
        # **JSON example:**
        # `
        # "bindings": [
        # `
        # "role": "roles/resourcemanager.organizationAdmin",
        # "members": [
        # "user:mike@example.com",
        # "group:admins@example.com",
        # "domain:google.com",
        # "serviceAccount:my-project-id@appspot.gserviceaccount.com"
        # ]
        # `,
        # `
        # "role": "roles/resourcemanager.organizationViewer",
        # "members": ["user:eve@example.com"],
        # "condition": `
        # "title": "expirable access",
        # "description": "Does not grant access after Sep 2020",
        # "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')
        # ",
        # `
        # `
        # ],
        # "etag": "BwWWja0YfJA=",
        # "version": 3
        # `
        # **YAML example:**
        # bindings:
        # - members:
        # - user:mike@example.com
        # - group:admins@example.com
        # - domain:google.com
        # - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin
        # - members:
        # - user:eve@example.com
        # role: roles/resourcemanager.organizationViewer
        # condition:
        # title: expirable access
        # description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
        # - etag: BwWWja0YfJA=
        # - version: 3
        # For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::IapV1::Policy]
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
      
        # The set of permissions to check for the `resource`. Permissions with
        # wildcards (such as '*' or 'storage.*') are not allowed. For more
        # information see
        # [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
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
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is
        # allowed.
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
    end
  end
end
