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
      
      # Response message for KeyDashboardService.ListCryptoKeys.
      class GoogleCloudKmsInventoryV1ListCryptoKeysResponse
        include Google::Apis::Core::Hashable
      
        # The list of CryptoKeys.
        # Corresponds to the JSON property `cryptoKeys`
        # @return [Array<Google::Apis::KmsinventoryV1::GoogleCloudKmsV1CryptoKey>]
        attr_accessor :crypto_keys
      
        # The page token returned from the previous response if the next page is desired.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crypto_keys = args[:crypto_keys] if args.key?(:crypto_keys)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Metadata about a resource protected by a Cloud KMS key.
      class GoogleCloudKmsInventoryV1ProtectedResource
        include Google::Apis::Core::Hashable
      
        # The Cloud product that owns the resource. Example: `compute`
        # Corresponds to the JSON property `cloudProduct`
        # @return [String]
        attr_accessor :cloud_product
      
        # Output only. The time at which this resource was created. The granularity is
        # in seconds. Timestamp.nanos will always be 0.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The name of the Cloud KMS [CryptoKeyVersion](https://cloud.google.com/kms/docs/
        # reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions?hl=
        # en) used to protect this resource via CMEK. This field may be empty if the
        # Cloud product owning the resource does not provide key version data to Asset
        # Inventory.
        # Corresponds to the JSON property `cryptoKeyVersion`
        # @return [String]
        attr_accessor :crypto_key_version
      
        # A key-value pair of the resource's labels (v1) to their values.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Location can be `global`, regional like `us-east1`, or zonal like `us-west1-b`.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The full resource name of the resource. Example: `//compute.googleapis.com/
        # projects/my_project_123/zones/zone1/instances/instance1`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Format: `projects/`PROJECT_NUMBER``.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The ID of the project that owns the resource.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Example: `compute.googleapis.com/Disk`
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_product = args[:cloud_product] if args.key?(:cloud_product)
          @create_time = args[:create_time] if args.key?(:create_time)
          @crypto_key_version = args[:crypto_key_version] if args.key?(:crypto_key_version)
          @labels = args[:labels] if args.key?(:labels)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @project = args[:project] if args.key?(:project)
          @project_id = args[:project_id] if args.key?(:project_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Aggregate information about the resources protected by a Cloud KMS key in the
      # same Cloud organization as the key.
      class GoogleCloudKmsInventoryV1ProtectedResourcesSummary
        include Google::Apis::Core::Hashable
      
        # The number of resources protected by the key grouped by Cloud product.
        # Corresponds to the JSON property `cloudProducts`
        # @return [Hash<String,Fixnum>]
        attr_accessor :cloud_products
      
        # The number of resources protected by the key grouped by region.
        # Corresponds to the JSON property `locations`
        # @return [Hash<String,Fixnum>]
        attr_accessor :locations
      
        # The full name of the ProtectedResourcesSummary resource. Example: projects/
        # test-project/locations/us/keyRings/test-keyring/cryptoKeys/test-key/
        # protectedResourcesSummary
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The number of distinct Cloud projects in the same Cloud organization as the
        # key that have resources protected by the key.
        # Corresponds to the JSON property `projectCount`
        # @return [Fixnum]
        attr_accessor :project_count
      
        # The total number of protected resources in the same Cloud organization as the
        # key.
        # Corresponds to the JSON property `resourceCount`
        # @return [Fixnum]
        attr_accessor :resource_count
      
        # The number of resources protected by the key grouped by resource type.
        # Corresponds to the JSON property `resourceTypes`
        # @return [Hash<String,Fixnum>]
        attr_accessor :resource_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_products = args[:cloud_products] if args.key?(:cloud_products)
          @locations = args[:locations] if args.key?(:locations)
          @name = args[:name] if args.key?(:name)
          @project_count = args[:project_count] if args.key?(:project_count)
          @resource_count = args[:resource_count] if args.key?(:resource_count)
          @resource_types = args[:resource_types] if args.key?(:resource_types)
        end
      end
      
      # Response message for KeyTrackingService.SearchProtectedResources.
      class GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Protected resources for this page.
        # Corresponds to the JSON property `protectedResources`
        # @return [Array<Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1ProtectedResource>]
        attr_accessor :protected_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @protected_resources = args[:protected_resources] if args.key?(:protected_resources)
        end
      end
      
      # A CryptoKey represents a logical key that can be used for cryptographic
      # operations. A CryptoKey is made up of zero or more versions, which represent
      # the actual key material used in cryptographic operations.
      class GoogleCloudKmsV1CryptoKey
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
        # @return [Google::Apis::KmsinventoryV1::GoogleCloudKmsV1CryptoKeyVersion]
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
        # @return [Google::Apis::KmsinventoryV1::GoogleCloudKmsV1CryptoKeyVersionTemplate]
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
      class GoogleCloudKmsV1CryptoKeyVersion
        include Google::Apis::Core::Hashable
      
        # Output only. The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # Contains an HSM-generated attestation about a key operation. For more
        # information, see [Verifying attestations] (https://cloud.google.com/kms/docs/
        # attest-key).
        # Corresponds to the JSON property `attestation`
        # @return [Google::Apis::KmsinventoryV1::GoogleCloudKmsV1KeyOperationAttestation]
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
      
        # ExternalProtectionLevelOptions stores a group of additional fields for
        # configuring a CryptoKeyVersion that are specific to the EXTERNAL protection
        # level and EXTERNAL_VPC protection levels.
        # Corresponds to the JSON property `externalProtectionLevelOptions`
        # @return [Google::Apis::KmsinventoryV1::GoogleCloudKmsV1ExternalProtectionLevelOptions]
        attr_accessor :external_protection_level_options
      
        # Output only. The time this CryptoKeyVersion's key material was generated.
        # Corresponds to the JSON property `generateTime`
        # @return [String]
        attr_accessor :generate_time
      
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
          @external_protection_level_options = args[:external_protection_level_options] if args.key?(:external_protection_level_options)
          @generate_time = args[:generate_time] if args.key?(:generate_time)
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
      class GoogleCloudKmsV1CryptoKeyVersionTemplate
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
      
      # ExternalProtectionLevelOptions stores a group of additional fields for
      # configuring a CryptoKeyVersion that are specific to the EXTERNAL protection
      # level and EXTERNAL_VPC protection levels.
      class GoogleCloudKmsV1ExternalProtectionLevelOptions
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
      
      # Contains an HSM-generated attestation about a key operation. For more
      # information, see [Verifying attestations] (https://cloud.google.com/kms/docs/
      # attest-key).
      class GoogleCloudKmsV1KeyOperationAttestation
        include Google::Apis::Core::Hashable
      
        # Certificate chains needed to verify the attestation. Certificates in chains
        # are PEM-encoded and are ordered based on https://tools.ietf.org/html/rfc5246#
        # section-7.4.2.
        # Corresponds to the JSON property `certChains`
        # @return [Google::Apis::KmsinventoryV1::GoogleCloudKmsV1KeyOperationAttestationCertificateChains]
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
      
      # Certificate chains needed to verify the attestation. Certificates in chains
      # are PEM-encoded and are ordered based on https://tools.ietf.org/html/rfc5246#
      # section-7.4.2.
      class GoogleCloudKmsV1KeyOperationAttestationCertificateChains
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
    end
  end
end
