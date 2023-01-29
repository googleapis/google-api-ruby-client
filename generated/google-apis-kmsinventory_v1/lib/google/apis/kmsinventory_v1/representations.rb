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
    module KmsinventoryV1
      
      class GoogleCloudKmsInventoryV1ListCryptoKeysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudKmsInventoryV1ProtectedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudKmsInventoryV1ProtectedResourcesSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudKmsV1CryptoKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudKmsV1CryptoKeyVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudKmsV1CryptoKeyVersionTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudKmsV1ExternalProtectionLevelOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudKmsV1KeyOperationAttestation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudKmsV1KeyOperationAttestationCertificateChains
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudKmsInventoryV1ListCryptoKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :crypto_keys, as: 'cryptoKeys', class: Google::Apis::KmsinventoryV1::GoogleCloudKmsV1CryptoKey, decorator: Google::Apis::KmsinventoryV1::GoogleCloudKmsV1CryptoKey::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudKmsInventoryV1ProtectedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_product, as: 'cloudProduct'
          property :create_time, as: 'createTime'
          property :crypto_key_version, as: 'cryptoKeyVersion'
          collection :crypto_key_versions, as: 'cryptoKeyVersions'
          hash :labels, as: 'labels'
          property :location, as: 'location'
          property :name, as: 'name'
          property :project, as: 'project'
          property :project_id, as: 'projectId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleCloudKmsInventoryV1ProtectedResourcesSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :cloud_products, as: 'cloudProducts'
          hash :locations, as: 'locations'
          property :name, as: 'name'
          property :project_count, as: 'projectCount'
          property :resource_count, :numeric_string => true, as: 'resourceCount'
          hash :resource_types, as: 'resourceTypes'
        end
      end
      
      class GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :protected_resources, as: 'protectedResources', class: Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1ProtectedResource, decorator: Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1ProtectedResource::Representation
      
        end
      end
      
      class GoogleCloudKmsV1CryptoKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :crypto_key_backend, as: 'cryptoKeyBackend'
          property :destroy_scheduled_duration, as: 'destroyScheduledDuration'
          property :import_only, as: 'importOnly'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :next_rotation_time, as: 'nextRotationTime'
          property :primary, as: 'primary', class: Google::Apis::KmsinventoryV1::GoogleCloudKmsV1CryptoKeyVersion, decorator: Google::Apis::KmsinventoryV1::GoogleCloudKmsV1CryptoKeyVersion::Representation
      
          property :purpose, as: 'purpose'
          property :rotation_period, as: 'rotationPeriod'
          property :version_template, as: 'versionTemplate', class: Google::Apis::KmsinventoryV1::GoogleCloudKmsV1CryptoKeyVersionTemplate, decorator: Google::Apis::KmsinventoryV1::GoogleCloudKmsV1CryptoKeyVersionTemplate::Representation
      
        end
      end
      
      class GoogleCloudKmsV1CryptoKeyVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :attestation, as: 'attestation', class: Google::Apis::KmsinventoryV1::GoogleCloudKmsV1KeyOperationAttestation, decorator: Google::Apis::KmsinventoryV1::GoogleCloudKmsV1KeyOperationAttestation::Representation
      
          property :create_time, as: 'createTime'
          property :destroy_event_time, as: 'destroyEventTime'
          property :destroy_time, as: 'destroyTime'
          property :external_protection_level_options, as: 'externalProtectionLevelOptions', class: Google::Apis::KmsinventoryV1::GoogleCloudKmsV1ExternalProtectionLevelOptions, decorator: Google::Apis::KmsinventoryV1::GoogleCloudKmsV1ExternalProtectionLevelOptions::Representation
      
          property :generate_time, as: 'generateTime'
          property :import_failure_reason, as: 'importFailureReason'
          property :import_job, as: 'importJob'
          property :import_time, as: 'importTime'
          property :name, as: 'name'
          property :protection_level, as: 'protectionLevel'
          property :reimport_eligible, as: 'reimportEligible'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudKmsV1CryptoKeyVersionTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :protection_level, as: 'protectionLevel'
        end
      end
      
      class GoogleCloudKmsV1ExternalProtectionLevelOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ekm_connection_key_path, as: 'ekmConnectionKeyPath'
          property :external_key_uri, as: 'externalKeyUri'
        end
      end
      
      class GoogleCloudKmsV1KeyOperationAttestation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_chains, as: 'certChains', class: Google::Apis::KmsinventoryV1::GoogleCloudKmsV1KeyOperationAttestationCertificateChains, decorator: Google::Apis::KmsinventoryV1::GoogleCloudKmsV1KeyOperationAttestationCertificateChains::Representation
      
          property :content, :base64 => true, as: 'content'
          property :format, as: 'format'
        end
      end
      
      class GoogleCloudKmsV1KeyOperationAttestationCertificateChains
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cavium_certs, as: 'caviumCerts'
          collection :google_card_certs, as: 'googleCardCerts'
          collection :google_partition_certs, as: 'googlePartitionCerts'
        end
      end
    end
  end
end
