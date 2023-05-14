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
    module PrivatecaV1
      
      class AccessUrls
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivateCertificateAuthorityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllowedKeyType
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
      
      class CaPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertChain
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
      
      class CertificateConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateExtensionConstraints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateFingerprint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateIdentityConstraints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateRevocationList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableCertificateAuthorityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EcKeyType
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
      
      class FetchCaCertsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchCaCertsResponse
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
      
      class IssuancePolicy
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
      
      class ListCaPoolsResponse
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
      
      class ListCertificateTemplatesResponse
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
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NameConstraints
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
      
      class PublishingOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReconciliationOperationMetadata
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
      
      class RsaKeyType
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
      
      class UndeleteCertificateAuthorityRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class X509Extension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class X509Parameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessUrls
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate_access_url, as: 'caCertificateAccessUrl'
          collection :crl_access_urls, as: 'crlAccessUrls'
        end
      end
      
      class ActivateCertificateAuthorityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pem_ca_certificate, as: 'pemCaCertificate'
          property :request_id, as: 'requestId'
          property :subordinate_config, as: 'subordinateConfig', class: Google::Apis::PrivatecaV1::SubordinateConfig, decorator: Google::Apis::PrivatecaV1::SubordinateConfig::Representation
      
        end
      end
      
      class AllowedKeyType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :elliptic_curve, as: 'ellipticCurve', class: Google::Apis::PrivatecaV1::EcKeyType, decorator: Google::Apis::PrivatecaV1::EcKeyType::Representation
      
          property :rsa, as: 'rsa', class: Google::Apis::PrivatecaV1::RsaKeyType, decorator: Google::Apis::PrivatecaV1::RsaKeyType::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::PrivatecaV1::AuditLogConfig, decorator: Google::Apis::PrivatecaV1::AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::PrivatecaV1::Expr, decorator: Google::Apis::PrivatecaV1::Expr::Representation
      
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
      
      class CaPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issuance_policy, as: 'issuancePolicy', class: Google::Apis::PrivatecaV1::IssuancePolicy, decorator: Google::Apis::PrivatecaV1::IssuancePolicy::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :publishing_options, as: 'publishingOptions', class: Google::Apis::PrivatecaV1::PublishingOptions, decorator: Google::Apis::PrivatecaV1::PublishingOptions::Representation
      
          property :tier, as: 'tier'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CertChain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificates, as: 'certificates'
        end
      end
      
      class Certificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_description, as: 'certificateDescription', class: Google::Apis::PrivatecaV1::CertificateDescription, decorator: Google::Apis::PrivatecaV1::CertificateDescription::Representation
      
          property :certificate_template, as: 'certificateTemplate'
          property :config, as: 'config', class: Google::Apis::PrivatecaV1::CertificateConfig, decorator: Google::Apis::PrivatecaV1::CertificateConfig::Representation
      
          property :create_time, as: 'createTime'
          property :issuer_certificate_authority, as: 'issuerCertificateAuthority'
          hash :labels, as: 'labels'
          property :lifetime, as: 'lifetime'
          property :name, as: 'name'
          property :pem_certificate, as: 'pemCertificate'
          collection :pem_certificate_chain, as: 'pemCertificateChain'
          property :pem_csr, as: 'pemCsr'
          property :revocation_details, as: 'revocationDetails', class: Google::Apis::PrivatecaV1::RevocationDetails, decorator: Google::Apis::PrivatecaV1::RevocationDetails::Representation
      
          property :subject_mode, as: 'subjectMode'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CertificateAuthority
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_urls, as: 'accessUrls', class: Google::Apis::PrivatecaV1::AccessUrls, decorator: Google::Apis::PrivatecaV1::AccessUrls::Representation
      
          collection :ca_certificate_descriptions, as: 'caCertificateDescriptions', class: Google::Apis::PrivatecaV1::CertificateDescription, decorator: Google::Apis::PrivatecaV1::CertificateDescription::Representation
      
          property :config, as: 'config', class: Google::Apis::PrivatecaV1::CertificateConfig, decorator: Google::Apis::PrivatecaV1::CertificateConfig::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :expire_time, as: 'expireTime'
          property :gcs_bucket, as: 'gcsBucket'
          property :key_spec, as: 'keySpec', class: Google::Apis::PrivatecaV1::KeyVersionSpec, decorator: Google::Apis::PrivatecaV1::KeyVersionSpec::Representation
      
          hash :labels, as: 'labels'
          property :lifetime, as: 'lifetime'
          property :name, as: 'name'
          collection :pem_ca_certificates, as: 'pemCaCertificates'
          property :state, as: 'state'
          property :subordinate_config, as: 'subordinateConfig', class: Google::Apis::PrivatecaV1::SubordinateConfig, decorator: Google::Apis::PrivatecaV1::SubordinateConfig::Representation
      
          property :tier, as: 'tier'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CertificateConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :public_key, as: 'publicKey', class: Google::Apis::PrivatecaV1::PublicKey, decorator: Google::Apis::PrivatecaV1::PublicKey::Representation
      
          property :subject_config, as: 'subjectConfig', class: Google::Apis::PrivatecaV1::SubjectConfig, decorator: Google::Apis::PrivatecaV1::SubjectConfig::Representation
      
          property :x509_config, as: 'x509Config', class: Google::Apis::PrivatecaV1::X509Parameters, decorator: Google::Apis::PrivatecaV1::X509Parameters::Representation
      
        end
      end
      
      class CertificateDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aia_issuing_certificate_urls, as: 'aiaIssuingCertificateUrls'
          property :authority_key_id, as: 'authorityKeyId', class: Google::Apis::PrivatecaV1::KeyId, decorator: Google::Apis::PrivatecaV1::KeyId::Representation
      
          property :cert_fingerprint, as: 'certFingerprint', class: Google::Apis::PrivatecaV1::CertificateFingerprint, decorator: Google::Apis::PrivatecaV1::CertificateFingerprint::Representation
      
          collection :crl_distribution_points, as: 'crlDistributionPoints'
          property :public_key, as: 'publicKey', class: Google::Apis::PrivatecaV1::PublicKey, decorator: Google::Apis::PrivatecaV1::PublicKey::Representation
      
          property :subject_description, as: 'subjectDescription', class: Google::Apis::PrivatecaV1::SubjectDescription, decorator: Google::Apis::PrivatecaV1::SubjectDescription::Representation
      
          property :subject_key_id, as: 'subjectKeyId', class: Google::Apis::PrivatecaV1::KeyId, decorator: Google::Apis::PrivatecaV1::KeyId::Representation
      
          property :x509_description, as: 'x509Description', class: Google::Apis::PrivatecaV1::X509Parameters, decorator: Google::Apis::PrivatecaV1::X509Parameters::Representation
      
        end
      end
      
      class CertificateExtensionConstraints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_extensions, as: 'additionalExtensions', class: Google::Apis::PrivatecaV1::ObjectIdProp, decorator: Google::Apis::PrivatecaV1::ObjectIdProp::Representation
      
          collection :known_extensions, as: 'knownExtensions'
        end
      end
      
      class CertificateFingerprint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sha256_hash, as: 'sha256Hash'
        end
      end
      
      class CertificateIdentityConstraints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_subject_alt_names_passthrough, as: 'allowSubjectAltNamesPassthrough'
          property :allow_subject_passthrough, as: 'allowSubjectPassthrough'
          property :cel_expression, as: 'celExpression', class: Google::Apis::PrivatecaV1::Expr, decorator: Google::Apis::PrivatecaV1::Expr::Representation
      
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
          property :revision_id, as: 'revisionId'
          collection :revoked_certificates, as: 'revokedCertificates', class: Google::Apis::PrivatecaV1::RevokedCertificate, decorator: Google::Apis::PrivatecaV1::RevokedCertificate::Representation
      
          property :sequence_number, :numeric_string => true, as: 'sequenceNumber'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CertificateTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :identity_constraints, as: 'identityConstraints', class: Google::Apis::PrivatecaV1::CertificateIdentityConstraints, decorator: Google::Apis::PrivatecaV1::CertificateIdentityConstraints::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :passthrough_extensions, as: 'passthroughExtensions', class: Google::Apis::PrivatecaV1::CertificateExtensionConstraints, decorator: Google::Apis::PrivatecaV1::CertificateExtensionConstraints::Representation
      
          property :predefined_values, as: 'predefinedValues', class: Google::Apis::PrivatecaV1::X509Parameters, decorator: Google::Apis::PrivatecaV1::X509Parameters::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class DisableCertificateAuthorityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_dependent_resources, as: 'ignoreDependentResources'
          property :request_id, as: 'requestId'
        end
      end
      
      class EcKeyType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :signature_algorithm, as: 'signatureAlgorithm'
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
      
      class FetchCaCertsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class FetchCaCertsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ca_certs, as: 'caCerts', class: Google::Apis::PrivatecaV1::CertChain, decorator: Google::Apis::PrivatecaV1::CertChain::Representation
      
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
      
      class IssuancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowed_issuance_modes, as: 'allowedIssuanceModes', class: Google::Apis::PrivatecaV1::IssuanceModes, decorator: Google::Apis::PrivatecaV1::IssuanceModes::Representation
      
          collection :allowed_key_types, as: 'allowedKeyTypes', class: Google::Apis::PrivatecaV1::AllowedKeyType, decorator: Google::Apis::PrivatecaV1::AllowedKeyType::Representation
      
          property :baseline_values, as: 'baselineValues', class: Google::Apis::PrivatecaV1::X509Parameters, decorator: Google::Apis::PrivatecaV1::X509Parameters::Representation
      
          property :identity_constraints, as: 'identityConstraints', class: Google::Apis::PrivatecaV1::CertificateIdentityConstraints, decorator: Google::Apis::PrivatecaV1::CertificateIdentityConstraints::Representation
      
          property :maximum_lifetime, as: 'maximumLifetime'
          property :passthrough_extensions, as: 'passthroughExtensions', class: Google::Apis::PrivatecaV1::CertificateExtensionConstraints, decorator: Google::Apis::PrivatecaV1::CertificateExtensionConstraints::Representation
      
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
          property :base_key_usage, as: 'baseKeyUsage', class: Google::Apis::PrivatecaV1::KeyUsageOptions, decorator: Google::Apis::PrivatecaV1::KeyUsageOptions::Representation
      
          property :extended_key_usage, as: 'extendedKeyUsage', class: Google::Apis::PrivatecaV1::ExtendedKeyUsageOptions, decorator: Google::Apis::PrivatecaV1::ExtendedKeyUsageOptions::Representation
      
          collection :unknown_extended_key_usages, as: 'unknownExtendedKeyUsages', class: Google::Apis::PrivatecaV1::ObjectIdProp, decorator: Google::Apis::PrivatecaV1::ObjectIdProp::Representation
      
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
      
      class ListCaPoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ca_pools, as: 'caPools', class: Google::Apis::PrivatecaV1::CaPool, decorator: Google::Apis::PrivatecaV1::CaPool::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCertificateAuthoritiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificate_authorities, as: 'certificateAuthorities', class: Google::Apis::PrivatecaV1::CertificateAuthority, decorator: Google::Apis::PrivatecaV1::CertificateAuthority::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCertificateRevocationListsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificate_revocation_lists, as: 'certificateRevocationLists', class: Google::Apis::PrivatecaV1::CertificateRevocationList, decorator: Google::Apis::PrivatecaV1::CertificateRevocationList::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCertificateTemplatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificate_templates, as: 'certificateTemplates', class: Google::Apis::PrivatecaV1::CertificateTemplate, decorator: Google::Apis::PrivatecaV1::CertificateTemplate::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCertificatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificates, as: 'certificates', class: Google::Apis::PrivatecaV1::Certificate, decorator: Google::Apis::PrivatecaV1::Certificate::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::PrivatecaV1::Location, decorator: Google::Apis::PrivatecaV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::PrivatecaV1::Operation, decorator: Google::Apis::PrivatecaV1::Operation::Representation
      
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
      
      class NameConstraints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :critical, as: 'critical'
          collection :excluded_dns_names, as: 'excludedDnsNames'
          collection :excluded_email_addresses, as: 'excludedEmailAddresses'
          collection :excluded_ip_ranges, as: 'excludedIpRanges'
          collection :excluded_uris, as: 'excludedUris'
          collection :permitted_dns_names, as: 'permittedDnsNames'
          collection :permitted_email_addresses, as: 'permittedEmailAddresses'
          collection :permitted_ip_ranges, as: 'permittedIpRanges'
          collection :permitted_uris, as: 'permittedUris'
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
          property :error, as: 'error', class: Google::Apis::PrivatecaV1::Status, decorator: Google::Apis::PrivatecaV1::Status::Representation
      
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
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::PrivatecaV1::AuditConfig, decorator: Google::Apis::PrivatecaV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::PrivatecaV1::Binding, decorator: Google::Apis::PrivatecaV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PublicKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :key, :base64 => true, as: 'key'
        end
      end
      
      class PublishingOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding_format, as: 'encodingFormat'
          property :publish_ca_cert, as: 'publishCaCert'
          property :publish_crl, as: 'publishCrl'
        end
      end
      
      class ReconciliationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_resource, as: 'deleteResource'
          property :exclusive_action, as: 'exclusiveAction'
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
      
      class RsaKeyType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_modulus_size, :numeric_string => true, as: 'maxModulusSize'
          property :min_modulus_size, :numeric_string => true, as: 'minModulusSize'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::PrivatecaV1::Policy, decorator: Google::Apis::PrivatecaV1::Policy::Representation
      
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
          property :common_name, as: 'commonName'
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
          collection :custom_sans, as: 'customSans', class: Google::Apis::PrivatecaV1::X509Extension, decorator: Google::Apis::PrivatecaV1::X509Extension::Representation
      
          collection :dns_names, as: 'dnsNames'
          collection :email_addresses, as: 'emailAddresses'
          collection :ip_addresses, as: 'ipAddresses'
          collection :uris, as: 'uris'
        end
      end
      
      class SubjectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subject, as: 'subject', class: Google::Apis::PrivatecaV1::Subject, decorator: Google::Apis::PrivatecaV1::Subject::Representation
      
          property :subject_alt_name, as: 'subjectAltName', class: Google::Apis::PrivatecaV1::SubjectAltNames, decorator: Google::Apis::PrivatecaV1::SubjectAltNames::Representation
      
        end
      end
      
      class SubjectDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hex_serial_number, as: 'hexSerialNumber'
          property :lifetime, as: 'lifetime'
          property :not_after_time, as: 'notAfterTime'
          property :not_before_time, as: 'notBeforeTime'
          property :subject, as: 'subject', class: Google::Apis::PrivatecaV1::Subject, decorator: Google::Apis::PrivatecaV1::Subject::Representation
      
          property :subject_alt_name, as: 'subjectAltName', class: Google::Apis::PrivatecaV1::SubjectAltNames, decorator: Google::Apis::PrivatecaV1::SubjectAltNames::Representation
      
        end
      end
      
      class SubordinateConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_authority, as: 'certificateAuthority'
          property :pem_issuer_chain, as: 'pemIssuerChain', class: Google::Apis::PrivatecaV1::SubordinateConfigChain, decorator: Google::Apis::PrivatecaV1::SubordinateConfigChain::Representation
      
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
      
      class UndeleteCertificateAuthorityRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class X509Extension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :critical, as: 'critical'
          property :object_id_prop, as: 'objectId', class: Google::Apis::PrivatecaV1::ObjectIdProp, decorator: Google::Apis::PrivatecaV1::ObjectIdProp::Representation
      
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class X509Parameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_extensions, as: 'additionalExtensions', class: Google::Apis::PrivatecaV1::X509Extension, decorator: Google::Apis::PrivatecaV1::X509Extension::Representation
      
          collection :aia_ocsp_servers, as: 'aiaOcspServers'
          property :ca_options, as: 'caOptions', class: Google::Apis::PrivatecaV1::CaOptions, decorator: Google::Apis::PrivatecaV1::CaOptions::Representation
      
          property :key_usage, as: 'keyUsage', class: Google::Apis::PrivatecaV1::KeyUsage, decorator: Google::Apis::PrivatecaV1::KeyUsage::Representation
      
          property :name_constraints, as: 'nameConstraints', class: Google::Apis::PrivatecaV1::NameConstraints, decorator: Google::Apis::PrivatecaV1::NameConstraints::Representation
      
          collection :policy_ids, as: 'policyIds', class: Google::Apis::PrivatecaV1::ObjectIdProp, decorator: Google::Apis::PrivatecaV1::ObjectIdProp::Representation
      
        end
      end
    end
  end
end
