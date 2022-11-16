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
    module IdentitytoolkitV2
      
      # Defines a policy of allowing every region by default and adding disallowed
      # regions to a disallow list.
      class GoogleCloudIdentitytoolkitAdminV2AllowByDefault
        include Google::Apis::Core::Hashable
      
        # Two letter unicode region codes to disallow as defined by https://cldr.unicode.
        # org/ The full list of these region codes is here: https://github.com/unicode-
        # cldr/cldr-localenames-full/blob/master/main/en/territories.json
        # Corresponds to the JSON property `disallowedRegions`
        # @return [Array<String>]
        attr_accessor :disallowed_regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disallowed_regions = args[:disallowed_regions] if args.key?(:disallowed_regions)
        end
      end
      
      # Defines a policy of only allowing regions by explicitly adding them to an
      # allowlist.
      class GoogleCloudIdentitytoolkitAdminV2AllowlistOnly
        include Google::Apis::Core::Hashable
      
        # Two letter unicode region codes to allow as defined by https://cldr.unicode.
        # org/ The full list of these region codes is here: https://github.com/unicode-
        # cldr/cldr-localenames-full/blob/master/main/en/territories.json
        # Corresponds to the JSON property `allowedRegions`
        # @return [Array<String>]
        attr_accessor :allowed_regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_regions = args[:allowed_regions] if args.key?(:allowed_regions)
        end
      end
      
      # Configuration options related to authenticating an anonymous user.
      class GoogleCloudIdentitytoolkitAdminV2Anonymous
        include Google::Apis::Core::Hashable
      
        # Whether anonymous user auth is enabled for the project or not.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Additional config for SignInWithApple.
      class GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig
        include Google::Apis::Core::Hashable
      
        # A list of Bundle ID's usable by this project
        # Corresponds to the JSON property `bundleIds`
        # @return [Array<String>]
        attr_accessor :bundle_ids
      
        # Additional config for Apple for code flow.
        # Corresponds to the JSON property `codeFlowConfig`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig]
        attr_accessor :code_flow_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_ids = args[:bundle_ids] if args.key?(:bundle_ids)
          @code_flow_config = args[:code_flow_config] if args.key?(:code_flow_config)
        end
      end
      
      # Configuration related to Blocking Functions.
      class GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig
        include Google::Apis::Core::Hashable
      
        # Indicates which credentials to pass to the registered Blocking Functions.
        # Corresponds to the JSON property `forwardInboundCredentials`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials]
        attr_accessor :forward_inbound_credentials
      
        # Map of Trigger to event type. Key should be one of the supported event types: "
        # beforeCreate", "beforeSignIn"
        # Corresponds to the JSON property `triggers`
        # @return [Hash<String,Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Trigger>]
        attr_accessor :triggers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @forward_inbound_credentials = args[:forward_inbound_credentials] if args.key?(:forward_inbound_credentials)
          @triggers = args[:triggers] if args.key?(:triggers)
        end
      end
      
      # Options related to how clients making requests on behalf of a project should
      # be configured.
      class GoogleCloudIdentitytoolkitAdminV2ClientConfig
        include Google::Apis::Core::Hashable
      
        # Output only. API key that can be used when making requests for this project.
        # Corresponds to the JSON property `apiKey`
        # @return [String]
        attr_accessor :api_key
      
        # Output only. Firebase subdomain.
        # Corresponds to the JSON property `firebaseSubdomain`
        # @return [String]
        attr_accessor :firebase_subdomain
      
        # Configuration related to restricting a user's ability to affect their account.
        # Corresponds to the JSON property `permissions`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Permissions]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key = args[:api_key] if args.key?(:api_key)
          @firebase_subdomain = args[:firebase_subdomain] if args.key?(:firebase_subdomain)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Options related to how clients making requests on behalf of a tenant should be
      # configured.
      class GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig
        include Google::Apis::Core::Hashable
      
        # Configuration related to restricting a user's ability to affect their account.
        # Corresponds to the JSON property `permissions`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ClientPermissions]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Configuration related to restricting a user's ability to affect their account.
      class GoogleCloudIdentitytoolkitAdminV2ClientPermissions
        include Google::Apis::Core::Hashable
      
        # When true, end users cannot delete their account on the associated project
        # through any of our API methods
        # Corresponds to the JSON property `disabledUserDeletion`
        # @return [Boolean]
        attr_accessor :disabled_user_deletion
        alias_method :disabled_user_deletion?, :disabled_user_deletion
      
        # When true, end users cannot sign up for a new account on the associated
        # project through any of our API methods
        # Corresponds to the JSON property `disabledUserSignup`
        # @return [Boolean]
        attr_accessor :disabled_user_signup
        alias_method :disabled_user_signup?, :disabled_user_signup
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled_user_deletion = args[:disabled_user_deletion] if args.key?(:disabled_user_deletion)
          @disabled_user_signup = args[:disabled_user_signup] if args.key?(:disabled_user_signup)
        end
      end
      
      # Additional config for Apple for code flow.
      class GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig
        include Google::Apis::Core::Hashable
      
        # Key ID for the private key.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # Private key used for signing the client secret JWT.
        # Corresponds to the JSON property `privateKey`
        # @return [String]
        attr_accessor :private_key
      
        # Apple Developer Team ID.
        # Corresponds to the JSON property `teamId`
        # @return [String]
        attr_accessor :team_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
          @private_key = args[:private_key] if args.key?(:private_key)
          @team_id = args[:team_id] if args.key?(:team_id)
        end
      end
      
      # Represents an Identity Toolkit project.
      class GoogleCloudIdentitytoolkitAdminV2Config
        include Google::Apis::Core::Hashable
      
        # List of domains authorized for OAuth redirects
        # Corresponds to the JSON property `authorizedDomains`
        # @return [Array<String>]
        attr_accessor :authorized_domains
      
        # Whether anonymous users will be auto-deleted after a period of 30 days.
        # Corresponds to the JSON property `autodeleteAnonymousUsers`
        # @return [Boolean]
        attr_accessor :autodelete_anonymous_users
        alias_method :autodelete_anonymous_users?, :autodelete_anonymous_users
      
        # Configuration related to Blocking Functions.
        # Corresponds to the JSON property `blockingFunctions`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig]
        attr_accessor :blocking_functions
      
        # Options related to how clients making requests on behalf of a project should
        # be configured.
        # Corresponds to the JSON property `client`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ClientConfig]
        attr_accessor :client
      
        # Configuration for settings related to email privacy and public visibility.
        # Settings in this config protect against email enumeration, but may make some
        # trade-offs in user-friendliness.
        # Corresponds to the JSON property `emailPrivacyConfig`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig]
        attr_accessor :email_privacy_config
      
        # Options related to MultiFactor Authentication for the project.
        # Corresponds to the JSON property `mfa`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig]
        attr_accessor :mfa
      
        # Configuration related to monitoring project activity.
        # Corresponds to the JSON property `monitoring`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MonitoringConfig]
        attr_accessor :monitoring
      
        # Configuration related to multi-tenant functionality.
        # Corresponds to the JSON property `multiTenant`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig]
        attr_accessor :multi_tenant
      
        # Output only. The name of the Config resource. Example: "projects/my-awesome-
        # project/config"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration related to sending notifications to users.
        # Corresponds to the JSON property `notification`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2NotificationConfig]
        attr_accessor :notification
      
        # Configuration related to quotas.
        # Corresponds to the JSON property `quota`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2QuotaConfig]
        attr_accessor :quota
      
        # Configuration related to local sign in methods.
        # Corresponds to the JSON property `signIn`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SignInConfig]
        attr_accessor :sign_in
      
        # Configures the regions where users are allowed to send verification SMS for
        # the project or tenant. This is based on the calling code of the destination
        # phone number.
        # Corresponds to the JSON property `smsRegionConfig`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig]
        attr_accessor :sms_region_config
      
        # Output only. The subtype of this config.
        # Corresponds to the JSON property `subtype`
        # @return [String]
        attr_accessor :subtype
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized_domains = args[:authorized_domains] if args.key?(:authorized_domains)
          @autodelete_anonymous_users = args[:autodelete_anonymous_users] if args.key?(:autodelete_anonymous_users)
          @blocking_functions = args[:blocking_functions] if args.key?(:blocking_functions)
          @client = args[:client] if args.key?(:client)
          @email_privacy_config = args[:email_privacy_config] if args.key?(:email_privacy_config)
          @mfa = args[:mfa] if args.key?(:mfa)
          @monitoring = args[:monitoring] if args.key?(:monitoring)
          @multi_tenant = args[:multi_tenant] if args.key?(:multi_tenant)
          @name = args[:name] if args.key?(:name)
          @notification = args[:notification] if args.key?(:notification)
          @quota = args[:quota] if args.key?(:quota)
          @sign_in = args[:sign_in] if args.key?(:sign_in)
          @sms_region_config = args[:sms_region_config] if args.key?(:sms_region_config)
          @subtype = args[:subtype] if args.key?(:subtype)
        end
      end
      
      # Standard Identity Toolkit-trusted IDPs.
      class GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp
        include Google::Apis::Core::Hashable
      
        # Description of the Idp
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Id the of Idp
        # Corresponds to the JSON property `idpId`
        # @return [String]
        attr_accessor :idp_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @idp_id = args[:idp_id] if args.key?(:idp_id)
        end
      end
      
      # Configurations options for authenticating with a the standard set of Identity
      # Toolkit-trusted IDPs.
      class GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
        include Google::Apis::Core::Hashable
      
        # Additional config for SignInWithApple.
        # Corresponds to the JSON property `appleSignInConfig`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig]
        attr_accessor :apple_sign_in_config
      
        # OAuth client ID.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # OAuth client secret.
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # True if allows the user to sign in with the provider.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # The name of the DefaultSupportedIdpConfig resource, for example: "projects/my-
        # awesome-project/defaultSupportedIdpConfigs/google.com"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apple_sign_in_config = args[:apple_sign_in_config] if args.key?(:apple_sign_in_config)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @enabled = args[:enabled] if args.key?(:enabled)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Information of custom domain DNS verification. By default, default_domain will
      # be used. A custom domain can be configured using VerifyCustomDomain.
      class GoogleCloudIdentitytoolkitAdminV2DnsInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The applied verified custom domain.
        # Corresponds to the JSON property `customDomain`
        # @return [String]
        attr_accessor :custom_domain
      
        # Output only. The current verification state of the custom domain. The custom
        # domain will only be used once the domain verification is successful.
        # Corresponds to the JSON property `customDomainState`
        # @return [String]
        attr_accessor :custom_domain_state
      
        # Output only. The timestamp of initial request for the current domain
        # verification.
        # Corresponds to the JSON property `domainVerificationRequestTime`
        # @return [String]
        attr_accessor :domain_verification_request_time
      
        # Output only. The custom domain that's to be verified.
        # Corresponds to the JSON property `pendingCustomDomain`
        # @return [String]
        attr_accessor :pending_custom_domain
      
        # Whether to use custom domain.
        # Corresponds to the JSON property `useCustomDomain`
        # @return [Boolean]
        attr_accessor :use_custom_domain
        alias_method :use_custom_domain?, :use_custom_domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_domain = args[:custom_domain] if args.key?(:custom_domain)
          @custom_domain_state = args[:custom_domain_state] if args.key?(:custom_domain_state)
          @domain_verification_request_time = args[:domain_verification_request_time] if args.key?(:domain_verification_request_time)
          @pending_custom_domain = args[:pending_custom_domain] if args.key?(:pending_custom_domain)
          @use_custom_domain = args[:use_custom_domain] if args.key?(:use_custom_domain)
        end
      end
      
      # Configuration options related to authenticating a user by their email address.
      class GoogleCloudIdentitytoolkitAdminV2Email
        include Google::Apis::Core::Hashable
      
        # Whether email auth is enabled for the project or not.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Whether a password is required for email auth or not. If true, both an email
        # and password must be provided to sign in. If false, a user may sign in via
        # either email/password or email link.
        # Corresponds to the JSON property `passwordRequired`
        # @return [Boolean]
        attr_accessor :password_required
        alias_method :password_required?, :password_required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @password_required = args[:password_required] if args.key?(:password_required)
        end
      end
      
      # Configuration for settings related to email privacy and public visibility.
      # Settings in this config protect against email enumeration, but may make some
      # trade-offs in user-friendliness.
      class GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig
        include Google::Apis::Core::Hashable
      
        # Migrates the project to a state of improved email privacy. For example certain
        # error codes are more generic to avoid giving away information on whether the
        # account exists. In addition, this disables certain features that as a side-
        # effect allow user enumeration. Enabling this toggle disables the
        # fetchSignInMethodsForEmail functionality and changing the user's email to an
        # unverified email. It is recommended to remove dependence on this functionality
        # and enable this toggle to improve user privacy.
        # Corresponds to the JSON property `enableImprovedEmailPrivacy`
        # @return [Boolean]
        attr_accessor :enable_improved_email_privacy
        alias_method :enable_improved_email_privacy?, :enable_improved_email_privacy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_improved_email_privacy = args[:enable_improved_email_privacy] if args.key?(:enable_improved_email_privacy)
        end
      end
      
      # Email template. The subject and body fields can contain the following
      # placeholders which will be replaced with the appropriate values: %LINK% - The
      # link to use to redeem the send OOB code. %EMAIL% - The email where the email
      # is being sent. %NEW_EMAIL% - The new email being set for the account (when
      # applicable). %APP_NAME% - The GCP project's display name. %DISPLAY_NAME% - The
      # user's display name.
      class GoogleCloudIdentitytoolkitAdminV2EmailTemplate
        include Google::Apis::Core::Hashable
      
        # Email body
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # Email body format
        # Corresponds to the JSON property `bodyFormat`
        # @return [String]
        attr_accessor :body_format
      
        # Output only. Whether the body or subject of the email is customized.
        # Corresponds to the JSON property `customized`
        # @return [Boolean]
        attr_accessor :customized
        alias_method :customized?, :customized
      
        # Reply-to address
        # Corresponds to the JSON property `replyTo`
        # @return [String]
        attr_accessor :reply_to
      
        # Sender display name
        # Corresponds to the JSON property `senderDisplayName`
        # @return [String]
        attr_accessor :sender_display_name
      
        # Local part of From address
        # Corresponds to the JSON property `senderLocalPart`
        # @return [String]
        attr_accessor :sender_local_part
      
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
          @body_format = args[:body_format] if args.key?(:body_format)
          @customized = args[:customized] if args.key?(:customized)
          @reply_to = args[:reply_to] if args.key?(:reply_to)
          @sender_display_name = args[:sender_display_name] if args.key?(:sender_display_name)
          @sender_local_part = args[:sender_local_part] if args.key?(:sender_local_part)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # Indicates which credentials to pass to the registered Blocking Functions.
      class GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials
        include Google::Apis::Core::Hashable
      
        # Whether to pass the user's OAuth identity provider's access token.
        # Corresponds to the JSON property `accessToken`
        # @return [Boolean]
        attr_accessor :access_token
        alias_method :access_token?, :access_token
      
        # Whether to pass the user's OIDC identity provider's ID token.
        # Corresponds to the JSON property `idToken`
        # @return [Boolean]
        attr_accessor :id_token
        alias_method :id_token?, :id_token
      
        # Whether to pass the user's OAuth identity provider's refresh token.
        # Corresponds to the JSON property `refreshToken`
        # @return [Boolean]
        attr_accessor :refresh_token
        alias_method :refresh_token?, :refresh_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @id_token = args[:id_token] if args.key?(:id_token)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
        end
      end
      
      # History information of the hash algorithm and key. Different accounts'
      # passwords may be generated by different version.
      class GoogleCloudIdentitytoolkitAdminV2HashConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Different password hash algorithms used in Identity Toolkit.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # Output only. Memory cost for hash calculation. Used by scrypt and other
        # similar password derivation algorithms. See https://tools.ietf.org/html/
        # rfc7914 for explanation of field.
        # Corresponds to the JSON property `memoryCost`
        # @return [Fixnum]
        attr_accessor :memory_cost
      
        # Output only. How many rounds for hash calculation. Used by scrypt and other
        # similar password derivation algorithms.
        # Corresponds to the JSON property `rounds`
        # @return [Fixnum]
        attr_accessor :rounds
      
        # Output only. Non-printable character to be inserted between the salt and plain
        # text password in base64.
        # Corresponds to the JSON property `saltSeparator`
        # @return [String]
        attr_accessor :salt_separator
      
        # Output only. Signer key in base64.
        # Corresponds to the JSON property `signerKey`
        # @return [String]
        attr_accessor :signer_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @memory_cost = args[:memory_cost] if args.key?(:memory_cost)
          @rounds = args[:rounds] if args.key?(:rounds)
          @salt_separator = args[:salt_separator] if args.key?(:salt_separator)
          @signer_key = args[:signer_key] if args.key?(:signer_key)
        end
      end
      
      # The IDP's certificate data to verify the signature in the SAMLResponse issued
      # by the IDP.
      class GoogleCloudIdentitytoolkitAdminV2IdpCertificate
        include Google::Apis::Core::Hashable
      
        # The x509 certificate
        # Corresponds to the JSON property `x509Certificate`
        # @return [String]
        attr_accessor :x509_certificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x509_certificate = args[:x509_certificate] if args.key?(:x509_certificate)
        end
      end
      
      # The SAML IdP (Identity Provider) configuration when the project acts as the
      # relying party.
      class GoogleCloudIdentitytoolkitAdminV2IdpConfig
        include Google::Apis::Core::Hashable
      
        # IDP's public keys for verifying signature in the assertions.
        # Corresponds to the JSON property `idpCertificates`
        # @return [Array<Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2IdpCertificate>]
        attr_accessor :idp_certificates
      
        # Unique identifier for all SAML entities.
        # Corresponds to the JSON property `idpEntityId`
        # @return [String]
        attr_accessor :idp_entity_id
      
        # Indicates if outbounding SAMLRequest should be signed.
        # Corresponds to the JSON property `signRequest`
        # @return [Boolean]
        attr_accessor :sign_request
        alias_method :sign_request?, :sign_request
      
        # URL to send Authentication request to.
        # Corresponds to the JSON property `ssoUrl`
        # @return [String]
        attr_accessor :sso_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @idp_certificates = args[:idp_certificates] if args.key?(:idp_certificates)
          @idp_entity_id = args[:idp_entity_id] if args.key?(:idp_entity_id)
          @sign_request = args[:sign_request] if args.key?(:sign_request)
          @sso_url = args[:sso_url] if args.key?(:sso_url)
        end
      end
      
      # A pair of SAML RP-IDP configurations when the project acts as the relying
      # party.
      class GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig
        include Google::Apis::Core::Hashable
      
        # The config's display name set by developers.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # True if allows the user to sign in with the provider.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # The SAML IdP (Identity Provider) configuration when the project acts as the
        # relying party.
        # Corresponds to the JSON property `idpConfig`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2IdpConfig]
        attr_accessor :idp_config
      
        # The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-
        # project/inboundSamlConfigs/my-config-id'. Ignored during create requests.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The SAML SP (Service Provider) configuration when the project acts as the
        # relying party to receive and accept an authentication assertion issued by a
        # SAML identity provider.
        # Corresponds to the JSON property `spConfig`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SpConfig]
        attr_accessor :sp_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enabled = args[:enabled] if args.key?(:enabled)
          @idp_config = args[:idp_config] if args.key?(:idp_config)
          @name = args[:name] if args.key?(:name)
          @sp_config = args[:sp_config] if args.key?(:sp_config)
        end
      end
      
      # Settings that the tenants will inherit from project level.
      class GoogleCloudIdentitytoolkitAdminV2Inheritance
        include Google::Apis::Core::Hashable
      
        # Whether to allow the tenant to inherit custom domains, email templates, and
        # custom SMTP settings. If true, email sent from tenant will follow the project
        # level email sending configurations. If false (by default), emails will go with
        # the default settings with no customizations.
        # Corresponds to the JSON property `emailSendingConfig`
        # @return [Boolean]
        attr_accessor :email_sending_config
        alias_method :email_sending_config?, :email_sending_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_sending_config = args[:email_sending_config] if args.key?(:email_sending_config)
        end
      end
      
      # Request for InitializeIdentityPlatform.
      class GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for InitializeIdentityPlatform. Empty for now.
      class GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for DefaultSupportedIdpConfigs
      class GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The set of configs.
        # Corresponds to the JSON property `defaultSupportedIdpConfigs`
        # @return [Array<Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig>]
        attr_accessor :default_supported_idp_configs
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_supported_idp_configs = args[:default_supported_idp_configs] if args.key?(:default_supported_idp_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListDefaultSupportedIdps
      class GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse
        include Google::Apis::Core::Hashable
      
        # The set of configs.
        # Corresponds to the JSON property `defaultSupportedIdps`
        # @return [Array<Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp>]
        attr_accessor :default_supported_idps
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_supported_idps = args[:default_supported_idps] if args.key?(:default_supported_idps)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListInboundSamlConfigs
      class GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The set of configs.
        # Corresponds to the JSON property `inboundSamlConfigs`
        # @return [Array<Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig>]
        attr_accessor :inbound_saml_configs
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inbound_saml_configs = args[:inbound_saml_configs] if args.key?(:inbound_saml_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListOAuthIdpConfigs
      class GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The set of configs.
        # Corresponds to the JSON property `oauthIdpConfigs`
        # @return [Array<Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig>]
        attr_accessor :oauth_idp_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @oauth_idp_configs = args[:oauth_idp_configs] if args.key?(:oauth_idp_configs)
        end
      end
      
      # Response message for ListTenants.
      class GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse
        include Google::Apis::Core::Hashable
      
        # The token to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of tenants under the given agent project.
        # Corresponds to the JSON property `tenants`
        # @return [Array<Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant>]
        attr_accessor :tenants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tenants = args[:tenants] if args.key?(:tenants)
        end
      end
      
      # Configuration related to monitoring project activity.
      class GoogleCloudIdentitytoolkitAdminV2MonitoringConfig
        include Google::Apis::Core::Hashable
      
        # Configuration for logging requests made to this project to Stackdriver Logging
        # Corresponds to the JSON property `requestLogging`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2RequestLogging]
        attr_accessor :request_logging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_logging = args[:request_logging] if args.key?(:request_logging)
        end
      end
      
      # Options related to MultiFactor Authentication for the project.
      class GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig
        include Google::Apis::Core::Hashable
      
        # A list of usable second factors for this project.
        # Corresponds to the JSON property `enabledProviders`
        # @return [Array<String>]
        attr_accessor :enabled_providers
      
        # Whether MultiFactor Authentication has been enabled for this project.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled_providers = args[:enabled_providers] if args.key?(:enabled_providers)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Configuration related to multi-tenant functionality.
      class GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig
        include Google::Apis::Core::Hashable
      
        # Whether this project can have tenants or not.
        # Corresponds to the JSON property `allowTenants`
        # @return [Boolean]
        attr_accessor :allow_tenants
        alias_method :allow_tenants?, :allow_tenants
      
        # The default cloud parent org or folder that the tenant project should be
        # created under. The parent resource name should be in the format of "/", such
        # as "folders/123" or "organizations/456". If the value is not set, the tenant
        # will be created under the same organization or folder as the agent project.
        # Corresponds to the JSON property `defaultTenantLocation`
        # @return [String]
        attr_accessor :default_tenant_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_tenants = args[:allow_tenants] if args.key?(:allow_tenants)
          @default_tenant_location = args[:default_tenant_location] if args.key?(:default_tenant_location)
        end
      end
      
      # Configuration related to sending notifications to users.
      class GoogleCloudIdentitytoolkitAdminV2NotificationConfig
        include Google::Apis::Core::Hashable
      
        # Default locale used for email and SMS in IETF BCP 47 format.
        # Corresponds to the JSON property `defaultLocale`
        # @return [String]
        attr_accessor :default_locale
      
        # Options for email sending.
        # Corresponds to the JSON property `sendEmail`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SendEmail]
        attr_accessor :send_email
      
        # Options for SMS sending.
        # Corresponds to the JSON property `sendSms`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SendSms]
        attr_accessor :send_sms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_locale = args[:default_locale] if args.key?(:default_locale)
          @send_email = args[:send_email] if args.key?(:send_email)
          @send_sms = args[:send_sms] if args.key?(:send_sms)
        end
      end
      
      # Configuration options for authenticating with an OAuth IDP.
      class GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig
        include Google::Apis::Core::Hashable
      
        # The client id of an OAuth client.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # The client secret of the OAuth client, to enable OIDC code flow.
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # The config's display name set by developers.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # True if allows the user to sign in with the provider.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # For OIDC Idps, the issuer identifier.
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-
        # project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The response type to request for in the OAuth authorization flow. You can set
        # either `id_token` or `code` to true, but not both. Setting both types to be
        # simultaneously true (``code: true, id_token: true``) is not yet supported. See
        # https://openid.net/specs/openid-connect-core-1_0.html#Authentication for a
        # mapping of response type to OAuth 2.0 flow.
        # Corresponds to the JSON property `responseType`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthResponseType]
        attr_accessor :response_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enabled = args[:enabled] if args.key?(:enabled)
          @issuer = args[:issuer] if args.key?(:issuer)
          @name = args[:name] if args.key?(:name)
          @response_type = args[:response_type] if args.key?(:response_type)
        end
      end
      
      # The response type to request for in the OAuth authorization flow. You can set
      # either `id_token` or `code` to true, but not both. Setting both types to be
      # simultaneously true (``code: true, id_token: true``) is not yet supported. See
      # https://openid.net/specs/openid-connect-core-1_0.html#Authentication for a
      # mapping of response type to OAuth 2.0 flow.
      class GoogleCloudIdentitytoolkitAdminV2OAuthResponseType
        include Google::Apis::Core::Hashable
      
        # If true, authorization code is returned from IdP's authorization endpoint.
        # Corresponds to the JSON property `code`
        # @return [Boolean]
        attr_accessor :code
        alias_method :code?, :code
      
        # If true, ID token is returned from IdP's authorization endpoint.
        # Corresponds to the JSON property `idToken`
        # @return [Boolean]
        attr_accessor :id_token
        alias_method :id_token?, :id_token
      
        # Do not use. The `token` response type is not supported at the moment.
        # Corresponds to the JSON property `token`
        # @return [Boolean]
        attr_accessor :token
        alias_method :token?, :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @id_token = args[:id_token] if args.key?(:id_token)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Configuration related to restricting a user's ability to affect their account.
      class GoogleCloudIdentitytoolkitAdminV2Permissions
        include Google::Apis::Core::Hashable
      
        # When true, end users cannot delete their account on the associated project
        # through any of our API methods
        # Corresponds to the JSON property `disabledUserDeletion`
        # @return [Boolean]
        attr_accessor :disabled_user_deletion
        alias_method :disabled_user_deletion?, :disabled_user_deletion
      
        # When true, end users cannot sign up for a new account on the associated
        # project through any of our API methods
        # Corresponds to the JSON property `disabledUserSignup`
        # @return [Boolean]
        attr_accessor :disabled_user_signup
        alias_method :disabled_user_signup?, :disabled_user_signup
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled_user_deletion = args[:disabled_user_deletion] if args.key?(:disabled_user_deletion)
          @disabled_user_signup = args[:disabled_user_signup] if args.key?(:disabled_user_signup)
        end
      end
      
      # Configuration options related to authenticated a user by their phone number.
      class GoogleCloudIdentitytoolkitAdminV2PhoneNumber
        include Google::Apis::Core::Hashable
      
        # Whether phone number auth is enabled for the project or not.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # A map of that can be used for phone auth testing.
        # Corresponds to the JSON property `testPhoneNumbers`
        # @return [Hash<String,String>]
        attr_accessor :test_phone_numbers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @test_phone_numbers = args[:test_phone_numbers] if args.key?(:test_phone_numbers)
        end
      end
      
      # Configuration related to quotas.
      class GoogleCloudIdentitytoolkitAdminV2QuotaConfig
        include Google::Apis::Core::Hashable
      
        # Temporary quota increase / decrease
        # Corresponds to the JSON property `signUpQuotaConfig`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2TemporaryQuota]
        attr_accessor :sign_up_quota_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sign_up_quota_config = args[:sign_up_quota_config] if args.key?(:sign_up_quota_config)
        end
      end
      
      # Configuration for logging requests made to this project to Stackdriver Logging
      class GoogleCloudIdentitytoolkitAdminV2RequestLogging
        include Google::Apis::Core::Hashable
      
        # Whether logging is enabled for this project or not.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Options for email sending.
      class GoogleCloudIdentitytoolkitAdminV2SendEmail
        include Google::Apis::Core::Hashable
      
        # action url in email template.
        # Corresponds to the JSON property `callbackUri`
        # @return [String]
        attr_accessor :callback_uri
      
        # Email template. The subject and body fields can contain the following
        # placeholders which will be replaced with the appropriate values: %LINK% - The
        # link to use to redeem the send OOB code. %EMAIL% - The email where the email
        # is being sent. %NEW_EMAIL% - The new email being set for the account (when
        # applicable). %APP_NAME% - The GCP project's display name. %DISPLAY_NAME% - The
        # user's display name.
        # Corresponds to the JSON property `changeEmailTemplate`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate]
        attr_accessor :change_email_template
      
        # Information of custom domain DNS verification. By default, default_domain will
        # be used. A custom domain can be configured using VerifyCustomDomain.
        # Corresponds to the JSON property `dnsInfo`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DnsInfo]
        attr_accessor :dns_info
      
        # Email template. The subject and body fields can contain the following
        # placeholders which will be replaced with the appropriate values: %LINK% - The
        # link to use to redeem the send OOB code. %EMAIL% - The email where the email
        # is being sent. %NEW_EMAIL% - The new email being set for the account (when
        # applicable). %APP_NAME% - The GCP project's display name. %DISPLAY_NAME% - The
        # user's display name.
        # Corresponds to the JSON property `legacyResetPasswordTemplate`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate]
        attr_accessor :legacy_reset_password_template
      
        # The method used for sending an email.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Email template. The subject and body fields can contain the following
        # placeholders which will be replaced with the appropriate values: %LINK% - The
        # link to use to redeem the send OOB code. %EMAIL% - The email where the email
        # is being sent. %NEW_EMAIL% - The new email being set for the account (when
        # applicable). %APP_NAME% - The GCP project's display name. %DISPLAY_NAME% - The
        # user's display name.
        # Corresponds to the JSON property `resetPasswordTemplate`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate]
        attr_accessor :reset_password_template
      
        # Email template. The subject and body fields can contain the following
        # placeholders which will be replaced with the appropriate values: %LINK% - The
        # link to use to redeem the send OOB code. %EMAIL% - The email where the email
        # is being sent. %NEW_EMAIL% - The new email being set for the account (when
        # applicable). %APP_NAME% - The GCP project's display name. %DISPLAY_NAME% - The
        # user's display name.
        # Corresponds to the JSON property `revertSecondFactorAdditionTemplate`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate]
        attr_accessor :revert_second_factor_addition_template
      
        # Configuration for SMTP relay
        # Corresponds to the JSON property `smtp`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Smtp]
        attr_accessor :smtp
      
        # Email template. The subject and body fields can contain the following
        # placeholders which will be replaced with the appropriate values: %LINK% - The
        # link to use to redeem the send OOB code. %EMAIL% - The email where the email
        # is being sent. %NEW_EMAIL% - The new email being set for the account (when
        # applicable). %APP_NAME% - The GCP project's display name. %DISPLAY_NAME% - The
        # user's display name.
        # Corresponds to the JSON property `verifyEmailTemplate`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate]
        attr_accessor :verify_email_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @callback_uri = args[:callback_uri] if args.key?(:callback_uri)
          @change_email_template = args[:change_email_template] if args.key?(:change_email_template)
          @dns_info = args[:dns_info] if args.key?(:dns_info)
          @legacy_reset_password_template = args[:legacy_reset_password_template] if args.key?(:legacy_reset_password_template)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @reset_password_template = args[:reset_password_template] if args.key?(:reset_password_template)
          @revert_second_factor_addition_template = args[:revert_second_factor_addition_template] if args.key?(:revert_second_factor_addition_template)
          @smtp = args[:smtp] if args.key?(:smtp)
          @verify_email_template = args[:verify_email_template] if args.key?(:verify_email_template)
        end
      end
      
      # Options for SMS sending.
      class GoogleCloudIdentitytoolkitAdminV2SendSms
        include Google::Apis::Core::Hashable
      
        # The template to use when sending an SMS.
        # Corresponds to the JSON property `smsTemplate`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SmsTemplate]
        attr_accessor :sms_template
      
        # Whether to use the accept_language header for SMS.
        # Corresponds to the JSON property `useDeviceLocale`
        # @return [Boolean]
        attr_accessor :use_device_locale
        alias_method :use_device_locale?, :use_device_locale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sms_template = args[:sms_template] if args.key?(:sms_template)
          @use_device_locale = args[:use_device_locale] if args.key?(:use_device_locale)
        end
      end
      
      # Configuration related to local sign in methods.
      class GoogleCloudIdentitytoolkitAdminV2SignInConfig
        include Google::Apis::Core::Hashable
      
        # Whether to allow more than one account to have the same email.
        # Corresponds to the JSON property `allowDuplicateEmails`
        # @return [Boolean]
        attr_accessor :allow_duplicate_emails
        alias_method :allow_duplicate_emails?, :allow_duplicate_emails
      
        # Configuration options related to authenticating an anonymous user.
        # Corresponds to the JSON property `anonymous`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Anonymous]
        attr_accessor :anonymous
      
        # Configuration options related to authenticating a user by their email address.
        # Corresponds to the JSON property `email`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Email]
        attr_accessor :email
      
        # History information of the hash algorithm and key. Different accounts'
        # passwords may be generated by different version.
        # Corresponds to the JSON property `hashConfig`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2HashConfig]
        attr_accessor :hash_config
      
        # Configuration options related to authenticated a user by their phone number.
        # Corresponds to the JSON property `phoneNumber`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2PhoneNumber]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_duplicate_emails = args[:allow_duplicate_emails] if args.key?(:allow_duplicate_emails)
          @anonymous = args[:anonymous] if args.key?(:anonymous)
          @email = args[:email] if args.key?(:email)
          @hash_config = args[:hash_config] if args.key?(:hash_config)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # Configures the regions where users are allowed to send verification SMS for
      # the project or tenant. This is based on the calling code of the destination
      # phone number.
      class GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig
        include Google::Apis::Core::Hashable
      
        # Defines a policy of allowing every region by default and adding disallowed
        # regions to a disallow list.
        # Corresponds to the JSON property `allowByDefault`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2AllowByDefault]
        attr_accessor :allow_by_default
      
        # Defines a policy of only allowing regions by explicitly adding them to an
        # allowlist.
        # Corresponds to the JSON property `allowlistOnly`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2AllowlistOnly]
        attr_accessor :allowlist_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_by_default = args[:allow_by_default] if args.key?(:allow_by_default)
          @allowlist_only = args[:allowlist_only] if args.key?(:allowlist_only)
        end
      end
      
      # The template to use when sending an SMS.
      class GoogleCloudIdentitytoolkitAdminV2SmsTemplate
        include Google::Apis::Core::Hashable
      
        # Output only. The SMS's content. Can contain the following placeholders which
        # will be replaced with the appropriate values: %APP_NAME% - For Android or iOS
        # apps, the app's display name. For web apps, the domain hosting the application.
        # %LOGIN_CODE% - The OOB code being sent in the SMS.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # Configuration for SMTP relay
      class GoogleCloudIdentitytoolkitAdminV2Smtp
        include Google::Apis::Core::Hashable
      
        # SMTP relay host
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # SMTP relay password
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # SMTP relay port
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # SMTP security mode.
        # Corresponds to the JSON property `securityMode`
        # @return [String]
        attr_accessor :security_mode
      
        # Sender email for the SMTP relay
        # Corresponds to the JSON property `senderEmail`
        # @return [String]
        attr_accessor :sender_email
      
        # SMTP relay username
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host = args[:host] if args.key?(:host)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @security_mode = args[:security_mode] if args.key?(:security_mode)
          @sender_email = args[:sender_email] if args.key?(:sender_email)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # The SP's certificate data for IDP to verify the SAMLRequest generated by the
      # SP.
      class GoogleCloudIdentitytoolkitAdminV2SpCertificate
        include Google::Apis::Core::Hashable
      
        # Timestamp of the cert expiration instance.
        # Corresponds to the JSON property `expiresAt`
        # @return [String]
        attr_accessor :expires_at
      
        # Self-signed public certificate.
        # Corresponds to the JSON property `x509Certificate`
        # @return [String]
        attr_accessor :x509_certificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expires_at = args[:expires_at] if args.key?(:expires_at)
          @x509_certificate = args[:x509_certificate] if args.key?(:x509_certificate)
        end
      end
      
      # The SAML SP (Service Provider) configuration when the project acts as the
      # relying party to receive and accept an authentication assertion issued by a
      # SAML identity provider.
      class GoogleCloudIdentitytoolkitAdminV2SpConfig
        include Google::Apis::Core::Hashable
      
        # Callback URI where responses from IDP are handled.
        # Corresponds to the JSON property `callbackUri`
        # @return [String]
        attr_accessor :callback_uri
      
        # Output only. Public certificates generated by the server to verify the
        # signature in SAMLRequest in the SP-initiated flow.
        # Corresponds to the JSON property `spCertificates`
        # @return [Array<Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SpCertificate>]
        attr_accessor :sp_certificates
      
        # Unique identifier for all SAML entities.
        # Corresponds to the JSON property `spEntityId`
        # @return [String]
        attr_accessor :sp_entity_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @callback_uri = args[:callback_uri] if args.key?(:callback_uri)
          @sp_certificates = args[:sp_certificates] if args.key?(:sp_certificates)
          @sp_entity_id = args[:sp_entity_id] if args.key?(:sp_entity_id)
        end
      end
      
      # Temporary quota increase / decrease
      class GoogleCloudIdentitytoolkitAdminV2TemporaryQuota
        include Google::Apis::Core::Hashable
      
        # Corresponds to the 'refill_token_count' field in QuotaServer config
        # Corresponds to the JSON property `quota`
        # @return [Fixnum]
        attr_accessor :quota
      
        # How long this quota will be active for
        # Corresponds to the JSON property `quotaDuration`
        # @return [String]
        attr_accessor :quota_duration
      
        # When this quota will take affect
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quota = args[:quota] if args.key?(:quota)
          @quota_duration = args[:quota_duration] if args.key?(:quota_duration)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # A Tenant contains configuration for the tenant in a multi-tenant project.
      class GoogleCloudIdentitytoolkitAdminV2Tenant
        include Google::Apis::Core::Hashable
      
        # Whether to allow email/password user authentication.
        # Corresponds to the JSON property `allowPasswordSignup`
        # @return [Boolean]
        attr_accessor :allow_password_signup
        alias_method :allow_password_signup?, :allow_password_signup
      
        # Whether anonymous users will be auto-deleted after a period of 30 days.
        # Corresponds to the JSON property `autodeleteAnonymousUsers`
        # @return [Boolean]
        attr_accessor :autodelete_anonymous_users
        alias_method :autodelete_anonymous_users?, :autodelete_anonymous_users
      
        # Options related to how clients making requests on behalf of a tenant should be
        # configured.
        # Corresponds to the JSON property `client`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig]
        attr_accessor :client
      
        # Whether authentication is disabled for the tenant. If true, the users under
        # the disabled tenant are not allowed to sign-in. Admins of the disabled tenant
        # are not able to manage its users.
        # Corresponds to the JSON property `disableAuth`
        # @return [Boolean]
        attr_accessor :disable_auth
        alias_method :disable_auth?, :disable_auth
      
        # Display name of the tenant.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Configuration for settings related to email privacy and public visibility.
        # Settings in this config protect against email enumeration, but may make some
        # trade-offs in user-friendliness.
        # Corresponds to the JSON property `emailPrivacyConfig`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig]
        attr_accessor :email_privacy_config
      
        # Whether to enable anonymous user authentication.
        # Corresponds to the JSON property `enableAnonymousUser`
        # @return [Boolean]
        attr_accessor :enable_anonymous_user
        alias_method :enable_anonymous_user?, :enable_anonymous_user
      
        # Whether to enable email link user authentication.
        # Corresponds to the JSON property `enableEmailLinkSignin`
        # @return [Boolean]
        attr_accessor :enable_email_link_signin
        alias_method :enable_email_link_signin?, :enable_email_link_signin
      
        # History information of the hash algorithm and key. Different accounts'
        # passwords may be generated by different version.
        # Corresponds to the JSON property `hashConfig`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2HashConfig]
        attr_accessor :hash_config
      
        # Settings that the tenants will inherit from project level.
        # Corresponds to the JSON property `inheritance`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Inheritance]
        attr_accessor :inheritance
      
        # Options related to MultiFactor Authentication for the project.
        # Corresponds to the JSON property `mfaConfig`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig]
        attr_accessor :mfa_config
      
        # Configuration related to monitoring project activity.
        # Corresponds to the JSON property `monitoring`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MonitoringConfig]
        attr_accessor :monitoring
      
        # Output only. Resource name of a tenant. For example: "projects/`project-id`/
        # tenants/`tenant-id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configures the regions where users are allowed to send verification SMS for
        # the project or tenant. This is based on the calling code of the destination
        # phone number.
        # Corresponds to the JSON property `smsRegionConfig`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig]
        attr_accessor :sms_region_config
      
        # A map of pairs that can be used for MFA. The phone number should be in E.164
        # format (https://www.itu.int/rec/T-REC-E.164/) and a maximum of 10 pairs can be
        # added (error will be thrown once exceeded).
        # Corresponds to the JSON property `testPhoneNumbers`
        # @return [Hash<String,String>]
        attr_accessor :test_phone_numbers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_password_signup = args[:allow_password_signup] if args.key?(:allow_password_signup)
          @autodelete_anonymous_users = args[:autodelete_anonymous_users] if args.key?(:autodelete_anonymous_users)
          @client = args[:client] if args.key?(:client)
          @disable_auth = args[:disable_auth] if args.key?(:disable_auth)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email_privacy_config = args[:email_privacy_config] if args.key?(:email_privacy_config)
          @enable_anonymous_user = args[:enable_anonymous_user] if args.key?(:enable_anonymous_user)
          @enable_email_link_signin = args[:enable_email_link_signin] if args.key?(:enable_email_link_signin)
          @hash_config = args[:hash_config] if args.key?(:hash_config)
          @inheritance = args[:inheritance] if args.key?(:inheritance)
          @mfa_config = args[:mfa_config] if args.key?(:mfa_config)
          @monitoring = args[:monitoring] if args.key?(:monitoring)
          @name = args[:name] if args.key?(:name)
          @sms_region_config = args[:sms_region_config] if args.key?(:sms_region_config)
          @test_phone_numbers = args[:test_phone_numbers] if args.key?(:test_phone_numbers)
        end
      end
      
      # Synchronous Cloud Function with HTTP Trigger
      class GoogleCloudIdentitytoolkitAdminV2Trigger
        include Google::Apis::Core::Hashable
      
        # HTTP URI trigger for the Cloud Function.
        # Corresponds to the JSON property `functionUri`
        # @return [String]
        attr_accessor :function_uri
      
        # When the trigger was changed.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_uri = args[:function_uri] if args.key?(:function_uri)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The information required to auto-retrieve an SMS.
      class GoogleCloudIdentitytoolkitV2AutoRetrievalInfo
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
      
      # Finishes enrolling a second factor for the user.
      class GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest
        include Google::Apis::Core::Hashable
      
        # Display name which is entered by users to distinguish between different second
        # factors with same type or different type.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. ID token.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Phone Verification info for a FinalizeMfa request.
        # Corresponds to the JSON property `phoneVerificationInfo`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo]
        attr_accessor :phone_verification_info
      
        # The ID of the Identity Platform tenant that the user enrolling MFA belongs to.
        # If not set, the user belongs to the default Identity Platform project.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id_token = args[:id_token] if args.key?(:id_token)
          @phone_verification_info = args[:phone_verification_info] if args.key?(:phone_verification_info)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # FinalizeMfaEnrollment response.
      class GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse
        include Google::Apis::Core::Hashable
      
        # ID token updated to reflect MFA enrollment.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Phone Verification info for a FinalizeMfa response.
        # Corresponds to the JSON property `phoneAuthInfo`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo]
        attr_accessor :phone_auth_info
      
        # Refresh token updated to reflect MFA enrollment.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id_token = args[:id_token] if args.key?(:id_token)
          @phone_auth_info = args[:phone_auth_info] if args.key?(:phone_auth_info)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
        end
      end
      
      # Phone Verification info for a FinalizeMfa request.
      class GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo
        include Google::Apis::Core::Hashable
      
        # Android only. Uses for "instant" phone number verification though GmsCore.
        # Corresponds to the JSON property `androidVerificationProof`
        # @return [String]
        attr_accessor :android_verification_proof
      
        # User-entered verification code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Required if Android verification proof is presented.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # An opaque string that represents the enrollment session.
        # Corresponds to the JSON property `sessionInfo`
        # @return [String]
        attr_accessor :session_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_verification_proof = args[:android_verification_proof] if args.key?(:android_verification_proof)
          @code = args[:code] if args.key?(:code)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @session_info = args[:session_info] if args.key?(:session_info)
        end
      end
      
      # Phone Verification info for a FinalizeMfa response.
      class GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo
        include Google::Apis::Core::Hashable
      
        # Android only. Long-lived replacement for valid code tied to android device.
        # Corresponds to the JSON property `androidVerificationProof`
        # @return [String]
        attr_accessor :android_verification_proof
      
        # Android only. Expiration time of verification proof in seconds.
        # Corresponds to the JSON property `androidVerificationProofExpireTime`
        # @return [String]
        attr_accessor :android_verification_proof_expire_time
      
        # For Android verification proof.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_verification_proof = args[:android_verification_proof] if args.key?(:android_verification_proof)
          @android_verification_proof_expire_time = args[:android_verification_proof_expire_time] if args.key?(:android_verification_proof_expire_time)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # Finalizes sign-in by verifying MFA challenge.
      class GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest
        include Google::Apis::Core::Hashable
      
        # Required. Pending credential from first factor sign-in.
        # Corresponds to the JSON property `mfaPendingCredential`
        # @return [String]
        attr_accessor :mfa_pending_credential
      
        # Phone Verification info for a FinalizeMfa request.
        # Corresponds to the JSON property `phoneVerificationInfo`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo]
        attr_accessor :phone_verification_info
      
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
          @mfa_pending_credential = args[:mfa_pending_credential] if args.key?(:mfa_pending_credential)
          @phone_verification_info = args[:phone_verification_info] if args.key?(:phone_verification_info)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # FinalizeMfaSignIn response.
      class GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse
        include Google::Apis::Core::Hashable
      
        # ID token for the authenticated user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Phone Verification info for a FinalizeMfa response.
        # Corresponds to the JSON property `phoneAuthInfo`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo]
        attr_accessor :phone_auth_info
      
        # Refresh token for the authenticated user.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id_token = args[:id_token] if args.key?(:id_token)
          @phone_auth_info = args[:phone_auth_info] if args.key?(:phone_auth_info)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
        end
      end
      
      # Sends MFA enrollment verification SMS for a user.
      class GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest
        include Google::Apis::Core::Hashable
      
        # Required. User's ID token.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # App Verification info for a StartMfa request.
        # Corresponds to the JSON property `phoneEnrollmentInfo`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo]
        attr_accessor :phone_enrollment_info
      
        # The ID of the Identity Platform tenant that the user enrolling MFA belongs to.
        # If not set, the user belongs to the default Identity Platform project.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id_token = args[:id_token] if args.key?(:id_token)
          @phone_enrollment_info = args[:phone_enrollment_info] if args.key?(:phone_enrollment_info)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # StartMfaEnrollment response.
      class GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse
        include Google::Apis::Core::Hashable
      
        # Phone Verification info for a StartMfa response.
        # Corresponds to the JSON property `phoneSessionInfo`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo]
        attr_accessor :phone_session_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_session_info = args[:phone_session_info] if args.key?(:phone_session_info)
        end
      end
      
      # App Verification info for a StartMfa request.
      class GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo
        include Google::Apis::Core::Hashable
      
        # The information required to auto-retrieve an SMS.
        # Corresponds to the JSON property `autoRetrievalInfo`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AutoRetrievalInfo]
        attr_accessor :auto_retrieval_info
      
        # iOS only. Receipt of successful app token validation with APNS.
        # Corresponds to the JSON property `iosReceipt`
        # @return [String]
        attr_accessor :ios_receipt
      
        # iOS only. Secret delivered to iOS app via APNS.
        # Corresponds to the JSON property `iosSecret`
        # @return [String]
        attr_accessor :ios_secret
      
        # Required for enrollment. Phone number to be enrolled as MFA.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Web only. Recaptcha solution.
        # Corresponds to the JSON property `recaptchaToken`
        # @return [String]
        attr_accessor :recaptcha_token
      
        # Android only. Used to assert application identity in place of a recaptcha
        # token. A SafetyNet Token can be generated via the [SafetyNet Android
        # Attestation API](https://developer.android.com/training/safetynet/attestation.
        # html), with the Base64 encoding of the `phone_number` field as the nonce.
        # Corresponds to the JSON property `safetyNetToken`
        # @return [String]
        attr_accessor :safety_net_token
      
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
        end
      end
      
      # Phone Verification info for a StartMfa response.
      class GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo
        include Google::Apis::Core::Hashable
      
        # An opaque string that represents the enrollment session.
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
      
      # Starts multi-factor sign-in by sending the multi-factor auth challenge.
      class GoogleCloudIdentitytoolkitV2StartMfaSignInRequest
        include Google::Apis::Core::Hashable
      
        # Required. MFA enrollment id from the user's list of current MFA enrollments.
        # Corresponds to the JSON property `mfaEnrollmentId`
        # @return [String]
        attr_accessor :mfa_enrollment_id
      
        # Required. Pending credential from first factor sign-in.
        # Corresponds to the JSON property `mfaPendingCredential`
        # @return [String]
        attr_accessor :mfa_pending_credential
      
        # App Verification info for a StartMfa request.
        # Corresponds to the JSON property `phoneSignInInfo`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo]
        attr_accessor :phone_sign_in_info
      
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
          @mfa_enrollment_id = args[:mfa_enrollment_id] if args.key?(:mfa_enrollment_id)
          @mfa_pending_credential = args[:mfa_pending_credential] if args.key?(:mfa_pending_credential)
          @phone_sign_in_info = args[:phone_sign_in_info] if args.key?(:phone_sign_in_info)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # StartMfaSignIn response.
      class GoogleCloudIdentitytoolkitV2StartMfaSignInResponse
        include Google::Apis::Core::Hashable
      
        # Phone Verification info for a StartMfa response.
        # Corresponds to the JSON property `phoneResponseInfo`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo]
        attr_accessor :phone_response_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_response_info = args[:phone_response_info] if args.key?(:phone_response_info)
        end
      end
      
      # Withdraws MFA.
      class GoogleCloudIdentitytoolkitV2WithdrawMfaRequest
        include Google::Apis::Core::Hashable
      
        # Required. User's ID token.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Required. MFA enrollment id from a current MFA enrollment.
        # Corresponds to the JSON property `mfaEnrollmentId`
        # @return [String]
        attr_accessor :mfa_enrollment_id
      
        # The ID of the Identity Platform tenant that the user unenrolling MFA belongs
        # to. If not set, the user belongs to the default Identity Platform project.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id_token = args[:id_token] if args.key?(:id_token)
          @mfa_enrollment_id = args[:mfa_enrollment_id] if args.key?(:mfa_enrollment_id)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
        end
      end
      
      # Withdraws MultiFactorAuth response.
      class GoogleCloudIdentitytoolkitV2WithdrawMfaResponse
        include Google::Apis::Core::Hashable
      
        # ID token updated to reflect removal of the second factor.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Refresh token updated to reflect removal of the second factor.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id_token = args[:id_token] if args.key?(:id_token)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class GoogleIamV1AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::IdentitytoolkitV2::GoogleIamV1AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class GoogleIamV1AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
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
        # @return [Google::Apis::IdentitytoolkitV2::GoogleTypeExpr]
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
        # . * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # domain:`domain``: The G Suite domain (primary) that represents all the users
        # of that domain. For example, `google.com` or `example.com`.
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
      
      # Request message for `GetIamPolicy` method.
      class GoogleIamV1GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleIamV1GetPolicyOptions]
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
      class GoogleIamV1GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum policy version that will be used to format the policy.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected. Requests for policies with any conditional role bindings must
        # specify version 3. Policies with no conditional role bindings may specify any
        # valid value or leave the field unset. The policy in the response might use the
        # policy version that you specified, or it might use a lower policy version. For
        # example, if you specify version 3, but the policy has no conditional role
        # bindings, the response uses version 1. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies).
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
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
      # bindings: - members: - user:mike@example.com - group:admins@example.com -
      # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
      # com role: roles/resourcemanager.organizationViewer condition: title: expirable
      # access description: Does not grant access after Sep 2020 expression: request.
      # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
      # a description of IAM and its features, see the [IAM documentation](https://
      # cloud.google.com/iam/docs/).
      class GoogleIamV1Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::IdentitytoolkitV2::GoogleIamV1AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::IdentitytoolkitV2::GoogleIamV1Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class GoogleIamV1SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
        # bindings: - members: - user:mike@example.com - group:admins@example.com -
        # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
        # com role: roles/resourcemanager.organizationViewer condition: title: expirable
        # access description: Does not grant access after Sep 2020 expression: request.
        # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
        # a description of IAM and its features, see the [IAM documentation](https://
        # cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::IdentitytoolkitV2::GoogleIamV1Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class GoogleIamV1TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
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
      class GoogleIamV1TestIamPermissionsResponse
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
