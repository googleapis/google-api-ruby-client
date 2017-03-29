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
    module CloudkmsV1beta1
      
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
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Specifies the identities requesting access for a Cloud Platform resource.
        # `members` can have the following values:
        # * `allUsers`: A special identifier that represents anyone who is
        # on the internet; with or without a Google account.
        # * `allAuthenticatedUsers`: A special identifier that represents anyone
        # who is authenticated with a Google account or a service account.
        # * `user:`emailid``: An email address that represents a specific Google
        # account. For example, `alice@gmail.com` or `joe@example.com`.
        # * `serviceAccount:`emailid``: An email address that represents a service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`.
        # * `group:`emailid``: An email address that represents a Google group.
        # For example, `admins@example.com`.
        # * `domain:`domain``: A Google Apps domain name that represents all the
        # users of that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`.
        # For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
        # Required
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Request message for KeyManagementService.Encrypt.
      class EncryptRequest
        include Google::Apis::Core::Hashable
      
        # Optional data that, if specified, must also be provided during decryption
        # through DecryptRequest.additional_authenticated_data.  Must be no
        # larger than 64KiB.
        # Corresponds to the JSON property `additionalAuthenticatedData`
        # @return [String]
        attr_accessor :additional_authenticated_data
      
        # Required. The data to encrypt. Must be no larger than 64KiB.
        # Corresponds to the JSON property `plaintext`
        # @return [String]
        attr_accessor :plaintext
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_authenticated_data = args[:additional_authenticated_data] if args.key?(:additional_authenticated_data)
          @plaintext = args[:plaintext] if args.key?(:plaintext)
        end
      end
      
      # Response message for KeyManagementService.ListCryptoKeyVersions.
      class ListCryptoKeyVersionsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results. Pass this value in
        # ListCryptoKeyVersionsRequest.page_token to retrieve the next page of
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of CryptoKeyVersions that matched the
        # query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        # The list of CryptoKeyVersions.
        # Corresponds to the JSON property `cryptoKeyVersions`
        # @return [Array<Google::Apis::CloudkmsV1beta1::CryptoKeyVersion>]
        attr_accessor :crypto_key_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
          @crypto_key_versions = args[:crypto_key_versions] if args.key?(:crypto_key_versions)
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
      
      # Request message for KeyManagementService.DestroyCryptoKeyVersion.
      class DestroyCryptoKeyVersionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A CryptoKey represents a logical key that can be used for cryptographic
      # operations.
      # A CryptoKey is made up of one or more versions, which
      # represent the actual key material used in cryptographic operations.
      class CryptoKey
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this CryptoKey was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # next_rotation_time will be advanced by this period when the service
        # automatically rotates a key. Must be at least one day.
        # If rotation_period is set, next_rotation_time must also be set.
        # Corresponds to the JSON property `rotationPeriod`
        # @return [String]
        attr_accessor :rotation_period
      
        # A CryptoKeyVersion represents an individual cryptographic key, and the
        # associated key material.
        # It can be used for cryptographic operations either directly, or via its
        # parent CryptoKey, in which case the server will choose the appropriate
        # version for the operation.
        # Corresponds to the JSON property `primary`
        # @return [Google::Apis::CloudkmsV1beta1::CryptoKeyVersion]
        attr_accessor :primary
      
        # Output only. The resource name for this CryptoKey in the format
        # `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The immutable purpose of this CryptoKey. Currently, the only acceptable
        # purpose is ENCRYPT_DECRYPT.
        # Corresponds to the JSON property `purpose`
        # @return [String]
        attr_accessor :purpose
      
        # At next_rotation_time, the Key Management Service will automatically:
        # 1. Create a new version of this CryptoKey.
        # 2. Mark the new version as primary.
        # Key rotations performed manually via
        # CreateCryptoKeyVersion and
        # UpdateCryptoKeyPrimaryVersion
        # do not affect next_rotation_time.
        # Corresponds to the JSON property `nextRotationTime`
        # @return [String]
        attr_accessor :next_rotation_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @rotation_period = args[:rotation_period] if args.key?(:rotation_period)
          @primary = args[:primary] if args.key?(:primary)
          @name = args[:name] if args.key?(:name)
          @purpose = args[:purpose] if args.key?(:purpose)
          @next_rotation_time = args[:next_rotation_time] if args.key?(:next_rotation_time)
        end
      end
      
      # A rule to be applied in a Policy.
      class Rule
        include Google::Apis::Core::Hashable
      
        # A permission is a string of form '<service>.<resource type>.<verb>'
        # (e.g., 'storage.buckets.list'). A value of '*' matches all permissions,
        # and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        # Required
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # If one or more 'not_in' clauses are specified, the rule matches
        # if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries.
        # The format for in and not_in entries is the same as for members in a
        # Binding (see google/iam/v1/policy.proto).
        # Corresponds to the JSON property `notIn`
        # @return [Array<String>]
        attr_accessor :not_in
      
        # Human-readable description of the rule.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Additional restrictions that must be met
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::CloudkmsV1beta1::Condition>]
        attr_accessor :conditions
      
        # The config returned to callers of tech.iam.IAM.CheckPolicy for any entries
        # that match the LOG action.
        # Corresponds to the JSON property `logConfig`
        # @return [Array<Google::Apis::CloudkmsV1beta1::LogConfig>]
        attr_accessor :log_config
      
        # If one or more 'in' clauses are specified, the rule matches if
        # the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
        # Corresponds to the JSON property `in`
        # @return [Array<String>]
        attr_accessor :in
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
          @action = args[:action] if args.key?(:action)
          @not_in = args[:not_in] if args.key?(:not_in)
          @description = args[:description] if args.key?(:description)
          @conditions = args[:conditions] if args.key?(:conditions)
          @log_config = args[:log_config] if args.key?(:log_config)
          @in = args[:in] if args.key?(:in)
        end
      end
      
      # Specifies what kind of log the caller must write
      # Increment a streamz counter with the specified metric and field names.
      # Metric names should start with a '/', generally be lowercase-only,
      # and end in "_count". Field names should not contain an initial slash.
      # The actual exported metric names will have "/iam/policy" prepended.
      # Field names correspond to IAM request parameters and field values are
      # their respective values.
      # At present the only supported field names are
      # - "iam_principal", corresponding to IAMContext.principal;
      # - "" (empty string), resulting in one aggretated counter with no field.
      # Examples:
      # counter ` metric: "/debug_access_count"  field: "iam_principal" `
      # ==> increment counter /iam/policy/backend_debug_access_count
      # `iam_principal=[value of IAMContext.principal]`
      # At this time we do not support:
      # * multiple field names (though this may be supported in the future)
      # * decrementing the counter
      # * incrementing it by anything other than 1
      class LogConfig
        include Google::Apis::Core::Hashable
      
        # Write a Data Access (Gin) log
        # Corresponds to the JSON property `dataAccess`
        # @return [Google::Apis::CloudkmsV1beta1::DataAccessOptions]
        attr_accessor :data_access
      
        # Write a Cloud Audit log
        # Corresponds to the JSON property `cloudAudit`
        # @return [Google::Apis::CloudkmsV1beta1::CloudAuditOptions]
        attr_accessor :cloud_audit
      
        # Options for counters
        # Corresponds to the JSON property `counter`
        # @return [Google::Apis::CloudkmsV1beta1::CounterOptions]
        attr_accessor :counter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_access = args[:data_access] if args.key?(:data_access)
          @cloud_audit = args[:cloud_audit] if args.key?(:cloud_audit)
          @counter = args[:counter] if args.key?(:counter)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Defines an Identity and Access Management (IAM) policy. It is used to
        # specify access control policies for Cloud Platform resources.
        # A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
        # `members` to a `role`, where the members can be user accounts, Google groups,
        # Google domains, and service accounts. A `role` is a named list of permissions
        # defined by IAM.
        # **Example**
        # `
        # "bindings": [
        # `
        # "role": "roles/owner",
        # "members": [
        # "user:mike@example.com",
        # "group:admins@example.com",
        # "domain:google.com",
        # "serviceAccount:my-other-app@appspot.gserviceaccount.com",
        # ]
        # `,
        # `
        # "role": "roles/viewer",
        # "members": ["user:sean@example.com"]
        # `
        # ]
        # `
        # For a description of IAM and its features, see the
        # [IAM developer's guide](https://cloud.google.com/iam).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::CloudkmsV1beta1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, a default
        # mask is used:
        # paths: "bindings, etag"
        # This field is only used by Cloud IAM.
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
      
      # Request message for KeyManagementService.Decrypt.
      class DecryptRequest
        include Google::Apis::Core::Hashable
      
        # Required. The encrypted data originally returned in
        # EncryptResponse.ciphertext.
        # Corresponds to the JSON property `ciphertext`
        # @return [String]
        attr_accessor :ciphertext
      
        # Optional data that must match the data originally supplied in
        # EncryptRequest.additional_authenticated_data.
        # Corresponds to the JSON property `additionalAuthenticatedData`
        # @return [String]
        attr_accessor :additional_authenticated_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ciphertext = args[:ciphertext] if args.key?(:ciphertext)
          @additional_authenticated_data = args[:additional_authenticated_data] if args.key?(:additional_authenticated_data)
        end
      end
      
      # A resource that represents Google Cloud Platform location.
      class Location
        include Google::Apis::Core::Hashable
      
        # Resource name for the location, which may vary between implementations.
        # For example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Cross-service attributes for the location. For example
        # `"cloud.googleapis.com/region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Response message for KeyManagementService.ListCryptoKeys.
      class ListCryptoKeysResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results. Pass this value in
        # ListCryptoKeysRequest.page_token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of CryptoKeys.
        # Corresponds to the JSON property `cryptoKeys`
        # @return [Array<Google::Apis::CloudkmsV1beta1::CryptoKey>]
        attr_accessor :crypto_keys
      
        # The total number of CryptoKeys that matched the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @crypto_keys = args[:crypto_keys] if args.key?(:crypto_keys)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # A condition to be met.
      class Condition
        include Google::Apis::Core::Hashable
      
        # Trusted attributes supplied by any service that owns resources and uses
        # the IAM system for access control.
        # Corresponds to the JSON property `sys`
        # @return [String]
        attr_accessor :sys
      
        # DEPRECATED. Use 'values' instead.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # The objects of the condition. This is mutually exclusive with 'value'.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        # Trusted attributes supplied by the IAM system.
        # Corresponds to the JSON property `iam`
        # @return [String]
        attr_accessor :iam
      
        # An operator to apply the subject with.
        # Corresponds to the JSON property `op`
        # @return [String]
        attr_accessor :op
      
        # Trusted attributes discharged by the service.
        # Corresponds to the JSON property `svc`
        # @return [String]
        attr_accessor :svc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sys = args[:sys] if args.key?(:sys)
          @value = args[:value] if args.key?(:value)
          @values = args[:values] if args.key?(:values)
          @iam = args[:iam] if args.key?(:iam)
          @op = args[:op] if args.key?(:op)
          @svc = args[:svc] if args.key?(:svc)
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
      
      # Provides the configuration for logging a type of permissions.
      # Example:
      # `
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # "exempted_members": [
      # "user:foo@gmail.com"
      # ]
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # `
      # ]
      # `
      # This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
      # foo@gmail.com from DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of
        # permission.
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
      
      # Response message for KeyManagementService.Decrypt.
      class DecryptResponse
        include Google::Apis::Core::Hashable
      
        # The decrypted data originally supplied in EncryptRequest.plaintext.
        # Corresponds to the JSON property `plaintext`
        # @return [String]
        attr_accessor :plaintext
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @plaintext = args[:plaintext] if args.key?(:plaintext)
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
      
      # A KeyRing is a toplevel logical grouping of CryptoKeys.
      class KeyRing
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this KeyRing was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The resource name for the KeyRing in the format
        # `projects/*/locations/*/keyRings/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Response message for KeyManagementService.Encrypt.
      class EncryptResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the CryptoKeyVersion used in encryption.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The encrypted data.
        # Corresponds to the JSON property `ciphertext`
        # @return [String]
        attr_accessor :ciphertext
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @ciphertext = args[:ciphertext] if args.key?(:ciphertext)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::CloudkmsV1beta1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Defines an Identity and Access Management (IAM) policy. It is used to
      # specify access control policies for Cloud Platform resources.
      # A `Policy` consists of a list of `bindings`. A `Binding` binds a list of
      # `members` to a `role`, where the members can be user accounts, Google groups,
      # Google domains, and service accounts. A `role` is a named list of permissions
      # defined by IAM.
      # **Example**
      # `
      # "bindings": [
      # `
      # "role": "roles/owner",
      # "members": [
      # "user:mike@example.com",
      # "group:admins@example.com",
      # "domain:google.com",
      # "serviceAccount:my-other-app@appspot.gserviceaccount.com",
      # ]
      # `,
      # `
      # "role": "roles/viewer",
      # "members": ["user:sean@example.com"]
      # `
      # ]
      # `
      # For a description of IAM and its features, see the
      # [IAM developer's guide](https://cloud.google.com/iam).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::CloudkmsV1beta1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`.
        # Multiple `bindings` must not be specified for the same `role`.
        # `bindings` with no members will result in an error.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::CloudkmsV1beta1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of a policy from overwriting each other.
        # It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform policy updates in order to avoid race
        # conditions: An `etag` is returned in the response to `getIamPolicy`, and
        # systems are expected to put that etag in the request to `setIamPolicy` to
        # ensure that their change will be applied to the same version of the policy.
        # If no `etag` is provided in the call to `setIamPolicy`, then the existing
        # policy is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # 
        # Corresponds to the JSON property `iamOwned`
        # @return [Boolean]
        attr_accessor :iam_owned
        alias_method :iam_owned?, :iam_owned
      
        # If more than one rule is specified, the rules are applied in the following
        # manner:
        # - All matching LOG rules are always applied.
        # - If any DENY/DENY_WITH_LOG rule matches, permission is denied.
        # Logging will be applied if one or more matching rule requires logging.
        # - Otherwise, if any ALLOW/ALLOW_WITH_LOG rule matches, permission is
        # granted.
        # Logging will be applied if one or more matching rule requires logging.
        # - Otherwise, if no rule applies, permission is denied.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::CloudkmsV1beta1::Rule>]
        attr_accessor :rules
      
        # Version of the `Policy`. The default version is 0.
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
          @iam_owned = args[:iam_owned] if args.key?(:iam_owned)
          @rules = args[:rules] if args.key?(:rules)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for KeyManagementService.UpdateCryptoKeyPrimaryVersion.
      class UpdateCryptoKeyPrimaryVersionRequest
        include Google::Apis::Core::Hashable
      
        # The id of the child CryptoKeyVersion to use as primary.
        # Corresponds to the JSON property `cryptoKeyVersionId`
        # @return [String]
        attr_accessor :crypto_key_version_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crypto_key_version_id = args[:crypto_key_version_id] if args.key?(:crypto_key_version_id)
        end
      end
      
      # Request message for KeyManagementService.RestoreCryptoKeyVersion.
      class RestoreCryptoKeyVersionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Response message for KeyManagementService.ListKeyRings.
      class ListKeyRingsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results. Pass this value in
        # ListKeyRingsRequest.page_token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of KeyRings that matched the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        # The list of KeyRings.
        # Corresponds to the JSON property `keyRings`
        # @return [Array<Google::Apis::CloudkmsV1beta1::KeyRing>]
        attr_accessor :key_rings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
          @key_rings = args[:key_rings] if args.key?(:key_rings)
        end
      end
      
      # Specifies the audit configuration for a service.
      # It consists of which permission types are logged, and what identities, if
      # any, are exempted from logging.
      # An AuditConifg must have one or more AuditLogConfigs.
      # If there are AuditConfigs for both `allServices` and a specific service,
      # the union of the two AuditConfigs is used for that service: the log_types
      # specified in each AuditConfig are enabled, and the exempted_members in each
      # AuditConfig are exempted.
      # Example Policy with multiple AuditConfigs:
      # `
      # "audit_configs": [
      # `
      # "service": "allServices"
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # "exempted_members": [
      # "user:foo@gmail.com"
      # ]
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # `,
      # `
      # "log_type": "ADMIN_READ",
      # `
      # ]
      # `,
      # `
      # "service": "fooservice@googleapis.com"
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # "exempted_members": [
      # "user:bar@gmail.com"
      # ]
      # `
      # ]
      # `
      # ]
      # `
      # For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
      # logging. It also exempts foo@gmail.com from DATA_READ logging, and
      # bar@gmail.com from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Next ID: 4
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::CloudkmsV1beta1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # 
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # Specifies a service that will be enabled for audit logging.
        # For example, `resourcemanager`, `storage`, `compute`.
        # `allServices` is a special value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # A CryptoKeyVersion represents an individual cryptographic key, and the
      # associated key material.
      # It can be used for cryptographic operations either directly, or via its
      # parent CryptoKey, in which case the server will choose the appropriate
      # version for the operation.
      class CryptoKeyVersion
        include Google::Apis::Core::Hashable
      
        # The current state of the CryptoKeyVersion.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The resource name for this CryptoKeyVersion in the format
        # `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time this CryptoKeyVersion's key material was
        # destroyed. Only present if state is
        # DESTROYED.
        # Corresponds to the JSON property `destroyEventTime`
        # @return [String]
        attr_accessor :destroy_event_time
      
        # Output only. The time this CryptoKeyVersion's key material is scheduled
        # for destruction. Only present if state is
        # DESTROY_SCHEDULED.
        # Corresponds to the JSON property `destroyTime`
        # @return [String]
        attr_accessor :destroy_time
      
        # Output only. The time at which this CryptoKeyVersion was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @name = args[:name] if args.key?(:name)
          @destroy_event_time = args[:destroy_event_time] if args.key?(:destroy_event_time)
          @destroy_time = args[:destroy_time] if args.key?(:destroy_time)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
    end
  end
end
