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
    module IamV1
      
      # Audit log information specific to Cloud IAM admin APIs. This message is
      # serialized as an `Any` type in the `ServiceData` message of an `AuditLog`
      # message.
      class AdminAuditData
        include Google::Apis::Core::Hashable
      
        # A PermissionDelta message to record the added_permissions and
        # removed_permissions inside a role.
        # Corresponds to the JSON property `permissionDelta`
        # @return [Google::Apis::IamV1::PermissionDelta]
        attr_accessor :permission_delta
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission_delta = args[:permission_delta] if args.key?(:permission_delta)
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
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::IamV1::AuditLogConfig>]
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
      
      # Audit log information specific to Cloud IAM. This message is serialized as an `
      # Any` type in the `ServiceData` message of an `AuditLog` message.
      class AuditData
        include Google::Apis::Core::Hashable
      
        # The difference delta between two policies.
        # Corresponds to the JSON property `policyDelta`
        # @return [Google::Apis::IamV1::PolicyDelta]
        attr_accessor :policy_delta
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_delta = args[:policy_delta] if args.key?(:policy_delta)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class AuditLogConfig
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
      
      # Contains information about an auditable service.
      class AuditableService
        include Google::Apis::Core::Hashable
      
        # Public name of the service. For example, the service name for Cloud IAM is '
        # iam.googleapis.com'.
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
      
      # Represents an Amazon Web Services identity provider.
      class Aws
        include Google::Apis::Core::Hashable
      
        # Required. The AWS account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
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
        # @return [Google::Apis::IamV1::Expr]
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
      
      # One delta entry for Binding. Each individual change (only one member in each
      # entry) to a binding will be a separate entry.
      class BindingDelta
        include Google::Apis::Core::Hashable
      
        # The action that was performed on a Binding. Required
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
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
        # @return [Google::Apis::IamV1::Expr]
        attr_accessor :condition
      
        # A single identity requesting access for a Google Cloud resource. Follows the
        # same format of Binding.members. Required
        # Corresponds to the JSON property `member`
        # @return [String]
        attr_accessor :member
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`. Required
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @condition = args[:condition] if args.key?(:condition)
          @member = args[:member] if args.key?(:member)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # The request to create a new role.
      class CreateRoleRequest
        include Google::Apis::Core::Hashable
      
        # A role in the Identity and Access Management API.
        # Corresponds to the JSON property `role`
        # @return [Google::Apis::IamV1::Role]
        attr_accessor :role
      
        # The role ID to use for this role. A role ID may contain alphanumeric
        # characters, underscores (`_`), and periods (`.`). It must contain a minimum of
        # 3 characters and a maximum of 64 characters.
        # Corresponds to the JSON property `roleId`
        # @return [String]
        attr_accessor :role_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @role = args[:role] if args.key?(:role)
          @role_id = args[:role_id] if args.key?(:role_id)
        end
      end
      
      # The service account key create request.
      class CreateServiceAccountKeyRequest
        include Google::Apis::Core::Hashable
      
        # Which type of key and algorithm to use for the key. The default is currently a
        # 2K RSA key. However this may change in the future.
        # Corresponds to the JSON property `keyAlgorithm`
        # @return [String]
        attr_accessor :key_algorithm
      
        # The output format of the private key. The default value is `
        # TYPE_GOOGLE_CREDENTIALS_FILE`, which is the Google Credentials File format.
        # Corresponds to the JSON property `privateKeyType`
        # @return [String]
        attr_accessor :private_key_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_algorithm = args[:key_algorithm] if args.key?(:key_algorithm)
          @private_key_type = args[:private_key_type] if args.key?(:private_key_type)
        end
      end
      
      # The service account create request.
      class CreateServiceAccountRequest
        include Google::Apis::Core::Hashable
      
        # Required. The account id that is used to generate the service account email
        # address and a stable unique id. It is unique within a project, must be 6-30
        # characters long, and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])`
        # to comply with RFC1035.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # An IAM service account. A service account is an account for an application or
        # a virtual machine (VM) instance, not a person. You can use a service account
        # to call Google APIs. To learn more, read the [overview of service accounts](
        # https://cloud.google.com/iam/help/service-accounts/overview). When you create
        # a service account, you specify the project ID that owns the service account,
        # as well as a name that must be unique within the project. IAM uses these
        # values to create an email address that identifies the service //
        # Corresponds to the JSON property `serviceAccount`
        # @return [Google::Apis::IamV1::ServiceAccount]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # The service account key disable request.
      class DisableServiceAccountKeyRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The service account disable request.
      class DisableServiceAccountRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The service account key enable request.
      class EnableServiceAccountKeyRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The service account enable request.
      class EnableServiceAccountRequest
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
      class Expr
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
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::IamV1::GetPolicyOptions]
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
      
      # Represents an OpenId Connect 1.0 identity provider.
      class GoogleIamAdminV1WorkforcePoolProviderOidc
        include Google::Apis::Core::Hashable
      
        # Required. The client ID. Must match the audience claim of the JWT issued by
        # the identity provider.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Required. The OIDC issuer URI. Must be a valid URI using the 'https' scheme.
        # Corresponds to the JSON property `issuerUri`
        # @return [String]
        attr_accessor :issuer_uri
      
        # Configuration for web single sign-on for the OIDC provider.
        # Corresponds to the JSON property `webSsoConfig`
        # @return [Google::Apis::IamV1::GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig]
        attr_accessor :web_sso_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @issuer_uri = args[:issuer_uri] if args.key?(:issuer_uri)
          @web_sso_config = args[:web_sso_config] if args.key?(:web_sso_config)
        end
      end
      
      # Configuration for web single sign-on for the OIDC provider.
      class GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig
        include Google::Apis::Core::Hashable
      
        # Required. The behavior for how OIDC Claims are included in the `assertion`
        # object used for attribute mapping and attribute condition.
        # Corresponds to the JSON property `assertionClaimsBehavior`
        # @return [String]
        attr_accessor :assertion_claims_behavior
      
        # Required. The Response Type to request for in the OIDC Authorization Request
        # for web sign-in.
        # Corresponds to the JSON property `responseType`
        # @return [String]
        attr_accessor :response_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assertion_claims_behavior = args[:assertion_claims_behavior] if args.key?(:assertion_claims_behavior)
          @response_type = args[:response_type] if args.key?(:response_type)
        end
      end
      
      # Represents a SAML identity provider.
      class GoogleIamAdminV1WorkforcePoolProviderSaml
        include Google::Apis::Core::Hashable
      
        # Required. SAML Identity provider configuration metadata xml doc. The xml
        # document should comply with [SAML 2.0 specification](https://docs.oasis-open.
        # org/security/saml/v2.0/saml-metadata-2.0-os.pdf). The max size of the
        # acceptable xml document will be bounded to 128k characters. The metadata xml
        # document should satisfy the following constraints: 1) Must contain an Identity
        # Provider Entity ID. 2) Must contain at least one non-expired signing key
        # certificate. 3) For each signing key: a) Valid from should be no more than 7
        # days from now. b) Valid to should be no more than 14 years in the future. 4)
        # Up to 3 IdP signing keys are allowed in the metadata xml. When updating the
        # provider's metadata xml, at least one non-expired signing key must overlap
        # with the existing metadata. This requirement is skipped if there are no non-
        # expired signing keys present in the existing metadata.
        # Corresponds to the JSON property `idpMetadataXml`
        # @return [String]
        attr_accessor :idp_metadata_xml
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @idp_metadata_xml = args[:idp_metadata_xml] if args.key?(:idp_metadata_xml)
        end
      end
      
      # Represents a public key data along with its format.
      class KeyData
        include Google::Apis::Core::Hashable
      
        # Output only. The format of the key.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Output only. The key data. The format of the key is represented by the format
        # field.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Required. The specifications for the key.
        # Corresponds to the JSON property `keySpec`
        # @return [String]
        attr_accessor :key_spec
      
        # Output only. Latest timestamp when this key is valid. Attempts to use this key
        # after this time will fail. Only present if the key data represents a X.509
        # certificate.
        # Corresponds to the JSON property `notAfterTime`
        # @return [String]
        attr_accessor :not_after_time
      
        # Output only. Earliest timestamp when this key is valid. Attempts to use this
        # key before this time will fail. Only present if the key data represents a X.
        # 509 certificate.
        # Corresponds to the JSON property `notBeforeTime`
        # @return [String]
        attr_accessor :not_before_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @key = args[:key] if args.key?(:key)
          @key_spec = args[:key_spec] if args.key?(:key_spec)
          @not_after_time = args[:not_after_time] if args.key?(:not_after_time)
          @not_before_time = args[:not_before_time] if args.key?(:not_before_time)
        end
      end
      
      # The request to lint a Cloud IAM policy object.
      class LintPolicyRequest
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
        # @return [Google::Apis::IamV1::Expr]
        attr_accessor :condition
      
        # The full resource name of the policy this lint request is about. The name
        # follows the Google Cloud format for full resource names. For example, a Cloud
        # project with ID `my-project` will be named `//cloudresourcemanager.googleapis.
        # com/projects/my-project`. The resource name is not used to read a policy from
        # IAM. Only the data in the request object is linted.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
        end
      end
      
      # The response of a lint operation. An empty response indicates the operation
      # was able to fully execute and no lint issue was found.
      class LintPolicyResponse
        include Google::Apis::Core::Hashable
      
        # List of lint results sorted by `severity` in descending order.
        # Corresponds to the JSON property `lintResults`
        # @return [Array<Google::Apis::IamV1::LintResult>]
        attr_accessor :lint_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lint_results = args[:lint_results] if args.key?(:lint_results)
        end
      end
      
      # Structured response of a single validation unit.
      class LintResult
        include Google::Apis::Core::Hashable
      
        # Human readable debug message associated with the issue.
        # Corresponds to the JSON property `debugMessage`
        # @return [String]
        attr_accessor :debug_message
      
        # The name of the field for which this lint result is about. For nested messages
        # `field_name` consists of names of the embedded fields separated by period
        # character. The top-level qualifier is the input object to lint in the request.
        # For example, the `field_name` value `condition.expression` identifies a lint
        # result for the `expression` field of the provided condition.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # The validation unit level.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # 0-based character position of problematic construct within the object
        # identified by `field_name`. Currently, this is populated only for condition
        # expression.
        # Corresponds to the JSON property `locationOffset`
        # @return [Fixnum]
        attr_accessor :location_offset
      
        # The validation unit severity.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The validation unit name, for instance "lintValidationUnits/
        # ConditionComplexityCheck".
        # Corresponds to the JSON property `validationUnitName`
        # @return [String]
        attr_accessor :validation_unit_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_message = args[:debug_message] if args.key?(:debug_message)
          @field_name = args[:field_name] if args.key?(:field_name)
          @level = args[:level] if args.key?(:level)
          @location_offset = args[:location_offset] if args.key?(:location_offset)
          @severity = args[:severity] if args.key?(:severity)
          @validation_unit_name = args[:validation_unit_name] if args.key?(:validation_unit_name)
        end
      end
      
      # The response containing the roles defined under a resource.
      class ListRolesResponse
        include Google::Apis::Core::Hashable
      
        # To retrieve the next page of results, set `ListRolesRequest.page_token` to
        # this value.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Roles defined on this resource.
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::IamV1::Role>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # The service account keys list response.
      class ListServiceAccountKeysResponse
        include Google::Apis::Core::Hashable
      
        # The public keys for the service account.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::IamV1::ServiceAccountKey>]
        attr_accessor :keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
        end
      end
      
      # The service account list response.
      class ListServiceAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching service accounts.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::IamV1::ServiceAccount>]
        attr_accessor :accounts
      
        # To retrieve the next page of results, set ListServiceAccountsRequest.
        # page_token to this value.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accounts = args[:accounts] if args.key?(:accounts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListWorkforcePoolProviderKeys.
      class ListWorkforcePoolProviderKeysResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of WorkforcePoolProviderKeys.
        # Corresponds to the JSON property `workforcePoolProviderKeys`
        # @return [Array<Google::Apis::IamV1::WorkforcePoolProviderKey>]
        attr_accessor :workforce_pool_provider_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workforce_pool_provider_keys = args[:workforce_pool_provider_keys] if args.key?(:workforce_pool_provider_keys)
        end
      end
      
      # Response message for ListWorkforcePoolProviders.
      class ListWorkforcePoolProvidersResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of providers.
        # Corresponds to the JSON property `workforcePoolProviders`
        # @return [Array<Google::Apis::IamV1::WorkforcePoolProvider>]
        attr_accessor :workforce_pool_providers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workforce_pool_providers = args[:workforce_pool_providers] if args.key?(:workforce_pool_providers)
        end
      end
      
      # Response message for ListWorkforcePools.
      class ListWorkforcePoolsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of pools.
        # Corresponds to the JSON property `workforcePools`
        # @return [Array<Google::Apis::IamV1::WorkforcePool>]
        attr_accessor :workforce_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workforce_pools = args[:workforce_pools] if args.key?(:workforce_pools)
        end
      end
      
      # Response message for ListWorkloadIdentityPoolProviderKeys.
      class ListWorkloadIdentityPoolProviderKeysResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of WorkloadIdentityPoolProviderKey
        # Corresponds to the JSON property `workloadIdentityPoolProviderKeys`
        # @return [Array<Google::Apis::IamV1::WorkloadIdentityPoolProviderKey>]
        attr_accessor :workload_identity_pool_provider_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workload_identity_pool_provider_keys = args[:workload_identity_pool_provider_keys] if args.key?(:workload_identity_pool_provider_keys)
        end
      end
      
      # Response message for ListWorkloadIdentityPoolProviders.
      class ListWorkloadIdentityPoolProvidersResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of providers.
        # Corresponds to the JSON property `workloadIdentityPoolProviders`
        # @return [Array<Google::Apis::IamV1::WorkloadIdentityPoolProvider>]
        attr_accessor :workload_identity_pool_providers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workload_identity_pool_providers = args[:workload_identity_pool_providers] if args.key?(:workload_identity_pool_providers)
        end
      end
      
      # Response message for ListWorkloadIdentityPools.
      class ListWorkloadIdentityPoolsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of pools.
        # Corresponds to the JSON property `workloadIdentityPools`
        # @return [Array<Google::Apis::IamV1::WorkloadIdentityPool>]
        attr_accessor :workload_identity_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workload_identity_pools = args[:workload_identity_pools] if args.key?(:workload_identity_pools)
        end
      end
      
      # Represents an OpenId Connect 1.0 identity provider.
      class Oidc
        include Google::Apis::Core::Hashable
      
        # Acceptable values for the `aud` field (audience) in the OIDC token. Token
        # exchange requests are rejected if the token audience does not match one of the
        # configured values. Each audience may be at most 256 characters. A maximum of
        # 10 audiences may be configured. If this list is empty, the OIDC token audience
        # must be equal to the full canonical resource name of the
        # WorkloadIdentityPoolProvider, with or without the HTTPS prefix. For example: ``
        # ` //iam.googleapis.com/projects//locations//workloadIdentityPools//providers/
        # https://iam.googleapis.com/projects//locations//workloadIdentityPools//
        # providers/ ```
        # Corresponds to the JSON property `allowedAudiences`
        # @return [Array<String>]
        attr_accessor :allowed_audiences
      
        # Required. The OIDC issuer URL. Must be an HTTPS endpoint.
        # Corresponds to the JSON property `issuerUri`
        # @return [String]
        attr_accessor :issuer_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_audiences = args[:allowed_audiences] if args.key?(:allowed_audiences)
          @issuer_uri = args[:issuer_uri] if args.key?(:issuer_uri)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::IamV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
      
      # The service account patch request. You can patch only the `display_name` and `
      # description` fields. You must use the `update_mask` field to specify which of
      # these fields you want to patch. Only the fields specified in the request are
      # guaranteed to be returned in the response. Other fields may be empty in the
      # response.
      class PatchServiceAccountRequest
        include Google::Apis::Core::Hashable
      
        # An IAM service account. A service account is an account for an application or
        # a virtual machine (VM) instance, not a person. You can use a service account
        # to call Google APIs. To learn more, read the [overview of service accounts](
        # https://cloud.google.com/iam/help/service-accounts/overview). When you create
        # a service account, you specify the project ID that owns the service account,
        # as well as a name that must be unique within the project. IAM uses these
        # values to create an email address that identifies the service //
        # Corresponds to the JSON property `serviceAccount`
        # @return [Google::Apis::IamV1::ServiceAccount]
        attr_accessor :service_account
      
        # 
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # A permission which can be included by a role.
      class Permission
        include Google::Apis::Core::Hashable
      
        # The service API associated with the permission is not enabled.
        # Corresponds to the JSON property `apiDisabled`
        # @return [Boolean]
        attr_accessor :api_disabled
        alias_method :api_disabled?, :api_disabled
      
        # The current custom role support level.
        # Corresponds to the JSON property `customRolesSupportLevel`
        # @return [String]
        attr_accessor :custom_roles_support_level
      
        # A brief description of what this Permission is used for. This permission can
        # ONLY be used in predefined roles.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The name of this Permission.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `onlyInPredefinedRoles`
        # @return [Boolean]
        attr_accessor :only_in_predefined_roles
        alias_method :only_in_predefined_roles?, :only_in_predefined_roles
      
        # The preferred name for this permission. If present, then this permission is an
        # alias of, and equivalent to, the listed primary_permission.
        # Corresponds to the JSON property `primaryPermission`
        # @return [String]
        attr_accessor :primary_permission
      
        # The current launch stage of the permission.
        # Corresponds to the JSON property `stage`
        # @return [String]
        attr_accessor :stage
      
        # The title of this Permission.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_disabled = args[:api_disabled] if args.key?(:api_disabled)
          @custom_roles_support_level = args[:custom_roles_support_level] if args.key?(:custom_roles_support_level)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @only_in_predefined_roles = args[:only_in_predefined_roles] if args.key?(:only_in_predefined_roles)
          @primary_permission = args[:primary_permission] if args.key?(:primary_permission)
          @stage = args[:stage] if args.key?(:stage)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A PermissionDelta message to record the added_permissions and
      # removed_permissions inside a role.
      class PermissionDelta
        include Google::Apis::Core::Hashable
      
        # Added permissions.
        # Corresponds to the JSON property `addedPermissions`
        # @return [Array<String>]
        attr_accessor :added_permissions
      
        # Removed permissions.
        # Corresponds to the JSON property `removedPermissions`
        # @return [Array<String>]
        attr_accessor :removed_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @added_permissions = args[:added_permissions] if args.key?(:added_permissions)
          @removed_permissions = args[:removed_permissions] if args.key?(:removed_permissions)
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
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::IamV1::AuditConfig>]
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
        # @return [Array<Google::Apis::IamV1::Binding>]
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
      
      # The difference delta between two policies.
      class PolicyDelta
        include Google::Apis::Core::Hashable
      
        # The delta for Bindings between two policies.
        # Corresponds to the JSON property `bindingDeltas`
        # @return [Array<Google::Apis::IamV1::BindingDelta>]
        attr_accessor :binding_deltas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binding_deltas = args[:binding_deltas] if args.key?(:binding_deltas)
        end
      end
      
      # A request to get the list of auditable services for a resource.
      class QueryAuditableServicesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The full resource name to query from the list of auditable services.
        # The name follows the Google Cloud Platform resource format. For example, a
        # Cloud Platform project with id `my-project` will be named `//
        # cloudresourcemanager.googleapis.com/projects/my-project`.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
        end
      end
      
      # A response containing a list of auditable services for a resource.
      class QueryAuditableServicesResponse
        include Google::Apis::Core::Hashable
      
        # The auditable services for a resource.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::IamV1::AuditableService>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # The grantable role query request.
      class QueryGrantableRolesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The full resource name to query from the list of grantable roles.
        # The name follows the Google Cloud Platform resource format. For example, a
        # Cloud Platform project with id `my-project` will be named `//
        # cloudresourcemanager.googleapis.com/projects/my-project`.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Optional limit on the number of roles to include in the response. The default
        # is 300, and the maximum is 1,000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional pagination token returned in an earlier QueryGrantableRolesResponse.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # 
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # The grantable role query response.
      class QueryGrantableRolesResponse
        include Google::Apis::Core::Hashable
      
        # To retrieve the next page of results, set `QueryGrantableRolesRequest.
        # page_token` to this value.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching roles.
        # Corresponds to the JSON property `roles`
        # @return [Array<Google::Apis::IamV1::Role>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # A request to get permissions which can be tested on a resource.
      class QueryTestablePermissionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The full resource name to query from the list of testable
        # permissions. The name follows the Google Cloud Platform resource format. For
        # example, a Cloud Platform project with id `my-project` will be named `//
        # cloudresourcemanager.googleapis.com/projects/my-project`.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Optional limit on the number of permissions to include in the response. The
        # default is 100, and the maximum is 1,000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional pagination token returned in an earlier
        # QueryTestablePermissionsRequest.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # The response containing permissions which can be tested on a resource.
      class QueryTestablePermissionsResponse
        include Google::Apis::Core::Hashable
      
        # To retrieve the next page of results, set `QueryTestableRolesRequest.
        # page_token` to this value.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Permissions testable on the requested resource.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::IamV1::Permission>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # A role in the Identity and Access Management API.
      class Role
        include Google::Apis::Core::Hashable
      
        # The current deleted state of the role. This field is read only. It will be
        # ignored in calls to CreateRole and UpdateRole.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Optional. A human-readable description for the role.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Used to perform a consistent read-modify-write.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # The names of the permissions this role grants when bound in an IAM policy.
        # Corresponds to the JSON property `includedPermissions`
        # @return [Array<String>]
        attr_accessor :included_permissions
      
        # The name of the role. When Role is used in CreateRole, the role name must not
        # be set. When Role is used in output and other input such as UpdateRole, the
        # role name is the complete path, e.g., roles/logging.viewer for predefined
        # roles and organizations/`ORGANIZATION_ID`/roles/logging.viewer for custom
        # roles.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The current launch stage of the role. If the `ALPHA` launch stage has been
        # selected for a role, the `stage` field will not be included in the returned
        # definition for the role.
        # Corresponds to the JSON property `stage`
        # @return [String]
        attr_accessor :stage
      
        # Optional. A human-readable title for the role. Typically this is limited to
        # 100 UTF-8 bytes.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted = args[:deleted] if args.key?(:deleted)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @included_permissions = args[:included_permissions] if args.key?(:included_permissions)
          @name = args[:name] if args.key?(:name)
          @stage = args[:stage] if args.key?(:stage)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Represents an SAML 2.0 identity provider.
      class Saml
        include Google::Apis::Core::Hashable
      
        # Required. SAML Identity provider configuration metadata xml doc. The xml
        # document should comply with [SAML 2.0 specification](https://www.oasis-open.
        # org/committees/download.php/56785/sstc-saml-metadata-errata-2.0-wd-05.pdf).
        # The max size of the acceptable xml document will be bounded to 128k characters.
        # The metadata xml document should satisfy the following constraints: 1) Must
        # contain an Identity Provider Entity ID. 2) Must contain at least one non-
        # expired signing key certificate. 3) For each signing key: a) Valid from should
        # be no more than 7 days from now. b) Valid to should be no more than 14 years
        # in the future. 4) Upto 3 IdP signing keys are allowed in the metadata xml.
        # When updating the provider's metadata xml, at lease one non-expired signing
        # key must overlap with the existing metadata. This requirement is skipped if
        # there are no non-expired signing keys present in the existing metadata
        # Corresponds to the JSON property `idpMetadataXml`
        # @return [String]
        attr_accessor :idp_metadata_xml
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @idp_metadata_xml = args[:idp_metadata_xml] if args.key?(:idp_metadata_xml)
        end
      end
      
      # An IAM service account. A service account is an account for an application or
      # a virtual machine (VM) instance, not a person. You can use a service account
      # to call Google APIs. To learn more, read the [overview of service accounts](
      # https://cloud.google.com/iam/help/service-accounts/overview). When you create
      # a service account, you specify the project ID that owns the service account,
      # as well as a name that must be unique within the project. IAM uses these
      # values to create an email address that identifies the service //
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # Optional. A user-specified, human-readable description of the service account.
        # The maximum length is 256 UTF-8 bytes.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Whether the service account is disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Optional. A user-specified, human-readable name for the service account. The
        # maximum length is 100 UTF-8 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The email address of the service account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Deprecated. Do not use.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # The resource name of the service account. Use one of the following formats: * `
        # projects/`PROJECT_ID`/serviceAccounts/`EMAIL_ADDRESS`` * `projects/`PROJECT_ID`
        # /serviceAccounts/`UNIQUE_ID`` As an alternative, you can use the `-` wildcard
        # character instead of the project ID: * `projects/-/serviceAccounts/`
        # EMAIL_ADDRESS`` * `projects/-/serviceAccounts/`UNIQUE_ID`` When possible,
        # avoid using the `-` wildcard character, because it can cause response messages
        # to contain misleading error codes. For example, if you try to access the
        # service account `projects/-/serviceAccounts/fake@example.com`, which does not
        # exist, the response contains an HTTP `403 Forbidden` error instead of a `404
        # Not Found` error.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The OAuth 2.0 client ID for the service account.
        # Corresponds to the JSON property `oauth2ClientId`
        # @return [String]
        attr_accessor :oauth2_client_id
      
        # Output only. The ID of the project that owns the service account.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Output only. The unique, stable numeric ID for the service account. Each
        # service account retains its unique ID even if you delete the service account.
        # For example, if you delete a service account, then create a new service
        # account with the same name, the new service account has a different unique ID
        # than the deleted service account.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @oauth2_client_id = args[:oauth2_client_id] if args.key?(:oauth2_client_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
        end
      end
      
      # Represents a service account key. A service account has two sets of key-pairs:
      # user-managed, and system-managed. User-managed key-pairs can be created and
      # deleted by users. Users are responsible for rotating these keys periodically
      # to ensure security of their service accounts. Users retain the private key of
      # these key-pairs, and Google retains ONLY the public key. System-managed keys
      # are automatically rotated by Google, and are used for signing for a maximum of
      # two weeks. The rotation process is probabilistic, and usage of the new key
      # will gradually ramp up and down over the key's lifetime. If you cache the
      # public key set for a service account, we recommend that you update the cache
      # every 15 minutes. User-managed keys can be added and removed at any time, so
      # it is important to update the cache frequently. For Google-managed keys,
      # Google will publish a key at least 6 hours before it is first used for signing
      # and will keep publishing it for at least 6 hours after it was last used for
      # signing. Public keys for all service accounts are also published at the OAuth2
      # Service Account API.
      class ServiceAccountKey
        include Google::Apis::Core::Hashable
      
        # The key status.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Specifies the algorithm (and possibly key size) for the key.
        # Corresponds to the JSON property `keyAlgorithm`
        # @return [String]
        attr_accessor :key_algorithm
      
        # The key origin.
        # Corresponds to the JSON property `keyOrigin`
        # @return [String]
        attr_accessor :key_origin
      
        # The key type.
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # The resource name of the service account key in the following format `projects/
        # `PROJECT_ID`/serviceAccounts/`ACCOUNT`/keys/`key``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The private key data. Only provided in `CreateServiceAccountKey` responses.
        # Make sure to keep the private key data secure because it allows for the
        # assertion of the service account identity. When base64 decoded, the private
        # key data can be used to authenticate with Google API client libraries and with
        # gcloud auth activate-service-account.
        # Corresponds to the JSON property `privateKeyData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :private_key_data
      
        # The output format for the private key. Only provided in `
        # CreateServiceAccountKey` responses, not in `GetServiceAccountKey` or `
        # ListServiceAccountKey` responses. Google never exposes system-managed private
        # keys, and never retains user-managed private keys.
        # Corresponds to the JSON property `privateKeyType`
        # @return [String]
        attr_accessor :private_key_type
      
        # The public key data. Only provided in `GetServiceAccountKey` responses.
        # Corresponds to the JSON property `publicKeyData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :public_key_data
      
        # The key can be used after this timestamp.
        # Corresponds to the JSON property `validAfterTime`
        # @return [String]
        attr_accessor :valid_after_time
      
        # The key can be used before this timestamp. For system-managed key pairs, this
        # timestamp is the end time for the private key signing operation. The public
        # key could still be used for verification for a few hours after this time.
        # Corresponds to the JSON property `validBeforeTime`
        # @return [String]
        attr_accessor :valid_before_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @key_algorithm = args[:key_algorithm] if args.key?(:key_algorithm)
          @key_origin = args[:key_origin] if args.key?(:key_origin)
          @key_type = args[:key_type] if args.key?(:key_type)
          @name = args[:name] if args.key?(:name)
          @private_key_data = args[:private_key_data] if args.key?(:private_key_data)
          @private_key_type = args[:private_key_type] if args.key?(:private_key_type)
          @public_key_data = args[:public_key_data] if args.key?(:public_key_data)
          @valid_after_time = args[:valid_after_time] if args.key?(:valid_after_time)
          @valid_before_time = args[:valid_before_time] if args.key?(:valid_before_time)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
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
        # @return [Google::Apis::IamV1::Policy]
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
      
      # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
      # com/iam/help/credentials/migrate-api). The service account sign blob request.
      class SignBlobRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. [Migrate to Service Account Credentials API](https://
        # cloud.google.com/iam/help/credentials/migrate-api). The bytes to sign.
        # Corresponds to the JSON property `bytesToSign`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bytes_to_sign
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_to_sign = args[:bytes_to_sign] if args.key?(:bytes_to_sign)
        end
      end
      
      # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
      # com/iam/help/credentials/migrate-api). The service account sign blob response.
      class SignBlobResponse
        include Google::Apis::Core::Hashable
      
        # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
        # com/iam/help/credentials/migrate-api). The id of the key used to sign the blob.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
        # com/iam/help/credentials/migrate-api). The signed blob.
        # Corresponds to the JSON property `signature`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
          @signature = args[:signature] if args.key?(:signature)
        end
      end
      
      # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
      # com/iam/help/credentials/migrate-api). The service account sign JWT request.
      class SignJwtRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. [Migrate to Service Account Credentials API](https://
        # cloud.google.com/iam/help/credentials/migrate-api). The JWT payload to sign.
        # Must be a serialized JSON object that contains a JWT Claims Set. For example: `
        # `"sub": "user@example.com", "iat": 313435`` If the JWT Claims Set contains an
        # expiration time (`exp`) claim, it must be an integer timestamp that is not in
        # the past and no more than 12 hours in the future. If the JWT Claims Set does
        # not contain an expiration time (`exp`) claim, this claim is added
        # automatically, with a timestamp that is 1 hour in the future.
        # Corresponds to the JSON property `payload`
        # @return [String]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
        end
      end
      
      # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
      # com/iam/help/credentials/migrate-api). The service account sign JWT response.
      class SignJwtResponse
        include Google::Apis::Core::Hashable
      
        # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
        # com/iam/help/credentials/migrate-api). The id of the key used to sign the JWT.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # Deprecated. [Migrate to Service Account Credentials API](https://cloud.google.
        # com/iam/help/credentials/migrate-api). The signed JWT.
        # Corresponds to the JSON property `signedJwt`
        # @return [String]
        attr_accessor :signed_jwt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
          @signed_jwt = args[:signed_jwt] if args.key?(:signed_jwt)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
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
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
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
      
      # The request to undelete an existing role.
      class UndeleteRoleRequest
        include Google::Apis::Core::Hashable
      
        # Used to perform a consistent read-modify-write.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
        end
      end
      
      # The service account undelete request.
      class UndeleteServiceAccountRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class UndeleteServiceAccountResponse
        include Google::Apis::Core::Hashable
      
        # An IAM service account. A service account is an account for an application or
        # a virtual machine (VM) instance, not a person. You can use a service account
        # to call Google APIs. To learn more, read the [overview of service accounts](
        # https://cloud.google.com/iam/help/service-accounts/overview). When you create
        # a service account, you specify the project ID that owns the service account,
        # as well as a name that must be unique within the project. IAM uses these
        # values to create an email address that identifies the service //
        # Corresponds to the JSON property `restoredAccount`
        # @return [Google::Apis::IamV1::ServiceAccount]
        attr_accessor :restored_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @restored_account = args[:restored_account] if args.key?(:restored_account)
        end
      end
      
      # Request message for UndeleteWorkforcePoolProviderKey.
      class UndeleteWorkforcePoolProviderKeyRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for UndeleteWorkforcePoolProvider.
      class UndeleteWorkforcePoolProviderRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for UndeleteWorkforcePool.
      class UndeleteWorkforcePoolRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for UndeleteWorkforcePoolSubject.
      class UndeleteWorkforcePoolSubjectRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for UndeleteWorkloadIdentityPoolProviderKey.
      class UndeleteWorkloadIdentityPoolProviderKeyRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for UndeleteWorkloadIdentityPoolProvider.
      class UndeleteWorkloadIdentityPoolProviderRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for UndeleteWorkloadIdentityPool.
      class UndeleteWorkloadIdentityPoolRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The service account key upload request.
      class UploadServiceAccountKeyRequest
        include Google::Apis::Core::Hashable
      
        # The public key to associate with the service account. Must be an RSA public
        # key that is wrapped in an X.509 v3 certificate. Include the first line, `-----
        # BEGIN CERTIFICATE-----`, and the last line, `-----END CERTIFICATE-----`.
        # Corresponds to the JSON property `publicKeyData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :public_key_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @public_key_data = args[:public_key_data] if args.key?(:public_key_data)
        end
      end
      
      # Represents a collection of external workforces. Provides namespaces for
      # federated users that can be referenced in IAM policies.
      class WorkforcePool
        include Google::Apis::Core::Hashable
      
        # A user-specified description of the pool. Cannot exceed 256 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Disables the workforce pool. You cannot use a disabled pool to exchange tokens,
        # or use existing tokens to access resources. If the pool is re-enabled,
        # existing tokens grant access again.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # A user-specified display name of the pool in Google Cloud Console. Cannot
        # exceed 32 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the pool. Format: `locations/`location`/
        # workforcePools/`workforce_pool_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The resource name of the parent. Format: `organizations/`org-id``.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Duration that the Google Cloud access tokens, console sign-in sessions, and `
        # gcloud` sign-in sessions from this pool are valid. Must be greater than 15
        # minutes (900s) and less than 12 hours (43200s). If `session_duration` is not
        # configured, minted credentials have a default duration of one hour (3600s).
        # For SAML providers, the lifetime of the token is the minimum of the `
        # session_duration` and the `SessionNotOnOrAfter` claim in the SAML assertion.
        # Corresponds to the JSON property `sessionDuration`
        # @return [String]
        attr_accessor :session_duration
      
        # Output only. The state of the pool.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @session_duration = args[:session_duration] if args.key?(:session_duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A configuration for an external identity provider.
      class WorkforcePoolProvider
        include Google::Apis::Core::Hashable
      
        # A [Common Expression Language](https://opensource.google/projects/cel)
        # expression, in plain text, to restrict what otherwise valid authentication
        # credentials issued by the provider should not be accepted. The expression must
        # output a boolean representing whether to allow the federation. The following
        # keywords may be referenced in the expressions: * `assertion`: JSON
        # representing the authentication credential issued by the provider. * `google`:
        # The Google attributes mapped from the assertion in the `attribute_mappings`. `
        # google.profile_photo` and `google.display_name` are not supported. * `
        # attribute`: The custom attributes mapped from the assertion in the `
        # attribute_mappings`. The maximum length of the attribute condition expression
        # is 4096 characters. If unspecified, all valid authentication credentials will
        # be accepted. The following example shows how to only allow credentials with a
        # mapped `google.groups` value of `admins`: ``` "'admins' in google.groups" ```
        # Corresponds to the JSON property `attributeCondition`
        # @return [String]
        attr_accessor :attribute_condition
      
        # Required. Maps attributes from the authentication credentials issued by an
        # external identity provider to Google Cloud attributes, such as `subject` and `
        # segment`. Each key must be a string specifying the Google Cloud IAM attribute
        # to map to. The following keys are supported: * `google.subject`: The principal
        # IAM is authenticating. You can reference this value in IAM bindings. This is
        # also the subject that appears in Cloud Logging logs. This is a required field
        # and the mapped subject cannot exceed 127 bytes. * `google.groups`: Groups the
        # authenticating user belongs to. You can grant groups access to resources using
        # an IAM `principalSet` binding; access applies to all members of the group. * `
        # google.display_name`: The name of the authenticated user. This is an optional
        # field and the mapped display name cannot exceed 100 bytes. If not set, `google.
        # subject` will be displayed instead. This attribute cannot be referenced in IAM
        # bindings. * `google.profile_photo`: The URL that specifies the authenticated
        # user's thumbnail photo. This is an optional field. When set, the image will be
        # visible as the user's profile picture. If not set, a generic user icon will be
        # displayed instead. This attribute cannot be referenced in IAM bindings. You
        # can also provide custom attributes by specifying `attribute.`custom_attribute``
        # , where `custom_attribute` is the name of the custom attribute to be mapped.
        # You can define a maximum of 50 custom attributes. The maximum length of a
        # mapped attribute key is 100 characters, and the key may only contain the
        # characters [a-z0-9_]. You can reference these attributes in IAM policies to
        # define fine-grained access for a workforce pool to Google Cloud resources. For
        # example: * `google.subject`: `principal://iam.googleapis.com/locations/global/
        # workforcePools/`pool`/subject/`value`` * `google.groups`: `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool`/group/`value`` * `
        # attribute.`custom_attribute``: `principalSet://iam.googleapis.com/locations/
        # global/workforcePools/`pool`/attribute.`custom_attribute`/`value`` Each value
        # must be a [Common Expression Language] (https://opensource.google/projects/cel)
        # function that maps an identity provider credential to the normalized
        # attribute specified by the corresponding map key. You can use the `assertion`
        # keyword in the expression to access a JSON representation of the
        # authentication credential issued by the provider. The maximum length of an
        # attribute mapping expression is 2048 characters. When evaluated, the total
        # size of all mapped attributes must not exceed 4KB. For OIDC providers, you
        # must supply a custom mapping that includes the `google.subject` attribute. For
        # example, the following maps the `sub` claim of the incoming credential to the `
        # subject` attribute on a Google token: ``` `"google.subject": "assertion.sub"` `
        # ``
        # Corresponds to the JSON property `attributeMapping`
        # @return [Hash<String,String>]
        attr_accessor :attribute_mapping
      
        # A user-specified description of the provider. Cannot exceed 256 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Disables the workforce pool provider. You cannot use a disabled provider to
        # exchange tokens. However, existing tokens still grant access.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # A user-specified display name for the provider. Cannot exceed 32 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the provider. Format: `locations/`location`/
        # workforcePools/`workforce_pool_id`/providers/`provider_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents an OpenId Connect 1.0 identity provider.
        # Corresponds to the JSON property `oidc`
        # @return [Google::Apis::IamV1::GoogleIamAdminV1WorkforcePoolProviderOidc]
        attr_accessor :oidc
      
        # Represents a SAML identity provider.
        # Corresponds to the JSON property `saml`
        # @return [Google::Apis::IamV1::GoogleIamAdminV1WorkforcePoolProviderSaml]
        attr_accessor :saml
      
        # Output only. The state of the provider.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_condition = args[:attribute_condition] if args.key?(:attribute_condition)
          @attribute_mapping = args[:attribute_mapping] if args.key?(:attribute_mapping)
          @description = args[:description] if args.key?(:description)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @oidc = args[:oidc] if args.key?(:oidc)
          @saml = args[:saml] if args.key?(:saml)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents a public key configuration for a Workforce Pool Provider. The key
      # can be configured in your identity provider to encrypt SAML assertions. Google
      # holds the corresponding private key, which it uses to decrypt encrypted tokens.
      class WorkforcePoolProviderKey
        include Google::Apis::Core::Hashable
      
        # Output only. The time after which the key will be permanently deleted and
        # cannot be recovered. Note that the key may get purged before this time if the
        # total limit of keys per provider is exceeded.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Represents a public key data along with its format.
        # Corresponds to the JSON property `keyData`
        # @return [Google::Apis::IamV1::KeyData]
        attr_accessor :key_data
      
        # Output only. The resource name of the key.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the key.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The purpose of the key.
        # Corresponds to the JSON property `use`
        # @return [String]
        attr_accessor :use
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @key_data = args[:key_data] if args.key?(:key_data)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @use = args[:use] if args.key?(:use)
        end
      end
      
      # Represents a collection of external workload identities. You can define IAM
      # policies to grant these identities access to Google Cloud resources.
      class WorkloadIdentityPool
        include Google::Apis::Core::Hashable
      
        # A description of the pool. Cannot exceed 256 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Whether the pool is disabled. You cannot use a disabled pool to exchange
        # tokens, or use existing tokens to access resources. If the pool is re-enabled,
        # existing tokens grant access again.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # A display name for the pool. Cannot exceed 32 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the pool.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the pool.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Metadata for long-running WorkloadIdentityPool operations.
      class WorkloadIdentityPoolOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A configuration for an external identity provider.
      class WorkloadIdentityPoolProvider
        include Google::Apis::Core::Hashable
      
        # [A Common Expression Language](https://opensource.google/projects/cel)
        # expression, in plain text, to restrict what otherwise valid authentication
        # credentials issued by the provider should not be accepted. The expression must
        # output a boolean representing whether to allow the federation. The following
        # keywords may be referenced in the expressions: * `assertion`: JSON
        # representing the authentication credential issued by the provider. * `google`:
        # The Google attributes mapped from the assertion in the `attribute_mappings`. *
        # `attribute`: The custom attributes mapped from the assertion in the `
        # attribute_mappings`. The maximum length of the attribute condition expression
        # is 4096 characters. If unspecified, all valid authentication credential are
        # accepted. The following example shows how to only allow credentials with a
        # mapped `google.groups` value of `admins`: ``` "'admins' in google.groups" ```
        # Corresponds to the JSON property `attributeCondition`
        # @return [String]
        attr_accessor :attribute_condition
      
        # Maps attributes from authentication credentials issued by an external identity
        # provider to Google Cloud attributes, such as `subject` and `segment`. Each key
        # must be a string specifying the Google Cloud IAM attribute to map to. The
        # following keys are supported: * `google.subject`: The principal IAM is
        # authenticating. You can reference this value in IAM bindings. This is also the
        # subject that appears in Cloud Logging logs. Cannot exceed 127 bytes. * `google.
        # groups`: Groups the external identity belongs to. You can grant groups access
        # to resources using an IAM `principalSet` binding; access applies to all
        # members of the group. You can also provide custom attributes by specifying `
        # attribute.`custom_attribute``, where ``custom_attribute`` is the name of the
        # custom attribute to be mapped. You can define a maximum of 50 custom
        # attributes. The maximum length of a mapped attribute key is 100 characters,
        # and the key may only contain the characters [a-z0-9_]. You can reference these
        # attributes in IAM policies to define fine-grained access for a workload to
        # Google Cloud resources. For example: * `google.subject`: `principal://iam.
        # googleapis.com/projects/`project`/locations/`location`/workloadIdentityPools/`
        # pool`/subject/`value`` * `google.groups`: `principalSet://iam.googleapis.com/
        # projects/`project`/locations/`location`/workloadIdentityPools/`pool`/group/`
        # value`` * `attribute.`custom_attribute``: `principalSet://iam.googleapis.com/
        # projects/`project`/locations/`location`/workloadIdentityPools/`pool`/attribute.
        # `custom_attribute`/`value`` Each value must be a [Common Expression Language] (
        # https://opensource.google/projects/cel) function that maps an identity
        # provider credential to the normalized attribute specified by the corresponding
        # map key. You can use the `assertion` keyword in the expression to access a
        # JSON representation of the authentication credential issued by the provider.
        # The maximum length of an attribute mapping expression is 2048 characters. When
        # evaluated, the total size of all mapped attributes must not exceed 8KB. For
        # AWS providers, if no attribute mapping is defined, the following default
        # mapping applies: ``` ` "google.subject":"assertion.arn", "attribute.aws_role":
        # "assertion.arn.contains('assumed-role')" " ? assertion.arn.extract('`
        # account_arn`assumed-role/')" " + 'assumed-role/'" " + assertion.arn.extract('
        # assumed-role/`role_name`/')" " : assertion.arn", ` ``` If any custom attribute
        # mappings are defined, they must include a mapping to the `google.subject`
        # attribute. For OIDC providers, you must supply a custom mapping, which must
        # include the `google.subject` attribute. For example, the following maps the `
        # sub` claim of the incoming credential to the `subject` attribute on a Google
        # token: ``` `"google.subject": "assertion.sub"` ```
        # Corresponds to the JSON property `attributeMapping`
        # @return [Hash<String,String>]
        attr_accessor :attribute_mapping
      
        # Represents an Amazon Web Services identity provider.
        # Corresponds to the JSON property `aws`
        # @return [Google::Apis::IamV1::Aws]
        attr_accessor :aws
      
        # A description for the provider. Cannot exceed 256 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Whether the provider is disabled. You cannot use a disabled provider to
        # exchange tokens. However, existing tokens still grant access.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # A display name for the provider. Cannot exceed 32 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the provider.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents an OpenId Connect 1.0 identity provider.
        # Corresponds to the JSON property `oidc`
        # @return [Google::Apis::IamV1::Oidc]
        attr_accessor :oidc
      
        # Represents an SAML 2.0 identity provider.
        # Corresponds to the JSON property `saml`
        # @return [Google::Apis::IamV1::Saml]
        attr_accessor :saml
      
        # Output only. The state of the provider.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_condition = args[:attribute_condition] if args.key?(:attribute_condition)
          @attribute_mapping = args[:attribute_mapping] if args.key?(:attribute_mapping)
          @aws = args[:aws] if args.key?(:aws)
          @description = args[:description] if args.key?(:description)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @oidc = args[:oidc] if args.key?(:oidc)
          @saml = args[:saml] if args.key?(:saml)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents a public key configuration for your workload identity pool provider.
      # The key can be configured in your identity provider to encrypt the SAML
      # assertions. Google holds the corresponding private key which it uses to
      # decrypt encrypted tokens.
      class WorkloadIdentityPoolProviderKey
        include Google::Apis::Core::Hashable
      
        # Output only. Time after which the key will be permanently purged and cannot be
        # recovered. Note that the key may get purged before this timestamp if the total
        # limit of keys per provider is crossed.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Represents a public key data along with its format.
        # Corresponds to the JSON property `keyData`
        # @return [Google::Apis::IamV1::KeyData]
        attr_accessor :key_data
      
        # Output only. The resource name of the key.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the key.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The purpose of the key.
        # Corresponds to the JSON property `use`
        # @return [String]
        attr_accessor :use
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @key_data = args[:key_data] if args.key?(:key_data)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @use = args[:use] if args.key?(:use)
        end
      end
    end
  end
end
