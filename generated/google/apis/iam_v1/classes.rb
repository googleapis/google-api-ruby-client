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
    module IamV1
      
      # The service account list response.
      class ListServiceAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching service accounts.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::IamV1::ServiceAccount>]
        attr_accessor :accounts
      
        # To retrieve the next page of results, set [ListServiceAccountsRequest.
        # page_token] to this value.
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
      
      # A service account in the Identity and Access Management API. To create a
      # service account, you specify the project_id and account_id for the account.
      # The account_id is unique within the project, and used to generate the service
      # account email address and a stable unique id. All other methods can identify
      # accounts using the format "projects/`project`/serviceAccounts/`account`".
      # Using '-' as a wildcard for the project, will infer the project from the
      # account. The account value can be the email address or the unique_id of the
      # service account.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # The resource name of the service account in the format "projects/`project`/
        # serviceAccounts/`account`". In requests using '-' as a wildcard for the
        # project, will infer the project from the account and the account value can be
        # the email address or the unique_id of the service account. In responses the
        # resource name will always be in the format "projects/`project`/serviceAccounts/
        # `email`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # @OutputOnly The id of the project that owns the service account.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # @OutputOnly unique and stable id of the service account.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        # @OutputOnly Email address of the service account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Optional. A user-specified description of the service account. Must be fewer
        # than 100 UTF-8 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Used to perform a consistent read-modify-write.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # @OutputOnly. The OAuth2 client id for the service account. This is used in
        # conjunction with the OAuth2 clientconfig API to make three legged OAuth2 (3LO)
        # flows to access the data of Google users.
        # Corresponds to the JSON property `oauth2ClientId`
        # @return [String]
        attr_accessor :oauth2_client_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
          @email = args[:email] if args.key?(:email)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @oauth2_client_id = args[:oauth2_client_id] if args.key?(:oauth2_client_id)
        end
      end
      
      # The service account create request.
      class CreateServiceAccountRequest
        include Google::Apis::Core::Hashable
      
        # Required. The account id that is used to generate the service account email
        # address and a stable unique id. It is unique within a project, must be 1-63
        # characters long, and match the regular expression [a-z]([-a-z0-9]*[a-z0-9]) to
        # comply with RFC1035.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # A service account in the Identity and Access Management API. To create a
        # service account, you specify the project_id and account_id for the account.
        # The account_id is unique within the project, and used to generate the service
        # account email address and a stable unique id. All other methods can identify
        # accounts using the format "projects/`project`/serviceAccounts/`account`".
        # Using '-' as a wildcard for the project, will infer the project from the
        # account. The account value can be the email address or the unique_id of the
        # service account.
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
      
      # Represents a service account key. A service account can have 0 or more key
      # pairs. The private keys for these are not stored by Google. ServiceAccountKeys
      # are immutable.
      class ServiceAccountKey
        include Google::Apis::Core::Hashable
      
        # The resource name of the service account key in the format "projects/`project`/
        # serviceAccounts/`email`/keys/`key`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of the private key.
        # Corresponds to the JSON property `privateKeyType`
        # @return [String]
        attr_accessor :private_key_type
      
        # The key data.
        # Corresponds to the JSON property `privateKeyData`
        # @return [String]
        attr_accessor :private_key_data
      
        # The key can be used after this timestamp.
        # Corresponds to the JSON property `validAfterTime`
        # @return [String]
        attr_accessor :valid_after_time
      
        # The key can be used before this timestamp.
        # Corresponds to the JSON property `validBeforeTime`
        # @return [String]
        attr_accessor :valid_before_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @private_key_type = args[:private_key_type] if args.key?(:private_key_type)
          @private_key_data = args[:private_key_data] if args.key?(:private_key_data)
          @valid_after_time = args[:valid_after_time] if args.key?(:valid_after_time)
          @valid_before_time = args[:valid_before_time] if args.key?(:valid_before_time)
        end
      end
      
      # The service account key create request.
      class CreateServiceAccountKeyRequest
        include Google::Apis::Core::Hashable
      
        # The type of the key requested. GOOGLE_CREDENTIALS is the default key type.
        # Corresponds to the JSON property `privateKeyType`
        # @return [String]
        attr_accessor :private_key_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_key_type = args[:private_key_type] if args.key?(:private_key_type)
        end
      end
      
      # The service account sign blob request.
      class SignBlobRequest
        include Google::Apis::Core::Hashable
      
        # The bytes to sign
        # Corresponds to the JSON property `bytesToSign`
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
      
      # The service account sign blob response.
      class SignBlobResponse
        include Google::Apis::Core::Hashable
      
        # The id of the key used to sign the blob.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # The signed blob.
        # Corresponds to the JSON property `signature`
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
      
      # Defines an Identity and Access Management (IAM) policy. It is used to specify
      # access control policies for Cloud Platform resources. A `Policy` consists of a
      # list of `bindings`. A `Binding` binds a list of `members` to a `role`, where
      # the members can be user accounts, Google groups, Google domains, and service
      # accounts. A `role` is a named list of permissions defined by IAM. **Example** `
      # "bindings": [ ` "role": "roles/owner", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-other-app@
      # appspot.gserviceaccount.com"] `, ` "role": "roles/viewer", "members": ["user:
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
        # @return [Array<Google::Apis::IamV1::Binding>]
        attr_accessor :bindings
      
        # 
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::IamV1::Rule>]
        attr_accessor :rules
      
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
          @rules = args[:rules] if args.key?(:rules)
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
      
      # A rule to be applied in a Policy.
      class Rule
        include Google::Apis::Core::Hashable
      
        # Human-readable description of the rule.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value
        # of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.
        # *') matches all verbs.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        # Required
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # The rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in this set of entries.
        # Corresponds to the JSON property `in`
        # @return [Array<String>]
        attr_accessor :in
      
        # The rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is not in this set of
        # entries. The format for in and not_in entries is the same as for members in a
        # Binding (see google/iam/v1/policy.proto).
        # Corresponds to the JSON property `notIn`
        # @return [Array<String>]
        attr_accessor :not_in
      
        # Additional restrictions that must be met
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::IamV1::Condition>]
        attr_accessor :conditions
      
        # The config returned to callers of tech.iam.IAM.CheckPolicy for any entries
        # that match the LOG action.
        # Corresponds to the JSON property `logConfig`
        # @return [Array<Google::Apis::IamV1::LogConfig>]
        attr_accessor :log_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @permissions = args[:permissions] if args.key?(:permissions)
          @action = args[:action] if args.key?(:action)
          @in = args[:in] if args.key?(:in)
          @not_in = args[:not_in] if args.key?(:not_in)
          @conditions = args[:conditions] if args.key?(:conditions)
          @log_config = args[:log_config] if args.key?(:log_config)
        end
      end
      
      # A condition to be met.
      class Condition
        include Google::Apis::Core::Hashable
      
        # Trusted attributes supplied by the IAM system.
        # Corresponds to the JSON property `iam`
        # @return [String]
        attr_accessor :iam
      
        # Trusted attributes supplied by any service that owns resources and uses the
        # IAM system for access control.
        # Corresponds to the JSON property `sys`
        # @return [String]
        attr_accessor :sys
      
        # Trusted attributes discharged by the service.
        # Corresponds to the JSON property `svc`
        # @return [String]
        attr_accessor :svc
      
        # An operator to apply the subject with.
        # Corresponds to the JSON property `op`
        # @return [String]
        attr_accessor :op
      
        # The object of the condition. Exactly one of these must be set.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # The objects of the condition. This is mutually exclusive with 'value'.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam = args[:iam] if args.key?(:iam)
          @sys = args[:sys] if args.key?(:sys)
          @svc = args[:svc] if args.key?(:svc)
          @op = args[:op] if args.key?(:op)
          @value = args[:value] if args.key?(:value)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Specifies what kind of log the caller must write Increment a streamz counter
      # with the specified metric and field names. Metric names should start with a '/'
      # , generally be lowercase-only, and end in "_count". Field names should not
      # contain an initial slash. The actual exported metric names will have "/iam/
      # policy" prepended. Field names correspond to IAM request parameters and field
      # values are their respective values. At present only "iam_principal",
      # corresponding to IAMContext.principal, is supported. Examples: counter `
      # metric: "/debug_access_count" field: "iam_principal" ` ==> increment counter /
      # iam/policy/backend_debug_access_count `iam_principal=[value of IAMContext.
      # principal]` At this time we do not support: * multiple field names (though
      # this may be supported in the future) * decrementing the counter * incrementing
      # it by anything other than 1
      class LogConfig
        include Google::Apis::Core::Hashable
      
        # Options for counters
        # Corresponds to the JSON property `counter`
        # @return [Google::Apis::IamV1::CounterOptions]
        attr_accessor :counter
      
        # Write a Data Access (Gin) log
        # Corresponds to the JSON property `dataAccess`
        # @return [Google::Apis::IamV1::DataAccessOptions]
        attr_accessor :data_access
      
        # Write a Cloud Audit log
        # Corresponds to the JSON property `cloudAudit`
        # @return [Google::Apis::IamV1::CloudAuditOptions]
        attr_accessor :cloud_audit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @counter = args[:counter] if args.key?(:counter)
          @data_access = args[:data_access] if args.key?(:data_access)
          @cloud_audit = args[:cloud_audit] if args.key?(:cloud_audit)
        end
      end
      
      # Options for counters
      class CounterOptions
        include Google::Apis::Core::Hashable
      
        # The metric to update.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # The field value to attribute.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] if args.key?(:metric)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # Write a Data Access (Gin) log
      class DataAccessOptions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Write a Cloud Audit log
      class CloudAuditOptions
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
      
        # Defines an Identity and Access Management (IAM) policy. It is used to specify
        # access control policies for Cloud Platform resources. A `Policy` consists of a
        # list of `bindings`. A `Binding` binds a list of `members` to a `role`, where
        # the members can be user accounts, Google groups, Google domains, and service
        # accounts. A `role` is a named list of permissions defined by IAM. **Example** `
        # "bindings": [ ` "role": "roles/owner", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-other-app@
        # appspot.gserviceaccount.com"] `, ` "role": "roles/viewer", "members": ["user:
        # sean@example.com"] ` ] ` For a description of IAM and its features, see the [
        # IAM developer's guide](https://cloud.google.com/iam).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::IamV1::Policy]
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
        # (such as '*' or 'storage.*') are not allowed. For more information see IAM
        # Overview.
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
    end
  end
end
