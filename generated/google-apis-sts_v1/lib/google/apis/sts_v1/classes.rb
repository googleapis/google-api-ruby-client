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
    module StsV1
      
      # Associates `members`, or principals, with a `role`.
      class GoogleIamV1Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::StsV1::GoogleTypeExpr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `deleted:
        # user:`emailid`?uid=`uniqueid``: An email address (plus unique identifier)
        # representing a user that has been recently deleted. For example, `alice@
        # example.com?uid=123456789012345678901`. If the user is recovered, this value
        # reverts to `user:`emailid`` and the recovered user retains the role in the
        # binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address
        # (plus unique identifier) representing a service account that has been recently
        # deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
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
      
      # An access boundary defines the upper bound of what a principal may access. It
      # includes a list of access boundary rules that each defines the resource that
      # may be allowed as well as permissions that may be used on those resources.
      class GoogleIdentityStsV1AccessBoundary
        include Google::Apis::Core::Hashable
      
        # A list of access boundary rules which defines the upper bound of the
        # permission a principal may carry. If multiple rules are specified, the
        # effective access boundary is the union of all the access boundary rules
        # attached. One access boundary can contain at most 10 rules.
        # Corresponds to the JSON property `accessBoundaryRules`
        # @return [Array<Google::Apis::StsV1::GoogleIdentityStsV1AccessBoundaryRule>]
        attr_accessor :access_boundary_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_boundary_rules = args[:access_boundary_rules] if args.key?(:access_boundary_rules)
        end
      end
      
      # An access boundary rule defines an upper bound of IAM permissions on a single
      # resource.
      class GoogleIdentityStsV1AccessBoundaryRule
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `availabilityCondition`
        # @return [Google::Apis::StsV1::GoogleTypeExpr]
        attr_accessor :availability_condition
      
        # A list of permissions that may be allowed for use on the specified resource.
        # The only supported values in the list are IAM roles, following the format of
        # google.iam.v1.Binding.role. Example value: `inRole:roles/logging.viewer` for
        # predefined roles and `inRole:organizations/`ORGANIZATION_ID`/roles/logging.
        # viewer` for custom roles.
        # Corresponds to the JSON property `availablePermissions`
        # @return [Array<String>]
        attr_accessor :available_permissions
      
        # The full resource name of a Google Cloud resource entity. The format
        # definition is at https://cloud.google.com/apis/design/resource_names. Example
        # value: `//cloudresourcemanager.googleapis.com/projects/my-project`.
        # Corresponds to the JSON property `availableResource`
        # @return [String]
        attr_accessor :available_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability_condition = args[:availability_condition] if args.key?(:availability_condition)
          @available_permissions = args[:available_permissions] if args.key?(:available_permissions)
          @available_resource = args[:available_resource] if args.key?(:available_resource)
        end
      end
      
      # Request message for ExchangeOauthToken
      class GoogleIdentityStsV1ExchangeOauthTokenRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The client identifier for the OAuth 2.0 client that requested the
        # provided token. It is REQUIRED when the [client] (https://www.rfc-editor.org/
        # rfc/rfc6749#section-1.1) is not authenticating with the authorization server,
        # i.e. when authentication method is [client authentication] (https://www.rfc-
        # editor.org/rfc/rfc6749#section-3.2.1).
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Optional. The authorization code that was previously from workforce identity
        # federation's `authorize` endpoint. Required if the flow is authorization code
        # flow, i.e. if grant_type is 'authorization_code'
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Optional. The code verifier for the PKCE request, Google Cloud CLI originally
        # generates it before the authorization request. PKCE is used to protect
        # authorization code from interception attacks. See https://www.rfc-editor.org/
        # rfc/rfc7636#section-1.1 and https://www.rfc-editor.org/rfc/rfc7636#section-3.
        # It is required when the flow is authorization code flow, i.e. if grant_type is
        # 'authorization_code'
        # Corresponds to the JSON property `codeVerifier`
        # @return [String]
        attr_accessor :code_verifier
      
        # Required. The grant types are as follows: - 'authorization_code' : an
        # authorization code flow, i.e. exchange of authorization code for the Oauth
        # access token - 'refresh_token' : a refresh token flow, i.e. obtain a new
        # access token by providing the refresh token. See https://www.rfc-editor.org/
        # rfc/rfc6749#section-6
        # Corresponds to the JSON property `grantType`
        # @return [String]
        attr_accessor :grant_type
      
        # Optional. redirect_url is required when the flow is authorization code flow i.
        # e. if grant_type is `authorization_code` See https://www.rfc-editor.org/rfc/
        # rfc6749#section-4.1.3
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        # Optional. The Refresh token is the credential that is used to obtain a new
        # access token when the current access token becomes invalid or expires.
        # Required when using refresh token flow, i.e. if `grant_type` is 'refresh_token'
        # See https://www.rfc-editor.org/rfc/rfc6749#section-1.5 and https://www.rfc-
        # editor.org/rfc/rfc6749#section-6
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        # Optional. An optional list of scopes that are requested for the token to be
        # returned. See https://www.rfc-editor.org/rfc/rfc6749#section-3.3 Must be a
        # list of space-delimited, case-sensitive strings. Note: Currently, the scopes
        # in the request are not supported
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @code = args[:code] if args.key?(:code)
          @code_verifier = args[:code_verifier] if args.key?(:code_verifier)
          @grant_type = args[:grant_type] if args.key?(:grant_type)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # Response message for ExchangeOauthToken. see https://www.rfc-editor.org/rfc/
      # rfc6749#section-5.1
      class GoogleIdentityStsV1ExchangeOauthTokenResponse
        include Google::Apis::Core::Hashable
      
        # An OAuth 2.0 security token, issued by Google, in response to the Oauth token
        # exchange request for the authorization code and refresh token flows. The
        # returned [access token](https://www.rfc-editor.org/rfc/rfc6749#section-4.1.4).
        # Tokens can vary in size, depending, in part, on the size of mapped claims, up
        # to a maximum of 12288 bytes (12 KB). Google reserves the right to change the
        # token size and the maximum length at any time.
        # Corresponds to the JSON property `access_token`
        # @return [String]
        attr_accessor :access_token
      
        # The amount of time, in seconds, between the time when the access token was
        # issued and the time when the access token will expires.
        # Corresponds to the JSON property `expires_in`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # Google issued ID token in response to the OAuth token exchange request for ID
        # token flow.
        # Corresponds to the JSON property `id_token`
        # @return [String]
        attr_accessor :id_token
      
        # A refresh token, issued by Google, in response to the OAuth token exchange
        # request for refresh token flow
        # Corresponds to the JSON property `refresh_token`
        # @return [String]
        attr_accessor :refresh_token
      
        # A list of scopes associated with the returned token.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # The type of token. Field reserved for RFC compliance. See https://www.rfc-
        # editor.org/rfc/rfc6749#section-5.1
        # Corresponds to the JSON property `token_type`
        # @return [String]
        attr_accessor :token_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @id_token = args[:id_token] if args.key?(:id_token)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
          @scope = args[:scope] if args.key?(:scope)
          @token_type = args[:token_type] if args.key?(:token_type)
        end
      end
      
      # Request message for ExchangeToken.
      class GoogleIdentityStsV1ExchangeTokenRequest
        include Google::Apis::Core::Hashable
      
        # The full resource name of the identity provider; for example: `//iam.
        # googleapis.com/projects//locations/global/workloadIdentityPools//providers/`
        # for workload identity pool providers, or `//iam.googleapis.com/locations/
        # global/workforcePools//providers/` for workforce pool providers. Required when
        # exchanging an external credential for a Google access token.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # Required. The grant type. Must be `urn:ietf:params:oauth:grant-type:token-
        # exchange`, which indicates a token exchange.
        # Corresponds to the JSON property `grantType`
        # @return [String]
        attr_accessor :grant_type
      
        # A set of features that Security Token Service supports, in addition to the
        # standard OAuth 2.0 token exchange, formatted as a serialized JSON object of
        # Options. The size of the parameter value must not exceed 4096 characters.
        # Corresponds to the JSON property `options`
        # @return [String]
        attr_accessor :options
      
        # Required. An identifier for the type of requested security token. Must be `urn:
        # ietf:params:oauth:token-type:access_token`.
        # Corresponds to the JSON property `requestedTokenType`
        # @return [String]
        attr_accessor :requested_token_type
      
        # The OAuth 2.0 scopes to include on the resulting access token, formatted as a
        # list of space-delimited, case-sensitive strings. Required when exchanging an
        # external credential for a Google access token.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Required. The input token. This token is either an external credential issued
        # by a workload identity pool provider, or a short-lived access token issued by
        # Google. If the token is an OIDC JWT, it must use the JWT format defined in [
        # RFC 7523](https://tools.ietf.org/html/rfc7523), and the `subject_token_type`
        # must be either `urn:ietf:params:oauth:token-type:jwt` or `urn:ietf:params:
        # oauth:token-type:id_token`. The following headers are required: - `kid`: The
        # identifier of the signing key securing the JWT. - `alg`: The cryptographic
        # algorithm securing the JWT. Must be `RS256` or `ES256`. The following payload
        # fields are required. For more information, see [RFC 7523, Section 3](https://
        # tools.ietf.org/html/rfc7523#section-3): - `iss`: The issuer of the token. The
        # issuer must provide a discovery document at the URL `/.well-known/openid-
        # configuration`, where `` is the value of this field. The document must be
        # formatted according to section 4.2 of the [OIDC 1.0 Discovery specification](
        # https://openid.net/specs/openid-connect-discovery-1_0.html#
        # ProviderConfigurationResponse). - `iat`: The issue time, in seconds, since the
        # Unix epoch. Must be in the past. - `exp`: The expiration time, in seconds,
        # since the Unix epoch. Must be less than 48 hours after `iat`. Shorter
        # expiration times are more secure. If possible, we recommend setting an
        # expiration time less than 6 hours. - `sub`: The identity asserted in the JWT. -
        # `aud`: For workload identity pools, this must be a value specified in the
        # allowed audiences for the workload identity pool provider, or one of the
        # audiences allowed by default if no audiences were specified. See https://cloud.
        # google.com/iam/docs/reference/rest/v1/projects.locations.workloadIdentityPools.
        # providers#oidc. For workforce pools, this must match the client ID specified
        # in the provider configuration. See https://cloud.google.com/iam/docs/reference/
        # rest/v1/locations.workforcePools.providers#oidc. Example header: ``` ` "alg": "
        # RS256", "kid": "us-east-11" ` ``` Example payload: ``` ` "iss": "https://
        # accounts.google.com", "iat": 1517963104, "exp": 1517966704, "aud": "//iam.
        # googleapis.com/projects/1234567890123/locations/global/workloadIdentityPools/
        # my-pool/providers/my-provider", "sub": "113475438248934895348", "my_claims": `
        # "additional_claim": "value" ` ` ``` If `subject_token` is for AWS, it must be
        # a serialized `GetCallerIdentity` token. This token contains the same
        # information as a request to the AWS [`GetCallerIdentity()`](https://docs.aws.
        # amazon.com/STS/latest/APIReference/API_GetCallerIdentity) method, as well as
        # the AWS [signature](https://docs.aws.amazon.com/general/latest/gr/
        # signing_aws_api_requests.html) for the request information. Use Signature
        # Version 4. Format the request as URL-encoded JSON, and set the `
        # subject_token_type` parameter to `urn:ietf:params:aws:token-type:aws4_request`.
        # The following parameters are required: - `url`: The URL of the AWS STS
        # endpoint for `GetCallerIdentity()`, such as `https://sts.amazonaws.com?Action=
        # GetCallerIdentity&Version=2011-06-15`. Regional endpoints are also supported. -
        # `method`: The HTTP request method: `POST`. - `headers`: The HTTP request
        # headers, which must include: - `Authorization`: The request signature. - `x-
        # amz-date`: The time you will send the request, formatted as an [ISO8601 Basic](
        # https://docs.aws.amazon.com/general/latest/gr/sigv4_elements.html#
        # sigv4_elements_date) string. This value is typically set to the current time
        # and is used to help prevent replay attacks. - `host`: The hostname of the `url`
        # field; for example, `sts.amazonaws.com`. - `x-goog-cloud-target-resource`:
        # The full, canonical resource name of the workload identity pool provider, with
        # or without an `https:` prefix. To help ensure data integrity, we recommend
        # including this header in the `SignedHeaders` field of the signed request. For
        # example: //iam.googleapis.com/projects//locations/global/workloadIdentityPools/
        # /providers/ https://iam.googleapis.com/projects//locations/global/
        # workloadIdentityPools//providers/ If you are using temporary security
        # credentials provided by AWS, you must also include the header `x-amz-security-
        # token`, with the value set to the session token. The following example shows a
        # `GetCallerIdentity` token: ``` ` "headers": [ `"key": "x-amz-date", "value": "
        # 20200815T015049Z"`, `"key": "Authorization", "value": "AWS4-HMAC-SHA256+
        # Credential=$credential,+SignedHeaders=host;x-amz-date;x-goog-cloud-target-
        # resource,+Signature=$signature"`, `"key": "x-goog-cloud-target-resource", "
        # value": "//iam.googleapis.com/projects//locations/global/workloadIdentityPools/
        # /providers/"`, `"key": "host", "value": "sts.amazonaws.com"` . ], "method": "
        # POST", "url": "https://sts.amazonaws.com?Action=GetCallerIdentity&Version=2011-
        # 06-15" ` ``` If the token is a SAML 2.0 assertion, it must use the format
        # defined in [the SAML 2.0 spec](https://www.oasis-open.org/committees/download.
        # php/56776/sstc-saml-core-errata-2.0-wd-07.pdf), and the `subject_token_type`
        # must be `urn:ietf:params:oauth:token-type:saml2`. See [Verification of
        # external credentials](https://cloud.google.com/iam/docs/using-workload-
        # identity-federation#verification_of_external_credentials) for details on how
        # SAML 2.0 assertions are validated during token exchanges. You can also use a
        # Google-issued OAuth 2.0 access token with this field to obtain an access token
        # with new security attributes applied, such as a Credential Access Boundary. In
        # this case, set `subject_token_type` to `urn:ietf:params:oauth:token-type:
        # access_token`. If an access token already contains security attributes, you
        # cannot apply additional security attributes.
        # Corresponds to the JSON property `subjectToken`
        # @return [String]
        attr_accessor :subject_token
      
        # Required. An identifier that indicates the type of the security token in the `
        # subject_token` parameter. Supported values are `urn:ietf:params:oauth:token-
        # type:jwt`, `urn:ietf:params:oauth:token-type:id_token`, `urn:ietf:params:aws:
        # token-type:aws4_request`, `urn:ietf:params:oauth:token-type:access_token`, and
        # `urn:ietf:params:oauth:token-type:saml2`.
        # Corresponds to the JSON property `subjectTokenType`
        # @return [String]
        attr_accessor :subject_token_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @grant_type = args[:grant_type] if args.key?(:grant_type)
          @options = args[:options] if args.key?(:options)
          @requested_token_type = args[:requested_token_type] if args.key?(:requested_token_type)
          @scope = args[:scope] if args.key?(:scope)
          @subject_token = args[:subject_token] if args.key?(:subject_token)
          @subject_token_type = args[:subject_token_type] if args.key?(:subject_token_type)
        end
      end
      
      # Response message for ExchangeToken.
      class GoogleIdentityStsV1ExchangeTokenResponse
        include Google::Apis::Core::Hashable
      
        # An OAuth 2.0 security token, issued by Google, in response to the token
        # exchange request. Tokens can vary in size, depending in part on the size of
        # mapped claims, up to a maximum of 12288 bytes (12 KB). Google reserves the
        # right to change the token size and the maximum length at any time.
        # Corresponds to the JSON property `access_token`
        # @return [String]
        attr_accessor :access_token
      
        # The amount of time, in seconds, between the time when the access token was
        # issued and the time when the access token will expire. This field is absent
        # when the `subject_token` in the request is a Google-issued, short-lived access
        # token. In this case, the access token has the same expiration time as the `
        # subject_token`.
        # Corresponds to the JSON property `expires_in`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # The token type. Always matches the value of `requested_token_type` from the
        # request.
        # Corresponds to the JSON property `issued_token_type`
        # @return [String]
        attr_accessor :issued_token_type
      
        # The type of access token. Always has the value `Bearer`.
        # Corresponds to the JSON property `token_type`
        # @return [String]
        attr_accessor :token_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @issued_token_type = args[:issued_token_type] if args.key?(:issued_token_type)
          @token_type = args[:token_type] if args.key?(:token_type)
        end
      end
      
      # Request message for IntrospectToken.
      class GoogleIdentityStsV1IntrospectTokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. The OAuth 2.0 security token issued by the Security Token Service
        # API.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # Optional. The type of the given token. Supported values are `urn:ietf:params:
        # oauth:token-type:access_token` and `access_token`.
        # Corresponds to the JSON property `tokenTypeHint`
        # @return [String]
        attr_accessor :token_type_hint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @token = args[:token] if args.key?(:token)
          @token_type_hint = args[:token_type_hint] if args.key?(:token_type_hint)
        end
      end
      
      # Response message for IntrospectToken.
      class GoogleIdentityStsV1IntrospectTokenResponse
        include Google::Apis::Core::Hashable
      
        # A boolean value that indicates whether the provided access token is currently
        # active.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # The client identifier for the OAuth 2.0 client that requested the provided
        # token.
        # Corresponds to the JSON property `client_id`
        # @return [String]
        attr_accessor :client_id
      
        # The expiration timestamp, measured in the number of seconds since January 1
        # 1970 UTC, indicating when this token will expire.
        # Corresponds to the JSON property `exp`
        # @return [Fixnum]
        attr_accessor :exp
      
        # The issued timestamp, measured in the number of seconds since January 1 1970
        # UTC, indicating when this token was originally issued.
        # Corresponds to the JSON property `iat`
        # @return [Fixnum]
        attr_accessor :iat
      
        # The issuer of the provided token.
        # Corresponds to the JSON property `iss`
        # @return [String]
        attr_accessor :iss
      
        # A list of scopes associated with the provided token.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # The unique user ID associated with the provided token. For Google Accounts,
        # this value is based on the Google Account's user ID. For federated identities,
        # this value is based on the identity pool ID and the value of the mapped `
        # google.subject` attribute.
        # Corresponds to the JSON property `sub`
        # @return [String]
        attr_accessor :sub
      
        # The human-readable identifier for the token principal subject. For example, if
        # the provided token is associated with a workload identity pool, this field
        # contains a value in the following format: `principal://iam.googleapis.com/
        # projects//locations/global/workloadIdentityPools//subject/`. If the provided
        # token is associated with a workforce pool, this field contains a value in the
        # following format: `principal://iam.googleapis.com/locations/global/
        # workforcePools//subject/`.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @client_id = args[:client_id] if args.key?(:client_id)
          @exp = args[:exp] if args.key?(:exp)
          @iat = args[:iat] if args.key?(:iat)
          @iss = args[:iss] if args.key?(:iss)
          @scope = args[:scope] if args.key?(:scope)
          @sub = args[:sub] if args.key?(:sub)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # An `Options` object configures features that the Security Token Service
      # supports, but that are not supported by standard OAuth 2.0 token exchange
      # endpoints, as defined in https://tools.ietf.org/html/rfc8693.
      class GoogleIdentityStsV1Options
        include Google::Apis::Core::Hashable
      
        # An access boundary defines the upper bound of what a principal may access. It
        # includes a list of access boundary rules that each defines the resource that
        # may be allowed as well as permissions that may be used on those resources.
        # Corresponds to the JSON property `accessBoundary`
        # @return [Google::Apis::StsV1::GoogleIdentityStsV1AccessBoundary]
        attr_accessor :access_boundary
      
        # The intended audience(s) of the credential. The audience value(s) should be
        # the name(s) of services intended to receive the credential. Example: `["https:/
        # /pubsub.googleapis.com/", "https://storage.googleapis.com/"]`. A maximum of 5
        # audiences can be included. For each provided audience, the maximum length is
        # 262 characters.
        # Corresponds to the JSON property `audiences`
        # @return [Array<String>]
        attr_accessor :audiences
      
        # A Google project used for quota and billing purposes when the credential is
        # used to access Google APIs. The provided project overrides the project bound
        # to the credential. The value must be a project number or a project ID. Example:
        # `my-sample-project-191923`. The maximum length is 32 characters.
        # Corresponds to the JSON property `userProject`
        # @return [String]
        attr_accessor :user_project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_boundary = args[:access_boundary] if args.key?(:access_boundary)
          @audiences = args[:audiences] if args.key?(:audiences)
          @user_project = args[:user_project] if args.key?(:user_project)
        end
      end
      
      # An access boundary defines the upper bound of what a principal may access. It
      # includes a list of access boundary rules that each defines the resource that
      # may be allowed as well as permissions that may be used on those resources.
      class GoogleIdentityStsV1betaAccessBoundary
        include Google::Apis::Core::Hashable
      
        # A list of access boundary rules which defines the upper bound of the
        # permission a principal may carry. If multiple rules are specified, the
        # effective access boundary is the union of all the access boundary rules
        # attached. One access boundary can contain at most 10 rules.
        # Corresponds to the JSON property `accessBoundaryRules`
        # @return [Array<Google::Apis::StsV1::GoogleIdentityStsV1betaAccessBoundaryRule>]
        attr_accessor :access_boundary_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_boundary_rules = args[:access_boundary_rules] if args.key?(:access_boundary_rules)
        end
      end
      
      # An access boundary rule defines an upper bound of IAM permissions on a single
      # resource.
      class GoogleIdentityStsV1betaAccessBoundaryRule
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `availabilityCondition`
        # @return [Google::Apis::StsV1::GoogleTypeExpr]
        attr_accessor :availability_condition
      
        # A list of permissions that may be allowed for use on the specified resource.
        # The only supported values in the list are IAM roles, following the format of
        # google.iam.v1.Binding.role. Example value: `inRole:roles/logging.viewer` for
        # predefined roles and `inRole:organizations/`ORGANIZATION_ID`/roles/logging.
        # viewer` for custom roles.
        # Corresponds to the JSON property `availablePermissions`
        # @return [Array<String>]
        attr_accessor :available_permissions
      
        # The full resource name of a Google Cloud resource entity. The format
        # definition is at https://cloud.google.com/apis/design/resource_names. Example
        # value: `//cloudresourcemanager.googleapis.com/projects/my-project`.
        # Corresponds to the JSON property `availableResource`
        # @return [String]
        attr_accessor :available_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability_condition = args[:availability_condition] if args.key?(:availability_condition)
          @available_permissions = args[:available_permissions] if args.key?(:available_permissions)
          @available_resource = args[:available_resource] if args.key?(:available_resource)
        end
      end
      
      # An `Options` object configures features that the Security Token Service
      # supports, but that are not supported by standard OAuth 2.0 token exchange
      # endpoints, as defined in https://tools.ietf.org/html/rfc8693.
      class GoogleIdentityStsV1betaOptions
        include Google::Apis::Core::Hashable
      
        # An access boundary defines the upper bound of what a principal may access. It
        # includes a list of access boundary rules that each defines the resource that
        # may be allowed as well as permissions that may be used on those resources.
        # Corresponds to the JSON property `accessBoundary`
        # @return [Google::Apis::StsV1::GoogleIdentityStsV1betaAccessBoundary]
        attr_accessor :access_boundary
      
        # The intended audience(s) of the credential. The audience value(s) should be
        # the name(s) of services intended to receive the credential. Example: `["https:/
        # /pubsub.googleapis.com/", "https://storage.googleapis.com/"]`. A maximum of 5
        # audiences can be included. For each provided audience, the maximum length is
        # 262 characters.
        # Corresponds to the JSON property `audiences`
        # @return [Array<String>]
        attr_accessor :audiences
      
        # A Google project used for quota and billing purposes when the credential is
        # used to access Google APIs. The provided project overrides the project bound
        # to the credential. The value must be a project number or a project ID. Example:
        # `my-sample-project-191923`. The maximum length is 32 characters.
        # Corresponds to the JSON property `userProject`
        # @return [String]
        attr_accessor :user_project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_boundary = args[:access_boundary] if args.key?(:access_boundary)
          @audiences = args[:audiences] if args.key?(:audiences)
          @user_project = args[:user_project] if args.key?(:user_project)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class GoogleTypeExpr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
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
    end
  end
end
