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
    module CloudkmsV1
      
      # Request message for KeyManagementService.AsymmetricDecrypt.
      class AsymmetricDecryptRequest
        include Google::Apis::Core::Hashable
      
        # Required. The data encrypted with the named CryptoKeyVersion's public key
        # using OAEP.
        # Corresponds to the JSON property `ciphertext`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :ciphertext
      
        # Optional. An optional CRC32C checksum of the AsymmetricDecryptRequest.
        # ciphertext. If specified, KeyManagementService will verify the integrity of
        # the received AsymmetricDecryptRequest.ciphertext using this checksum.
        # KeyManagementService will report an error if the checksum verification fails.
        # If you receive a checksum error, your client should verify that CRC32C(
        # AsymmetricDecryptRequest.ciphertext) is equal to AsymmetricDecryptRequest.
        # ciphertext_crc32c, and if so, perform a limited number of retries. A
        # persistent mismatch may indicate an issue in your computation of the CRC32C
        # checksum. Note: This field is defined as int64 for reasons of compatibility
        # across different languages. However, it is a non-negative integer, which will
        # never exceed 2^32-1, and can be safely downconverted to uint32 in languages
        # that support this type.
        # Corresponds to the JSON property `ciphertextCrc32c`
        # @return [Fixnum]
        attr_accessor :ciphertext_crc32c
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ciphertext = args[:ciphertext] if args.key?(:ciphertext)
          @ciphertext_crc32c = args[:ciphertext_crc32c] if args.key?(:ciphertext_crc32c)
        end
      end
      
      # Response message for KeyManagementService.AsymmetricDecrypt.
      class AsymmetricDecryptResponse
        include Google::Apis::Core::Hashable
      
        # The decrypted data originally encrypted with the matching public key.
        # Corresponds to the JSON property `plaintext`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :plaintext
      
        # Integrity verification field. A CRC32C checksum of the returned
        # AsymmetricDecryptResponse.plaintext. An integrity check of
        # AsymmetricDecryptResponse.plaintext can be performed by computing the CRC32C
        # checksum of AsymmetricDecryptResponse.plaintext and comparing your results to
        # this field. Discard the response in case of non-matching checksum values, and
        # perform a limited number of retries. A persistent mismatch may indicate an
        # issue in your computation of the CRC32C checksum. Note: This field is defined
        # as int64 for reasons of compatibility across different languages. However, it
        # is a non-negative integer, which will never exceed 2^32-1, and can be safely
        # downconverted to uint32 in languages that support this type.
        # Corresponds to the JSON property `plaintextCrc32c`
        # @return [Fixnum]
        attr_accessor :plaintext_crc32c
      
        # The ProtectionLevel of the CryptoKeyVersion used in decryption.
        # Corresponds to the JSON property `protectionLevel`
        # @return [String]
        attr_accessor :protection_level
      
        # Integrity verification field. A flag indicating whether
        # AsymmetricDecryptRequest.ciphertext_crc32c was received by
        # KeyManagementService and used for the integrity verification of the ciphertext.
        # A false value of this field indicates either that AsymmetricDecryptRequest.
        # ciphertext_crc32c was left unset or that it was not delivered to
        # KeyManagementService. If you've set AsymmetricDecryptRequest.ciphertext_crc32c
        # but this field is still false, discard the response and perform a limited
        # number of retries.
        # Corresponds to the JSON property `verifiedCiphertextCrc32c`
        # @return [Boolean]
        attr_accessor :verified_ciphertext_crc32c
        alias_method :verified_ciphertext_crc32c?, :verified_ciphertext_crc32c
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @plaintext = args[:plaintext] if args.key?(:plaintext)
          @plaintext_crc32c = args[:plaintext_crc32c] if args.key?(:plaintext_crc32c)
          @protection_level = args[:protection_level] if args.key?(:protection_level)
          @verified_ciphertext_crc32c = args[:verified_ciphertext_crc32c] if args.key?(:verified_ciphertext_crc32c)
        end
      end
      
      # Request message for KeyManagementService.AsymmetricSign.
      class AsymmetricSignRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The data to sign. It can't be supplied if AsymmetricSignRequest.
        # digest is supplied.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Optional. An optional CRC32C checksum of the AsymmetricSignRequest.data. If
        # specified, KeyManagementService will verify the integrity of the received
        # AsymmetricSignRequest.data using this checksum. KeyManagementService will
        # report an error if the checksum verification fails. If you receive a checksum
        # error, your client should verify that CRC32C(AsymmetricSignRequest.data) is
        # equal to AsymmetricSignRequest.data_crc32c, and if so, perform a limited
        # number of retries. A persistent mismatch may indicate an issue in your
        # computation of the CRC32C checksum. Note: This field is defined as int64 for
        # reasons of compatibility across different languages. However, it is a non-
        # negative integer, which will never exceed 2^32-1, and can be safely
        # downconverted to uint32 in languages that support this type.
        # Corresponds to the JSON property `dataCrc32c`
        # @return [Fixnum]
        attr_accessor :data_crc32c
      
        # A Digest holds a cryptographic message digest.
        # Corresponds to the JSON property `digest`
        # @return [Google::Apis::CloudkmsV1::Digest]
        attr_accessor :digest
      
        # Optional. An optional CRC32C checksum of the AsymmetricSignRequest.digest. If
        # specified, KeyManagementService will verify the integrity of the received
        # AsymmetricSignRequest.digest using this checksum. KeyManagementService will
        # report an error if the checksum verification fails. If you receive a checksum
        # error, your client should verify that CRC32C(AsymmetricSignRequest.digest) is
        # equal to AsymmetricSignRequest.digest_crc32c, and if so, perform a limited
        # number of retries. A persistent mismatch may indicate an issue in your
        # computation of the CRC32C checksum. Note: This field is defined as int64 for
        # reasons of compatibility across different languages. However, it is a non-
        # negative integer, which will never exceed 2^32-1, and can be safely
        # downconverted to uint32 in languages that support this type.
        # Corresponds to the JSON property `digestCrc32c`
        # @return [Fixnum]
        attr_accessor :digest_crc32c
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @data_crc32c = args[:data_crc32c] if args.key?(:data_crc32c)
          @digest = args[:digest] if args.key?(:digest)
          @digest_crc32c = args[:digest_crc32c] if args.key?(:digest_crc32c)
        end
      end
      
      # Response message for KeyManagementService.AsymmetricSign.
      class AsymmetricSignResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the CryptoKeyVersion used for signing. Check this field
        # to verify that the intended resource was used for signing.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ProtectionLevel of the CryptoKeyVersion used for signing.
        # Corresponds to the JSON property `protectionLevel`
        # @return [String]
        attr_accessor :protection_level
      
        # The created signature.
        # Corresponds to the JSON property `signature`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :signature
      
        # Integrity verification field. A CRC32C checksum of the returned
        # AsymmetricSignResponse.signature. An integrity check of AsymmetricSignResponse.
        # signature can be performed by computing the CRC32C checksum of
        # AsymmetricSignResponse.signature and comparing your results to this field.
        # Discard the response in case of non-matching checksum values, and perform a
        # limited number of retries. A persistent mismatch may indicate an issue in your
        # computation of the CRC32C checksum. Note: This field is defined as int64 for
        # reasons of compatibility across different languages. However, it is a non-
        # negative integer, which will never exceed 2^32-1, and can be safely
        # downconverted to uint32 in languages that support this type.
        # Corresponds to the JSON property `signatureCrc32c`
        # @return [Fixnum]
        attr_accessor :signature_crc32c
      
        # Integrity verification field. A flag indicating whether AsymmetricSignRequest.
        # data_crc32c was received by KeyManagementService and used for the integrity
        # verification of the data. A false value of this field indicates either that
        # AsymmetricSignRequest.data_crc32c was left unset or that it was not delivered
        # to KeyManagementService. If you've set AsymmetricSignRequest.data_crc32c but
        # this field is still false, discard the response and perform a limited number
        # of retries.
        # Corresponds to the JSON property `verifiedDataCrc32c`
        # @return [Boolean]
        attr_accessor :verified_data_crc32c
        alias_method :verified_data_crc32c?, :verified_data_crc32c
      
        # Integrity verification field. A flag indicating whether AsymmetricSignRequest.
        # digest_crc32c was received by KeyManagementService and used for the integrity
        # verification of the digest. A false value of this field indicates either that
        # AsymmetricSignRequest.digest_crc32c was left unset or that it was not
        # delivered to KeyManagementService. If you've set AsymmetricSignRequest.
        # digest_crc32c but this field is still false, discard the response and perform
        # a limited number of retries.
        # Corresponds to the JSON property `verifiedDigestCrc32c`
        # @return [Boolean]
        attr_accessor :verified_digest_crc32c
        alias_method :verified_digest_crc32c?, :verified_digest_crc32c
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @protection_level = args[:protection_level] if args.key?(:protection_level)
          @signature = args[:signature] if args.key?(:signature)
          @signature_crc32c = args[:signature_crc32c] if args.key?(:signature_crc32c)
          @verified_data_crc32c = args[:verified_data_crc32c] if args.key?(:verified_data_crc32c)
          @verified_digest_crc32c = args[:verified_digest_crc32c] if args.key?(:verified_digest_crc32c)
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
        # @return [Array<Google::Apis::CloudkmsV1::AuditLogConfig>]
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
        # @return [Google::Apis::CloudkmsV1::Expr]
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
      
      # A Certificate represents an X.509 certificate used to authenticate HTTPS
      # connections to EKM replicas.
      class Certificate
        include Google::Apis::Core::Hashable
      
        # Output only. The issuer distinguished name in RFC 2253 format. Only present if
        # parsed is true.
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # Output only. The certificate is not valid after this time. Only present if
        # parsed is true.
        # Corresponds to the JSON property `notAfterTime`
        # @return [String]
        attr_accessor :not_after_time
      
        # Output only. The certificate is not valid before this time. Only present if
        # parsed is true.
        # Corresponds to the JSON property `notBeforeTime`
        # @return [String]
        attr_accessor :not_before_time
      
        # Output only. True if the certificate was parsed successfully.
        # Corresponds to the JSON property `parsed`
        # @return [Boolean]
        attr_accessor :parsed
        alias_method :parsed?, :parsed
      
        # Required. The raw certificate bytes in DER format.
        # Corresponds to the JSON property `rawDer`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :raw_der
      
        # Output only. The certificate serial number as a hex string. Only present if
        # parsed is true.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # Output only. The SHA-256 certificate fingerprint as a hex string. Only present
        # if parsed is true.
        # Corresponds to the JSON property `sha256Fingerprint`
        # @return [String]
        attr_accessor :sha256_fingerprint
      
        # Output only. The subject distinguished name in RFC 2253 format. Only present
        # if parsed is true.
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        # Output only. The subject Alternative DNS names. Only present if parsed is true.
        # Corresponds to the JSON property `subjectAlternativeDnsNames`
        # @return [Array<String>]
        attr_accessor :subject_alternative_dns_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issuer = args[:issuer] if args.key?(:issuer)
          @not_after_time = args[:not_after_time] if args.key?(:not_after_time)
          @not_before_time = args[:not_before_time] if args.key?(:not_before_time)
          @parsed = args[:parsed] if args.key?(:parsed)
          @raw_der = args[:raw_der] if args.key?(:raw_der)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @sha256_fingerprint = args[:sha256_fingerprint] if args.key?(:sha256_fingerprint)
          @subject = args[:subject] if args.key?(:subject)
          @subject_alternative_dns_names = args[:subject_alternative_dns_names] if args.key?(:subject_alternative_dns_names)
        end
      end
      
      # Certificate chains needed to verify the attestation. Certificates in chains
      # are PEM-encoded and are ordered based on https://tools.ietf.org/html/rfc5246#
      # section-7.4.2.
      class CertificateChains
        include Google::Apis::Core::Hashable
      
        # Cavium certificate chain corresponding to the attestation.
        # Corresponds to the JSON property `caviumCerts`
        # @return [Array<String>]
        attr_accessor :cavium_certs
      
        # Google card certificate chain corresponding to the attestation.
        # Corresponds to the JSON property `googleCardCerts`
        # @return [Array<String>]
        attr_accessor :google_card_certs
      
        # Google partition certificate chain corresponding to the attestation.
        # Corresponds to the JSON property `googlePartitionCerts`
        # @return [Array<String>]
        attr_accessor :google_partition_certs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cavium_certs = args[:cavium_certs] if args.key?(:cavium_certs)
          @google_card_certs = args[:google_card_certs] if args.key?(:google_card_certs)
          @google_partition_certs = args[:google_partition_certs] if args.key?(:google_partition_certs)
        end
      end
      
      # A CryptoKey represents a logical key that can be used for cryptographic
      # operations. A CryptoKey is made up of zero or more versions, which represent
      # the actual key material used in cryptographic operations.
      class CryptoKey
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this CryptoKey was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Immutable. The resource name of the backend environment where the key material
        # for all CryptoKeyVersions associated with this CryptoKey reside and where all
        # related cryptographic operations are performed. Only applicable if
        # CryptoKeyVersions have a ProtectionLevel of EXTERNAL_VPC, with the resource
        # name in the format `projects/*/locations/*/ekmConnections/*`. Note, this list
        # is non-exhaustive and may apply to additional ProtectionLevels in the future.
        # Corresponds to the JSON property `cryptoKeyBackend`
        # @return [String]
        attr_accessor :crypto_key_backend
      
        # Immutable. The period of time that versions of this key spend in the
        # DESTROY_SCHEDULED state before transitioning to DESTROYED. If not specified at
        # creation time, the default duration is 24 hours.
        # Corresponds to the JSON property `destroyScheduledDuration`
        # @return [String]
        attr_accessor :destroy_scheduled_duration
      
        # Immutable. Whether this key may contain imported versions only.
        # Corresponds to the JSON property `importOnly`
        # @return [Boolean]
        attr_accessor :import_only
        alias_method :import_only?, :import_only
      
        # Labels with user-defined metadata. For more information, see [Labeling Keys](
        # https://cloud.google.com/kms/docs/labeling-keys).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The resource name for this CryptoKey in the format `projects/*/
        # locations/*/keyRings/*/cryptoKeys/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # At next_rotation_time, the Key Management Service will automatically: 1.
        # Create a new version of this CryptoKey. 2. Mark the new version as primary.
        # Key rotations performed manually via CreateCryptoKeyVersion and
        # UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with
        # purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field
        # must be omitted.
        # Corresponds to the JSON property `nextRotationTime`
        # @return [String]
        attr_accessor :next_rotation_time
      
        # A CryptoKeyVersion represents an individual cryptographic key, and the
        # associated key material. An ENABLED version can be used for cryptographic
        # operations. For security reasons, the raw cryptographic key material
        # represented by a CryptoKeyVersion can never be viewed or exported. It can only
        # be used to encrypt, decrypt, or sign data when an authorized user or
        # application invokes Cloud KMS.
        # Corresponds to the JSON property `primary`
        # @return [Google::Apis::CloudkmsV1::CryptoKeyVersion]
        attr_accessor :primary
      
        # Immutable. The immutable purpose of this CryptoKey.
        # Corresponds to the JSON property `purpose`
        # @return [String]
        attr_accessor :purpose
      
        # next_rotation_time will be advanced by this period when the service
        # automatically rotates a key. Must be at least 24 hours and at most 876,000
        # hours. If rotation_period is set, next_rotation_time must also be set. Keys
        # with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this
        # field must be omitted.
        # Corresponds to the JSON property `rotationPeriod`
        # @return [String]
        attr_accessor :rotation_period
      
        # A CryptoKeyVersionTemplate specifies the properties to use when creating a new
        # CryptoKeyVersion, either manually with CreateCryptoKeyVersion or automatically
        # as a result of auto-rotation.
        # Corresponds to the JSON property `versionTemplate`
        # @return [Google::Apis::CloudkmsV1::CryptoKeyVersionTemplate]
        attr_accessor :version_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @crypto_key_backend = args[:crypto_key_backend] if args.key?(:crypto_key_backend)
          @destroy_scheduled_duration = args[:destroy_scheduled_duration] if args.key?(:destroy_scheduled_duration)
          @import_only = args[:import_only] if args.key?(:import_only)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @next_rotation_time = args[:next_rotation_time] if args.key?(:next_rotation_time)
          @primary = args[:primary] if args.key?(:primary)
          @purpose = args[:purpose] if args.key?(:purpose)
          @rotation_period = args[:rotation_period] if args.key?(:rotation_period)
          @version_template = args[:version_template] if args.key?(:version_template)
        end
      end
      
      # A CryptoKeyVersion represents an individual cryptographic key, and the
      # associated key material. An ENABLED version can be used for cryptographic
      # operations. For security reasons, the raw cryptographic key material
      # represented by a CryptoKeyVersion can never be viewed or exported. It can only
      # be used to encrypt, decrypt, or sign data when an authorized user or
      # application invokes Cloud KMS.
      class CryptoKeyVersion
        include Google::Apis::Core::Hashable
      
        # Output only. The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # Contains an HSM-generated attestation about a key operation. For more
        # information, see [Verifying attestations] (https://cloud.google.com/kms/docs/
        # attest-key).
        # Corresponds to the JSON property `attestation`
        # @return [Google::Apis::CloudkmsV1::KeyOperationAttestation]
        attr_accessor :attestation
      
        # Output only. The time at which this CryptoKeyVersion was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time this CryptoKeyVersion's key material was destroyed. Only
        # present if state is DESTROYED.
        # Corresponds to the JSON property `destroyEventTime`
        # @return [String]
        attr_accessor :destroy_event_time
      
        # Output only. The time this CryptoKeyVersion's key material is scheduled for
        # destruction. Only present if state is DESTROY_SCHEDULED.
        # Corresponds to the JSON property `destroyTime`
        # @return [String]
        attr_accessor :destroy_time
      
        # Output only. The root cause of the most recent external destruction failure.
        # Only present if state is EXTERNAL_DESTRUCTION_FAILED.
        # Corresponds to the JSON property `externalDestructionFailureReason`
        # @return [String]
        attr_accessor :external_destruction_failure_reason
      
        # ExternalProtectionLevelOptions stores a group of additional fields for
        # configuring a CryptoKeyVersion that are specific to the EXTERNAL protection
        # level and EXTERNAL_VPC protection levels.
        # Corresponds to the JSON property `externalProtectionLevelOptions`
        # @return [Google::Apis::CloudkmsV1::ExternalProtectionLevelOptions]
        attr_accessor :external_protection_level_options
      
        # Output only. The time this CryptoKeyVersion's key material was generated.
        # Corresponds to the JSON property `generateTime`
        # @return [String]
        attr_accessor :generate_time
      
        # Output only. The root cause of the most recent generation failure. Only
        # present if state is GENERATION_FAILED.
        # Corresponds to the JSON property `generationFailureReason`
        # @return [String]
        attr_accessor :generation_failure_reason
      
        # Output only. The root cause of the most recent import failure. Only present if
        # state is IMPORT_FAILED.
        # Corresponds to the JSON property `importFailureReason`
        # @return [String]
        attr_accessor :import_failure_reason
      
        # Output only. The name of the ImportJob used in the most recent import of this
        # CryptoKeyVersion. Only present if the underlying key material was imported.
        # Corresponds to the JSON property `importJob`
        # @return [String]
        attr_accessor :import_job
      
        # Output only. The time at which this CryptoKeyVersion's key material was most
        # recently imported.
        # Corresponds to the JSON property `importTime`
        # @return [String]
        attr_accessor :import_time
      
        # Output only. The resource name for this CryptoKeyVersion in the format `
        # projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The ProtectionLevel describing how crypto operations are
        # performed with this CryptoKeyVersion.
        # Corresponds to the JSON property `protectionLevel`
        # @return [String]
        attr_accessor :protection_level
      
        # Output only. Whether or not this key version is eligible for reimport, by
        # being specified as a target in ImportCryptoKeyVersionRequest.
        # crypto_key_version.
        # Corresponds to the JSON property `reimportEligible`
        # @return [Boolean]
        attr_accessor :reimport_eligible
        alias_method :reimport_eligible?, :reimport_eligible
      
        # The current state of the CryptoKeyVersion.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @attestation = args[:attestation] if args.key?(:attestation)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destroy_event_time = args[:destroy_event_time] if args.key?(:destroy_event_time)
          @destroy_time = args[:destroy_time] if args.key?(:destroy_time)
          @external_destruction_failure_reason = args[:external_destruction_failure_reason] if args.key?(:external_destruction_failure_reason)
          @external_protection_level_options = args[:external_protection_level_options] if args.key?(:external_protection_level_options)
          @generate_time = args[:generate_time] if args.key?(:generate_time)
          @generation_failure_reason = args[:generation_failure_reason] if args.key?(:generation_failure_reason)
          @import_failure_reason = args[:import_failure_reason] if args.key?(:import_failure_reason)
          @import_job = args[:import_job] if args.key?(:import_job)
          @import_time = args[:import_time] if args.key?(:import_time)
          @name = args[:name] if args.key?(:name)
          @protection_level = args[:protection_level] if args.key?(:protection_level)
          @reimport_eligible = args[:reimport_eligible] if args.key?(:reimport_eligible)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A CryptoKeyVersionTemplate specifies the properties to use when creating a new
      # CryptoKeyVersion, either manually with CreateCryptoKeyVersion or automatically
      # as a result of auto-rotation.
      class CryptoKeyVersionTemplate
        include Google::Apis::Core::Hashable
      
        # Required. Algorithm to use when creating a CryptoKeyVersion based on this
        # template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied
        # if both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # ProtectionLevel to use when creating a CryptoKeyVersion based on this template.
        # Immutable. Defaults to SOFTWARE.
        # Corresponds to the JSON property `protectionLevel`
        # @return [String]
        attr_accessor :protection_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @protection_level = args[:protection_level] if args.key?(:protection_level)
        end
      end
      
      # Request message for KeyManagementService.Decrypt.
      class DecryptRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Optional data that must match the data originally supplied in
        # EncryptRequest.additional_authenticated_data.
        # Corresponds to the JSON property `additionalAuthenticatedData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :additional_authenticated_data
      
        # Optional. An optional CRC32C checksum of the DecryptRequest.
        # additional_authenticated_data. If specified, KeyManagementService will verify
        # the integrity of the received DecryptRequest.additional_authenticated_data
        # using this checksum. KeyManagementService will report an error if the checksum
        # verification fails. If you receive a checksum error, your client should verify
        # that CRC32C(DecryptRequest.additional_authenticated_data) is equal to
        # DecryptRequest.additional_authenticated_data_crc32c, and if so, perform a
        # limited number of retries. A persistent mismatch may indicate an issue in your
        # computation of the CRC32C checksum. Note: This field is defined as int64 for
        # reasons of compatibility across different languages. However, it is a non-
        # negative integer, which will never exceed 2^32-1, and can be safely
        # downconverted to uint32 in languages that support this type.
        # Corresponds to the JSON property `additionalAuthenticatedDataCrc32c`
        # @return [Fixnum]
        attr_accessor :additional_authenticated_data_crc32c
      
        # Required. The encrypted data originally returned in EncryptResponse.ciphertext.
        # Corresponds to the JSON property `ciphertext`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :ciphertext
      
        # Optional. An optional CRC32C checksum of the DecryptRequest.ciphertext. If
        # specified, KeyManagementService will verify the integrity of the received
        # DecryptRequest.ciphertext using this checksum. KeyManagementService will
        # report an error if the checksum verification fails. If you receive a checksum
        # error, your client should verify that CRC32C(DecryptRequest.ciphertext) is
        # equal to DecryptRequest.ciphertext_crc32c, and if so, perform a limited number
        # of retries. A persistent mismatch may indicate an issue in your computation of
        # the CRC32C checksum. Note: This field is defined as int64 for reasons of
        # compatibility across different languages. However, it is a non-negative
        # integer, which will never exceed 2^32-1, and can be safely downconverted to
        # uint32 in languages that support this type.
        # Corresponds to the JSON property `ciphertextCrc32c`
        # @return [Fixnum]
        attr_accessor :ciphertext_crc32c
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_authenticated_data = args[:additional_authenticated_data] if args.key?(:additional_authenticated_data)
          @additional_authenticated_data_crc32c = args[:additional_authenticated_data_crc32c] if args.key?(:additional_authenticated_data_crc32c)
          @ciphertext = args[:ciphertext] if args.key?(:ciphertext)
          @ciphertext_crc32c = args[:ciphertext_crc32c] if args.key?(:ciphertext_crc32c)
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
      
        # Integrity verification field. A CRC32C checksum of the returned
        # DecryptResponse.plaintext. An integrity check of DecryptResponse.plaintext can
        # be performed by computing the CRC32C checksum of DecryptResponse.plaintext and
        # comparing your results to this field. Discard the response in case of non-
        # matching checksum values, and perform a limited number of retries. A
        # persistent mismatch may indicate an issue in your computation of the CRC32C
        # checksum. Note: receiving this response message indicates that
        # KeyManagementService is able to successfully decrypt the ciphertext. Note:
        # This field is defined as int64 for reasons of compatibility across different
        # languages. However, it is a non-negative integer, which will never exceed 2^32-
        # 1, and can be safely downconverted to uint32 in languages that support this
        # type.
        # Corresponds to the JSON property `plaintextCrc32c`
        # @return [Fixnum]
        attr_accessor :plaintext_crc32c
      
        # The ProtectionLevel of the CryptoKeyVersion used in decryption.
        # Corresponds to the JSON property `protectionLevel`
        # @return [String]
        attr_accessor :protection_level
      
        # Whether the Decryption was performed using the primary key version.
        # Corresponds to the JSON property `usedPrimary`
        # @return [Boolean]
        attr_accessor :used_primary
        alias_method :used_primary?, :used_primary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @plaintext = args[:plaintext] if args.key?(:plaintext)
          @plaintext_crc32c = args[:plaintext_crc32c] if args.key?(:plaintext_crc32c)
          @protection_level = args[:protection_level] if args.key?(:protection_level)
          @used_primary = args[:used_primary] if args.key?(:used_primary)
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
      
      # A Digest holds a cryptographic message digest.
      class Digest
        include Google::Apis::Core::Hashable
      
        # A message digest produced with the SHA-256 algorithm.
        # Corresponds to the JSON property `sha256`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha256
      
        # A message digest produced with the SHA-384 algorithm.
        # Corresponds to the JSON property `sha384`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha384
      
        # A message digest produced with the SHA-512 algorithm.
        # Corresponds to the JSON property `sha512`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha512
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sha256 = args[:sha256] if args.key?(:sha256)
          @sha384 = args[:sha384] if args.key?(:sha384)
          @sha512 = args[:sha512] if args.key?(:sha512)
        end
      end
      
      # An EkmConfig is a singleton resource that represents configuration parameters
      # that apply to all CryptoKeys and CryptoKeyVersions with a ProtectionLevel of
      # EXTERNAL_VPC in a given project and location.
      class EkmConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Resource name of the default EkmConnection. Setting this field to
        # the empty string removes the default.
        # Corresponds to the JSON property `defaultEkmConnection`
        # @return [String]
        attr_accessor :default_ekm_connection
      
        # Output only. The resource name for the EkmConfig in the format `projects/*/
        # locations/*/ekmConfig`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_ekm_connection = args[:default_ekm_connection] if args.key?(:default_ekm_connection)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An EkmConnection represents an individual EKM connection. It can be used for
      # creating CryptoKeys and CryptoKeyVersions with a ProtectionLevel of
      # EXTERNAL_VPC, as well as performing cryptographic operations using keys
      # created within the EkmConnection.
      class EkmConnection
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the EkmConnection was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Identifies the EKM Crypto Space that this EkmConnection maps to.
        # Note: This field is required if KeyManagementMode is CLOUD_KMS.
        # Corresponds to the JSON property `cryptoSpacePath`
        # @return [String]
        attr_accessor :crypto_space_path
      
        # Optional. Etag of the currently stored EkmConnection.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Describes who can perform control plane operations on the EKM. If
        # unset, this defaults to MANUAL.
        # Corresponds to the JSON property `keyManagementMode`
        # @return [String]
        attr_accessor :key_management_mode
      
        # Output only. The resource name for the EkmConnection in the format `projects/*/
        # locations/*/ekmConnections/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of ServiceResolvers where the EKM can be reached. There should be one
        # ServiceResolver per EKM replica. Currently, only a single ServiceResolver is
        # supported.
        # Corresponds to the JSON property `serviceResolvers`
        # @return [Array<Google::Apis::CloudkmsV1::ServiceResolver>]
        attr_accessor :service_resolvers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @crypto_space_path = args[:crypto_space_path] if args.key?(:crypto_space_path)
          @etag = args[:etag] if args.key?(:etag)
          @key_management_mode = args[:key_management_mode] if args.key?(:key_management_mode)
          @name = args[:name] if args.key?(:name)
          @service_resolvers = args[:service_resolvers] if args.key?(:service_resolvers)
        end
      end
      
      # Request message for KeyManagementService.Encrypt.
      class EncryptRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Optional data that, if specified, must also be provided during
        # decryption through DecryptRequest.additional_authenticated_data. The maximum
        # size depends on the key version's protection_level. For SOFTWARE, EXTERNAL,
        # and EXTERNAL_VPC keys the AAD must be no larger than 64KiB. For HSM keys, the
        # combined length of the plaintext and additional_authenticated_data fields must
        # be no larger than 8KiB.
        # Corresponds to the JSON property `additionalAuthenticatedData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :additional_authenticated_data
      
        # Optional. An optional CRC32C checksum of the EncryptRequest.
        # additional_authenticated_data. If specified, KeyManagementService will verify
        # the integrity of the received EncryptRequest.additional_authenticated_data
        # using this checksum. KeyManagementService will report an error if the checksum
        # verification fails. If you receive a checksum error, your client should verify
        # that CRC32C(EncryptRequest.additional_authenticated_data) is equal to
        # EncryptRequest.additional_authenticated_data_crc32c, and if so, perform a
        # limited number of retries. A persistent mismatch may indicate an issue in your
        # computation of the CRC32C checksum. Note: This field is defined as int64 for
        # reasons of compatibility across different languages. However, it is a non-
        # negative integer, which will never exceed 2^32-1, and can be safely
        # downconverted to uint32 in languages that support this type.
        # Corresponds to the JSON property `additionalAuthenticatedDataCrc32c`
        # @return [Fixnum]
        attr_accessor :additional_authenticated_data_crc32c
      
        # Required. The data to encrypt. Must be no larger than 64KiB. The maximum size
        # depends on the key version's protection_level. For SOFTWARE, EXTERNAL, and
        # EXTERNAL_VPC keys, the plaintext must be no larger than 64KiB. For HSM keys,
        # the combined length of the plaintext and additional_authenticated_data fields
        # must be no larger than 8KiB.
        # Corresponds to the JSON property `plaintext`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :plaintext
      
        # Optional. An optional CRC32C checksum of the EncryptRequest.plaintext. If
        # specified, KeyManagementService will verify the integrity of the received
        # EncryptRequest.plaintext using this checksum. KeyManagementService will report
        # an error if the checksum verification fails. If you receive a checksum error,
        # your client should verify that CRC32C(EncryptRequest.plaintext) is equal to
        # EncryptRequest.plaintext_crc32c, and if so, perform a limited number of
        # retries. A persistent mismatch may indicate an issue in your computation of
        # the CRC32C checksum. Note: This field is defined as int64 for reasons of
        # compatibility across different languages. However, it is a non-negative
        # integer, which will never exceed 2^32-1, and can be safely downconverted to
        # uint32 in languages that support this type.
        # Corresponds to the JSON property `plaintextCrc32c`
        # @return [Fixnum]
        attr_accessor :plaintext_crc32c
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_authenticated_data = args[:additional_authenticated_data] if args.key?(:additional_authenticated_data)
          @additional_authenticated_data_crc32c = args[:additional_authenticated_data_crc32c] if args.key?(:additional_authenticated_data_crc32c)
          @plaintext = args[:plaintext] if args.key?(:plaintext)
          @plaintext_crc32c = args[:plaintext_crc32c] if args.key?(:plaintext_crc32c)
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
      
        # Integrity verification field. A CRC32C checksum of the returned
        # EncryptResponse.ciphertext. An integrity check of EncryptResponse.ciphertext
        # can be performed by computing the CRC32C checksum of EncryptResponse.
        # ciphertext and comparing your results to this field. Discard the response in
        # case of non-matching checksum values, and perform a limited number of retries.
        # A persistent mismatch may indicate an issue in your computation of the CRC32C
        # checksum. Note: This field is defined as int64 for reasons of compatibility
        # across different languages. However, it is a non-negative integer, which will
        # never exceed 2^32-1, and can be safely downconverted to uint32 in languages
        # that support this type.
        # Corresponds to the JSON property `ciphertextCrc32c`
        # @return [Fixnum]
        attr_accessor :ciphertext_crc32c
      
        # The resource name of the CryptoKeyVersion used in encryption. Check this field
        # to verify that the intended resource was used for encryption.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ProtectionLevel of the CryptoKeyVersion used in encryption.
        # Corresponds to the JSON property `protectionLevel`
        # @return [String]
        attr_accessor :protection_level
      
        # Integrity verification field. A flag indicating whether EncryptRequest.
        # additional_authenticated_data_crc32c was received by KeyManagementService and
        # used for the integrity verification of the AAD. A false value of this field
        # indicates either that EncryptRequest.additional_authenticated_data_crc32c was
        # left unset or that it was not delivered to KeyManagementService. If you've set
        # EncryptRequest.additional_authenticated_data_crc32c but this field is still
        # false, discard the response and perform a limited number of retries.
        # Corresponds to the JSON property `verifiedAdditionalAuthenticatedDataCrc32c`
        # @return [Boolean]
        attr_accessor :verified_additional_authenticated_data_crc32c
        alias_method :verified_additional_authenticated_data_crc32c?, :verified_additional_authenticated_data_crc32c
      
        # Integrity verification field. A flag indicating whether EncryptRequest.
        # plaintext_crc32c was received by KeyManagementService and used for the
        # integrity verification of the plaintext. A false value of this field indicates
        # either that EncryptRequest.plaintext_crc32c was left unset or that it was not
        # delivered to KeyManagementService. If you've set EncryptRequest.
        # plaintext_crc32c but this field is still false, discard the response and
        # perform a limited number of retries.
        # Corresponds to the JSON property `verifiedPlaintextCrc32c`
        # @return [Boolean]
        attr_accessor :verified_plaintext_crc32c
        alias_method :verified_plaintext_crc32c?, :verified_plaintext_crc32c
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ciphertext = args[:ciphertext] if args.key?(:ciphertext)
          @ciphertext_crc32c = args[:ciphertext_crc32c] if args.key?(:ciphertext_crc32c)
          @name = args[:name] if args.key?(:name)
          @protection_level = args[:protection_level] if args.key?(:protection_level)
          @verified_additional_authenticated_data_crc32c = args[:verified_additional_authenticated_data_crc32c] if args.key?(:verified_additional_authenticated_data_crc32c)
          @verified_plaintext_crc32c = args[:verified_plaintext_crc32c] if args.key?(:verified_plaintext_crc32c)
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
      
      # ExternalProtectionLevelOptions stores a group of additional fields for
      # configuring a CryptoKeyVersion that are specific to the EXTERNAL protection
      # level and EXTERNAL_VPC protection levels.
      class ExternalProtectionLevelOptions
        include Google::Apis::Core::Hashable
      
        # The path to the external key material on the EKM when using EkmConnection e.g.,
        # "v0/my/key". Set this field instead of external_key_uri when using an
        # EkmConnection.
        # Corresponds to the JSON property `ekmConnectionKeyPath`
        # @return [String]
        attr_accessor :ekm_connection_key_path
      
        # The URI for an external resource that this CryptoKeyVersion represents.
        # Corresponds to the JSON property `externalKeyUri`
        # @return [String]
        attr_accessor :external_key_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ekm_connection_key_path = args[:ekm_connection_key_path] if args.key?(:ekm_connection_key_path)
          @external_key_uri = args[:external_key_uri] if args.key?(:external_key_uri)
        end
      end
      
      # Request message for KeyManagementService.GenerateRandomBytes.
      class GenerateRandomBytesRequest
        include Google::Apis::Core::Hashable
      
        # The length in bytes of the amount of randomness to retrieve. Minimum 8 bytes,
        # maximum 1024 bytes.
        # Corresponds to the JSON property `lengthBytes`
        # @return [Fixnum]
        attr_accessor :length_bytes
      
        # The ProtectionLevel to use when generating the random data. Currently, only
        # HSM protection level is supported.
        # Corresponds to the JSON property `protectionLevel`
        # @return [String]
        attr_accessor :protection_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @length_bytes = args[:length_bytes] if args.key?(:length_bytes)
          @protection_level = args[:protection_level] if args.key?(:protection_level)
        end
      end
      
      # Response message for KeyManagementService.GenerateRandomBytes.
      class GenerateRandomBytesResponse
        include Google::Apis::Core::Hashable
      
        # The generated data.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Integrity verification field. A CRC32C checksum of the returned
        # GenerateRandomBytesResponse.data. An integrity check of
        # GenerateRandomBytesResponse.data can be performed by computing the CRC32C
        # checksum of GenerateRandomBytesResponse.data and comparing your results to
        # this field. Discard the response in case of non-matching checksum values, and
        # perform a limited number of retries. A persistent mismatch may indicate an
        # issue in your computation of the CRC32C checksum. Note: This field is defined
        # as int64 for reasons of compatibility across different languages. However, it
        # is a non-negative integer, which will never exceed 2^32-1, and can be safely
        # downconverted to uint32 in languages that support this type.
        # Corresponds to the JSON property `dataCrc32c`
        # @return [Fixnum]
        attr_accessor :data_crc32c
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @data_crc32c = args[:data_crc32c] if args.key?(:data_crc32c)
        end
      end
      
      # Request message for KeyManagementService.ImportCryptoKeyVersion.
      class ImportCryptoKeyVersionRequest
        include Google::Apis::Core::Hashable
      
        # Required. The algorithm of the key being imported. This does not need to match
        # the version_template of the CryptoKey this version imports into.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # Optional. The optional name of an existing CryptoKeyVersion to target for an
        # import operation. If this field is not present, a new CryptoKeyVersion
        # containing the supplied key material is created. If this field is present, the
        # supplied key material is imported into the existing CryptoKeyVersion. To
        # import into an existing CryptoKeyVersion, the CryptoKeyVersion must be a child
        # of ImportCryptoKeyVersionRequest.parent, have been previously created via
        # ImportCryptoKeyVersion, and be in DESTROYED or IMPORT_FAILED state. The key
        # material and algorithm must match the previous CryptoKeyVersion exactly if the
        # CryptoKeyVersion has ever contained key material.
        # Corresponds to the JSON property `cryptoKeyVersion`
        # @return [String]
        attr_accessor :crypto_key_version
      
        # Required. The name of the ImportJob that was used to wrap this key material.
        # Corresponds to the JSON property `importJob`
        # @return [String]
        attr_accessor :import_job
      
        # Optional. This field has the same meaning as wrapped_key. Prefer to use that
        # field in new work. Either that field or this field (but not both) must be
        # specified.
        # Corresponds to the JSON property `rsaAesWrappedKey`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :rsa_aes_wrapped_key
      
        # Optional. The wrapped key material to import. Before wrapping, key material
        # must be formatted. If importing symmetric key material, the expected key
        # material format is plain bytes. If importing asymmetric key material, the
        # expected key material format is PKCS#8-encoded DER (the PrivateKeyInfo
        # structure from RFC 5208). When wrapping with import methods (
        # RSA_OAEP_3072_SHA1_AES_256 or RSA_OAEP_4096_SHA1_AES_256 or
        # RSA_OAEP_3072_SHA256_AES_256 or RSA_OAEP_4096_SHA256_AES_256), this field must
        # contain the concatenation of: 1. An ephemeral AES-256 wrapping key wrapped
        # with the public_key using RSAES-OAEP with SHA-1/SHA-256, MGF1 with SHA-1/SHA-
        # 256, and an empty label. 2. The formatted key to be imported, wrapped with the
        # ephemeral AES-256 key using AES-KWP (RFC 5649). This format is the same as the
        # format produced by PKCS#11 mechanism CKM_RSA_AES_KEY_WRAP. When wrapping with
        # import methods (RSA_OAEP_3072_SHA256 or RSA_OAEP_4096_SHA256), this field must
        # contain the formatted key to be imported, wrapped with the public_key using
        # RSAES-OAEP with SHA-256, MGF1 with SHA-256, and an empty label.
        # Corresponds to the JSON property `wrappedKey`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :wrapped_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @crypto_key_version = args[:crypto_key_version] if args.key?(:crypto_key_version)
          @import_job = args[:import_job] if args.key?(:import_job)
          @rsa_aes_wrapped_key = args[:rsa_aes_wrapped_key] if args.key?(:rsa_aes_wrapped_key)
          @wrapped_key = args[:wrapped_key] if args.key?(:wrapped_key)
        end
      end
      
      # An ImportJob can be used to create CryptoKeys and CryptoKeyVersions using pre-
      # existing key material, generated outside of Cloud KMS. When an ImportJob is
      # created, Cloud KMS will generate a "wrapping key", which is a public/private
      # key pair. You use the wrapping key to encrypt (also known as wrap) the pre-
      # existing key material to protect it during the import process. The nature of
      # the wrapping key depends on the choice of import_method. When the wrapping key
      # generation is complete, the state will be set to ACTIVE and the public_key can
      # be fetched. The fetched public key can then be used to wrap your pre-existing
      # key material. Once the key material is wrapped, it can be imported into a new
      # CryptoKeyVersion in an existing CryptoKey by calling ImportCryptoKeyVersion.
      # Multiple CryptoKeyVersions can be imported with a single ImportJob. Cloud KMS
      # uses the private key portion of the wrapping key to unwrap the key material.
      # Only Cloud KMS has access to the private key. An ImportJob expires 3 days
      # after it is created. Once expired, Cloud KMS will no longer be able to import
      # or unwrap any key material that was wrapped with the ImportJob's public key.
      # For more information, see [Importing a key](https://cloud.google.com/kms/docs/
      # importing-a-key).
      class ImportJob
        include Google::Apis::Core::Hashable
      
        # Contains an HSM-generated attestation about a key operation. For more
        # information, see [Verifying attestations] (https://cloud.google.com/kms/docs/
        # attest-key).
        # Corresponds to the JSON property `attestation`
        # @return [Google::Apis::CloudkmsV1::KeyOperationAttestation]
        attr_accessor :attestation
      
        # Output only. The time at which this ImportJob was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time this ImportJob expired. Only present if state is EXPIRED.
        # Corresponds to the JSON property `expireEventTime`
        # @return [String]
        attr_accessor :expire_event_time
      
        # Output only. The time at which this ImportJob is scheduled for expiration and
        # can no longer be used to import key material.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. The time this ImportJob's key material was generated.
        # Corresponds to the JSON property `generateTime`
        # @return [String]
        attr_accessor :generate_time
      
        # Required. Immutable. The wrapping method to be used for incoming key material.
        # Corresponds to the JSON property `importMethod`
        # @return [String]
        attr_accessor :import_method
      
        # Output only. The resource name for this ImportJob in the format `projects/*/
        # locations/*/keyRings/*/importJobs/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The protection level of the ImportJob. This must match
        # the protection_level of the version_template on the CryptoKey you attempt to
        # import into.
        # Corresponds to the JSON property `protectionLevel`
        # @return [String]
        attr_accessor :protection_level
      
        # The public key component of the wrapping key. For details of the type of key
        # this public key corresponds to, see the ImportMethod.
        # Corresponds to the JSON property `publicKey`
        # @return [Google::Apis::CloudkmsV1::WrappingPublicKey]
        attr_accessor :public_key
      
        # Output only. The current state of the ImportJob, indicating if it can be used.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attestation = args[:attestation] if args.key?(:attestation)
          @create_time = args[:create_time] if args.key?(:create_time)
          @expire_event_time = args[:expire_event_time] if args.key?(:expire_event_time)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @generate_time = args[:generate_time] if args.key?(:generate_time)
          @import_method = args[:import_method] if args.key?(:import_method)
          @name = args[:name] if args.key?(:name)
          @protection_level = args[:protection_level] if args.key?(:protection_level)
          @public_key = args[:public_key] if args.key?(:public_key)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Contains an HSM-generated attestation about a key operation. For more
      # information, see [Verifying attestations] (https://cloud.google.com/kms/docs/
      # attest-key).
      class KeyOperationAttestation
        include Google::Apis::Core::Hashable
      
        # Certificate chains needed to verify the attestation. Certificates in chains
        # are PEM-encoded and are ordered based on https://tools.ietf.org/html/rfc5246#
        # section-7.4.2.
        # Corresponds to the JSON property `certChains`
        # @return [Google::Apis::CloudkmsV1::CertificateChains]
        attr_accessor :cert_chains
      
        # Output only. The attestation data provided by the HSM when the key operation
        # was performed.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # Output only. The format of the attestation data.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_chains = args[:cert_chains] if args.key?(:cert_chains)
          @content = args[:content] if args.key?(:content)
          @format = args[:format] if args.key?(:format)
        end
      end
      
      # A KeyRing is a toplevel logical grouping of CryptoKeys.
      class KeyRing
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this KeyRing was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The resource name for the KeyRing in the format `projects/*/
        # locations/*/keyRings/*`.
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
        # ListCryptoKeyVersionsRequest.page_token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of CryptoKeyVersions that matched the query.
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
      
      # Response message for EkmService.ListEkmConnections.
      class ListEkmConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of EkmConnections.
        # Corresponds to the JSON property `ekmConnections`
        # @return [Array<Google::Apis::CloudkmsV1::EkmConnection>]
        attr_accessor :ekm_connections
      
        # A token to retrieve next page of results. Pass this value in
        # ListEkmConnectionsRequest.page_token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of EkmConnections that matched the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ekm_connections = args[:ekm_connections] if args.key?(:ekm_connections)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response message for KeyManagementService.ListImportJobs.
      class ListImportJobsResponse
        include Google::Apis::Core::Hashable
      
        # The list of ImportJobs.
        # Corresponds to the JSON property `importJobs`
        # @return [Array<Google::Apis::CloudkmsV1::ImportJob>]
        attr_accessor :import_jobs
      
        # A token to retrieve next page of results. Pass this value in
        # ListImportJobsRequest.page_token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of ImportJobs that matched the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @import_jobs = args[:import_jobs] if args.key?(:import_jobs)
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
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
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
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
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
      
      # Cloud KMS metadata for the given google.cloud.location.Location.
      class LocationMetadata
        include Google::Apis::Core::Hashable
      
        # Indicates whether CryptoKeys with protection_level EXTERNAL can be created in
        # this location.
        # Corresponds to the JSON property `ekmAvailable`
        # @return [Boolean]
        attr_accessor :ekm_available
        alias_method :ekm_available?, :ekm_available
      
        # Indicates whether CryptoKeys with protection_level HSM can be created in this
        # location.
        # Corresponds to the JSON property `hsmAvailable`
        # @return [Boolean]
        attr_accessor :hsm_available
        alias_method :hsm_available?, :hsm_available
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ekm_available = args[:ekm_available] if args.key?(:ekm_available)
          @hsm_available = args[:hsm_available] if args.key?(:hsm_available)
        end
      end
      
      # Request message for KeyManagementService.MacSign.
      class MacSignRequest
        include Google::Apis::Core::Hashable
      
        # Required. The data to sign. The MAC tag is computed over this data field based
        # on the specific algorithm.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Optional. An optional CRC32C checksum of the MacSignRequest.data. If specified,
        # KeyManagementService will verify the integrity of the received MacSignRequest.
        # data using this checksum. KeyManagementService will report an error if the
        # checksum verification fails. If you receive a checksum error, your client
        # should verify that CRC32C(MacSignRequest.data) is equal to MacSignRequest.
        # data_crc32c, and if so, perform a limited number of retries. A persistent
        # mismatch may indicate an issue in your computation of the CRC32C checksum.
        # Note: This field is defined as int64 for reasons of compatibility across
        # different languages. However, it is a non-negative integer, which will never
        # exceed 2^32-1, and can be safely downconverted to uint32 in languages that
        # support this type.
        # Corresponds to the JSON property `dataCrc32c`
        # @return [Fixnum]
        attr_accessor :data_crc32c
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @data_crc32c = args[:data_crc32c] if args.key?(:data_crc32c)
        end
      end
      
      # Response message for KeyManagementService.MacSign.
      class MacSignResponse
        include Google::Apis::Core::Hashable
      
        # The created signature.
        # Corresponds to the JSON property `mac`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :mac
      
        # Integrity verification field. A CRC32C checksum of the returned
        # MacSignResponse.mac. An integrity check of MacSignResponse.mac can be
        # performed by computing the CRC32C checksum of MacSignResponse.mac and
        # comparing your results to this field. Discard the response in case of non-
        # matching checksum values, and perform a limited number of retries. A
        # persistent mismatch may indicate an issue in your computation of the CRC32C
        # checksum. Note: This field is defined as int64 for reasons of compatibility
        # across different languages. However, it is a non-negative integer, which will
        # never exceed 2^32-1, and can be safely downconverted to uint32 in languages
        # that support this type.
        # Corresponds to the JSON property `macCrc32c`
        # @return [Fixnum]
        attr_accessor :mac_crc32c
      
        # The resource name of the CryptoKeyVersion used for signing. Check this field
        # to verify that the intended resource was used for signing.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ProtectionLevel of the CryptoKeyVersion used for signing.
        # Corresponds to the JSON property `protectionLevel`
        # @return [String]
        attr_accessor :protection_level
      
        # Integrity verification field. A flag indicating whether MacSignRequest.
        # data_crc32c was received by KeyManagementService and used for the integrity
        # verification of the data. A false value of this field indicates either that
        # MacSignRequest.data_crc32c was left unset or that it was not delivered to
        # KeyManagementService. If you've set MacSignRequest.data_crc32c but this field
        # is still false, discard the response and perform a limited number of retries.
        # Corresponds to the JSON property `verifiedDataCrc32c`
        # @return [Boolean]
        attr_accessor :verified_data_crc32c
        alias_method :verified_data_crc32c?, :verified_data_crc32c
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mac = args[:mac] if args.key?(:mac)
          @mac_crc32c = args[:mac_crc32c] if args.key?(:mac_crc32c)
          @name = args[:name] if args.key?(:name)
          @protection_level = args[:protection_level] if args.key?(:protection_level)
          @verified_data_crc32c = args[:verified_data_crc32c] if args.key?(:verified_data_crc32c)
        end
      end
      
      # Request message for KeyManagementService.MacVerify.
      class MacVerifyRequest
        include Google::Apis::Core::Hashable
      
        # Required. The data used previously as a MacSignRequest.data to generate the
        # MAC tag.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Optional. An optional CRC32C checksum of the MacVerifyRequest.data. If
        # specified, KeyManagementService will verify the integrity of the received
        # MacVerifyRequest.data using this checksum. KeyManagementService will report an
        # error if the checksum verification fails. If you receive a checksum error,
        # your client should verify that CRC32C(MacVerifyRequest.data) is equal to
        # MacVerifyRequest.data_crc32c, and if so, perform a limited number of retries.
        # A persistent mismatch may indicate an issue in your computation of the CRC32C
        # checksum. Note: This field is defined as int64 for reasons of compatibility
        # across different languages. However, it is a non-negative integer, which will
        # never exceed 2^32-1, and can be safely downconverted to uint32 in languages
        # that support this type.
        # Corresponds to the JSON property `dataCrc32c`
        # @return [Fixnum]
        attr_accessor :data_crc32c
      
        # Required. The signature to verify.
        # Corresponds to the JSON property `mac`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :mac
      
        # Optional. An optional CRC32C checksum of the MacVerifyRequest.mac. If
        # specified, KeyManagementService will verify the integrity of the received
        # MacVerifyRequest.mac using this checksum. KeyManagementService will report an
        # error if the checksum verification fails. If you receive a checksum error,
        # your client should verify that CRC32C(MacVerifyRequest.tag) is equal to
        # MacVerifyRequest.mac_crc32c, and if so, perform a limited number of retries. A
        # persistent mismatch may indicate an issue in your computation of the CRC32C
        # checksum. Note: This field is defined as int64 for reasons of compatibility
        # across different languages. However, it is a non-negative integer, which will
        # never exceed 2^32-1, and can be safely downconverted to uint32 in languages
        # that support this type.
        # Corresponds to the JSON property `macCrc32c`
        # @return [Fixnum]
        attr_accessor :mac_crc32c
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @data_crc32c = args[:data_crc32c] if args.key?(:data_crc32c)
          @mac = args[:mac] if args.key?(:mac)
          @mac_crc32c = args[:mac_crc32c] if args.key?(:mac_crc32c)
        end
      end
      
      # Response message for KeyManagementService.MacVerify.
      class MacVerifyResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the CryptoKeyVersion used for verification. Check this
        # field to verify that the intended resource was used for verification.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ProtectionLevel of the CryptoKeyVersion used for verification.
        # Corresponds to the JSON property `protectionLevel`
        # @return [String]
        attr_accessor :protection_level
      
        # This field indicates whether or not the verification operation for
        # MacVerifyRequest.mac over MacVerifyRequest.data was successful.
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        # Integrity verification field. A flag indicating whether MacVerifyRequest.
        # data_crc32c was received by KeyManagementService and used for the integrity
        # verification of the data. A false value of this field indicates either that
        # MacVerifyRequest.data_crc32c was left unset or that it was not delivered to
        # KeyManagementService. If you've set MacVerifyRequest.data_crc32c but this
        # field is still false, discard the response and perform a limited number of
        # retries.
        # Corresponds to the JSON property `verifiedDataCrc32c`
        # @return [Boolean]
        attr_accessor :verified_data_crc32c
        alias_method :verified_data_crc32c?, :verified_data_crc32c
      
        # Integrity verification field. A flag indicating whether MacVerifyRequest.
        # mac_crc32c was received by KeyManagementService and used for the integrity
        # verification of the data. A false value of this field indicates either that
        # MacVerifyRequest.mac_crc32c was left unset or that it was not delivered to
        # KeyManagementService. If you've set MacVerifyRequest.mac_crc32c but this field
        # is still false, discard the response and perform a limited number of retries.
        # Corresponds to the JSON property `verifiedMacCrc32c`
        # @return [Boolean]
        attr_accessor :verified_mac_crc32c
        alias_method :verified_mac_crc32c?, :verified_mac_crc32c
      
        # Integrity verification field. This value is used for the integrity
        # verification of [MacVerifyResponse.success]. If the value of this field
        # contradicts the value of [MacVerifyResponse.success], discard the response and
        # perform a limited number of retries.
        # Corresponds to the JSON property `verifiedSuccessIntegrity`
        # @return [Boolean]
        attr_accessor :verified_success_integrity
        alias_method :verified_success_integrity?, :verified_success_integrity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @protection_level = args[:protection_level] if args.key?(:protection_level)
          @success = args[:success] if args.key?(:success)
          @verified_data_crc32c = args[:verified_data_crc32c] if args.key?(:verified_data_crc32c)
          @verified_mac_crc32c = args[:verified_mac_crc32c] if args.key?(:verified_mac_crc32c)
          @verified_success_integrity = args[:verified_success_integrity] if args.key?(:verified_success_integrity)
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
        # @return [Array<Google::Apis::CloudkmsV1::AuditConfig>]
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
        # @return [Array<Google::Apis::CloudkmsV1::Binding>]
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
      
      # The public key for a given CryptoKeyVersion. Obtained via GetPublicKey.
      class PublicKey
        include Google::Apis::Core::Hashable
      
        # The Algorithm associated with this key.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # The name of the CryptoKeyVersion public key. Provided here for verification.
        # NOTE: This field is in Beta.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The public key, encoded in PEM format. For more information, see the [RFC 7468]
        # (https://tools.ietf.org/html/rfc7468) sections for [General Considerations](
        # https://tools.ietf.org/html/rfc7468#section-2) and [Textual Encoding of
        # Subject Public Key Info] (https://tools.ietf.org/html/rfc7468#section-13).
        # Corresponds to the JSON property `pem`
        # @return [String]
        attr_accessor :pem
      
        # Integrity verification field. A CRC32C checksum of the returned PublicKey.pem.
        # An integrity check of PublicKey.pem can be performed by computing the CRC32C
        # checksum of PublicKey.pem and comparing your results to this field. Discard
        # the response in case of non-matching checksum values, and perform a limited
        # number of retries. A persistent mismatch may indicate an issue in your
        # computation of the CRC32C checksum. Note: This field is defined as int64 for
        # reasons of compatibility across different languages. However, it is a non-
        # negative integer, which will never exceed 2^32-1, and can be safely
        # downconverted to uint32 in languages that support this type. NOTE: This field
        # is in Beta.
        # Corresponds to the JSON property `pemCrc32c`
        # @return [Fixnum]
        attr_accessor :pem_crc32c
      
        # The ProtectionLevel of the CryptoKeyVersion public key.
        # Corresponds to the JSON property `protectionLevel`
        # @return [String]
        attr_accessor :protection_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @name = args[:name] if args.key?(:name)
          @pem = args[:pem] if args.key?(:pem)
          @pem_crc32c = args[:pem_crc32c] if args.key?(:pem_crc32c)
          @protection_level = args[:protection_level] if args.key?(:protection_level)
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
      
      # A ServiceResolver represents an EKM replica that can be reached within an
      # EkmConnection.
      class ServiceResolver
        include Google::Apis::Core::Hashable
      
        # Optional. The filter applied to the endpoints of the resolved service. If no
        # filter is specified, all endpoints will be considered. An endpoint will be
        # chosen arbitrarily from the filtered list for each request. For endpoint
        # filter syntax and examples, see https://cloud.google.com/service-directory/
        # docs/reference/rpc/google.cloud.servicedirectory.v1#resolveservicerequest.
        # Corresponds to the JSON property `endpointFilter`
        # @return [String]
        attr_accessor :endpoint_filter
      
        # Required. The hostname of the EKM replica used at TLS and HTTP layers.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Required. A list of leaf server certificates used to authenticate HTTPS
        # connections to the EKM replica. Currently, a maximum of 10 Certificate is
        # supported.
        # Corresponds to the JSON property `serverCertificates`
        # @return [Array<Google::Apis::CloudkmsV1::Certificate>]
        attr_accessor :server_certificates
      
        # Required. The resource name of the Service Directory service pointing to an
        # EKM replica, in the format `projects/*/locations/*/namespaces/*/services/*`.
        # Corresponds to the JSON property `serviceDirectoryService`
        # @return [String]
        attr_accessor :service_directory_service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint_filter = args[:endpoint_filter] if args.key?(:endpoint_filter)
          @hostname = args[:hostname] if args.key?(:hostname)
          @server_certificates = args[:server_certificates] if args.key?(:server_certificates)
          @service_directory_service = args[:service_directory_service] if args.key?(:service_directory_service)
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
        # @return [Google::Apis::CloudkmsV1::Policy]
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
      
      # Request message for KeyManagementService.UpdateCryptoKeyPrimaryVersion.
      class UpdateCryptoKeyPrimaryVersionRequest
        include Google::Apis::Core::Hashable
      
        # Required. The id of the child CryptoKeyVersion to use as primary.
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
      
      # Response message for EkmService.VerifyConnectivity.
      class VerifyConnectivityResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The public key component of the wrapping key. For details of the type of key
      # this public key corresponds to, see the ImportMethod.
      class WrappingPublicKey
        include Google::Apis::Core::Hashable
      
        # The public key, encoded in PEM format. For more information, see the [RFC 7468]
        # (https://tools.ietf.org/html/rfc7468) sections for [General Considerations](
        # https://tools.ietf.org/html/rfc7468#section-2) and [Textual Encoding of
        # Subject Public Key Info] (https://tools.ietf.org/html/rfc7468#section-13).
        # Corresponds to the JSON property `pem`
        # @return [String]
        attr_accessor :pem
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pem = args[:pem] if args.key?(:pem)
        end
      end
    end
  end
end
