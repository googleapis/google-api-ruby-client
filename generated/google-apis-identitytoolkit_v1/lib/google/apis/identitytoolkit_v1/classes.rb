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
    module IdentitytoolkitV1
      
      # The parameters for Argon2 hashing algorithm.
      class GoogleCloudIdentitytoolkitV1Argon2Parameters
        include Google::Apis::Core::Hashable
      
        # The additional associated data, if provided, is appended to the hash value to
        # provide an additional layer of security. A base64-encoded string if specified
        # via JSON.
        # Corresponds to the JSON property `associatedData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :associated_data
      
        # Required. The desired hash length in bytes. Minimum is 4 and maximum is 1024.
        # Corresponds to the JSON property `hashLengthBytes`
        # @return [Fixnum]
        attr_accessor :hash_length_bytes
      
        # Required. Must not be HASH_TYPE_UNSPECIFIED.
        # Corresponds to the JSON property `hashType`
        # @return [String]
        attr_accessor :hash_type
      
        # Required. The number of iterations to perform. Minimum is 1, maximum is 16.
        # Corresponds to the JSON property `iterations`
        # @return [Fixnum]
        attr_accessor :iterations
      
        # Required. The memory cost in kibibytes. Maximum is 32768.
        # Corresponds to the JSON property `memoryCostKib`
        # @return [Fixnum]
        attr_accessor :memory_cost_kib
      
        # Required. The degree of parallelism, also called threads or lanes. Minimum is
        # 1, maximum is 16.
        # Corresponds to the JSON property `parallelism`
        # @return [Fixnum]
        attr_accessor :parallelism
      
        # The version of the Argon2 algorithm. This defaults to VERSION_13 if not
        # specified.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @associated_data = args[:associated_data] if args.key?(:associated_data)
          @hash_length_bytes = args[:hash_length_bytes] if args.key?(:hash_length_bytes)
          @hash_type = args[:hash_type] if args.key?(:hash_type)
          @iterations = args[:iterations] if args.key?(:iterations)
          @memory_cost_kib = args[:memory_cost_kib] if args.key?(:memory_cost_kib)
          @parallelism = args[:parallelism] if args.key?(:parallelism)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The information required to auto-retrieve an SMS.
      class GoogleCloudIdentitytoolkitV1AutoRetrievalInfo
        include Google::Apis::Core::Hashable
      
        # The Android app's signature hash for Google Play Service's SMS Retriever API.
        # Corresponds to the JSON property `appSignatureHash`
        # @return [String]
        attr_accessor :app_signature_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_signature_hash = args[:app_signature_hash] if args.key?(:app_signature_hash)
        end
      end
      
      # Request message for BatchDeleteAccounts.
      class GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest
        include Google::Apis::Core::Hashable
      
        # Whether to force deleting accounts that are not in disabled state. If false,
        # only disabled accounts will be deleted, and accounts that are not disabled
        # will be added to the `errors`.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # Required. List of user IDs to be deleted.
        # Corresponds to the JSON property `localIds`
        # @return [Array<String>]
        attr_accessor :local_ids
      
        # If the accounts belong to an Identity Platform tenant, the ID of the tenant.
        # If the accounts belong to an default Identity Platform project, the field is
        # not needed.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @force = args[:force] if args.key?(:force)
          @local_ids = args[:local_ids] if args.key?(:local_ids)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Response message to BatchDeleteAccounts.
      class GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse
        include Google::Apis::Core::Hashable
      
        # Detailed error info for accounts that cannot be deleted.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # Error info for account failed to be deleted.
      class GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo
        include Google::Apis::Core::Hashable
      
        # The index of the errored item in the original local_ids field.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # The corresponding user ID.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # Detailed error message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index = args[:index] if args.key?(:index)
          @local_id = args[:local_id] if args.key?(:local_id)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Request message for CreateAuthUri.
      class GoogleCloudIdentitytoolkitV1CreateAuthUriRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Used for the Google provider. The type of the authentication flow to be used.
        # If present, this should be `CODE_FLOW` to specify the authorization code flow.
        # Otherwise, the default ID Token flow will be used.
        # Corresponds to the JSON property `authFlowType`
        # @return [String]
        attr_accessor :auth_flow_type
      
        # An opaque string used to maintain contextual information between the
        # authentication request and the callback from the IdP.
        # Corresponds to the JSON property `context`
        # @return [String]
        attr_accessor :context
      
        # A valid URL for the IdP to redirect the user back to. The URL cannot contain
        # fragments or the reserved `state` query parameter.
        # Corresponds to the JSON property `continueUri`
        # @return [String]
        attr_accessor :continue_uri
      
        # Additional customized query parameters to be added to the authorization URI.
        # The following parameters are reserved and cannot be added: `client_id`, `
        # response_type`, `scope`, `redirect_uri`, `state`. For the Microsoft provider,
        # the Azure AD tenant to sign-in to can be specified in the `tenant` custom
        # parameter.
        # Corresponds to the JSON property `customParameter`
        # @return [Hash<String,String>]
        attr_accessor :custom_parameter
      
        # Used for the Google provider. The G Suite hosted domain of the user in order
        # to restrict sign-in to users at that domain.
        # Corresponds to the JSON property `hostedDomain`
        # @return [String]
        attr_accessor :hosted_domain
      
        # The email identifier of the user account to fetch associated providers for. At
        # least one of the fields `identifier` and `provider_id` must be set. The length
        # of the email address should be less than 256 characters and in the format of `
        # name@domain.tld`. The email address should also match the [RFC 822](https://
        # tools.ietf.org/html/rfc822) addr-spec production.
        # Corresponds to the JSON property `identifier`
        # @return [String]
        attr_accessor :identifier
      
        # 
        # Corresponds to the JSON property `oauthConsumerKey`
        # @return [String]
        attr_accessor :oauth_consumer_key
      
        # Additional space-delimited OAuth 2.0 scopes specifying the scope of the
        # authentication request with the IdP. Used for OAuth 2.0 IdPs. For the Google
        # provider, the authorization code flow will be used if this field is set.
        # Corresponds to the JSON property `oauthScope`
        # @return [String]
        attr_accessor :oauth_scope
      
        # 
        # Corresponds to the JSON property `openidRealm`
        # @return [String]
        attr_accessor :openid_realm
      
        # 
        # Corresponds to the JSON property `otaApp`
        # @return [String]
        attr_accessor :ota_app
      
        # The provider ID of the IdP for the user to sign in with. This should be a
        # provider ID enabled for sign-in, which is either from the list of [default
        # supported IdPs](https://cloud.google.com/identity-platform/docs/reference/rest/
        # v2/defaultSupportedIdps/list), or of the format `oidc.*` or `saml.*`. Some
        # examples are `google.com`, `facebook.com`, `oidc.testapp`, and `saml.testapp`.
        # At least one of the fields `identifier` and `provider_id` must be set.
        # Corresponds to the JSON property `providerId`
        # @return [String]
        attr_accessor :provider_id
      
        # A session ID that can be verified against in SignInWithIdp to prevent session
        # fixation attacks. If absent, a random string will be generated and returned as
        # the session ID.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        # The ID of the Identity Platform tenant to create an authorization URI or
        # lookup an email identifier for. If not set, the operation will be performed in
        # the default Identity Platform instance in the project.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @auth_flow_type = args[:auth_flow_type] if args.key?(:auth_flow_type)
          @context = args[:context] if args.key?(:context)
          @continue_uri = args[:continue_uri] if args.key?(:continue_uri)
          @custom_parameter = args[:custom_parameter] if args.key?(:custom_parameter)
          @hosted_domain = args[:hosted_domain] if args.key?(:hosted_domain)
          @identifier = args[:identifier] if args.key?(:identifier)
          @oauth_consumer_key = args[:oauth_consumer_key] if args.key?(:oauth_consumer_key)
          @oauth_scope = args[:oauth_scope] if args.key?(:oauth_scope)
          @openid_realm = args[:openid_realm] if args.key?(:openid_realm)
          @ota_app = args[:ota_app] if args.key?(:ota_app)
          @provider_id = args[:provider_id] if args.key?(:provider_id)
          @session_id = args[:session_id] if args.key?(:session_id)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Response message for CreateAuthUri.
      class GoogleCloudIdentitytoolkitV1CreateAuthUriResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allProviders`
        # @return [Array<String>]
        attr_accessor :all_providers
      
        # The authorization URI for the requested provider. Present only when a provider
        # ID is set in the request.
        # Corresponds to the JSON property `authUri`
        # @return [String]
        attr_accessor :auth_uri
      
        # Whether a CAPTCHA is needed because there have been too many failed login
        # attempts by the user. Present only when a registered email identifier is set
        # in the request.
        # Corresponds to the JSON property `captchaRequired`
        # @return [Boolean]
        attr_accessor :captcha_required
        alias_method :captcha_required?, :captcha_required
      
        # Whether the user has previously signed in with the provider ID in the request.
        # Present only when a registered email identifier is set in the request.
        # Corresponds to the JSON property `forExistingProvider`
        # @return [Boolean]
        attr_accessor :for_existing_provider
        alias_method :for_existing_provider?, :for_existing_provider
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The provider ID from the request, if provided.
        # Corresponds to the JSON property `providerId`
        # @return [String]
        attr_accessor :provider_id
      
        # Whether the email identifier represents an existing account. Present only when
        # an email identifier is set in the request.
        # Corresponds to the JSON property `registered`
        # @return [Boolean]
        attr_accessor :registered
        alias_method :registered?, :registered
      
        # The session ID from the request, or a random string generated by CreateAuthUri
        # if absent. It is used to prevent session fixation attacks.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        # The list of sign-in methods that the user has previously used. Each element is
        # one of `password`, `emailLink`, or the provider ID of an IdP. Present only
        # when a registered email identifier is set in the request.
        # Corresponds to the JSON property `signinMethods`
        # @return [Array<String>]
        attr_accessor :signin_methods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_providers = args[:all_providers] if args.key?(:all_providers)
          @auth_uri = args[:auth_uri] if args.key?(:auth_uri)
          @captcha_required = args[:captcha_required] if args.key?(:captcha_required)
          @for_existing_provider = args[:for_existing_provider] if args.key?(:for_existing_provider)
          @kind = args[:kind] if args.key?(:kind)
          @provider_id = args[:provider_id] if args.key?(:provider_id)
          @registered = args[:registered] if args.key?(:registered)
          @session_id = args[:session_id] if args.key?(:session_id)
          @signin_methods = args[:signin_methods] if args.key?(:signin_methods)
        end
      end
      
      # Request message for CreateSessionCookie.
      class GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest
        include Google::Apis::Core::Hashable
      
        # Required. A valid Identity Platform ID token.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # The tenant ID of the Identity Platform tenant the account belongs to.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        # The number of seconds until the session cookie expires. Specify a duration in
        # seconds, between five minutes and fourteen days, inclusively.
        # Corresponds to the JSON property `validDuration`
        # @return [Fixnum]
        attr_accessor :valid_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id_token = args[:id_token] if args.key?(:id_token)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
          @valid_duration = args[:valid_duration] if args.key?(:valid_duration)
        end
      end
      
      # Response message for CreateSessionCookie.
      class GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse
        include Google::Apis::Core::Hashable
      
        # The session cookie that has been created from the Identity Platform ID token
        # specified in the request. It is in the form of a JSON Web Token (JWT). Always
        # present.
        # Corresponds to the JSON property `sessionCookie`
        # @return [String]
        attr_accessor :session_cookie
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session_cookie = args[:session_cookie] if args.key?(:session_cookie)
        end
      end
      
      # Request message for DeleteAccount.
      class GoogleCloudIdentitytoolkitV1DeleteAccountRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `delegatedProjectNumber`
        # @return [Fixnum]
        attr_accessor :delegated_project_number
      
        # The Identity Platform ID token of the account to delete. Require to be
        # specified for requests from end users that lack Google OAuth 2.0 credential.
        # Authenticated requests bearing a Google OAuth2 credential with proper
        # permissions may pass local_id to specify the account to delete alternatively.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # The ID of user account to delete. Specifying this field requires a Google
        # OAuth 2.0 credential with proper [permissions](https://cloud.google.com/
        # identity-platform/docs/access-control). Requests from users lacking the
        # credential should pass an ID token instead.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # The ID of the project which the account belongs to. Should only be specified
        # in authenticated requests that specify local_id of an account.
        # Corresponds to the JSON property `targetProjectId`
        # @return [String]
        attr_accessor :target_project_id
      
        # The ID of the tenant that the account belongs to, if applicable. Only require
        # to be specified for authenticated requests bearing a Google OAuth 2.0
        # credential that specify local_id of an account that belongs to an Identity
        # Platform tenant.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delegated_project_number = args[:delegated_project_number] if args.key?(:delegated_project_number)
          @id_token = args[:id_token] if args.key?(:id_token)
          @local_id = args[:local_id] if args.key?(:local_id)
          @target_project_id = args[:target_project_id] if args.key?(:target_project_id)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Response message for DeleteAccount.
      class GoogleCloudIdentitytoolkitV1DeleteAccountResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Response message for DownloadAccount.
      class GoogleCloudIdentitytoolkitV1DownloadAccountResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # If there are more accounts to be downloaded, a token that can be passed back
        # to DownloadAccount to get more accounts. Otherwise, this is blank.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # All accounts belonging to the project/tenant limited by max_results in the
        # request.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UserInfo>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # Email template
      class GoogleCloudIdentitytoolkitV1EmailTemplate
        include Google::Apis::Core::Hashable
      
        # Email body
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # Whether the body or subject of the email is customized.
        # Corresponds to the JSON property `customized`
        # @return [Boolean]
        attr_accessor :customized
        alias_method :customized?, :customized
      
        # Whether the template is disabled. If true, a default template will be used.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Email body format
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # From address of the email
        # Corresponds to the JSON property `from`
        # @return [String]
        attr_accessor :from
      
        # From display name
        # Corresponds to the JSON property `fromDisplayName`
        # @return [String]
        attr_accessor :from_display_name
      
        # Local part of From address
        # Corresponds to the JSON property `fromLocalPart`
        # @return [String]
        attr_accessor :from_local_part
      
        # Value is in III language code format (e.g. "zh-CN", "es"). Both '-' and '_'
        # separators are accepted.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Reply-to address
        # Corresponds to the JSON property `replyTo`
        # @return [String]
        attr_accessor :reply_to
      
        # Subject of the email
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @customized = args[:customized] if args.key?(:customized)
          @disabled = args[:disabled] if args.key?(:disabled)
          @format = args[:format] if args.key?(:format)
          @from = args[:from] if args.key?(:from)
          @from_display_name = args[:from_display_name] if args.key?(:from_display_name)
          @from_local_part = args[:from_local_part] if args.key?(:from_local_part)
          @locale = args[:locale] if args.key?(:locale)
          @reply_to = args[:reply_to] if args.key?(:reply_to)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # Error information explaining why an account cannot be uploaded. batch upload.
      class GoogleCloudIdentitytoolkitV1ErrorInfo
        include Google::Apis::Core::Hashable
      
        # The index of the item, range is [0, request.size - 1]
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Detailed error message
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index = args[:index] if args.key?(:index)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Federated user identifier at an Identity Provider.
      class GoogleCloudIdentitytoolkitV1FederatedUserIdentifier
        include Google::Apis::Core::Hashable
      
        # The ID of supported identity providers. This should be a provider ID enabled
        # for sign-in, which is either from the list of [default supported IdPs](https://
        # cloud.google.com/identity-platform/docs/reference/rest/v2/defaultSupportedIdps/
        # list), or of the format `oidc.*` or `saml.*`. Some examples are `google.com`, `
        # facebook.com`, `oidc.testapp`, and `saml.testapp`.
        # Corresponds to the JSON property `providerId`
        # @return [String]
        attr_accessor :provider_id
      
        # The user ID of the account at the third-party Identity Provider specified by `
        # provider_id`.
        # Corresponds to the JSON property `rawId`
        # @return [String]
        attr_accessor :raw_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @provider_id = args[:provider_id] if args.key?(:provider_id)
          @raw_id = args[:raw_id] if args.key?(:raw_id)
        end
      end
      
      # Request message for GetAccountInfo.
      class GoogleCloudIdentitytoolkitV1GetAccountInfoRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `delegatedProjectNumber`
        # @return [Fixnum]
        attr_accessor :delegated_project_number
      
        # The email address of one or more accounts to fetch. The length of email should
        # be less than 256 characters and in the format of `name@domain.tld`. The email
        # should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec
        # production. Should only be specified by authenticated requests from a
        # developer.
        # Corresponds to the JSON property `email`
        # @return [Array<String>]
        attr_accessor :email
      
        # The federated user identifier of one or more accounts to fetch. Should only be
        # specified by authenticated requests bearing a Google OAuth 2.0 credential with
        # proper [permissions](https://cloud.google.com/identity-platform/docs/access-
        # control).
        # Corresponds to the JSON property `federatedUserId`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1FederatedUserIdentifier>]
        attr_accessor :federated_user_id
      
        # The Identity Platform ID token of the account to fetch. Require to be
        # specified for requests from end users.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # The initial email of one or more accounts to fetch. The length of email should
        # be less than 256 characters and in the format of `name@domain.tld`. The email
        # should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec
        # production. Should only be specified by authenticated requests from a
        # developer.
        # Corresponds to the JSON property `initialEmail`
        # @return [Array<String>]
        attr_accessor :initial_email
      
        # The ID of one or more accounts to fetch. Should only be specified by
        # authenticated requests bearing a Google OAuth 2.0 credential with proper [
        # permissions](https://cloud.google.com/identity-platform/docs/access-control).
        # Corresponds to the JSON property `localId`
        # @return [Array<String>]
        attr_accessor :local_id
      
        # The phone number of one or more accounts to fetch. Should only be specified by
        # authenticated requests from a developer and should be in E.164 format, for
        # example, +15555555555.
        # Corresponds to the JSON property `phoneNumber`
        # @return [Array<String>]
        attr_accessor :phone_number
      
        # The ID of the Google Cloud project that the account or the Identity Platform
        # tenant specified by `tenant_id` belongs to. Should only be specified by
        # authenticated requests bearing a Google OAuth 2.0 credential with proper [
        # permissions](https://cloud.google.com/identity-platform/docs/access-control).
        # Corresponds to the JSON property `targetProjectId`
        # @return [String]
        attr_accessor :target_project_id
      
        # The ID of the tenant that the account belongs to. Should only be specified by
        # authenticated requests from a developer.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delegated_project_number = args[:delegated_project_number] if args.key?(:delegated_project_number)
          @email = args[:email] if args.key?(:email)
          @federated_user_id = args[:federated_user_id] if args.key?(:federated_user_id)
          @id_token = args[:id_token] if args.key?(:id_token)
          @initial_email = args[:initial_email] if args.key?(:initial_email)
          @local_id = args[:local_id] if args.key?(:local_id)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @target_project_id = args[:target_project_id] if args.key?(:target_project_id)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Response message for GetAccountInfo.
      class GoogleCloudIdentitytoolkitV1GetAccountInfoResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The information of specific user account(s) matching the parameters in the
        # request.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UserInfo>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # Request message for GetOobCode.
      class GoogleCloudIdentitytoolkitV1GetOobCodeRequest
        include Google::Apis::Core::Hashable
      
        # If an associated android app can handle the OOB code, whether or not to
        # install the android app on the device where the link is opened if the app is
        # not already installed.
        # Corresponds to the JSON property `androidInstallApp`
        # @return [Boolean]
        attr_accessor :android_install_app
        alias_method :android_install_app?, :android_install_app
      
        # If an associated android app can handle the OOB code, the minimum version of
        # the app. If the version on the device is lower than this version then the user
        # is taken to Google Play Store to upgrade the app.
        # Corresponds to the JSON property `androidMinimumVersion`
        # @return [String]
        attr_accessor :android_minimum_version
      
        # If an associated android app can handle the OOB code, the Android package name
        # of the android app that will handle the callback when this OOB code is used.
        # This will allow the correct app to open if it is already installed, or allow
        # Google Play Store to open to the correct app if it is not yet installed.
        # Corresponds to the JSON property `androidPackageName`
        # @return [String]
        attr_accessor :android_package_name
      
        # When set to true, the OOB code link will be be sent as a Universal Link or an
        # Android App Link and will be opened by the corresponding app if installed. If
        # not set, or set to false, the OOB code will be sent to the web widget first
        # and then on continue will redirect to the app if installed.
        # Corresponds to the JSON property `canHandleCodeInApp`
        # @return [Boolean]
        attr_accessor :can_handle_code_in_app
        alias_method :can_handle_code_in_app?, :can_handle_code_in_app
      
        # For a PASSWORD_RESET request, a reCaptcha response is required when the system
        # detects possible abuse activity. In those cases, this is the response from the
        # reCaptcha challenge used to verify the caller.
        # Corresponds to the JSON property `captchaResp`
        # @return [String]
        attr_accessor :captcha_resp
      
        # 
        # Corresponds to the JSON property `challenge`
        # @return [String]
        attr_accessor :challenge
      
        # The Url to continue after user clicks the link sent in email. This is the url
        # that will allow the web widget to handle the OOB code.
        # Corresponds to the JSON property `continueUrl`
        # @return [String]
        attr_accessor :continue_url
      
        # In order to ensure that the url used can be easily opened up in iOS or android,
        # we create a [Firebase Dynamic Link](https://firebase.google.com/docs/dynamic-
        # links). Most Identity Platform projects will only have one Dynamic Link domain
        # enabled, and can leave this field blank. This field contains a specified
        # Dynamic Link domain for projects that have multiple enabled.
        # Corresponds to the JSON property `dynamicLinkDomain`
        # @return [String]
        attr_accessor :dynamic_link_domain
      
        # The account's email address to send the OOB code to, and generally the email
        # address of the account that needs to be updated. Required for PASSWORD_RESET,
        # EMAIL_SIGNIN, and VERIFY_EMAIL. Only required for VERIFY_AND_CHANGE_EMAIL
        # requests when return_oob_link is set to true. In this case, it is the original
        # email of the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # If an associated iOS app can handle the OOB code, the App Store id of this app.
        # This will allow App Store to open to the correct app if the app is not yet
        # installed.
        # Corresponds to the JSON property `iOSAppStoreId`
        # @return [String]
        attr_accessor :i_os_app_store_id
      
        # If an associated iOS app can handle the OOB code, the iOS bundle id of this
        # app. This will allow the correct app to open if it is already installed.
        # Corresponds to the JSON property `iOSBundleId`
        # @return [String]
        attr_accessor :i_os_bundle_id
      
        # An ID token for the account. It is required for VERIFY_AND_CHANGE_EMAIL and
        # VERIFY_EMAIL requests unless return_oob_link is set to true.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # The email address the account is being updated to. Required only for
        # VERIFY_AND_CHANGE_EMAIL requests.
        # Corresponds to the JSON property `newEmail`
        # @return [String]
        attr_accessor :new_email
      
        # Required. The type of out-of-band (OOB) code to send. Depending on this value,
        # other fields in this request will be required and/or have different meanings.
        # There are 4 different OOB codes that can be sent: * PASSWORD_RESET *
        # EMAIL_SIGNIN * VERIFY_EMAIL * VERIFY_AND_CHANGE_EMAIL
        # Corresponds to the JSON property `requestType`
        # @return [String]
        attr_accessor :request_type
      
        # Whether the confirmation link containing the OOB code should be returned in
        # the response (no email is sent). Used when a developer wants to construct the
        # email template and send it on their own. By default this is false; to specify
        # this field, and to set it to true, it requires a Google OAuth 2.0 credential
        # with proper [permissions](https://cloud.google.com/identity-platform/docs/
        # access-control)
        # Corresponds to the JSON property `returnOobLink`
        # @return [Boolean]
        attr_accessor :return_oob_link
        alias_method :return_oob_link?, :return_oob_link
      
        # The Project ID of the Identity Platform project which the account belongs to.
        # To specify this field, it requires a Google OAuth 2.0 credential with proper [
        # permissions](https://cloud.google.com/identity-platform/docs/access-control).
        # Corresponds to the JSON property `targetProjectId`
        # @return [String]
        attr_accessor :target_project_id
      
        # The tenant ID of the Identity Platform tenant the account belongs to.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        # The IP address of the caller. Required only for PASSWORD_RESET requests.
        # Corresponds to the JSON property `userIp`
        # @return [String]
        attr_accessor :user_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_install_app = args[:android_install_app] if args.key?(:android_install_app)
          @android_minimum_version = args[:android_minimum_version] if args.key?(:android_minimum_version)
          @android_package_name = args[:android_package_name] if args.key?(:android_package_name)
          @can_handle_code_in_app = args[:can_handle_code_in_app] if args.key?(:can_handle_code_in_app)
          @captcha_resp = args[:captcha_resp] if args.key?(:captcha_resp)
          @challenge = args[:challenge] if args.key?(:challenge)
          @continue_url = args[:continue_url] if args.key?(:continue_url)
          @dynamic_link_domain = args[:dynamic_link_domain] if args.key?(:dynamic_link_domain)
          @email = args[:email] if args.key?(:email)
          @i_os_app_store_id = args[:i_os_app_store_id] if args.key?(:i_os_app_store_id)
          @i_os_bundle_id = args[:i_os_bundle_id] if args.key?(:i_os_bundle_id)
          @id_token = args[:id_token] if args.key?(:id_token)
          @new_email = args[:new_email] if args.key?(:new_email)
          @request_type = args[:request_type] if args.key?(:request_type)
          @return_oob_link = args[:return_oob_link] if args.key?(:return_oob_link)
          @target_project_id = args[:target_project_id] if args.key?(:target_project_id)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
          @user_ip = args[:user_ip] if args.key?(:user_ip)
        end
      end
      
      # Response message for GetOobCode.
      class GoogleCloudIdentitytoolkitV1GetOobCodeResponse
        include Google::Apis::Core::Hashable
      
        # If return_oob_link is false in the request, the email address the verification
        # was sent to.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # If return_oob_link is true in the request, the OOB code to send.
        # Corresponds to the JSON property `oobCode`
        # @return [String]
        attr_accessor :oob_code
      
        # If return_oob_link is true in the request, the OOB link to be sent to the user.
        # This returns the constructed link including [Firebase Dynamic Link](https://
        # firebase.google.com/docs/dynamic-links) related parameters.
        # Corresponds to the JSON property `oobLink`
        # @return [String]
        attr_accessor :oob_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @kind = args[:kind] if args.key?(:kind)
          @oob_code = args[:oob_code] if args.key?(:oob_code)
          @oob_link = args[:oob_link] if args.key?(:oob_link)
        end
      end
      
      # Response message for GetProjectConfig.
      class GoogleCloudIdentitytoolkitV1GetProjectConfigResponse
        include Google::Apis::Core::Hashable
      
        # Whether to allow password account sign up. This field is only returned for
        # authenticated calls from a developer.
        # Corresponds to the JSON property `allowPasswordUser`
        # @return [Boolean]
        attr_accessor :allow_password_user
        alias_method :allow_password_user?, :allow_password_user
      
        # Google Cloud API key. This field is only returned for authenticated calls from
        # a developer.
        # Corresponds to the JSON property `apiKey`
        # @return [String]
        attr_accessor :api_key
      
        # Authorized domains for widget redirect.
        # Corresponds to the JSON property `authorizedDomains`
        # @return [Array<String>]
        attr_accessor :authorized_domains
      
        # Email template
        # Corresponds to the JSON property `changeEmailTemplate`
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate]
        attr_accessor :change_email_template
      
        # The Firebase Dynamic Links domain used to construct links for redirects to
        # native apps.
        # Corresponds to the JSON property `dynamicLinksDomain`
        # @return [String]
        attr_accessor :dynamic_links_domain
      
        # Whether anonymous user is enabled. This field is only returned for
        # authenticated calls from a developer.
        # Corresponds to the JSON property `enableAnonymousUser`
        # @return [Boolean]
        attr_accessor :enable_anonymous_user
        alias_method :enable_anonymous_user?, :enable_anonymous_user
      
        # OAuth2 provider config. This field is only returned for authenticated calls
        # from a developer.
        # Corresponds to the JSON property `idpConfig`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1IdpConfig>]
        attr_accessor :idp_config
      
        # Email template
        # Corresponds to the JSON property `legacyResetPasswordTemplate`
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate]
        attr_accessor :legacy_reset_password_template
      
        # The project id of the retrieved configuration.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Email template
        # Corresponds to the JSON property `resetPasswordTemplate`
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate]
        attr_accessor :reset_password_template
      
        # Email template
        # Corresponds to the JSON property `revertSecondFactorAdditionTemplate`
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate]
        attr_accessor :revert_second_factor_addition_template
      
        # Whether to use email sending. This field is only returned for authenticated
        # calls from a developer.
        # Corresponds to the JSON property `useEmailSending`
        # @return [Boolean]
        attr_accessor :use_email_sending
        alias_method :use_email_sending?, :use_email_sending
      
        # Email template
        # Corresponds to the JSON property `verifyEmailTemplate`
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate]
        attr_accessor :verify_email_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_password_user = args[:allow_password_user] if args.key?(:allow_password_user)
          @api_key = args[:api_key] if args.key?(:api_key)
          @authorized_domains = args[:authorized_domains] if args.key?(:authorized_domains)
          @change_email_template = args[:change_email_template] if args.key?(:change_email_template)
          @dynamic_links_domain = args[:dynamic_links_domain] if args.key?(:dynamic_links_domain)
          @enable_anonymous_user = args[:enable_anonymous_user] if args.key?(:enable_anonymous_user)
          @idp_config = args[:idp_config] if args.key?(:idp_config)
          @legacy_reset_password_template = args[:legacy_reset_password_template] if args.key?(:legacy_reset_password_template)
          @project_id = args[:project_id] if args.key?(:project_id)
          @reset_password_template = args[:reset_password_template] if args.key?(:reset_password_template)
          @revert_second_factor_addition_template = args[:revert_second_factor_addition_template] if args.key?(:revert_second_factor_addition_template)
          @use_email_sending = args[:use_email_sending] if args.key?(:use_email_sending)
          @verify_email_template = args[:verify_email_template] if args.key?(:verify_email_template)
        end
      end
      
      # Response message for GetRecaptchaParam.
      class GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The producer project number used to generate PIA tokens
        # Corresponds to the JSON property `producerProjectNumber`
        # @return [String]
        attr_accessor :producer_project_number
      
        # The reCAPTCHA v2 site key used to invoke the reCAPTCHA service. Always present.
        # Corresponds to the JSON property `recaptchaSiteKey`
        # @return [String]
        attr_accessor :recaptcha_site_key
      
        # 
        # Corresponds to the JSON property `recaptchaStoken`
        # @return [String]
        attr_accessor :recaptcha_stoken
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @producer_project_number = args[:producer_project_number] if args.key?(:producer_project_number)
          @recaptcha_site_key = args[:recaptcha_site_key] if args.key?(:recaptcha_site_key)
          @recaptcha_stoken = args[:recaptcha_stoken] if args.key?(:recaptcha_stoken)
        end
      end
      
      # Response message for GetSessionCookiePublicKeys.
      class GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse
        include Google::Apis::Core::Hashable
      
        # Public keys of the session cookie signer, formatted as [JSON Web Keys (JWK)](
        # https://tools.ietf.org/html/rfc7517).
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1OpenIdConnectKey>]
        attr_accessor :keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
        end
      end
      
      # Config of an identity provider.
      class GoogleCloudIdentitytoolkitV1IdpConfig
        include Google::Apis::Core::Hashable
      
        # OAuth2 client ID.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # True if allows the user to sign in with the provider.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Percent of users who will be prompted/redirected federated login for this IdP
        # Corresponds to the JSON property `experimentPercent`
        # @return [Fixnum]
        attr_accessor :experiment_percent
      
        # Name of the identity provider.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # OAuth2 client secret.
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        # Whitelisted client IDs for audience check.
        # Corresponds to the JSON property `whitelistedAudiences`
        # @return [Array<String>]
        attr_accessor :whitelisted_audiences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @enabled = args[:enabled] if args.key?(:enabled)
          @experiment_percent = args[:experiment_percent] if args.key?(:experiment_percent)
          @provider = args[:provider] if args.key?(:provider)
          @secret = args[:secret] if args.key?(:secret)
          @whitelisted_audiences = args[:whitelisted_audiences] if args.key?(:whitelisted_audiences)
        end
      end
      
      # Request message for IssueSamlResponse.
      class GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest
        include Google::Apis::Core::Hashable
      
        # The Identity Platform ID token. It will be verified and then converted to a
        # new SAMLResponse.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Relying Party identifier, which is the audience of issued SAMLResponse.
        # Corresponds to the JSON property `rpId`
        # @return [String]
        attr_accessor :rp_id
      
        # SAML app entity id specified in Google Admin Console for each app. If
        # developers want to redirect to a third-party app rather than a G Suite app,
        # they'll probably they need this. When it's used, we'll return a RelayState.
        # This includes a SAMLRequest, which can be used to trigger a SP-initiated SAML
        # flow to redirect to the real app.
        # Corresponds to the JSON property `samlAppEntityId`
        # @return [String]
        attr_accessor :saml_app_entity_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id_token = args[:id_token] if args.key?(:id_token)
          @rp_id = args[:rp_id] if args.key?(:rp_id)
          @saml_app_entity_id = args[:saml_app_entity_id] if args.key?(:saml_app_entity_id)
        end
      end
      
      # Response for IssueSamlResponse request.
      class GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse
        include Google::Apis::Core::Hashable
      
        # The ACS endpoint which consumes the returned SAMLResponse.
        # Corresponds to the JSON property `acsEndpoint`
        # @return [String]
        attr_accessor :acs_endpoint
      
        # Email of the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # First name of the user.
        # Corresponds to the JSON property `firstName`
        # @return [String]
        attr_accessor :first_name
      
        # Whether the logged in user was created by this request.
        # Corresponds to the JSON property `isNewUser`
        # @return [Boolean]
        attr_accessor :is_new_user
        alias_method :is_new_user?, :is_new_user
      
        # Last name of the user.
        # Corresponds to the JSON property `lastName`
        # @return [String]
        attr_accessor :last_name
      
        # Generated RelayState.
        # Corresponds to the JSON property `relayState`
        # @return [String]
        attr_accessor :relay_state
      
        # Signed SAMLResponse created for the Relying Party.
        # Corresponds to the JSON property `samlResponse`
        # @return [String]
        attr_accessor :saml_response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acs_endpoint = args[:acs_endpoint] if args.key?(:acs_endpoint)
          @email = args[:email] if args.key?(:email)
          @first_name = args[:first_name] if args.key?(:first_name)
          @is_new_user = args[:is_new_user] if args.key?(:is_new_user)
          @last_name = args[:last_name] if args.key?(:last_name)
          @relay_state = args[:relay_state] if args.key?(:relay_state)
          @saml_response = args[:saml_response] if args.key?(:saml_response)
        end
      end
      
      # Information on which multi-factor authentication (MFA) providers are enabled
      # for an account.
      class GoogleCloudIdentitytoolkitV1MfaEnrollment
        include Google::Apis::Core::Hashable
      
        # Display name for this mfa option e.g. "corp cell phone".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Timestamp when the account enrolled this second factor.
        # Corresponds to the JSON property `enrolledAt`
        # @return [String]
        attr_accessor :enrolled_at
      
        # ID of this MFA option.
        # Corresponds to the JSON property `mfaEnrollmentId`
        # @return [String]
        attr_accessor :mfa_enrollment_id
      
        # Normally this will show the phone number associated with this enrollment. In
        # some situations, such as after a first factor sign in, it will only show the
        # obfuscated version of the associated phone number.
        # Corresponds to the JSON property `phoneInfo`
        # @return [String]
        attr_accessor :phone_info
      
        # Output only. Unobfuscated phone_info.
        # Corresponds to the JSON property `unobfuscatedPhoneInfo`
        # @return [String]
        attr_accessor :unobfuscated_phone_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enrolled_at = args[:enrolled_at] if args.key?(:enrolled_at)
          @mfa_enrollment_id = args[:mfa_enrollment_id] if args.key?(:mfa_enrollment_id)
          @phone_info = args[:phone_info] if args.key?(:phone_info)
          @unobfuscated_phone_info = args[:unobfuscated_phone_info] if args.key?(:unobfuscated_phone_info)
        end
      end
      
      # 
      class GoogleCloudIdentitytoolkitV1MfaFactor
        include Google::Apis::Core::Hashable
      
        # Display name for this mfa option e.g. "corp cell phone".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Phone number to receive OTP for MFA.
        # Corresponds to the JSON property `phoneInfo`
        # @return [String]
        attr_accessor :phone_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @phone_info = args[:phone_info] if args.key?(:phone_info)
        end
      end
      
      # Multi-factor authentication related information.
      class GoogleCloudIdentitytoolkitV1MfaInfo
        include Google::Apis::Core::Hashable
      
        # The second factors the user has enrolled.
        # Corresponds to the JSON property `enrollments`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment>]
        attr_accessor :enrollments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enrollments = args[:enrollments] if args.key?(:enrollments)
        end
      end
      
      # Represents a public key of the session cookie signer, formatted as a [JSON Web
      # Key (JWK)](https://tools.ietf.org/html/rfc7517).
      class GoogleCloudIdentitytoolkitV1OpenIdConnectKey
        include Google::Apis::Core::Hashable
      
        # Signature algorithm.
        # Corresponds to the JSON property `alg`
        # @return [String]
        attr_accessor :alg
      
        # Exponent for the RSA public key, it is represented as the base64url encoding
        # of the value's big endian representation.
        # Corresponds to the JSON property `e`
        # @return [String]
        attr_accessor :e
      
        # Unique string to identify this key.
        # Corresponds to the JSON property `kid`
        # @return [String]
        attr_accessor :kid
      
        # Key type.
        # Corresponds to the JSON property `kty`
        # @return [String]
        attr_accessor :kty
      
        # Modulus for the RSA public key, it is represented as the base64url encoding of
        # the value's big endian representation.
        # Corresponds to the JSON property `n`
        # @return [String]
        attr_accessor :n
      
        # Key use.
        # Corresponds to the JSON property `use`
        # @return [String]
        attr_accessor :use
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alg = args[:alg] if args.key?(:alg)
          @e = args[:e] if args.key?(:e)
          @kid = args[:kid] if args.key?(:kid)
          @kty = args[:kty] if args.key?(:kty)
          @n = args[:n] if args.key?(:n)
          @use = args[:use] if args.key?(:use)
        end
      end
      
      # Information about the user as provided by various Identity Providers.
      class GoogleCloudIdentitytoolkitV1ProviderUserInfo
        include Google::Apis::Core::Hashable
      
        # The user's display name at the Identity Provider.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The user's email address at the Identity Provider.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The user's identifier at the Identity Provider.
        # Corresponds to the JSON property `federatedId`
        # @return [String]
        attr_accessor :federated_id
      
        # The user's phone number at the Identity Provider.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The user's profile photo URL at the Identity Provider.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # The ID of the Identity Provider.
        # Corresponds to the JSON property `providerId`
        # @return [String]
        attr_accessor :provider_id
      
        # The user's raw identifier directly returned from Identity Provider.
        # Corresponds to the JSON property `rawId`
        # @return [String]
        attr_accessor :raw_id
      
        # The user's screen_name at Twitter or login name at GitHub.
        # Corresponds to the JSON property `screenName`
        # @return [String]
        attr_accessor :screen_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @federated_id = args[:federated_id] if args.key?(:federated_id)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
          @provider_id = args[:provider_id] if args.key?(:provider_id)
          @raw_id = args[:raw_id] if args.key?(:raw_id)
          @screen_name = args[:screen_name] if args.key?(:screen_name)
        end
      end
      
      # Request message for QueryUserInfo.
      class GoogleCloudIdentitytoolkitV1QueryUserInfoRequest
        include Google::Apis::Core::Hashable
      
        # Query conditions used to filter results. If more than one is passed, only the
        # first SqlExpression is evaluated.
        # Corresponds to the JSON property `expression`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SqlExpression>]
        attr_accessor :expression
      
        # The maximum number of accounts to return with an upper limit of __500__.
        # Defaults to _500_. Only valid when `return_user_info` is set to `true`.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # The number of accounts to skip from the beginning of matching records. Only
        # valid when `return_user_info` is set to `true`.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The order for sorting query result. Defaults to __ascending__ order. Only
        # valid when `return_user_info` is set to `true`.
        # Corresponds to the JSON property `order`
        # @return [String]
        attr_accessor :order
      
        # If `true`, this request will return the accounts matching the query. If `false`
        # , only the __count__ of accounts matching the query will be returned. Defaults
        # to `true`.
        # Corresponds to the JSON property `returnUserInfo`
        # @return [Boolean]
        attr_accessor :return_user_info
        alias_method :return_user_info?, :return_user_info
      
        # The field to use for sorting user accounts. Defaults to `USER_ID`. Note: when `
        # phone_number` is specified in `expression`, the result ignores the sorting.
        # Only valid when `return_user_info` is set to `true`.
        # Corresponds to the JSON property `sortBy`
        # @return [String]
        attr_accessor :sort_by
      
        # The ID of the tenant to which the result is scoped.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expression = args[:expression] if args.key?(:expression)
          @limit = args[:limit] if args.key?(:limit)
          @offset = args[:offset] if args.key?(:offset)
          @order = args[:order] if args.key?(:order)
          @return_user_info = args[:return_user_info] if args.key?(:return_user_info)
          @sort_by = args[:sort_by] if args.key?(:sort_by)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Response message for QueryUserInfo.
      class GoogleCloudIdentitytoolkitV1QueryUserInfoResponse
        include Google::Apis::Core::Hashable
      
        # If `return_user_info` in the request is true, this is the number of returned
        # accounts in this message. Otherwise, this is the total number of accounts
        # matching the query.
        # Corresponds to the JSON property `recordsCount`
        # @return [Fixnum]
        attr_accessor :records_count
      
        # If `return_user_info` in the request is true, this is the accounts matching
        # the query.
        # Corresponds to the JSON property `userInfo`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UserInfo>]
        attr_accessor :user_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @records_count = args[:records_count] if args.key?(:records_count)
          @user_info = args[:user_info] if args.key?(:user_info)
        end
      end
      
      # Request message for ResetPassword.
      class GoogleCloudIdentitytoolkitV1ResetPasswordRequest
        include Google::Apis::Core::Hashable
      
        # The email of the account to be modified. Specify this and the old password in
        # order to change an account's password without using an out-of-band code.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The new password to be set for this account. Specifying this field will result
        # in a change to the account and consume the out-of-band code if one was
        # specified and it was of type PASSWORD_RESET.
        # Corresponds to the JSON property `newPassword`
        # @return [String]
        attr_accessor :new_password
      
        # The current password of the account to be modified. Specify this and email to
        # change an account's password without using an out-of-band code.
        # Corresponds to the JSON property `oldPassword`
        # @return [String]
        attr_accessor :old_password
      
        # An out-of-band (OOB) code generated by GetOobCode request. Specify only this
        # parameter (or only this parameter and a tenant ID) to get the out-of-band code'
        # s type in the response without mutating the account's state. Only a
        # PASSWORD_RESET out-of-band code can be consumed via this method.
        # Corresponds to the JSON property `oobCode`
        # @return [String]
        attr_accessor :oob_code
      
        # The tenant ID of the Identity Platform tenant the account belongs to.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @new_password = args[:new_password] if args.key?(:new_password)
          @old_password = args[:old_password] if args.key?(:old_password)
          @oob_code = args[:oob_code] if args.key?(:oob_code)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Response message for ResetPassword.
      class GoogleCloudIdentitytoolkitV1ResetPasswordResponse
        include Google::Apis::Core::Hashable
      
        # The email associated with the out-of-band code that was used.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Information on which multi-factor authentication (MFA) providers are enabled
        # for an account.
        # Corresponds to the JSON property `mfaInfo`
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment]
        attr_accessor :mfa_info
      
        # 
        # Corresponds to the JSON property `newEmail`
        # @return [String]
        attr_accessor :new_email
      
        # 
        # Corresponds to the JSON property `requestType`
        # @return [String]
        attr_accessor :request_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @kind = args[:kind] if args.key?(:kind)
          @mfa_info = args[:mfa_info] if args.key?(:mfa_info)
          @new_email = args[:new_email] if args.key?(:new_email)
          @request_type = args[:request_type] if args.key?(:request_type)
        end
      end
      
      # Request message for SendVerificationCode. At least one of (`ios_receipt` and `
      # ios_secret`), `recaptcha_token`, or `safety_net_token` must be specified to
      # verify the verification code is being sent on behalf of a real app and not an
      # emulator.
      class GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest
        include Google::Apis::Core::Hashable
      
        # The information required to auto-retrieve an SMS.
        # Corresponds to the JSON property `autoRetrievalInfo`
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1AutoRetrievalInfo]
        attr_accessor :auto_retrieval_info
      
        # Receipt of successful iOS app token validation. At least one of (`ios_receipt`
        # and `ios_secret`), `recaptcha_token`, or `safety_net_token` must be specified
        # to verify the verification code is being sent on behalf of a real app and not
        # an emulator. This should come from the response of verifyIosClient. If present,
        # the caller should also provide the `ios_secret`, as well as a bundle ID in
        # the `x-ios-bundle-identifier` header, which must match the bundle ID from the
        # verifyIosClient request.
        # Corresponds to the JSON property `iosReceipt`
        # @return [String]
        attr_accessor :ios_receipt
      
        # Secret delivered to iOS app as a push notification. Should be passed with an `
        # ios_receipt` as well as the `x-ios-bundle-identifier` header.
        # Corresponds to the JSON property `iosSecret`
        # @return [String]
        attr_accessor :ios_secret
      
        # The phone number to send the verification code to in E.164 format.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Recaptcha token for app verification. At least one of (`ios_receipt` and `
        # ios_secret`), `recaptcha_token`, or `safety_net_token` must be specified to
        # verify the verification code is being sent on behalf of a real app and not an
        # emulator. The recaptcha should be generated by calling getRecaptchaParams and
        # the recaptcha token will be generated on user completion of the recaptcha
        # challenge.
        # Corresponds to the JSON property `recaptchaToken`
        # @return [String]
        attr_accessor :recaptcha_token
      
        # Android only. Used to assert application identity in place of a recaptcha
        # token. At least one of (`ios_receipt` and `ios_secret`), `recaptcha_token`, or
        # `safety_net_token` must be specified to verify the verification code is being
        # sent on behalf of a real app and not an emulator. A SafetyNet Token can be
        # generated via the [SafetyNet Android Attestation API](https://developer.
        # android.com/training/safetynet/attestation.html), with the Base64 encoding of
        # the `phone_number` field as the nonce.
        # Corresponds to the JSON property `safetyNetToken`
        # @return [String]
        attr_accessor :safety_net_token
      
        # Tenant ID of the Identity Platform tenant the user is signing in to.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_retrieval_info = args[:auto_retrieval_info] if args.key?(:auto_retrieval_info)
          @ios_receipt = args[:ios_receipt] if args.key?(:ios_receipt)
          @ios_secret = args[:ios_secret] if args.key?(:ios_secret)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @recaptcha_token = args[:recaptcha_token] if args.key?(:recaptcha_token)
          @safety_net_token = args[:safety_net_token] if args.key?(:safety_net_token)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Response message for SendVerificationCode.
      class GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse
        include Google::Apis::Core::Hashable
      
        # Encrypted session information. This can be used in signInWithPhoneNumber to
        # authenticate the phone number.
        # Corresponds to the JSON property `sessionInfo`
        # @return [String]
        attr_accessor :session_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @session_info = args[:session_info] if args.key?(:session_info)
        end
      end
      
      # Request message for SetAccountInfo.
      class GoogleCloudIdentitytoolkitV1SetAccountInfoRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `captchaChallenge`
        # @return [String]
        attr_accessor :captcha_challenge
      
        # The response from reCaptcha challenge. This is required when the system
        # detects possible abuse activities.
        # Corresponds to the JSON property `captchaResponse`
        # @return [String]
        attr_accessor :captcha_response
      
        # The timestamp in milliseconds when the account was created.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # JSON formatted custom attributes to be stored in the Identity Platform ID
        # token. Specifying this field requires a Google OAuth 2.0 credential with
        # proper [permissions] (https://cloud.google.com/identity-platform/docs/access-
        # control).
        # Corresponds to the JSON property `customAttributes`
        # @return [String]
        attr_accessor :custom_attributes
      
        # 
        # Corresponds to the JSON property `delegatedProjectNumber`
        # @return [Fixnum]
        attr_accessor :delegated_project_number
      
        # The account's attributes to be deleted.
        # Corresponds to the JSON property `deleteAttribute`
        # @return [Array<String>]
        attr_accessor :delete_attribute
      
        # The Identity Providers to unlink from the user's account.
        # Corresponds to the JSON property `deleteProvider`
        # @return [Array<String>]
        attr_accessor :delete_provider
      
        # If true, marks the account as disabled, meaning the user will no longer be
        # able to sign-in.
        # Corresponds to the JSON property `disableUser`
        # @return [Boolean]
        attr_accessor :disable_user
        alias_method :disable_user?, :disable_user
      
        # The user's new display name to be updated in the account's attributes. The
        # length of the display name must be less than or equal to 256 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The user's new email to be updated in the account's attributes. The length of
        # email should be less than 256 characters and in the format of `name@domain.tld`
        # . The email should also match the [RFC 822](https://tools.ietf.org/html/rfc822)
        # addr-spec production.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Whether the user's email has been verified. Specifying this field requires a
        # Google OAuth 2.0 credential with proper [permissions] (https://cloud.google.
        # com/identity-platform/docs/access-control).
        # Corresponds to the JSON property `emailVerified`
        # @return [Boolean]
        attr_accessor :email_verified
        alias_method :email_verified?, :email_verified
      
        # A valid Identity Platform ID token. Required when attempting to change user-
        # related information.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # 
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # The timestamp in milliseconds when the account last logged in.
        # Corresponds to the JSON property `lastLoginAt`
        # @return [Fixnum]
        attr_accessor :last_login_at
      
        # Information about the user as provided by various Identity Providers.
        # Corresponds to the JSON property `linkProviderUserInfo`
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ProviderUserInfo]
        attr_accessor :link_provider_user_info
      
        # The ID of the user. Specifying this field requires a Google OAuth 2.0
        # credential with proper [permissions] (https://cloud.google.com/identity-
        # platform/docs/access-control). For requests from end-users, an ID token should
        # be passed instead.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # Multi-factor authentication related information.
        # Corresponds to the JSON property `mfa`
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaInfo]
        attr_accessor :mfa
      
        # The out-of-band code to be applied on the user's account. The following out-of-
        # band code types are supported: * VERIFY_EMAIL * RECOVER_EMAIL *
        # REVERT_SECOND_FACTOR_ADDITION * VERIFY_AND_CHANGE_EMAIL
        # Corresponds to the JSON property `oobCode`
        # @return [String]
        attr_accessor :oob_code
      
        # The user's new password to be updated in the account's attributes. The
        # password must be at least 6 characters long.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The phone number to be updated in the account's attributes.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The user's new photo URL for the account's profile photo to be updated in the
        # account's attributes. The length of the URL must be less than or equal to 2048
        # characters.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # The Identity Providers that the account should be associated with.
        # Corresponds to the JSON property `provider`
        # @return [Array<String>]
        attr_accessor :provider
      
        # Whether or not to return an ID and refresh token. Should always be true.
        # Corresponds to the JSON property `returnSecureToken`
        # @return [Boolean]
        attr_accessor :return_secure_token
        alias_method :return_secure_token?, :return_secure_token
      
        # The project ID for the project that the account belongs to. Specifying this
        # field requires Google OAuth 2.0 credential with proper [permissions] (https://
        # cloud.google.com/identity-platform/docs/access-control). Requests from end
        # users should pass an Identity Platform ID token instead.
        # Corresponds to the JSON property `targetProjectId`
        # @return [String]
        attr_accessor :target_project_id
      
        # The tenant ID of the Identity Platform tenant that the account belongs to.
        # Requests from end users should pass an Identity Platform ID token rather than
        # setting this field.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        # Whether the account should be restricted to only using federated login.
        # Corresponds to the JSON property `upgradeToFederatedLogin`
        # @return [Boolean]
        attr_accessor :upgrade_to_federated_login
        alias_method :upgrade_to_federated_login?, :upgrade_to_federated_login
      
        # Specifies the minimum timestamp in seconds for an Identity Platform ID token
        # to be considered valid.
        # Corresponds to the JSON property `validSince`
        # @return [Fixnum]
        attr_accessor :valid_since
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @captcha_challenge = args[:captcha_challenge] if args.key?(:captcha_challenge)
          @captcha_response = args[:captcha_response] if args.key?(:captcha_response)
          @created_at = args[:created_at] if args.key?(:created_at)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @delegated_project_number = args[:delegated_project_number] if args.key?(:delegated_project_number)
          @delete_attribute = args[:delete_attribute] if args.key?(:delete_attribute)
          @delete_provider = args[:delete_provider] if args.key?(:delete_provider)
          @disable_user = args[:disable_user] if args.key?(:disable_user)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @email_verified = args[:email_verified] if args.key?(:email_verified)
          @id_token = args[:id_token] if args.key?(:id_token)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @last_login_at = args[:last_login_at] if args.key?(:last_login_at)
          @link_provider_user_info = args[:link_provider_user_info] if args.key?(:link_provider_user_info)
          @local_id = args[:local_id] if args.key?(:local_id)
          @mfa = args[:mfa] if args.key?(:mfa)
          @oob_code = args[:oob_code] if args.key?(:oob_code)
          @password = args[:password] if args.key?(:password)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
          @provider = args[:provider] if args.key?(:provider)
          @return_secure_token = args[:return_secure_token] if args.key?(:return_secure_token)
          @target_project_id = args[:target_project_id] if args.key?(:target_project_id)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
          @upgrade_to_federated_login = args[:upgrade_to_federated_login] if args.key?(:upgrade_to_federated_login)
          @valid_since = args[:valid_since] if args.key?(:valid_since)
        end
      end
      
      # Response message for SetAccountInfo
      class GoogleCloudIdentitytoolkitV1SetAccountInfoResponse
        include Google::Apis::Core::Hashable
      
        # The account's display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The account's email address.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Whether the account's email has been verified.
        # Corresponds to the JSON property `emailVerified`
        # @return [Boolean]
        attr_accessor :email_verified
        alias_method :email_verified?, :email_verified
      
        # The number of seconds until the Identity Platform ID token expires.
        # Corresponds to the JSON property `expiresIn`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # An Identity Platform ID token for the account. This is used for legacy user
        # sign up.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the authenticated user.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # The new email that has been set on the user's account attributes.
        # Corresponds to the JSON property `newEmail`
        # @return [String]
        attr_accessor :new_email
      
        # Deprecated. No actual password hash is currently returned.
        # Corresponds to the JSON property `passwordHash`
        # @return [String]
        attr_accessor :password_hash
      
        # The user's photo URL for the account's profile photo.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # The linked Identity Providers on the account.
        # Corresponds to the JSON property `providerUserInfo`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ProviderUserInfo>]
        attr_accessor :provider_user_info
      
        # A refresh token for the account. This is used for legacy user sign up.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @email_verified = args[:email_verified] if args.key?(:email_verified)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @id_token = args[:id_token] if args.key?(:id_token)
          @kind = args[:kind] if args.key?(:kind)
          @local_id = args[:local_id] if args.key?(:local_id)
          @new_email = args[:new_email] if args.key?(:new_email)
          @password_hash = args[:password_hash] if args.key?(:password_hash)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
          @provider_user_info = args[:provider_user_info] if args.key?(:provider_user_info)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
        end
      end
      
      # Request message for SignInWithCustomToken.
      class GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `delegatedProjectNumber`
        # @return [Fixnum]
        attr_accessor :delegated_project_number
      
        # 
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # Should always be true.
        # Corresponds to the JSON property `returnSecureToken`
        # @return [Boolean]
        attr_accessor :return_secure_token
        alias_method :return_secure_token?, :return_secure_token
      
        # The ID of the Identity Platform tenant the user is signing in to. If present,
        # the ID should match the tenant_id in the token.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        # Required. The custom Auth token asserted by the developer. The token should be
        # a [JSON Web Token (JWT)](https://tools.ietf.org/html/rfc7519) that includes
        # the claims listed in the [API reference](https://cloud.google.com/identity-
        # platform/docs/reference/rest/client/) under the "Custom Token Claims" section.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delegated_project_number = args[:delegated_project_number] if args.key?(:delegated_project_number)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @return_secure_token = args[:return_secure_token] if args.key?(:return_secure_token)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Response message for SignInWithCustomToken.
      class GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse
        include Google::Apis::Core::Hashable
      
        # The number of seconds until the ID token expires.
        # Corresponds to the JSON property `expiresIn`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # An Identity Platform ID token for the authenticated user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Whether the authenticated user was created by this request.
        # Corresponds to the JSON property `isNewUser`
        # @return [Boolean]
        attr_accessor :is_new_user
        alias_method :is_new_user?, :is_new_user
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An Identity Platform refresh token for the authenticated user.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @id_token = args[:id_token] if args.key?(:id_token)
          @is_new_user = args[:is_new_user] if args.key?(:is_new_user)
          @kind = args[:kind] if args.key?(:kind)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
        end
      end
      
      # Request message for SignInWithEmailLink
      class GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest
        include Google::Apis::Core::Hashable
      
        # Required. The email address the sign-in link was sent to. The length of email
        # should be less than 256 characters and in the format of `name@domain.tld`. The
        # email should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-
        # spec production.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # A valid ID token for an Identity Platform account. If passed, this request
        # will link the email address to the user represented by this ID token and
        # enable sign-in with email link on the account for the future.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Required. The out-of-band code from the email link.
        # Corresponds to the JSON property `oobCode`
        # @return [String]
        attr_accessor :oob_code
      
        # The ID of the Identity Platform tenant the user is signing in to. If not set,
        # the user will sign in to the default Identity Platform project.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @id_token = args[:id_token] if args.key?(:id_token)
          @oob_code = args[:oob_code] if args.key?(:oob_code)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Response message for SignInWithEmailLink.
      class GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse
        include Google::Apis::Core::Hashable
      
        # The email the user signed in with. Always present in the response.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The number of seconds until the ID token expires.
        # Corresponds to the JSON property `expiresIn`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # An Identity Platform ID token for the authenticated user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Whether the authenticated user was created by this request.
        # Corresponds to the JSON property `isNewUser`
        # @return [Boolean]
        attr_accessor :is_new_user
        alias_method :is_new_user?, :is_new_user
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the authenticated user. Always present in the response.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # Info on which multi-factor authentication providers are enabled. Present if
        # the user needs to complete the sign-in using multi-factor authentication.
        # Corresponds to the JSON property `mfaInfo`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment>]
        attr_accessor :mfa_info
      
        # An opaque string that functions as proof that the user has successfully passed
        # the first factor check.
        # Corresponds to the JSON property `mfaPendingCredential`
        # @return [String]
        attr_accessor :mfa_pending_credential
      
        # Refresh token for the authenticated user.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @id_token = args[:id_token] if args.key?(:id_token)
          @is_new_user = args[:is_new_user] if args.key?(:is_new_user)
          @kind = args[:kind] if args.key?(:kind)
          @local_id = args[:local_id] if args.key?(:local_id)
          @mfa_info = args[:mfa_info] if args.key?(:mfa_info)
          @mfa_pending_credential = args[:mfa_pending_credential] if args.key?(:mfa_pending_credential)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
        end
      end
      
      # Request message for SignInWithGameCenter
      class GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest
        include Google::Apis::Core::Hashable
      
        # The user's Game Center display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The user's Game Center game player ID. A unique identifier for a player of the
        # game. https://developer.apple.com/documentation/gamekit/gkplayer/3113960-
        # gameplayerid
        # Corresponds to the JSON property `gamePlayerId`
        # @return [String]
        attr_accessor :game_player_id
      
        # A valid ID token for an Identity Platform account. If present, this request
        # will link the Game Center player ID to the account represented by this ID
        # token.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Required. The user's Game Center player ID.
        # Corresponds to the JSON property `playerId`
        # @return [String]
        attr_accessor :player_id
      
        # Required. The URL to fetch the Apple public key in order to verify the given
        # signature is signed by Apple.
        # Corresponds to the JSON property `publicKeyUrl`
        # @return [String]
        attr_accessor :public_key_url
      
        # Required. A random string used to generate the given signature.
        # Corresponds to the JSON property `salt`
        # @return [String]
        attr_accessor :salt
      
        # Required. The verification signature data generated by Apple.
        # Corresponds to the JSON property `signature`
        # @return [String]
        attr_accessor :signature
      
        # The user's Game Center team player ID. A unique identifier for a player of all
        # the games that you distribute using your developer account. https://developer.
        # apple.com/documentation/gamekit/gkplayer/3174857-teamplayerid
        # Corresponds to the JSON property `teamPlayerId`
        # @return [String]
        attr_accessor :team_player_id
      
        # The ID of the Identity Platform tenant the user is signing in to.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        # Required. The time when the signature was created by Apple, in milliseconds
        # since the epoch.
        # Corresponds to the JSON property `timestamp`
        # @return [Fixnum]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @game_player_id = args[:game_player_id] if args.key?(:game_player_id)
          @id_token = args[:id_token] if args.key?(:id_token)
          @player_id = args[:player_id] if args.key?(:player_id)
          @public_key_url = args[:public_key_url] if args.key?(:public_key_url)
          @salt = args[:salt] if args.key?(:salt)
          @signature = args[:signature] if args.key?(:signature)
          @team_player_id = args[:team_player_id] if args.key?(:team_player_id)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # Response message for SignInWithGameCenter
      class GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse
        include Google::Apis::Core::Hashable
      
        # Display name of the authenticated user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The number of seconds until the ID token expires.
        # Corresponds to the JSON property `expiresIn`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # The user's Game Center game player ID. A unique identifier for a player of the
        # game. https://developer.apple.com/documentation/gamekit/gkplayer/3113960-
        # gameplayerid
        # Corresponds to the JSON property `gamePlayerId`
        # @return [String]
        attr_accessor :game_player_id
      
        # An Identity Platform ID token for the authenticated user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Whether the logged in user was created by this request.
        # Corresponds to the JSON property `isNewUser`
        # @return [Boolean]
        attr_accessor :is_new_user
        alias_method :is_new_user?, :is_new_user
      
        # The ID of the authenticated user. Always present in the response.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # The user's Game Center player ID.
        # Corresponds to the JSON property `playerId`
        # @return [String]
        attr_accessor :player_id
      
        # An Identity Platform refresh token for the authenticated user.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        # The user's Game Center team player ID. A unique identifier for a player of all
        # the games that you distribute using your developer account. https://developer.
        # apple.com/documentation/gamekit/gkplayer/3174857-teamplayerid
        # Corresponds to the JSON property `teamPlayerId`
        # @return [String]
        attr_accessor :team_player_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @game_player_id = args[:game_player_id] if args.key?(:game_player_id)
          @id_token = args[:id_token] if args.key?(:id_token)
          @is_new_user = args[:is_new_user] if args.key?(:is_new_user)
          @local_id = args[:local_id] if args.key?(:local_id)
          @player_id = args[:player_id] if args.key?(:player_id)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
          @team_player_id = args[:team_player_id] if args.key?(:team_player_id)
        end
      end
      
      # Request message for SignInWithIdp.
      class GoogleCloudIdentitytoolkitV1SignInWithIdpRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `autoCreate`
        # @return [Boolean]
        attr_accessor :auto_create
        alias_method :auto_create?, :auto_create
      
        # 
        # Corresponds to the JSON property `delegatedProjectNumber`
        # @return [Fixnum]
        attr_accessor :delegated_project_number
      
        # A valid Identity Platform ID token. If passed, the user's account at the IdP
        # will be linked to the account represented by this ID token.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # 
        # Corresponds to the JSON property `pendingIdToken`
        # @return [String]
        attr_accessor :pending_id_token
      
        # An opaque string from a previous SignInWithIdp response. If set, it can be
        # used to repeat the sign-in operation from the previous SignInWithIdp operation.
        # Corresponds to the JSON property `pendingToken`
        # @return [String]
        attr_accessor :pending_token
      
        # If the user is signing in with an authorization response obtained via a
        # previous CreateAuthUri authorization request, this is the body of the HTTP
        # POST callback from the IdP, if present. Otherwise, if the user is signing in
        # with a manually provided IdP credential, this should be a URL-encoded form
        # that contains the credential (e.g. an ID token or access token for OAuth 2.0
        # IdPs) and the provider ID of the IdP that issued the credential. For example,
        # if the user is signing in to the Google provider using a Google ID token, this
        # should be set to `id_token=[GOOGLE_ID_TOKEN]&providerId=google.com`, where `[
        # GOOGLE_ID_TOKEN]` should be replaced with the Google ID token. If the user is
        # signing in to the Facebook provider using a Facebook authentication token,
        # this should be set to `id_token=[FACEBOOK_AUTHENTICATION_TOKEN]&providerId=
        # facebook.com&nonce= [NONCE]`, where `[FACEBOOK_AUTHENTICATION_TOKEN]` should
        # be replaced with the Facebook authentication token. Nonce is required for
        # validating the token. The request will fail if no nonce is provided. If the
        # user is signing in to the Facebook provider using a Facebook access token,
        # this should be set to `access_token=[FACEBOOK_ACCESS_TOKEN]&providerId=
        # facebook.com`, where `[FACEBOOK_ACCESS_TOKEN]` should be replaced with the
        # Facebook access token. If the user is signing in to the Twitter provider using
        # a Twitter OAuth 1.0 credential, this should be set to `access_token=[
        # TWITTER_ACCESS_TOKEN]&oauth_token_secret=[TWITTER_TOKEN_SECRET]&providerId=
        # twitter.com`, where `[TWITTER_ACCESS_TOKEN]` and `[TWITTER_TOKEN_SECRET]`
        # should be replaced with the Twitter OAuth access token and Twitter OAuth token
        # secret respectively.
        # Corresponds to the JSON property `postBody`
        # @return [String]
        attr_accessor :post_body
      
        # Required. The URL to which the IdP redirects the user back. This can be set to
        # `http://localhost` if the user is signing in with a manually provided IdP
        # credential.
        # Corresponds to the JSON property `requestUri`
        # @return [String]
        attr_accessor :request_uri
      
        # Whether or not to return OAuth credentials from the IdP on the following
        # errors: `FEDERATED_USER_ID_ALREADY_LINKED` and `EMAIL_EXISTS`.
        # Corresponds to the JSON property `returnIdpCredential`
        # @return [Boolean]
        attr_accessor :return_idp_credential
        alias_method :return_idp_credential?, :return_idp_credential
      
        # Whether or not to return the OAuth refresh token from the IdP, if available.
        # Corresponds to the JSON property `returnRefreshToken`
        # @return [Boolean]
        attr_accessor :return_refresh_token
        alias_method :return_refresh_token?, :return_refresh_token
      
        # Should always be true.
        # Corresponds to the JSON property `returnSecureToken`
        # @return [Boolean]
        attr_accessor :return_secure_token
        alias_method :return_secure_token?, :return_secure_token
      
        # The session ID returned from a previous CreateAuthUri call. This field is
        # verified against that session ID to prevent session fixation attacks. Required
        # if the user is signing in with an authorization response from a previous
        # CreateAuthUri authorization request.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        # The ID of the Identity Platform tenant the user is signing in to. If not set,
        # the user will sign in to the default Identity Platform project.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_create = args[:auto_create] if args.key?(:auto_create)
          @delegated_project_number = args[:delegated_project_number] if args.key?(:delegated_project_number)
          @id_token = args[:id_token] if args.key?(:id_token)
          @pending_id_token = args[:pending_id_token] if args.key?(:pending_id_token)
          @pending_token = args[:pending_token] if args.key?(:pending_token)
          @post_body = args[:post_body] if args.key?(:post_body)
          @request_uri = args[:request_uri] if args.key?(:request_uri)
          @return_idp_credential = args[:return_idp_credential] if args.key?(:return_idp_credential)
          @return_refresh_token = args[:return_refresh_token] if args.key?(:return_refresh_token)
          @return_secure_token = args[:return_secure_token] if args.key?(:return_secure_token)
          @session_id = args[:session_id] if args.key?(:session_id)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Response message for SignInWithIdp.
      class GoogleCloudIdentitytoolkitV1SignInWithIdpResponse
        include Google::Apis::Core::Hashable
      
        # The opaque string set in CreateAuthUri that is used to maintain contextual
        # information between the authentication request and the callback from the IdP.
        # Corresponds to the JSON property `context`
        # @return [String]
        attr_accessor :context
      
        # The date of birth for the user's account at the IdP.
        # Corresponds to the JSON property `dateOfBirth`
        # @return [String]
        attr_accessor :date_of_birth
      
        # The display name for the user's account at the IdP.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email address of the user's account at the IdP.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Whether or not there is an existing Identity Platform user account with the
        # same email address but linked to a different account at the same IdP. Only
        # present if the "One account per email address" setting is enabled and the
        # email address at the IdP is verified.
        # Corresponds to the JSON property `emailRecycled`
        # @return [Boolean]
        attr_accessor :email_recycled
        alias_method :email_recycled?, :email_recycled
      
        # Whether the user account's email address is verified.
        # Corresponds to the JSON property `emailVerified`
        # @return [Boolean]
        attr_accessor :email_verified
        alias_method :email_verified?, :email_verified
      
        # The error message returned if `return_idp_credential` is set to `true` and
        # either the `FEDERATED_USER_ID_ALREADY_LINKED` or `EMAIL_EXISTS` error is
        # encountered. This field's value is either `FEDERATED_USER_ID_ALREADY_LINKED`
        # or `EMAIL_EXISTS`.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # The number of seconds until the Identity Platform ID token expires.
        # Corresponds to the JSON property `expiresIn`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # The user's account ID at the IdP. Always present in the response.
        # Corresponds to the JSON property `federatedId`
        # @return [String]
        attr_accessor :federated_id
      
        # The first name for the user's account at the IdP.
        # Corresponds to the JSON property `firstName`
        # @return [String]
        attr_accessor :first_name
      
        # The full name for the user's account at the IdP.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # An Identity Platform ID token for the authenticated user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # 
        # Corresponds to the JSON property `inputEmail`
        # @return [String]
        attr_accessor :input_email
      
        # Whether or not a new Identity Platform account was created for the
        # authenticated user.
        # Corresponds to the JSON property `isNewUser`
        # @return [Boolean]
        attr_accessor :is_new_user
        alias_method :is_new_user?, :is_new_user
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The language preference for the user's account at the IdP.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The last name for the user's account at the IdP.
        # Corresponds to the JSON property `lastName`
        # @return [String]
        attr_accessor :last_name
      
        # The ID of the authenticated Identity Platform user. Always present in the
        # response.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # Info on which multi-factor authentication providers are enabled for the
        # account. Present if the user needs to complete the sign-in using multi-factor
        # authentication.
        # Corresponds to the JSON property `mfaInfo`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment>]
        attr_accessor :mfa_info
      
        # An opaque string that functions as proof that the user has successfully passed
        # the first factor authentication.
        # Corresponds to the JSON property `mfaPendingCredential`
        # @return [String]
        attr_accessor :mfa_pending_credential
      
        # Whether or not there is an existing Identity Platform user account with the
        # same email address as the current account signed in at the IdP, and the
        # account's email addresss is not verified at the IdP. The user will need to
        # sign in to the existing Identity Platform account and then link the current
        # credential from the IdP to it. Only present if the "One account per email
        # address" setting is enabled.
        # Corresponds to the JSON property `needConfirmation`
        # @return [Boolean]
        attr_accessor :need_confirmation
        alias_method :need_confirmation?, :need_confirmation
      
        # 
        # Corresponds to the JSON property `needEmail`
        # @return [Boolean]
        attr_accessor :need_email
        alias_method :need_email?, :need_email
      
        # The nickname for the user's account at the IdP.
        # Corresponds to the JSON property `nickName`
        # @return [String]
        attr_accessor :nick_name
      
        # The OAuth access token from the IdP, if available.
        # Corresponds to the JSON property `oauthAccessToken`
        # @return [String]
        attr_accessor :oauth_access_token
      
        # The OAuth 2.0 authorization code, if available. Only present for the Google
        # provider.
        # Corresponds to the JSON property `oauthAuthorizationCode`
        # @return [String]
        attr_accessor :oauth_authorization_code
      
        # The number of seconds until the OAuth access token from the IdP expires.
        # Corresponds to the JSON property `oauthExpireIn`
        # @return [Fixnum]
        attr_accessor :oauth_expire_in
      
        # The OpenID Connect ID token from the IdP, if available.
        # Corresponds to the JSON property `oauthIdToken`
        # @return [String]
        attr_accessor :oauth_id_token
      
        # The OAuth 2.0 refresh token from the IdP, if available and `
        # return_refresh_token` is set to `true`.
        # Corresponds to the JSON property `oauthRefreshToken`
        # @return [String]
        attr_accessor :oauth_refresh_token
      
        # The OAuth 1.0 token secret from the IdP, if available. Only present for the
        # Twitter provider.
        # Corresponds to the JSON property `oauthTokenSecret`
        # @return [String]
        attr_accessor :oauth_token_secret
      
        # The main (top-level) email address of the user's Identity Platform account, if
        # different from the email address at the IdP. Only present if the "One account
        # per email address" setting is enabled.
        # Corresponds to the JSON property `originalEmail`
        # @return [String]
        attr_accessor :original_email
      
        # An opaque string that can be used as a credential from the IdP the user is
        # signing into. The pending token obtained here can be set in a future
        # SignInWithIdp request to sign the same user in with the IdP again.
        # Corresponds to the JSON property `pendingToken`
        # @return [String]
        attr_accessor :pending_token
      
        # The URL of the user's profile picture at the IdP.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # The provider ID of the IdP that the user is signing in to. Always present in
        # the response.
        # Corresponds to the JSON property `providerId`
        # @return [String]
        attr_accessor :provider_id
      
        # The stringified JSON response containing all the data corresponding to the
        # user's account at the IdP.
        # Corresponds to the JSON property `rawUserInfo`
        # @return [String]
        attr_accessor :raw_user_info
      
        # An Identity Platform refresh token for the authenticated user.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        # The screen name for the user's account at the Twitter IdP or the login name
        # for the user's account at the GitHub IdP.
        # Corresponds to the JSON property `screenName`
        # @return [String]
        attr_accessor :screen_name
      
        # The value of the `tenant_id` field in the request.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        # The time zone for the user's account at the IdP.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # A list of provider IDs that the user can sign in to in order to resolve a `
        # need_confirmation` error. Only present if `need_confirmation` is set to `true`.
        # Corresponds to the JSON property `verifiedProvider`
        # @return [Array<String>]
        attr_accessor :verified_provider
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @date_of_birth = args[:date_of_birth] if args.key?(:date_of_birth)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @email_recycled = args[:email_recycled] if args.key?(:email_recycled)
          @email_verified = args[:email_verified] if args.key?(:email_verified)
          @error_message = args[:error_message] if args.key?(:error_message)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @federated_id = args[:federated_id] if args.key?(:federated_id)
          @first_name = args[:first_name] if args.key?(:first_name)
          @full_name = args[:full_name] if args.key?(:full_name)
          @id_token = args[:id_token] if args.key?(:id_token)
          @input_email = args[:input_email] if args.key?(:input_email)
          @is_new_user = args[:is_new_user] if args.key?(:is_new_user)
          @kind = args[:kind] if args.key?(:kind)
          @language = args[:language] if args.key?(:language)
          @last_name = args[:last_name] if args.key?(:last_name)
          @local_id = args[:local_id] if args.key?(:local_id)
          @mfa_info = args[:mfa_info] if args.key?(:mfa_info)
          @mfa_pending_credential = args[:mfa_pending_credential] if args.key?(:mfa_pending_credential)
          @need_confirmation = args[:need_confirmation] if args.key?(:need_confirmation)
          @need_email = args[:need_email] if args.key?(:need_email)
          @nick_name = args[:nick_name] if args.key?(:nick_name)
          @oauth_access_token = args[:oauth_access_token] if args.key?(:oauth_access_token)
          @oauth_authorization_code = args[:oauth_authorization_code] if args.key?(:oauth_authorization_code)
          @oauth_expire_in = args[:oauth_expire_in] if args.key?(:oauth_expire_in)
          @oauth_id_token = args[:oauth_id_token] if args.key?(:oauth_id_token)
          @oauth_refresh_token = args[:oauth_refresh_token] if args.key?(:oauth_refresh_token)
          @oauth_token_secret = args[:oauth_token_secret] if args.key?(:oauth_token_secret)
          @original_email = args[:original_email] if args.key?(:original_email)
          @pending_token = args[:pending_token] if args.key?(:pending_token)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
          @provider_id = args[:provider_id] if args.key?(:provider_id)
          @raw_user_info = args[:raw_user_info] if args.key?(:raw_user_info)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
          @screen_name = args[:screen_name] if args.key?(:screen_name)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @verified_provider = args[:verified_provider] if args.key?(:verified_provider)
        end
      end
      
      # Request message for SignInWithPassword.
      class GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `captchaChallenge`
        # @return [String]
        attr_accessor :captcha_challenge
      
        # The reCAPTCHA token provided by the reCAPTCHA client-side integration.
        # reCAPTCHA Enterprise uses it for risk assessment. Required when reCAPTCHA
        # Enterprise is enabled.
        # Corresponds to the JSON property `captchaResponse`
        # @return [String]
        attr_accessor :captcha_response
      
        # 
        # Corresponds to the JSON property `delegatedProjectNumber`
        # @return [Fixnum]
        attr_accessor :delegated_project_number
      
        # Required. The email the user is signing in with. The length of email should be
        # less than 256 characters and in the format of `name@domain.tld`. The email
        # should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec
        # production.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # 
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # 
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # Required. The password the user provides to sign in to the account.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # 
        # Corresponds to the JSON property `pendingIdToken`
        # @return [String]
        attr_accessor :pending_id_token
      
        # Should always be true.
        # Corresponds to the JSON property `returnSecureToken`
        # @return [Boolean]
        attr_accessor :return_secure_token
        alias_method :return_secure_token?, :return_secure_token
      
        # The ID of the Identity Platform tenant the user is signing in to. If not set,
        # the user will sign in to the default Identity Platform instance in the project.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @captcha_challenge = args[:captcha_challenge] if args.key?(:captcha_challenge)
          @captcha_response = args[:captcha_response] if args.key?(:captcha_response)
          @delegated_project_number = args[:delegated_project_number] if args.key?(:delegated_project_number)
          @email = args[:email] if args.key?(:email)
          @id_token = args[:id_token] if args.key?(:id_token)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @password = args[:password] if args.key?(:password)
          @pending_id_token = args[:pending_id_token] if args.key?(:pending_id_token)
          @return_secure_token = args[:return_secure_token] if args.key?(:return_secure_token)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Response message for SignInWithPassword.
      class GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse
        include Google::Apis::Core::Hashable
      
        # The user's display name stored in the account's attributes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email of the authenticated user. Always present in the response.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The number of seconds until the Identity Platform ID token expires.
        # Corresponds to the JSON property `expiresIn`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # An Identity Platform ID token for the authenticated user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the authenticated user. Always present in the response.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # Info on which multi-factor authentication providers are enabled for the
        # account. Present if the user needs to complete the sign-in using multi-factor
        # authentication.
        # Corresponds to the JSON property `mfaInfo`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment>]
        attr_accessor :mfa_info
      
        # An opaque string that functions as proof that the user has successfully passed
        # the first factor authentication.
        # Corresponds to the JSON property `mfaPendingCredential`
        # @return [String]
        attr_accessor :mfa_pending_credential
      
        # The OAuth2 access token.
        # Corresponds to the JSON property `oauthAccessToken`
        # @return [String]
        attr_accessor :oauth_access_token
      
        # 
        # Corresponds to the JSON property `oauthAuthorizationCode`
        # @return [String]
        attr_accessor :oauth_authorization_code
      
        # The access token expiration time in seconds.
        # Corresponds to the JSON property `oauthExpireIn`
        # @return [Fixnum]
        attr_accessor :oauth_expire_in
      
        # The user's profile picture stored in the account's attributes.
        # Corresponds to the JSON property `profilePicture`
        # @return [String]
        attr_accessor :profile_picture
      
        # An Identity Platform refresh token for the authenticated user.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        # Whether the email is for an existing account. Always true.
        # Corresponds to the JSON property `registered`
        # @return [Boolean]
        attr_accessor :registered
        alias_method :registered?, :registered
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @id_token = args[:id_token] if args.key?(:id_token)
          @kind = args[:kind] if args.key?(:kind)
          @local_id = args[:local_id] if args.key?(:local_id)
          @mfa_info = args[:mfa_info] if args.key?(:mfa_info)
          @mfa_pending_credential = args[:mfa_pending_credential] if args.key?(:mfa_pending_credential)
          @oauth_access_token = args[:oauth_access_token] if args.key?(:oauth_access_token)
          @oauth_authorization_code = args[:oauth_authorization_code] if args.key?(:oauth_authorization_code)
          @oauth_expire_in = args[:oauth_expire_in] if args.key?(:oauth_expire_in)
          @profile_picture = args[:profile_picture] if args.key?(:profile_picture)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
          @registered = args[:registered] if args.key?(:registered)
        end
      end
      
      # Request message for SignInWithPhoneNumber.
      class GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest
        include Google::Apis::Core::Hashable
      
        # User-entered verification code from an SMS sent to the user's phone.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A valid ID token for an Identity Platform account. If passed, this request
        # will link the phone number to the user represented by this ID token if the
        # phone number is not in use, or will reauthenticate the user if the phone
        # number is already linked to the user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # 
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # The user's phone number to sign in with. This is necessary in the case of uing
        # a temporary proof, in which case it must match the phone number that was
        # authenticated in the request that generated the temporary proof. This field is
        # ignored if a session info is passed.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Encrypted session information from the response of sendVerificationCode. In
        # the case of authenticating with an SMS code this must be specified, but in the
        # case of using a temporary proof it can be unspecified.
        # Corresponds to the JSON property `sessionInfo`
        # @return [String]
        attr_accessor :session_info
      
        # A proof of the phone number verification, provided from a previous
        # signInWithPhoneNumber request. If this is passed, the caller must also pass in
        # the phone_number field the phone number that was verified in the previous
        # request.
        # Corresponds to the JSON property `temporaryProof`
        # @return [String]
        attr_accessor :temporary_proof
      
        # The ID of the Identity Platform tenant the user is signing in to. If not set,
        # the user will sign in to the default Identity Platform project.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        # Do not use.
        # Corresponds to the JSON property `verificationProof`
        # @return [String]
        attr_accessor :verification_proof
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @id_token = args[:id_token] if args.key?(:id_token)
          @operation = args[:operation] if args.key?(:operation)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @session_info = args[:session_info] if args.key?(:session_info)
          @temporary_proof = args[:temporary_proof] if args.key?(:temporary_proof)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
          @verification_proof = args[:verification_proof] if args.key?(:verification_proof)
        end
      end
      
      # Response message for SignInWithPhoneNumber.
      class GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse
        include Google::Apis::Core::Hashable
      
        # The number of seconds until the ID token expires.
        # Corresponds to the JSON property `expiresIn`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # Identity Platform ID token for the authenticated user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Whether the authenticated user was created by this request.
        # Corresponds to the JSON property `isNewUser`
        # @return [Boolean]
        attr_accessor :is_new_user
        alias_method :is_new_user?, :is_new_user
      
        # The id of the authenticated user. Present in the case of a successful
        # authentication. In the case when the phone could be verified but the account
        # operation could not be performed, a temporary proof will be returned instead.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # Phone number of the authenticated user. Always present in the response.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Refresh token for the authenticated user.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        # A proof of the phone number verification, provided if a phone authentication
        # is successful but the user operation fails. This happens when the request
        # tries to link a phone number to a user with an ID token or reauthenticate with
        # an ID token but the phone number is linked to a different user.
        # Corresponds to the JSON property `temporaryProof`
        # @return [String]
        attr_accessor :temporary_proof
      
        # The number of seconds until the temporary proof expires.
        # Corresponds to the JSON property `temporaryProofExpiresIn`
        # @return [Fixnum]
        attr_accessor :temporary_proof_expires_in
      
        # Do not use.
        # Corresponds to the JSON property `verificationProof`
        # @return [String]
        attr_accessor :verification_proof
      
        # Do not use.
        # Corresponds to the JSON property `verificationProofExpiresIn`
        # @return [Fixnum]
        attr_accessor :verification_proof_expires_in
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @id_token = args[:id_token] if args.key?(:id_token)
          @is_new_user = args[:is_new_user] if args.key?(:is_new_user)
          @local_id = args[:local_id] if args.key?(:local_id)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
          @temporary_proof = args[:temporary_proof] if args.key?(:temporary_proof)
          @temporary_proof_expires_in = args[:temporary_proof_expires_in] if args.key?(:temporary_proof_expires_in)
          @verification_proof = args[:verification_proof] if args.key?(:verification_proof)
          @verification_proof_expires_in = args[:verification_proof_expires_in] if args.key?(:verification_proof_expires_in)
        end
      end
      
      # Request message for SignUp.
      class GoogleCloudIdentitytoolkitV1SignUpRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `captchaChallenge`
        # @return [String]
        attr_accessor :captcha_challenge
      
        # The reCAPTCHA token provided by the reCAPTCHA client-side integration.
        # reCAPTCHA Enterprise uses it for assessment. Required when reCAPTCHA
        # enterprise is enabled.
        # Corresponds to the JSON property `captchaResponse`
        # @return [String]
        attr_accessor :captcha_response
      
        # Whether the user will be disabled upon creation. Disabled accounts are
        # inaccessible except for requests bearing a Google OAuth2 credential with
        # proper [permissions](https://cloud.google.com/identity-platform/docs/access-
        # control).
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # The display name of the user to be created.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email to assign to the created user. The length of the email should be
        # less than 256 characters and in the format of `name@domain.tld`. The email
        # should also match the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec
        # production. An anonymous user will be created if not provided.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Whether the user's email is verified. Specifying this field requires a Google
        # OAuth 2.0 credential with the proper [permissions](https://cloud.google.com/
        # identity-platform/docs/access-control).
        # Corresponds to the JSON property `emailVerified`
        # @return [Boolean]
        attr_accessor :email_verified
        alias_method :email_verified?, :email_verified
      
        # A valid ID token for an Identity Platform user. If set, this request will link
        # the authentication credential to the user represented by this ID token. For a
        # non-admin request, both the `email` and `password` fields must be set. For an
        # admin request, `local_id` must not be set.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # 
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # The ID of the user to create. The ID must be unique within the project that
        # the user is being created under. Specifying this field requires a Google OAuth
        # 2.0 credential with the proper [permissions](https://cloud.google.com/identity-
        # platform/docs/access-control).
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # The multi-factor authentication providers for the user to create.
        # Corresponds to the JSON property `mfaInfo`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaFactor>]
        attr_accessor :mfa_info
      
        # The password to assign to the created user. The password must be be at least 6
        # characters long. If set, the `email` field must also be set.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The phone number of the user to create. Specifying this field requires a
        # Google OAuth 2.0 credential with the proper [permissions](https://cloud.google.
        # com/identity-platform/docs/access-control).
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The profile photo url of the user to create.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # The project ID of the project which the user should belong to. Specifying this
        # field requires a Google OAuth 2.0 credential with the proper [permissions](
        # https://cloud.google.com/identity-platform/docs/access-control). If this is
        # not set, the target project is inferred from the scope associated to the
        # Bearer access token.
        # Corresponds to the JSON property `targetProjectId`
        # @return [String]
        attr_accessor :target_project_id
      
        # The ID of the Identity Platform tenant to create a user under. If not set, the
        # user will be created under the default Identity Platform project.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @captcha_challenge = args[:captcha_challenge] if args.key?(:captcha_challenge)
          @captcha_response = args[:captcha_response] if args.key?(:captcha_response)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @email_verified = args[:email_verified] if args.key?(:email_verified)
          @id_token = args[:id_token] if args.key?(:id_token)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @local_id = args[:local_id] if args.key?(:local_id)
          @mfa_info = args[:mfa_info] if args.key?(:mfa_info)
          @password = args[:password] if args.key?(:password)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
          @target_project_id = args[:target_project_id] if args.key?(:target_project_id)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Response message for SignUp.
      class GoogleCloudIdentitytoolkitV1SignUpResponse
        include Google::Apis::Core::Hashable
      
        # The created user's display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The created user's email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The number of seconds until the ID token expires.
        # Corresponds to the JSON property `expiresIn`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # An Identity Platform ID token for the created user. This field is only set for
        # non-admin requests.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the created user. Always present in the response.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # An Identity Platform refresh token for the created user. This field is only
        # set for non-admin requests.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @id_token = args[:id_token] if args.key?(:id_token)
          @kind = args[:kind] if args.key?(:kind)
          @local_id = args[:local_id] if args.key?(:local_id)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
        end
      end
      
      # Query conditions used to filter results.
      class GoogleCloudIdentitytoolkitV1SqlExpression
        include Google::Apis::Core::Hashable
      
        # A case insensitive string that the account's email should match. Only one of `
        # email`, `phone_number`, or `user_id` should be specified in a SqlExpression.
        # If more than one is specified, only the first (in that order) will be applied.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # A string that the account's phone number should match. Only one of `email`, `
        # phone_number`, or `user_id` should be specified in a SqlExpression. If more
        # than one is specified, only the first (in that order) will be applied.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # A string that the account's local ID should match. Only one of `email`, `
        # phone_number`, or `user_id` should be specified in a SqlExpression If more
        # than one is specified, only the first (in that order) will be applied.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Request message for UploadAccount.
      class GoogleCloudIdentitytoolkitV1UploadAccountRequest
        include Google::Apis::Core::Hashable
      
        # Whether to overwrite an existing account in Identity Platform with a matching `
        # local_id` in the request. If true, the existing account will be overwritten.
        # If false, an error will be returned.
        # Corresponds to the JSON property `allowOverwrite`
        # @return [Boolean]
        attr_accessor :allow_overwrite
        alias_method :allow_overwrite?, :allow_overwrite
      
        # The parameters for Argon2 hashing algorithm.
        # Corresponds to the JSON property `argon2Parameters`
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1Argon2Parameters]
        attr_accessor :argon2_parameters
      
        # The block size parameter used by the STANDARD_SCRYPT hashing function. This
        # parameter, along with parallelization and cpu_mem_cost help tune the resources
        # needed to hash a password, and should be tuned as processor speeds and memory
        # technologies advance.
        # Corresponds to the JSON property `blockSize`
        # @return [Fixnum]
        attr_accessor :block_size
      
        # The CPU memory cost parameter to be used by the STANDARD_SCRYPT hashing
        # function. This parameter, along with block_size and cpu_mem_cost help tune the
        # resources needed to hash a password, and should be tuned as processor speeds
        # and memory technologies advance.
        # Corresponds to the JSON property `cpuMemCost`
        # @return [Fixnum]
        attr_accessor :cpu_mem_cost
      
        # 
        # Corresponds to the JSON property `delegatedProjectNumber`
        # @return [Fixnum]
        attr_accessor :delegated_project_number
      
        # The desired key length for the STANDARD_SCRYPT hashing function. Must be at
        # least 1.
        # Corresponds to the JSON property `dkLen`
        # @return [Fixnum]
        attr_accessor :dk_len
      
        # Required. The hashing function used to hash the account passwords. Must be one
        # of the following: * HMAC_SHA256 * HMAC_SHA1 * HMAC_MD5 * SCRYPT * PBKDF_SHA1 *
        # MD5 * HMAC_SHA512 * SHA1 * BCRYPT * PBKDF2_SHA256 * SHA256 * SHA512 *
        # STANDARD_SCRYPT * ARGON2
        # Corresponds to the JSON property `hashAlgorithm`
        # @return [String]
        attr_accessor :hash_algorithm
      
        # Memory cost for hash calculation. Only required when the hashing function is
        # SCRYPT.
        # Corresponds to the JSON property `memoryCost`
        # @return [Fixnum]
        attr_accessor :memory_cost
      
        # The parallelization cost parameter to be used by the STANDARD_SCRYPT hashing
        # function. This parameter, along with block_size and cpu_mem_cost help tune the
        # resources needed to hash a password, and should be tuned as processor speeds
        # and memory technologies advance.
        # Corresponds to the JSON property `parallelization`
        # @return [Fixnum]
        attr_accessor :parallelization
      
        # Password and salt order when verify password.
        # Corresponds to the JSON property `passwordHashOrder`
        # @return [String]
        attr_accessor :password_hash_order
      
        # The number of rounds used for hash calculation. Only required for the
        # following hashing functions: * MD5 * SHA1 * SHA256 * SHA512 * PBKDF_SHA1 *
        # PBKDF2_SHA256 * SCRYPT
        # Corresponds to the JSON property `rounds`
        # @return [Fixnum]
        attr_accessor :rounds
      
        # One or more bytes to be inserted between the salt and plain text password. For
        # stronger security, this should be a single non-printable character.
        # Corresponds to the JSON property `saltSeparator`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :salt_separator
      
        # If true, the service will do the following list of checks before an account is
        # uploaded: * Duplicate emails * Duplicate federated IDs * Federated ID provider
        # validation If the duplication exists within the list of accounts to be
        # uploaded, it will prevent the entire list from being uploaded. If the email or
        # federated ID is a duplicate of a user already within the project/tenant, the
        # account will not be uploaded, but the rest of the accounts will be unaffected.
        # If false, these checks will be skipped.
        # Corresponds to the JSON property `sanityCheck`
        # @return [Boolean]
        attr_accessor :sanity_check
        alias_method :sanity_check?, :sanity_check
      
        # The signer key used to hash the password. Required for the following hashing
        # functions: * SCRYPT, * HMAC_MD5, * HMAC_SHA1, * HMAC_SHA256, * HMAC_SHA512
        # Corresponds to the JSON property `signerKey`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :signer_key
      
        # The ID of the Identity Platform tenant the account belongs to.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        # A list of accounts to upload. `local_id` is required for each user; everything
        # else is optional.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UserInfo>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_overwrite = args[:allow_overwrite] if args.key?(:allow_overwrite)
          @argon2_parameters = args[:argon2_parameters] if args.key?(:argon2_parameters)
          @block_size = args[:block_size] if args.key?(:block_size)
          @cpu_mem_cost = args[:cpu_mem_cost] if args.key?(:cpu_mem_cost)
          @delegated_project_number = args[:delegated_project_number] if args.key?(:delegated_project_number)
          @dk_len = args[:dk_len] if args.key?(:dk_len)
          @hash_algorithm = args[:hash_algorithm] if args.key?(:hash_algorithm)
          @memory_cost = args[:memory_cost] if args.key?(:memory_cost)
          @parallelization = args[:parallelization] if args.key?(:parallelization)
          @password_hash_order = args[:password_hash_order] if args.key?(:password_hash_order)
          @rounds = args[:rounds] if args.key?(:rounds)
          @salt_separator = args[:salt_separator] if args.key?(:salt_separator)
          @sanity_check = args[:sanity_check] if args.key?(:sanity_check)
          @signer_key = args[:signer_key] if args.key?(:signer_key)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # Response message for UploadAccount.
      class GoogleCloudIdentitytoolkitV1UploadAccountResponse
        include Google::Apis::Core::Hashable
      
        # Detailed error info for accounts that cannot be uploaded.
        # Corresponds to the JSON property `error`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ErrorInfo>]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # An Identity Platform account's information.
      class GoogleCloudIdentitytoolkitV1UserInfo
        include Google::Apis::Core::Hashable
      
        # The time, in milliseconds from epoch, when the account was created.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Custom claims to be added to any ID tokens minted for the account. Should be
        # at most 1,000 characters in length and in valid JSON format.
        # Corresponds to the JSON property `customAttributes`
        # @return [String]
        attr_accessor :custom_attributes
      
        # Output only. Whether this account has been authenticated using
        # SignInWithCustomToken.
        # Corresponds to the JSON property `customAuth`
        # @return [Boolean]
        attr_accessor :custom_auth
        alias_method :custom_auth?, :custom_auth
      
        # Output only. The date of birth set for the account. This account attribute is
        # not used by Identity Platform. It is available for informational purposes only.
        # Corresponds to the JSON property `dateOfBirth`
        # @return [String]
        attr_accessor :date_of_birth
      
        # Whether the account is disabled. Disabled accounts are inaccessible except for
        # requests bearing a Google OAuth2 credential with proper permissions.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # The display name of the account. This account attribute is not used by
        # Identity Platform. It is available for informational purposes only.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The account's email address. The length of the email should be less than 256
        # characters and in the format of `name@domain.tld`. The email should also match
        # the [RFC 822](https://tools.ietf.org/html/rfc822) addr-spec.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Output only. Whether the account can authenticate with email link.
        # Corresponds to the JSON property `emailLinkSignin`
        # @return [Boolean]
        attr_accessor :email_link_signin
        alias_method :email_link_signin?, :email_link_signin
      
        # Whether the account's email address has been verified.
        # Corresponds to the JSON property `emailVerified`
        # @return [Boolean]
        attr_accessor :email_verified
        alias_method :email_verified?, :email_verified
      
        # The first email address associated with this account. The account's initial
        # email cannot be changed once set and is used to recover access to this account
        # if lost via the RECOVER_EMAIL flow in GetOobCode. Should match the [RFC 822](
        # https://tools.ietf.org/html/rfc822) addr-spec.
        # Corresponds to the JSON property `initialEmail`
        # @return [String]
        attr_accessor :initial_email
      
        # Output only. The language preference of the account. This account attribute is
        # not used by Identity Platform. It is available for informational purposes only.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The last time, in milliseconds from epoch, this account was logged into.
        # Corresponds to the JSON property `lastLoginAt`
        # @return [Fixnum]
        attr_accessor :last_login_at
      
        # Timestamp when an ID token was last minted for this account.
        # Corresponds to the JSON property `lastRefreshAt`
        # @return [String]
        attr_accessor :last_refresh_at
      
        # Immutable. The unique ID of the account.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # Information on which multi-factor authentication providers are enabled for
        # this account.
        # Corresponds to the JSON property `mfaInfo`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment>]
        attr_accessor :mfa_info
      
        # The account's hashed password. Only accessible by requests bearing a Google
        # OAuth2 credential with proper [permissions](https://cloud.google.com/identity-
        # platform/docs/access-control).
        # Corresponds to the JSON property `passwordHash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :password_hash
      
        # The timestamp, in milliseconds from the epoch of 1970-01-01T00:00:00Z, when
        # the account's password was last updated.
        # Corresponds to the JSON property `passwordUpdatedAt`
        # @return [Float]
        attr_accessor :password_updated_at
      
        # The account's phone number.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The URL of the account's profile photo. This account attribute is not used by
        # Identity Platform. It is available for informational purposes only.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # Information about the user as provided by various Identity Providers.
        # Corresponds to the JSON property `providerUserInfo`
        # @return [Array<Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ProviderUserInfo>]
        attr_accessor :provider_user_info
      
        # Input only. Plain text password used to update a account's password. This
        # field is only ever used as input in a request. Identity Platform uses
        # cryptographically secure hashing when managing passwords and will never store
        # or transmit a user's password in plain text.
        # Corresponds to the JSON property `rawPassword`
        # @return [String]
        attr_accessor :raw_password
      
        # The account's password salt. Only accessible by requests bearing a Google
        # OAuth2 credential with proper permissions.
        # Corresponds to the JSON property `salt`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :salt
      
        # Output only. This account's screen name at Twitter or login name at GitHub.
        # Corresponds to the JSON property `screenName`
        # @return [String]
        attr_accessor :screen_name
      
        # ID of the tenant this account belongs to. Only set if this account belongs to
        # a tenant.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        # Output only. The time zone preference of the account. This account attribute
        # is not used by Identity Platform. It is available for informational purposes
        # only.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Oldest timestamp, in seconds since epoch, that an ID token should be
        # considered valid. All ID tokens issued before this time are considered invalid.
        # Corresponds to the JSON property `validSince`
        # @return [Fixnum]
        attr_accessor :valid_since
      
        # The version of the account's password. Only accessible by requests bearing a
        # Google OAuth2 credential with proper permissions.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_at = args[:created_at] if args.key?(:created_at)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @custom_auth = args[:custom_auth] if args.key?(:custom_auth)
          @date_of_birth = args[:date_of_birth] if args.key?(:date_of_birth)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @email_link_signin = args[:email_link_signin] if args.key?(:email_link_signin)
          @email_verified = args[:email_verified] if args.key?(:email_verified)
          @initial_email = args[:initial_email] if args.key?(:initial_email)
          @language = args[:language] if args.key?(:language)
          @last_login_at = args[:last_login_at] if args.key?(:last_login_at)
          @last_refresh_at = args[:last_refresh_at] if args.key?(:last_refresh_at)
          @local_id = args[:local_id] if args.key?(:local_id)
          @mfa_info = args[:mfa_info] if args.key?(:mfa_info)
          @password_hash = args[:password_hash] if args.key?(:password_hash)
          @password_updated_at = args[:password_updated_at] if args.key?(:password_updated_at)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
          @provider_user_info = args[:provider_user_info] if args.key?(:provider_user_info)
          @raw_password = args[:raw_password] if args.key?(:raw_password)
          @salt = args[:salt] if args.key?(:salt)
          @screen_name = args[:screen_name] if args.key?(:screen_name)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @valid_since = args[:valid_since] if args.key?(:valid_since)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for VerifyIosClient
      class GoogleCloudIdentitytoolkitV1VerifyIosClientRequest
        include Google::Apis::Core::Hashable
      
        # A device token that the iOS client gets after registering to APNs (Apple Push
        # Notification service).
        # Corresponds to the JSON property `appToken`
        # @return [String]
        attr_accessor :app_token
      
        # Whether the app token is in the iOS sandbox. If false, the app token is in the
        # production environment.
        # Corresponds to the JSON property `isSandbox`
        # @return [Boolean]
        attr_accessor :is_sandbox
        alias_method :is_sandbox?, :is_sandbox
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_token = args[:app_token] if args.key?(:app_token)
          @is_sandbox = args[:is_sandbox] if args.key?(:is_sandbox)
        end
      end
      
      # Response message for VerifyIosClient.
      class GoogleCloudIdentitytoolkitV1VerifyIosClientResponse
        include Google::Apis::Core::Hashable
      
        # Receipt of successful app token validation.
        # Corresponds to the JSON property `receipt`
        # @return [String]
        attr_accessor :receipt
      
        # Suggested time that the client should wait in seconds for delivery of the push
        # notification.
        # Corresponds to the JSON property `suggestedTimeout`
        # @return [Fixnum]
        attr_accessor :suggested_timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @receipt = args[:receipt] if args.key?(:receipt)
          @suggested_timeout = args[:suggested_timeout] if args.key?(:suggested_timeout)
        end
      end
    end
  end
end
