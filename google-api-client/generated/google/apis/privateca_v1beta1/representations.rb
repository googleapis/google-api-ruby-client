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
    module PrivatecaV1beta1
      
      class AccessUrls
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivateCertificateAuthorityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllowedConfigList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllowedSubjectAltNames
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
      
      class CaOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Certificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateAuthority
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateAuthorityPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateFingerprint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateRevocationList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableCertificateAuthorityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableCertificateAuthorityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtendedKeyUsageOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchCertificateAuthorityCsrResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssuanceModes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssuingOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyUsage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyUsageOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyVersionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCertificateAuthoritiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCertificateRevocationListsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCertificatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReusableConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObjectIdProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
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
      
      class RestoreCertificateAuthorityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReusableConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReusableConfigValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReusableConfigWrapper
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevocationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevokeCertificateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevokedCertificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduleDeleteCertificateAuthorityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubjectAltNames
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubjectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubjectDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubordinateConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubordinateConfigChain
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
      
      class X509Extension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessUrls
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate_access_url, as: 'caCertificateAccessUrl'
          property :crl_access_url, as: 'crlAccessUrl'
        end
      end
      
      class ActivateCertificateAuthorityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pem_ca_certificate, as: 'pemCaCertificate'
          property :request_id, as: 'requestId'
          property :subordinate_config, as: 'subordinateConfig', class: Google::Apis::PrivatecaV1beta1::SubordinateConfig, decorator: Google::Apis::PrivatecaV1beta1::SubordinateConfig::Representation
      
        end
      end
      
      class AllowedConfigList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_config_values, as: 'allowedConfigValues', class: Google::Apis::PrivatecaV1beta1::ReusableConfigWrapper, decorator: Google::Apis::PrivatecaV1beta1::ReusableConfigWrapper::Representation
      
        end
      end
      
      class AllowedSubjectAltNames
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_custom_sans, as: 'allowCustomSans'
          property :allow_globbing_dns_wildcards, as: 'allowGlobbingDnsWildcards'
          collection :allowed_dns_names, as: 'allowedDnsNames'
          collection :allowed_email_addresses, as: 'allowedEmailAddresses'
          collection :allowed_ips, as: 'allowedIps'
          collection :allowed_uris, as: 'allowedUris'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::PrivatecaV1beta1::AuditLogConfig, decorator: Google::Apis::PrivatecaV1beta1::AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::PrivatecaV1beta1::Expr, decorator: Google::Apis::PrivatecaV1beta1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CaOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_ca, as: 'isCa'
          property :max_issuer_path_length, as: 'maxIssuerPathLength'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Certificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_description, as: 'certificateDescription', class: Google::Apis::PrivatecaV1beta1::CertificateDescription, decorator: Google::Apis::PrivatecaV1beta1::CertificateDescription::Representation
      
          property :config, as: 'config', class: Google::Apis::PrivatecaV1beta1::CertificateConfig, decorator: Google::Apis::PrivatecaV1beta1::CertificateConfig::Representation
      
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          property :lifetime, as: 'lifetime'
          property :name, as: 'name'
          property :pem_certificate, as: 'pemCertificate'
          collection :pem_certificate_chain, as: 'pemCertificateChain'
          property :pem_csr, as: 'pemCsr'
          property :revocation_details, as: 'revocationDetails', class: Google::Apis::PrivatecaV1beta1::RevocationDetails, decorator: Google::Apis::PrivatecaV1beta1::RevocationDetails::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class CertificateAuthority
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_urls, as: 'accessUrls', class: Google::Apis::PrivatecaV1beta1::AccessUrls, decorator: Google::Apis::PrivatecaV1beta1::AccessUrls::Representation
      
          collection :ca_certificate_descriptions, as: 'caCertificateDescriptions', class: Google::Apis::PrivatecaV1beta1::CertificateDescription, decorator: Google::Apis::PrivatecaV1beta1::CertificateDescription::Representation
      
          property :certificate_policy, as: 'certificatePolicy', class: Google::Apis::PrivatecaV1beta1::CertificateAuthorityPolicy, decorator: Google::Apis::PrivatecaV1beta1::CertificateAuthorityPolicy::Representation
      
          property :config, as: 'config', class: Google::Apis::PrivatecaV1beta1::CertificateConfig, decorator: Google::Apis::PrivatecaV1beta1::CertificateConfig::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :gcs_bucket, as: 'gcsBucket'
          property :issuing_options, as: 'issuingOptions', class: Google::Apis::PrivatecaV1beta1::IssuingOptions, decorator: Google::Apis::PrivatecaV1beta1::IssuingOptions::Representation
      
          property :key_spec, as: 'keySpec', class: Google::Apis::PrivatecaV1beta1::KeyVersionSpec, decorator: Google::Apis::PrivatecaV1beta1::KeyVersionSpec::Representation
      
          hash :labels, as: 'labels'
          property :lifetime, as: 'lifetime'
          property :name, as: 'name'
          collection :pem_ca_certificates, as: 'pemCaCertificates'
          property :state, as: 'state'
          property :subordinate_config, as: 'subordinateConfig', class: Google::Apis::PrivatecaV1beta1::SubordinateConfig, decorator: Google::Apis::PrivatecaV1beta1::SubordinateConfig::Representation
      
          property :tier, as: 'tier'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CertificateAuthorityPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_common_names, as: 'allowedCommonNames'
          property :allowed_config_list, as: 'allowedConfigList', class: Google::Apis::PrivatecaV1beta1::AllowedConfigList, decorator: Google::Apis::PrivatecaV1beta1::AllowedConfigList::Representation
      
          property :allowed_issuance_modes, as: 'allowedIssuanceModes', class: Google::Apis::PrivatecaV1beta1::IssuanceModes, decorator: Google::Apis::PrivatecaV1beta1::IssuanceModes::Representation
      
          collection :allowed_locations_and_organizations, as: 'allowedLocationsAndOrganizations', class: Google::Apis::PrivatecaV1beta1::Subject, decorator: Google::Apis::PrivatecaV1beta1::Subject::Representation
      
          property :allowed_sans, as: 'allowedSans', class: Google::Apis::PrivatecaV1beta1::AllowedSubjectAltNames, decorator: Google::Apis::PrivatecaV1beta1::AllowedSubjectAltNames::Representation
      
          property :maximum_lifetime, as: 'maximumLifetime'
          property :overwrite_config_values, as: 'overwriteConfigValues', class: Google::Apis::PrivatecaV1beta1::ReusableConfigWrapper, decorator: Google::Apis::PrivatecaV1beta1::ReusableConfigWrapper::Representation
      
        end
      end
      
      class CertificateConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :public_key, as: 'publicKey', class: Google::Apis::PrivatecaV1beta1::PublicKey, decorator: Google::Apis::PrivatecaV1beta1::PublicKey::Representation
      
          property :reusable_config, as: 'reusableConfig', class: Google::Apis::PrivatecaV1beta1::ReusableConfigWrapper, decorator: Google::Apis::PrivatecaV1beta1::ReusableConfigWrapper::Representation
      
          property :subject_config, as: 'subjectConfig', class: Google::Apis::PrivatecaV1beta1::SubjectConfig, decorator: Google::Apis::PrivatecaV1beta1::SubjectConfig::Representation
      
        end
      end
      
      class CertificateDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aia_issuing_certificate_urls, as: 'aiaIssuingCertificateUrls'
          property :authority_key_id, as: 'authorityKeyId', class: Google::Apis::PrivatecaV1beta1::KeyId, decorator: Google::Apis::PrivatecaV1beta1::KeyId::Representation
      
          property :cert_fingerprint, as: 'certFingerprint', class: Google::Apis::PrivatecaV1beta1::CertificateFingerprint, decorator: Google::Apis::PrivatecaV1beta1::CertificateFingerprint::Representation
      
          property :config_values, as: 'configValues', class: Google::Apis::PrivatecaV1beta1::ReusableConfigValues, decorator: Google::Apis::PrivatecaV1beta1::ReusableConfigValues::Representation
      
          collection :crl_distribution_points, as: 'crlDistributionPoints'
          property :public_key, as: 'publicKey', class: Google::Apis::PrivatecaV1beta1::PublicKey, decorator: Google::Apis::PrivatecaV1beta1::PublicKey::Representation
      
          property :subject_description, as: 'subjectDescription', class: Google::Apis::PrivatecaV1beta1::SubjectDescription, decorator: Google::Apis::PrivatecaV1beta1::SubjectDescription::Representation
      
          property :subject_key_id, as: 'subjectKeyId', class: Google::Apis::PrivatecaV1beta1::KeyId, decorator: Google::Apis::PrivatecaV1beta1::KeyId::Representation
      
        end
      end
      
      class CertificateFingerprint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sha256_hash, as: 'sha256Hash'
        end
      end
      
      class CertificateRevocationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_url, as: 'accessUrl'
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :pem_crl, as: 'pemCrl'
          collection :revoked_certificates, as: 'revokedCertificates', class: Google::Apis::PrivatecaV1beta1::RevokedCertificate, decorator: Google::Apis::PrivatecaV1beta1::RevokedCertificate::Representation
      
          property :sequence_number, :numeric_string => true, as: 'sequenceNumber'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class DisableCertificateAuthorityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnableCertificateAuthorityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
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
      
      class ExtendedKeyUsageOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_auth, as: 'clientAuth'
          property :code_signing, as: 'codeSigning'
          property :email_protection, as: 'emailProtection'
          property :ocsp_signing, as: 'ocspSigning'
          property :server_auth, as: 'serverAuth'
          property :time_stamping, as: 'timeStamping'
        end
      end
      
      class FetchCertificateAuthorityCsrResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pem_csr, as: 'pemCsr'
        end
      end
      
      class IssuanceModes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_config_based_issuance, as: 'allowConfigBasedIssuance'
          property :allow_csr_based_issuance, as: 'allowCsrBasedIssuance'
        end
      end
      
      class IssuingOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_ca_cert_url, as: 'includeCaCertUrl'
          property :include_crl_access_url, as: 'includeCrlAccessUrl'
        end
      end
      
      class KeyId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_id, as: 'keyId'
        end
      end
      
      class KeyUsage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_key_usage, as: 'baseKeyUsage', class: Google::Apis::PrivatecaV1beta1::KeyUsageOptions, decorator: Google::Apis::PrivatecaV1beta1::KeyUsageOptions::Representation
      
          property :extended_key_usage, as: 'extendedKeyUsage', class: Google::Apis::PrivatecaV1beta1::ExtendedKeyUsageOptions, decorator: Google::Apis::PrivatecaV1beta1::ExtendedKeyUsageOptions::Representation
      
          collection :unknown_extended_key_usages, as: 'unknownExtendedKeyUsages', class: Google::Apis::PrivatecaV1beta1::ObjectIdProp, decorator: Google::Apis::PrivatecaV1beta1::ObjectIdProp::Representation
      
        end
      end
      
      class KeyUsageOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_sign, as: 'certSign'
          property :content_commitment, as: 'contentCommitment'
          property :crl_sign, as: 'crlSign'
          property :data_encipherment, as: 'dataEncipherment'
          property :decipher_only, as: 'decipherOnly'
          property :digital_signature, as: 'digitalSignature'
          property :encipher_only, as: 'encipherOnly'
          property :key_agreement, as: 'keyAgreement'
          property :key_encipherment, as: 'keyEncipherment'
        end
      end
      
      class KeyVersionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :cloud_kms_key_version, as: 'cloudKmsKeyVersion'
        end
      end
      
      class ListCertificateAuthoritiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificate_authorities, as: 'certificateAuthorities', class: Google::Apis::PrivatecaV1beta1::CertificateAuthority, decorator: Google::Apis::PrivatecaV1beta1::CertificateAuthority::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCertificateRevocationListsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificate_revocation_lists, as: 'certificateRevocationLists', class: Google::Apis::PrivatecaV1beta1::CertificateRevocationList, decorator: Google::Apis::PrivatecaV1beta1::CertificateRevocationList::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCertificatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificates, as: 'certificates', class: Google::Apis::PrivatecaV1beta1::Certificate, decorator: Google::Apis::PrivatecaV1beta1::Certificate::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::PrivatecaV1beta1::Location, decorator: Google::Apis::PrivatecaV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::PrivatecaV1beta1::Operation, decorator: Google::Apis::PrivatecaV1beta1::Operation::Representation
      
        end
      end
      
      class ListReusableConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reusable_configs, as: 'reusableConfigs', class: Google::Apis::PrivatecaV1beta1::ReusableConfig, decorator: Google::Apis::PrivatecaV1beta1::ReusableConfig::Representation
      
          collection :unreachable, as: 'unreachable'
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
      
      class ObjectIdProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :object_id_path, as: 'objectIdPath'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::PrivatecaV1beta1::Status, decorator: Google::Apis::PrivatecaV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::PrivatecaV1beta1::AuditConfig, decorator: Google::Apis::PrivatecaV1beta1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::PrivatecaV1beta1::Binding, decorator: Google::Apis::PrivatecaV1beta1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PublicKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, :base64 => true, as: 'key'
          property :type, as: 'type'
        end
      end
      
      class RestoreCertificateAuthorityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class ReusableConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          property :values, as: 'values', class: Google::Apis::PrivatecaV1beta1::ReusableConfigValues, decorator: Google::Apis::PrivatecaV1beta1::ReusableConfigValues::Representation
      
        end
      end
      
      class ReusableConfigValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_extensions, as: 'additionalExtensions', class: Google::Apis::PrivatecaV1beta1::X509Extension, decorator: Google::Apis::PrivatecaV1beta1::X509Extension::Representation
      
          collection :aia_ocsp_servers, as: 'aiaOcspServers'
          property :ca_options, as: 'caOptions', class: Google::Apis::PrivatecaV1beta1::CaOptions, decorator: Google::Apis::PrivatecaV1beta1::CaOptions::Representation
      
          property :key_usage, as: 'keyUsage', class: Google::Apis::PrivatecaV1beta1::KeyUsage, decorator: Google::Apis::PrivatecaV1beta1::KeyUsage::Representation
      
          collection :policy_ids, as: 'policyIds', class: Google::Apis::PrivatecaV1beta1::ObjectIdProp, decorator: Google::Apis::PrivatecaV1beta1::ObjectIdProp::Representation
      
        end
      end
      
      class ReusableConfigWrapper
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reusable_config, as: 'reusableConfig'
          property :reusable_config_values, as: 'reusableConfigValues', class: Google::Apis::PrivatecaV1beta1::ReusableConfigValues, decorator: Google::Apis::PrivatecaV1beta1::ReusableConfigValues::Representation
      
        end
      end
      
      class RevocationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revocation_state, as: 'revocationState'
          property :revocation_time, as: 'revocationTime'
        end
      end
      
      class RevokeCertificateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
          property :request_id, as: 'requestId'
        end
      end
      
      class RevokedCertificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate, as: 'certificate'
          property :hex_serial_number, as: 'hexSerialNumber'
          property :revocation_reason, as: 'revocationReason'
        end
      end
      
      class ScheduleDeleteCertificateAuthorityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::PrivatecaV1beta1::Policy, decorator: Google::Apis::PrivatecaV1beta1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class Subject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :country_code, as: 'countryCode'
          property :locality, as: 'locality'
          property :organization, as: 'organization'
          property :organizational_unit, as: 'organizationalUnit'
          property :postal_code, as: 'postalCode'
          property :province, as: 'province'
          property :street_address, as: 'streetAddress'
        end
      end
      
      class SubjectAltNames
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_sans, as: 'customSans', class: Google::Apis::PrivatecaV1beta1::X509Extension, decorator: Google::Apis::PrivatecaV1beta1::X509Extension::Representation
      
          collection :dns_names, as: 'dnsNames'
          collection :email_addresses, as: 'emailAddresses'
          collection :ip_addresses, as: 'ipAddresses'
          collection :uris, as: 'uris'
        end
      end
      
      class SubjectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_name, as: 'commonName'
          property :subject, as: 'subject', class: Google::Apis::PrivatecaV1beta1::Subject, decorator: Google::Apis::PrivatecaV1beta1::Subject::Representation
      
          property :subject_alt_name, as: 'subjectAltName', class: Google::Apis::PrivatecaV1beta1::SubjectAltNames, decorator: Google::Apis::PrivatecaV1beta1::SubjectAltNames::Representation
      
        end
      end
      
      class SubjectDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_name, as: 'commonName'
          property :hex_serial_number, as: 'hexSerialNumber'
          property :lifetime, as: 'lifetime'
          property :not_after_time, as: 'notAfterTime'
          property :not_before_time, as: 'notBeforeTime'
          property :subject, as: 'subject', class: Google::Apis::PrivatecaV1beta1::Subject, decorator: Google::Apis::PrivatecaV1beta1::Subject::Representation
      
          property :subject_alt_name, as: 'subjectAltName', class: Google::Apis::PrivatecaV1beta1::SubjectAltNames, decorator: Google::Apis::PrivatecaV1beta1::SubjectAltNames::Representation
      
        end
      end
      
      class SubordinateConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_authority, as: 'certificateAuthority'
          property :pem_issuer_chain, as: 'pemIssuerChain', class: Google::Apis::PrivatecaV1beta1::SubordinateConfigChain, decorator: Google::Apis::PrivatecaV1beta1::SubordinateConfigChain::Representation
      
        end
      end
      
      class SubordinateConfigChain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pem_certificates, as: 'pemCertificates'
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
      
      class X509Extension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :critical, as: 'critical'
          property :object_id_prop, as: 'objectId', class: Google::Apis::PrivatecaV1beta1::ObjectIdProp, decorator: Google::Apis::PrivatecaV1beta1::ObjectIdProp::Representation
      
          property :value, :base64 => true, as: 'value'
        end
      end
    end
  end
end
