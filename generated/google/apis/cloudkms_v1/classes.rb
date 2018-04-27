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
    module CloudkmsV1
      
      # Specifies the audit configuration for a service.
      # The configuration determines which permission types are logged, and what
      # identities, if any, are exempted from logging.
      # An AuditConfig must have one or more AuditLogConfigs.
      # If there are AuditConfigs for both `allServices` and a specific service,
      # the union of the two AuditConfigs is used for that service: the log_types
      # specified in each AuditConfig are enabled, and the exempted_members in each
      # AuditLogConfig are exempted.
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
      # "service": "fooservice.googleapis.com"
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
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::CloudkmsV1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging.
        # For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
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
          @service = args[:service] if args.key?(:service)
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
        # account. For example, `alice@gmail.com` .
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
      
        # Labels with user-defined metadata. For more information, see
        # [Labeling Keys](/kms/docs/labeling-keys).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The resource name for this CryptoKey in the format
        # `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
      
        # A CryptoKeyVersion represents an individual cryptographic key, and the
        # associated key material.
        # It can be used for cryptographic operations either directly, or via its
        # parent CryptoKey, in which case the server will choose the appropriate
        # version for the operation.
        # For security reasons, the raw cryptographic key material represented by a
        # CryptoKeyVersion can never be viewed or exported. It can only be used to
        # encrypt or decrypt data when an authorized user or application invokes Cloud
        # KMS.
        # Corresponds to the JSON property `primary`
        # @return [Google::Apis::CloudkmsV1::CryptoKeyVersion]
        attr_accessor :primary
      
        # The immutable purpose of this CryptoKey. Currently, the only acceptable
        # purpose is ENCRYPT_DECRYPT.
        # Corresponds to the JSON property `purpose`
        # @return [String]
        attr_accessor :purpose
      
        # next_rotation_time will be advanced by this period when the service
        # automatically rotates a key. Must be at least one day.
        # If rotation_period is set, next_rotation_time must also be set.
        # Corresponds to the JSON property `rotationPeriod`
        # @return [String]
        attr_accessor :rotation_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @next_rotation_time = args[:next_rotation_time] if args.key?(:next_rotation_time)
          @primary = args[:primary] if args.key?(:primary)
          @purpose = args[:purpose] if args.key?(:purpose)
          @rotation_period = args[:rotation_period] if args.key?(:rotation_period)
        end
      end
      
      # A CryptoKeyVersion represents an individual cryptographic key, and the
      # associated key material.
      # It can be used for cryptographic operations either directly, or via its
      # parent CryptoKey, in which case the server will choose the appropriate
      # version for the operation.
      # For security reasons, the raw cryptographic key material represented by a
      # CryptoKeyVersion can never be viewed or exported. It can only be used to
      # encrypt or decrypt data when an authorized user or application invokes Cloud
      # KMS.
      class CryptoKeyVersion
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this CryptoKeyVersion was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
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
      
        # Output only. The resource name for this CryptoKeyVersion in the format
        # `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The current state of the CryptoKeyVersion.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destroy_event_time = args[:destroy_event_time] if args.key?(:destroy_event_time)
          @destroy_time = args[:destroy_time] if args.key?(:destroy_time)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Request message for KeyManagementService.Decrypt.
      class DecryptRequest
        include Google::Apis::Core::Hashable
      
        # Optional data that must match the data originally supplied in
        # EncryptRequest.additional_authenticated_data.
        # Corresponds to the JSON property `additionalAuthenticatedData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :additional_authenticated_data
      
        # Required. The encrypted data originally returned in
        # EncryptResponse.ciphertext.
        # Corresponds to the JSON property `ciphertext`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :ciphertext
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_authenticated_data = args[:additional_authenticated_data] if args.key?(:additional_authenticated_data)
          @ciphertext = args[:ciphertext] if args.key?(:ciphertext)
        end
      end
      
      # Response message for KeyManagementService.Decrypt.
      class DecryptResponse
        include Google::Apis::Core::Hashable
      
        # The decrypted data originally supplied in EncryptRequest.plaintext.
        # Corresponds to the JSON property `plaintext`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
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
      
      # Request message for KeyManagementService.Encrypt.
      class EncryptRequest
        include Google::Apis::Core::Hashable
      
        # Optional data that, if specified, must also be provided during decryption
        # through DecryptRequest.additional_authenticated_data.  Must be no
        # larger than 64KiB.
        # Corresponds to the JSON property `additionalAuthenticatedData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :additional_authenticated_data
      
        # Required. The data to encrypt. Must be no larger than 64KiB.
        # Corresponds to the JSON property `plaintext`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
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
      
      # Response message for KeyManagementService.Encrypt.
      class EncryptResponse
        include Google::Apis::Core::Hashable
      
        # The encrypted data.
        # Corresponds to the JSON property `ciphertext`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :ciphertext
      
        # The resource name of the CryptoKeyVersion used in encryption.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ciphertext = args[:ciphertext] if args.key?(:ciphertext)
          @name = args[:name] if args.key?(:name)
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
      
      # Response message for KeyManagementService.ListCryptoKeyVersions.
      class ListCryptoKeyVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of CryptoKeyVersions.
        # Corresponds to the JSON property `cryptoKeyVersions`
        # @return [Array<Google::Apis::CloudkmsV1::CryptoKeyVersion>]
        attr_accessor :crypto_key_versions
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crypto_key_versions = args[:crypto_key_versions] if args.key?(:crypto_key_versions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response message for KeyManagementService.ListCryptoKeys.
      class ListCryptoKeysResponse
        include Google::Apis::Core::Hashable
      
        # The list of CryptoKeys.
        # Corresponds to the JSON property `cryptoKeys`
        # @return [Array<Google::Apis::CloudkmsV1::CryptoKey>]
        attr_accessor :crypto_keys
      
        # A token to retrieve next page of results. Pass this value in
        # ListCryptoKeysRequest.page_token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of CryptoKeys that matched the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crypto_keys = args[:crypto_keys] if args.key?(:crypto_keys)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response message for KeyManagementService.ListKeyRings.
      class ListKeyRingsResponse
        include Google::Apis::Core::Hashable
      
        # The list of KeyRings.
        # Corresponds to the JSON property `keyRings`
        # @return [Array<Google::Apis::CloudkmsV1::KeyRing>]
        attr_accessor :key_rings
      
        # A token to retrieve next page of results. Pass this value in
        # ListKeyRingsRequest.page_token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of KeyRings that matched the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_rings = args[:key_rings] if args.key?(:key_rings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::CloudkmsV1::Location>]
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
      
      # A resource that represents Google Cloud Platform location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name.
        # For example, "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example
        # `"cloud.googleapis.com/region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations.
        # For example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Defines an Identity and Access Management (IAM) policy. It is used to
      # specify access control policies for Cloud Platform resources.
      # A `Policy` consists of a list of `bindings`. A `binding` binds a list of
      # `members` to a `role`, where the members can be user accounts, Google groups,
      # Google domains, and service accounts. A `role` is a named list of permissions
      # defined by IAM.
      # **JSON Example**
      # `
      # "bindings": [
      # `
      # "role": "roles/owner",
      # "members": [
      # "user:mike@example.com",
      # "group:admins@example.com",
      # "domain:google.com",
      # "serviceAccount:my-other-app@appspot.gserviceaccount.com"
      # ]
      # `,
      # `
      # "role": "roles/viewer",
      # "members": ["user:sean@example.com"]
      # `
      # ]
      # `
      # **YAML Example**
      # bindings:
      # - members:
      # - user:mike@example.com
      # - group:admins@example.com
      # - domain:google.com
      # - serviceAccount:my-other-app@appspot.gserviceaccount.com
      # role: roles/owner
      # - members:
      # - user:sean@example.com
      # role: roles/viewer
      # For a description of IAM and its features, see the
      # [IAM developer's guide](https://cloud.google.com/iam/docs).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::CloudkmsV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`.
        # `bindings` with no members will result in an error.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::CloudkmsV1::Binding>]
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
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Deprecated.
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
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Defines an Identity and Access Management (IAM) policy. It is used to
        # specify access control policies for Cloud Platform resources.
        # A `Policy` consists of a list of `bindings`. A `binding` binds a list of
        # `members` to a `role`, where the members can be user accounts, Google groups,
        # Google domains, and service accounts. A `role` is a named list of permissions
        # defined by IAM.
        # **JSON Example**
        # `
        # "bindings": [
        # `
        # "role": "roles/owner",
        # "members": [
        # "user:mike@example.com",
        # "group:admins@example.com",
        # "domain:google.com",
        # "serviceAccount:my-other-app@appspot.gserviceaccount.com"
        # ]
        # `,
        # `
        # "role": "roles/viewer",
        # "members": ["user:sean@example.com"]
        # `
        # ]
        # `
        # **YAML Example**
        # bindings:
        # - members:
        # - user:mike@example.com
        # - group:admins@example.com
        # - domain:google.com
        # - serviceAccount:my-other-app@appspot.gserviceaccount.com
        # role: roles/owner
        # - members:
        # - user:sean@example.com
        # role: roles/viewer
        # For a description of IAM and its features, see the
        # [IAM developer's guide](https://cloud.google.com/iam/docs).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::CloudkmsV1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the
        # following default mask is used:
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
    end
  end
end
