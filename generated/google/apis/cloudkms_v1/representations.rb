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
      
      class AsymmetricDecryptRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AsymmetricDecryptResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AsymmetricSignRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AsymmetricSignResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateChains
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CryptoKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CryptoKeyVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CryptoKeyVersionTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DecryptRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DecryptResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestroyCryptoKeyVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Digest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalProtectionLevelOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportCryptoKeyVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyOperationAttestation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyRing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCryptoKeyVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCryptoKeysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListImportJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListKeyRingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublicKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreCryptoKeyVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateCryptoKeyPrimaryVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WrappingPublicKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AsymmetricDecryptRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ciphertext, :base64 => true, as: 'ciphertext'
          property :ciphertext_crc32c, :numeric_string => true, as: 'ciphertextCrc32c'
        end
      end
      
      class AsymmetricDecryptResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :plaintext, :base64 => true, as: 'plaintext'
          property :plaintext_crc32c, :numeric_string => true, as: 'plaintextCrc32c'
          property :verified_ciphertext_crc32c, as: 'verifiedCiphertextCrc32c'
        end
      end
      
      class AsymmetricSignRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digest, as: 'digest', class: Google::Apis::CloudkmsV1::Digest, decorator: Google::Apis::CloudkmsV1::Digest::Representation
      
          property :digest_crc32c, :numeric_string => true, as: 'digestCrc32c'
        end
      end
      
      class AsymmetricSignResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :signature, :base64 => true, as: 'signature'
          property :signature_crc32c, :numeric_string => true, as: 'signatureCrc32c'
          property :verified_digest_crc32c, as: 'verifiedDigestCrc32c'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::CloudkmsV1::AuditLogConfig, decorator: Google::Apis::CloudkmsV1::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binding_id, as: 'bindingId'
          property :condition, as: 'condition', class: Google::Apis::CloudkmsV1::Expr, decorator: Google::Apis::CloudkmsV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CertificateChains
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cavium_certs, as: 'caviumCerts'
          collection :google_card_certs, as: 'googleCardCerts'
          collection :google_partition_certs, as: 'googlePartitionCerts'
        end
      end
      
      class CryptoKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :next_rotation_time, as: 'nextRotationTime'
          property :primary, as: 'primary', class: Google::Apis::CloudkmsV1::CryptoKeyVersion, decorator: Google::Apis::CloudkmsV1::CryptoKeyVersion::Representation
      
          property :purpose, as: 'purpose'
          property :rotation_period, as: 'rotationPeriod'
          property :version_template, as: 'versionTemplate', class: Google::Apis::CloudkmsV1::CryptoKeyVersionTemplate, decorator: Google::Apis::CloudkmsV1::CryptoKeyVersionTemplate::Representation
      
        end
      end
      
      class CryptoKeyVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :attestation, as: 'attestation', class: Google::Apis::CloudkmsV1::KeyOperationAttestation, decorator: Google::Apis::CloudkmsV1::KeyOperationAttestation::Representation
      
          property :create_time, as: 'createTime'
          property :destroy_event_time, as: 'destroyEventTime'
          property :destroy_time, as: 'destroyTime'
          property :external_protection_level_options, as: 'externalProtectionLevelOptions', class: Google::Apis::CloudkmsV1::ExternalProtectionLevelOptions, decorator: Google::Apis::CloudkmsV1::ExternalProtectionLevelOptions::Representation
      
          property :generate_time, as: 'generateTime'
          property :import_failure_reason, as: 'importFailureReason'
          property :import_job, as: 'importJob'
          property :import_time, as: 'importTime'
          property :name, as: 'name'
          property :protection_level, as: 'protectionLevel'
          property :state, as: 'state'
        end
      end
      
      class CryptoKeyVersionTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :protection_level, as: 'protectionLevel'
        end
      end
      
      class DecryptRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_authenticated_data, :base64 => true, as: 'additionalAuthenticatedData'
          property :additional_authenticated_data_crc32c, :numeric_string => true, as: 'additionalAuthenticatedDataCrc32c'
          property :ciphertext, :base64 => true, as: 'ciphertext'
          property :ciphertext_crc32c, :numeric_string => true, as: 'ciphertextCrc32c'
        end
      end
      
      class DecryptResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :plaintext, :base64 => true, as: 'plaintext'
          property :plaintext_crc32c, :numeric_string => true, as: 'plaintextCrc32c'
        end
      end
      
      class DestroyCryptoKeyVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Digest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sha256, :base64 => true, as: 'sha256'
          property :sha384, :base64 => true, as: 'sha384'
          property :sha512, :base64 => true, as: 'sha512'
        end
      end
      
      class EncryptRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_authenticated_data, :base64 => true, as: 'additionalAuthenticatedData'
          property :additional_authenticated_data_crc32c, :numeric_string => true, as: 'additionalAuthenticatedDataCrc32c'
          property :plaintext, :base64 => true, as: 'plaintext'
          property :plaintext_crc32c, :numeric_string => true, as: 'plaintextCrc32c'
        end
      end
      
      class EncryptResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ciphertext, :base64 => true, as: 'ciphertext'
          property :ciphertext_crc32c, :numeric_string => true, as: 'ciphertextCrc32c'
          property :name, as: 'name'
          property :verified_additional_authenticated_data_crc32c, as: 'verifiedAdditionalAuthenticatedDataCrc32c'
          property :verified_plaintext_crc32c, as: 'verifiedPlaintextCrc32c'
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class ExternalProtectionLevelOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_key_uri, as: 'externalKeyUri'
        end
      end
      
      class ImportCryptoKeyVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :import_job, as: 'importJob'
          property :rsa_aes_wrapped_key, :base64 => true, as: 'rsaAesWrappedKey'
        end
      end
      
      class ImportJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation, as: 'attestation', class: Google::Apis::CloudkmsV1::KeyOperationAttestation, decorator: Google::Apis::CloudkmsV1::KeyOperationAttestation::Representation
      
          property :create_time, as: 'createTime'
          property :expire_event_time, as: 'expireEventTime'
          property :expire_time, as: 'expireTime'
          property :generate_time, as: 'generateTime'
          property :import_method, as: 'importMethod'
          property :name, as: 'name'
          property :protection_level, as: 'protectionLevel'
          property :public_key, as: 'publicKey', class: Google::Apis::CloudkmsV1::WrappingPublicKey, decorator: Google::Apis::CloudkmsV1::WrappingPublicKey::Representation
      
          property :state, as: 'state'
        end
      end
      
      class KeyOperationAttestation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_chains, as: 'certChains', class: Google::Apis::CloudkmsV1::CertificateChains, decorator: Google::Apis::CloudkmsV1::CertificateChains::Representation
      
          property :content, :base64 => true, as: 'content'
          property :format, as: 'format'
        end
      end
      
      class KeyRing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
        end
      end
      
      class ListCryptoKeyVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :crypto_key_versions, as: 'cryptoKeyVersions', class: Google::Apis::CloudkmsV1::CryptoKeyVersion, decorator: Google::Apis::CloudkmsV1::CryptoKeyVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListCryptoKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :crypto_keys, as: 'cryptoKeys', class: Google::Apis::CloudkmsV1::CryptoKey, decorator: Google::Apis::CloudkmsV1::CryptoKey::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListImportJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :import_jobs, as: 'importJobs', class: Google::Apis::CloudkmsV1::ImportJob, decorator: Google::Apis::CloudkmsV1::ImportJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListKeyRingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :key_rings, as: 'keyRings', class: Google::Apis::CloudkmsV1::KeyRing, decorator: Google::Apis::CloudkmsV1::KeyRing::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::CloudkmsV1::Location, decorator: Google::Apis::CloudkmsV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ekm_available, as: 'ekmAvailable'
          property :hsm_available, as: 'hsmAvailable'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::CloudkmsV1::AuditConfig, decorator: Google::Apis::CloudkmsV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::CloudkmsV1::Binding, decorator: Google::Apis::CloudkmsV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PublicKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :name, as: 'name'
          property :pem, as: 'pem'
          property :pem_crc32c, :numeric_string => true, as: 'pemCrc32c'
        end
      end
      
      class RestoreCryptoKeyVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::CloudkmsV1::Policy, decorator: Google::Apis::CloudkmsV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class UpdateCryptoKeyPrimaryVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crypto_key_version_id, as: 'cryptoKeyVersionId'
        end
      end
      
      class WrappingPublicKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pem, as: 'pem'
        end
      end
    end
  end
end
