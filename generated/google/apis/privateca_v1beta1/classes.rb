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
      
      # URLs where a CertificateAuthority will publish content.
      class AccessUrls
        include Google::Apis::Core::Hashable
      
        # The URL where this CertificateAuthority's CA certificate is published. This
        # will only be set for CAs that have been activated.
        # Corresponds to the JSON property `caCertificateAccessUrl`
        # @return [String]
        attr_accessor :ca_certificate_access_url
      
        # The URL where this CertificateAuthority's CRLs are published. This will only
        # be set for CAs that have been activated.
        # Corresponds to the JSON property `crlAccessUrl`
        # @return [String]
        attr_accessor :crl_access_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate_access_url = args[:ca_certificate_access_url] if args.key?(:ca_certificate_access_url)
          @crl_access_url = args[:crl_access_url] if args.key?(:crl_access_url)
        end
      end
      
      # Request message for CertificateAuthorityService.ActivateCertificateAuthority.
      class ActivateCertificateAuthorityRequest
        include Google::Apis::Core::Hashable
      
        # Required. The signed CA certificate issued from
        # FetchCertificateAuthorityCsrResponse.pem_csr.
        # Corresponds to the JSON property `pemCaCertificate`
        # @return [String]
        attr_accessor :pem_ca_certificate
      
        # Optional. An ID to identify requests. Specify a unique request ID so that if
        # you must retry your request, the server will know to ignore the request if it
        # has already been completed. The server will guarantee that for at least 60
        # minutes since the first request. For example, consider a situation where you
        # make an initial request and t he request times out. If you make the request
        # again with the same request ID, the server can check if original operation
        # with the same request ID was received, and if so, will ignore the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Describes a subordinate CA's issuers. This is either a resource path to a
        # known issuing CertificateAuthority, or a PEM issuer certificate chain.
        # Corresponds to the JSON property `subordinateConfig`
        # @return [Google::Apis::PrivatecaV1beta1::SubordinateConfig]
        attr_accessor :subordinate_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pem_ca_certificate = args[:pem_ca_certificate] if args.key?(:pem_ca_certificate)
          @request_id = args[:request_id] if args.key?(:request_id)
          @subordinate_config = args[:subordinate_config] if args.key?(:subordinate_config)
        end
      end
      
      # 
      class AllowedConfigList
        include Google::Apis::Core::Hashable
      
        # Required. All Certificates issued by the CertificateAuthority must match at
        # least one listed ReusableConfigWrapper. If a ReusableConfigWrapper has an
        # empty field, any value will be allowed for that field.
        # Corresponds to the JSON property `allowedConfigValues`
        # @return [Array<Google::Apis::PrivatecaV1beta1::ReusableConfigWrapper>]
        attr_accessor :allowed_config_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_config_values = args[:allowed_config_values] if args.key?(:allowed_config_values)
        end
      end
      
      # AllowedSubjectAltNames specifies the allowed values for SubjectAltNames by the
      # CertificateAuthority when issuing Certificates.
      class AllowedSubjectAltNames
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies if to allow custom X509Extension values.
        # Corresponds to the JSON property `allowCustomSans`
        # @return [Boolean]
        attr_accessor :allow_custom_sans
        alias_method :allow_custom_sans?, :allow_custom_sans
      
        # Optional. Specifies if glob patterns used for allowed_dns_names allow wildcard
        # certificates. If this is set, certificate requests with wildcard domains will
        # be permitted to match a glob pattern specified in allowed_dns_names. Otherwise,
        # certificate requests with wildcard domains will be permitted only if
        # allowed_dns_names contains a literal wildcard.
        # Corresponds to the JSON property `allowGlobbingDnsWildcards`
        # @return [Boolean]
        attr_accessor :allow_globbing_dns_wildcards
        alias_method :allow_globbing_dns_wildcards?, :allow_globbing_dns_wildcards
      
        # Optional. Contains valid, fully-qualified host names. Glob patterns are also
        # supported. To allow an explicit wildcard certificate, escape with backlash (i.
        # e. "\*"). E.g. for globbed entries: '*bar.com' will allow 'foo.bar.com', but
        # not '*.bar.com', unless the allow_globbing_dns_wildcards field is set. E.g.
        # for wildcard entries: '\*.bar.com' will allow '*.bar.com', but not 'foo.bar.
        # com'.
        # Corresponds to the JSON property `allowedDnsNames`
        # @return [Array<String>]
        attr_accessor :allowed_dns_names
      
        # Optional. Contains valid RFC 2822 E-mail addresses. Glob patterns are also
        # supported.
        # Corresponds to the JSON property `allowedEmailAddresses`
        # @return [Array<String>]
        attr_accessor :allowed_email_addresses
      
        # Optional. Contains valid 32-bit IPv4 addresses and subnet ranges or RFC 4291
        # IPv6 addresses and subnet ranges. Subnet ranges are specified using the '/'
        # notation (e.g. 10.0.0.0/8, 2001:700:300:1800::/64). Glob patterns are
        # supported only for ip address entries (i.e. not for subnet ranges).
        # Corresponds to the JSON property `allowedIps`
        # @return [Array<String>]
        attr_accessor :allowed_ips
      
        # Optional. Contains valid RFC 3986 URIs. Glob patterns are also supported. To
        # match across path seperators (i.e. '/') use the double star glob pattern (i.e.
        # '**').
        # Corresponds to the JSON property `allowedUris`
        # @return [Array<String>]
        attr_accessor :allowed_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_custom_sans = args[:allow_custom_sans] if args.key?(:allow_custom_sans)
          @allow_globbing_dns_wildcards = args[:allow_globbing_dns_wildcards] if args.key?(:allow_globbing_dns_wildcards)
          @allowed_dns_names = args[:allowed_dns_names] if args.key?(:allowed_dns_names)
          @allowed_email_addresses = args[:allowed_email_addresses] if args.key?(:allowed_email_addresses)
          @allowed_ips = args[:allowed_ips] if args.key?(:allowed_ips)
          @allowed_uris = args[:allowed_uris] if args.key?(:allowed_uris)
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
      # exempts jose@example.com from DATA_READ logging, and aliya@example.com from
      # DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::PrivatecaV1beta1::AuditLogConfig>]
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
      
      # Associates `members` with a `role`.
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
        # @return [Google::Apis::PrivatecaV1beta1::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. * `
        # user:`emailid``: An email address that represents a specific Google account.
        # For example, `alice@example.com` . * `serviceAccount:`emailid``: An email
        # address that represents a service account. For example, `my-other-app@appspot.
        # gserviceaccount.com`. * `group:`emailid``: An email address that represents a
        # Google group. For example, `admins@example.com`. * `deleted:user:`emailid`?uid=
        # `uniqueid``: An email address (plus unique identifier) representing a user
        # that has been recently deleted. For example, `alice@example.com?uid=
        # 123456789012345678901`. If the user is recovered, this value reverts to `user:`
        # emailid`` and the recovered user retains the role in the binding. * `deleted:
        # serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a service account that has been recently deleted. For
        # example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to `serviceAccount:`
        # emailid`` and the undeleted service account retains the role in the binding. *
        # `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently deleted. For
        # example, `admins@example.com?uid=123456789012345678901`. If the group is
        # recovered, this value reverts to `group:`emailid`` and the recovered group
        # retains the role in the binding. * `domain:`domain``: The G Suite domain (
        # primary) that represents all the users of that domain. For example, `google.
        # com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`.
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
      
      # Describes values that are relevant in a CA certificate.
      class CaOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Refers to the "CA" X.509 extension, which is a boolean value. When
        # this value is missing, the extension will be omitted from the CA certificate.
        # Corresponds to the JSON property `isCa`
        # @return [Boolean]
        attr_accessor :is_ca
        alias_method :is_ca?, :is_ca
      
        # Optional. Refers to the path length restriction X.509 extension. For a CA
        # certificate, this value describes the depth of subordinate CA certificates
        # that are allowed. If this value is less than 0, the request will fail. If this
        # value is missing, the max path length will be omitted from the CA certificate.
        # Corresponds to the JSON property `maxIssuerPathLength`
        # @return [Fixnum]
        attr_accessor :max_issuer_path_length
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_ca = args[:is_ca] if args.key?(:is_ca)
          @max_issuer_path_length = args[:max_issuer_path_length] if args.key?(:max_issuer_path_length)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Certificate corresponds to a signed X.509 certificate issued by a
      # CertificateAuthority.
      class Certificate
        include Google::Apis::Core::Hashable
      
        # A CertificateDescription describes an X.509 certificate or CSR that has been
        # issued, as an alternative to using ASN.1 / X.509.
        # Corresponds to the JSON property `certificateDescription`
        # @return [Google::Apis::PrivatecaV1beta1::CertificateDescription]
        attr_accessor :certificate_description
      
        # A CertificateConfig describes an X.509 certificate or CSR that is to be
        # created, as an alternative to using ASN.1.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::PrivatecaV1beta1::CertificateConfig]
        attr_accessor :config
      
        # Output only. The time at which this Certificate was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Labels with user-defined metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Immutable. The desired lifetime of a certificate. Used to create the
        # "not_before_time" and "not_after_time" fields inside an X.509 certificate.
        # Note that the lifetime may be truncated if it would extend past the life of
        # any certificate authority in the issuing chain.
        # Corresponds to the JSON property `lifetime`
        # @return [String]
        attr_accessor :lifetime
      
        # Output only. The resource path for this Certificate in the format `projects/*/
        # locations/*/certificateAuthorities/*/certificates/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The pem-encoded, signed X.509 certificate.
        # Corresponds to the JSON property `pemCertificate`
        # @return [String]
        attr_accessor :pem_certificate
      
        # Output only. The chain that may be used to verify the X.509 certificate.
        # Expected to be in issuer-to-root order according to RFC 5246.
        # Corresponds to the JSON property `pemCertificateChain`
        # @return [Array<String>]
        attr_accessor :pem_certificate_chain
      
        # Immutable. A pem-encoded X.509 certificate signing request (CSR).
        # Corresponds to the JSON property `pemCsr`
        # @return [String]
        attr_accessor :pem_csr
      
        # Describes fields that are relavent to the revocation of a Certificate.
        # Corresponds to the JSON property `revocationDetails`
        # @return [Google::Apis::PrivatecaV1beta1::RevocationDetails]
        attr_accessor :revocation_details
      
        # Output only. The time at which this Certificate was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_description = args[:certificate_description] if args.key?(:certificate_description)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @lifetime = args[:lifetime] if args.key?(:lifetime)
          @name = args[:name] if args.key?(:name)
          @pem_certificate = args[:pem_certificate] if args.key?(:pem_certificate)
          @pem_certificate_chain = args[:pem_certificate_chain] if args.key?(:pem_certificate_chain)
          @pem_csr = args[:pem_csr] if args.key?(:pem_csr)
          @revocation_details = args[:revocation_details] if args.key?(:revocation_details)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A CertificateAuthority represents an individual Certificate Authority. A
      # CertificateAuthority can be used to create Certificates.
      class CertificateAuthority
        include Google::Apis::Core::Hashable
      
        # URLs where a CertificateAuthority will publish content.
        # Corresponds to the JSON property `accessUrls`
        # @return [Google::Apis::PrivatecaV1beta1::AccessUrls]
        attr_accessor :access_urls
      
        # Output only. A structured description of this CertificateAuthority's CA
        # certificate and its issuers. Ordered as self-to-root.
        # Corresponds to the JSON property `caCertificateDescriptions`
        # @return [Array<Google::Apis::PrivatecaV1beta1::CertificateDescription>]
        attr_accessor :ca_certificate_descriptions
      
        # The issuing policy for a CertificateAuthority. Certificates will not be
        # successfully issued from this CertificateAuthority if they violate the policy.
        # Corresponds to the JSON property `certificatePolicy`
        # @return [Google::Apis::PrivatecaV1beta1::CertificateAuthorityPolicy]
        attr_accessor :certificate_policy
      
        # A CertificateConfig describes an X.509 certificate or CSR that is to be
        # created, as an alternative to using ASN.1.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::PrivatecaV1beta1::CertificateConfig]
        attr_accessor :config
      
        # Output only. The time at which this CertificateAuthority was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time at which this CertificateAuthority will be deleted, if
        # scheduled for deletion.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Immutable. The name of a Cloud Storage bucket where this CertificateAuthority
        # will publish content, such as the CA certificate and CRLs. This must be a
        # bucket name, without any prefixes (such as `gs://`) or suffixes (such as `.
        # googleapis.com`). For example, to use a bucket named `my-bucket`, you would
        # simply specify `my-bucket`. If not specified, a managed bucket will be created.
        # Corresponds to the JSON property `gcsBucket`
        # @return [String]
        attr_accessor :gcs_bucket
      
        # Options that affect all certificates issued by a CertificateAuthority.
        # Corresponds to the JSON property `issuingOptions`
        # @return [Google::Apis::PrivatecaV1beta1::IssuingOptions]
        attr_accessor :issuing_options
      
        # A Cloud KMS key configuration that a CertificateAuthority will use.
        # Corresponds to the JSON property `keySpec`
        # @return [Google::Apis::PrivatecaV1beta1::KeyVersionSpec]
        attr_accessor :key_spec
      
        # Optional. Labels with user-defined metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The desired lifetime of the CA certificate. Used to create the "
        # not_before_time" and "not_after_time" fields inside an X.509 certificate.
        # Corresponds to the JSON property `lifetime`
        # @return [String]
        attr_accessor :lifetime
      
        # Output only. The resource name for this CertificateAuthority in the format `
        # projects/*/locations/*/certificateAuthorities/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. This CertificateAuthority's certificate chain, including the
        # current CertificateAuthority's certificate. Ordered such that the root issuer
        # is the final element (consistent with RFC 5246). For a self-signed CA, this
        # will only list the current CertificateAuthority's certificate.
        # Corresponds to the JSON property `pemCaCertificates`
        # @return [Array<String>]
        attr_accessor :pem_ca_certificates
      
        # Output only. The State for this CertificateAuthority.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Describes a subordinate CA's issuers. This is either a resource path to a
        # known issuing CertificateAuthority, or a PEM issuer certificate chain.
        # Corresponds to the JSON property `subordinateConfig`
        # @return [Google::Apis::PrivatecaV1beta1::SubordinateConfig]
        attr_accessor :subordinate_config
      
        # Required. Immutable. The Tier of this CertificateAuthority.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        # Required. Immutable. The Type of this CertificateAuthority.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The time at which this CertificateAuthority was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_urls = args[:access_urls] if args.key?(:access_urls)
          @ca_certificate_descriptions = args[:ca_certificate_descriptions] if args.key?(:ca_certificate_descriptions)
          @certificate_policy = args[:certificate_policy] if args.key?(:certificate_policy)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @gcs_bucket = args[:gcs_bucket] if args.key?(:gcs_bucket)
          @issuing_options = args[:issuing_options] if args.key?(:issuing_options)
          @key_spec = args[:key_spec] if args.key?(:key_spec)
          @labels = args[:labels] if args.key?(:labels)
          @lifetime = args[:lifetime] if args.key?(:lifetime)
          @name = args[:name] if args.key?(:name)
          @pem_ca_certificates = args[:pem_ca_certificates] if args.key?(:pem_ca_certificates)
          @state = args[:state] if args.key?(:state)
          @subordinate_config = args[:subordinate_config] if args.key?(:subordinate_config)
          @tier = args[:tier] if args.key?(:tier)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The issuing policy for a CertificateAuthority. Certificates will not be
      # successfully issued from this CertificateAuthority if they violate the policy.
      class CertificateAuthorityPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. If any value is specified here, then all Certificates issued by the
        # CertificateAuthority must match at least one listed value. If no value is
        # specified, all values will be allowed for this fied. Glob patterns are also
        # supported.
        # Corresponds to the JSON property `allowedCommonNames`
        # @return [Array<String>]
        attr_accessor :allowed_common_names
      
        # Optional. All Certificates issued by the CertificateAuthority must match at
        # least one listed ReusableConfigWrapper in the list.
        # Corresponds to the JSON property `allowedConfigList`
        # @return [Google::Apis::PrivatecaV1beta1::AllowedConfigList]
        attr_accessor :allowed_config_list
      
        # IssuanceModes specifies the allowed ways in which Certificates may be
        # requested from this CertificateAuthority.
        # Corresponds to the JSON property `allowedIssuanceModes`
        # @return [Google::Apis::PrivatecaV1beta1::IssuanceModes]
        attr_accessor :allowed_issuance_modes
      
        # Optional. If any Subject is specified here, then all Certificates issued by
        # the CertificateAuthority must match at least one listed Subject. If a Subject
        # has an empty field, any value will be allowed for that field.
        # Corresponds to the JSON property `allowedLocationsAndOrganizations`
        # @return [Array<Google::Apis::PrivatecaV1beta1::Subject>]
        attr_accessor :allowed_locations_and_organizations
      
        # AllowedSubjectAltNames specifies the allowed values for SubjectAltNames by the
        # CertificateAuthority when issuing Certificates.
        # Corresponds to the JSON property `allowedSans`
        # @return [Google::Apis::PrivatecaV1beta1::AllowedSubjectAltNames]
        attr_accessor :allowed_sans
      
        # Optional. The maximum lifetime allowed by the CertificateAuthority. Note that
        # if the any part if the issuing chain expires before a Certificate's requested
        # maximum_lifetime, the effective lifetime will be explicitly truncated.
        # Corresponds to the JSON property `maximumLifetime`
        # @return [String]
        attr_accessor :maximum_lifetime
      
        # A ReusableConfigWrapper describes values that may assist in creating an X.509
        # certificate, or a reference to a pre-defined set of values.
        # Corresponds to the JSON property `overwriteConfigValues`
        # @return [Google::Apis::PrivatecaV1beta1::ReusableConfigWrapper]
        attr_accessor :overwrite_config_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_common_names = args[:allowed_common_names] if args.key?(:allowed_common_names)
          @allowed_config_list = args[:allowed_config_list] if args.key?(:allowed_config_list)
          @allowed_issuance_modes = args[:allowed_issuance_modes] if args.key?(:allowed_issuance_modes)
          @allowed_locations_and_organizations = args[:allowed_locations_and_organizations] if args.key?(:allowed_locations_and_organizations)
          @allowed_sans = args[:allowed_sans] if args.key?(:allowed_sans)
          @maximum_lifetime = args[:maximum_lifetime] if args.key?(:maximum_lifetime)
          @overwrite_config_values = args[:overwrite_config_values] if args.key?(:overwrite_config_values)
        end
      end
      
      # A CertificateConfig describes an X.509 certificate or CSR that is to be
      # created, as an alternative to using ASN.1.
      class CertificateConfig
        include Google::Apis::Core::Hashable
      
        # A PublicKey describes a public key.
        # Corresponds to the JSON property `publicKey`
        # @return [Google::Apis::PrivatecaV1beta1::PublicKey]
        attr_accessor :public_key
      
        # A ReusableConfigWrapper describes values that may assist in creating an X.509
        # certificate, or a reference to a pre-defined set of values.
        # Corresponds to the JSON property `reusableConfig`
        # @return [Google::Apis::PrivatecaV1beta1::ReusableConfigWrapper]
        attr_accessor :reusable_config
      
        # These values are used to create the distinguished name and subject alternative
        # name fields in an X.509 certificate.
        # Corresponds to the JSON property `subjectConfig`
        # @return [Google::Apis::PrivatecaV1beta1::SubjectConfig]
        attr_accessor :subject_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @public_key = args[:public_key] if args.key?(:public_key)
          @reusable_config = args[:reusable_config] if args.key?(:reusable_config)
          @subject_config = args[:subject_config] if args.key?(:subject_config)
        end
      end
      
      # A CertificateDescription describes an X.509 certificate or CSR that has been
      # issued, as an alternative to using ASN.1 / X.509.
      class CertificateDescription
        include Google::Apis::Core::Hashable
      
        # Describes lists of issuer CA certificate URLs that appear in the "Authority
        # Information Access" extension in the certificate.
        # Corresponds to the JSON property `aiaIssuingCertificateUrls`
        # @return [Array<String>]
        attr_accessor :aia_issuing_certificate_urls
      
        # A KeyId identifies a specific public key, usually by hashing the public key.
        # Corresponds to the JSON property `authorityKeyId`
        # @return [Google::Apis::PrivatecaV1beta1::KeyId]
        attr_accessor :authority_key_id
      
        # A group of fingerprints for the x509 certificate.
        # Corresponds to the JSON property `certFingerprint`
        # @return [Google::Apis::PrivatecaV1beta1::CertificateFingerprint]
        attr_accessor :cert_fingerprint
      
        # A ReusableConfigValues is used to describe certain fields of an X.509
        # certificate, such as the key usage fields, fields specific to CA certificates,
        # certificate policy extensions and custom extensions.
        # Corresponds to the JSON property `configValues`
        # @return [Google::Apis::PrivatecaV1beta1::ReusableConfigValues]
        attr_accessor :config_values
      
        # Describes a list of locations to obtain CRL information, i.e. the
        # DistributionPoint.fullName described by https://tools.ietf.org/html/rfc5280#
        # section-4.2.1.13
        # Corresponds to the JSON property `crlDistributionPoints`
        # @return [Array<String>]
        attr_accessor :crl_distribution_points
      
        # A PublicKey describes a public key.
        # Corresponds to the JSON property `publicKey`
        # @return [Google::Apis::PrivatecaV1beta1::PublicKey]
        attr_accessor :public_key
      
        # These values describe fields in an issued X.509 certificate such as the
        # distinguished name, subject alternative names, serial number, and lifetime.
        # Corresponds to the JSON property `subjectDescription`
        # @return [Google::Apis::PrivatecaV1beta1::SubjectDescription]
        attr_accessor :subject_description
      
        # A KeyId identifies a specific public key, usually by hashing the public key.
        # Corresponds to the JSON property `subjectKeyId`
        # @return [Google::Apis::PrivatecaV1beta1::KeyId]
        attr_accessor :subject_key_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aia_issuing_certificate_urls = args[:aia_issuing_certificate_urls] if args.key?(:aia_issuing_certificate_urls)
          @authority_key_id = args[:authority_key_id] if args.key?(:authority_key_id)
          @cert_fingerprint = args[:cert_fingerprint] if args.key?(:cert_fingerprint)
          @config_values = args[:config_values] if args.key?(:config_values)
          @crl_distribution_points = args[:crl_distribution_points] if args.key?(:crl_distribution_points)
          @public_key = args[:public_key] if args.key?(:public_key)
          @subject_description = args[:subject_description] if args.key?(:subject_description)
          @subject_key_id = args[:subject_key_id] if args.key?(:subject_key_id)
        end
      end
      
      # A group of fingerprints for the x509 certificate.
      class CertificateFingerprint
        include Google::Apis::Core::Hashable
      
        # The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.
        # Corresponds to the JSON property `sha256Hash`
        # @return [String]
        attr_accessor :sha256_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sha256_hash = args[:sha256_hash] if args.key?(:sha256_hash)
        end
      end
      
      # A CertificateRevocationList corresponds to a signed X.509 certificate
      # Revocation List (CRL). A CRL contains the serial numbers of certificates that
      # should no longer be trusted.
      class CertificateRevocationList
        include Google::Apis::Core::Hashable
      
        # Output only. The location where 'pem_crl' can be accessed.
        # Corresponds to the JSON property `accessUrl`
        # @return [String]
        attr_accessor :access_url
      
        # Output only. The time at which this CertificateRevocationList was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Labels with user-defined metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The resource path for this CertificateRevocationList in the
        # format `projects/*/locations/*/certificateAuthorities/*/
        # certificateRevocationLists/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The PEM-encoded X.509 CRL.
        # Corresponds to the JSON property `pemCrl`
        # @return [String]
        attr_accessor :pem_crl
      
        # Output only. The revoked serial numbers that appear in pem_crl.
        # Corresponds to the JSON property `revokedCertificates`
        # @return [Array<Google::Apis::PrivatecaV1beta1::RevokedCertificate>]
        attr_accessor :revoked_certificates
      
        # Output only. The CRL sequence number that appears in pem_crl.
        # Corresponds to the JSON property `sequenceNumber`
        # @return [Fixnum]
        attr_accessor :sequence_number
      
        # Output only. The State for this CertificateRevocationList.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time at which this CertificateRevocationList was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_url = args[:access_url] if args.key?(:access_url)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @pem_crl = args[:pem_crl] if args.key?(:pem_crl)
          @revoked_certificates = args[:revoked_certificates] if args.key?(:revoked_certificates)
          @sequence_number = args[:sequence_number] if args.key?(:sequence_number)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for CertificateAuthorityService.DisableCertificateAuthority.
      class DisableCertificateAuthorityRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An ID to identify requests. Specify a unique request ID so that if
        # you must retry your request, the server will know to ignore the request if it
        # has already been completed. The server will guarantee that for at least 60
        # minutes since the first request. For example, consider a situation where you
        # make an initial request and t he request times out. If you make the request
        # again with the same request ID, the server can check if original operation
        # with the same request ID was received, and if so, will ignore the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
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
      
      # Request message for CertificateAuthorityService.EnableCertificateAuthority.
      class EnableCertificateAuthorityRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An ID to identify requests. Specify a unique request ID so that if
        # you must retry your request, the server will know to ignore the request if it
        # has already been completed. The server will guarantee that for at least 60
        # minutes since the first request. For example, consider a situation where you
        # make an initial request and t he request times out. If you make the request
        # again with the same request ID, the server can check if original operation
        # with the same request ID was received, and if so, will ignore the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
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
      
      # KeyUsage.ExtendedKeyUsageOptions has fields that correspond to certain common
      # OIDs that could be specified as an extended key usage value.
      class ExtendedKeyUsageOptions
        include Google::Apis::Core::Hashable
      
        # Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client
        # authentication", though regularly used for non-WWW TLS.
        # Corresponds to the JSON property `clientAuth`
        # @return [Boolean]
        attr_accessor :client_auth
        alias_method :client_auth?, :client_auth
      
        # Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of
        # downloadable executable code client authentication".
        # Corresponds to the JSON property `codeSigning`
        # @return [Boolean]
        attr_accessor :code_signing
        alias_method :code_signing?, :code_signing
      
        # Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email
        # protection".
        # Corresponds to the JSON property `emailProtection`
        # @return [Boolean]
        attr_accessor :email_protection
        alias_method :email_protection?, :email_protection
      
        # Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP
        # responses".
        # Corresponds to the JSON property `ocspSigning`
        # @return [Boolean]
        attr_accessor :ocsp_signing
        alias_method :ocsp_signing?, :ocsp_signing
      
        # Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server
        # authentication", though regularly used for non-WWW TLS.
        # Corresponds to the JSON property `serverAuth`
        # @return [Boolean]
        attr_accessor :server_auth
        alias_method :server_auth?, :server_auth
      
        # Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the
        # hash of an object to a time".
        # Corresponds to the JSON property `timeStamping`
        # @return [Boolean]
        attr_accessor :time_stamping
        alias_method :time_stamping?, :time_stamping
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_auth = args[:client_auth] if args.key?(:client_auth)
          @code_signing = args[:code_signing] if args.key?(:code_signing)
          @email_protection = args[:email_protection] if args.key?(:email_protection)
          @ocsp_signing = args[:ocsp_signing] if args.key?(:ocsp_signing)
          @server_auth = args[:server_auth] if args.key?(:server_auth)
          @time_stamping = args[:time_stamping] if args.key?(:time_stamping)
        end
      end
      
      # Response message for CertificateAuthorityService.FetchCertificateAuthorityCsr.
      class FetchCertificateAuthorityCsrResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The PEM-encoded signed certificate signing request (CSR).
        # Corresponds to the JSON property `pemCsr`
        # @return [String]
        attr_accessor :pem_csr
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pem_csr = args[:pem_csr] if args.key?(:pem_csr)
        end
      end
      
      # IssuanceModes specifies the allowed ways in which Certificates may be
      # requested from this CertificateAuthority.
      class IssuanceModes
        include Google::Apis::Core::Hashable
      
        # Required. When true, allows callers to create Certificates by specifying a
        # CertificateConfig.
        # Corresponds to the JSON property `allowConfigBasedIssuance`
        # @return [Boolean]
        attr_accessor :allow_config_based_issuance
        alias_method :allow_config_based_issuance?, :allow_config_based_issuance
      
        # Required. When true, allows callers to create Certificates by specifying a CSR.
        # Corresponds to the JSON property `allowCsrBasedIssuance`
        # @return [Boolean]
        attr_accessor :allow_csr_based_issuance
        alias_method :allow_csr_based_issuance?, :allow_csr_based_issuance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_config_based_issuance = args[:allow_config_based_issuance] if args.key?(:allow_config_based_issuance)
          @allow_csr_based_issuance = args[:allow_csr_based_issuance] if args.key?(:allow_csr_based_issuance)
        end
      end
      
      # Options that affect all certificates issued by a CertificateAuthority.
      class IssuingOptions
        include Google::Apis::Core::Hashable
      
        # Required. When true, includes a URL to the issuing CA certificate in the "
        # authority information access" X.509 extension.
        # Corresponds to the JSON property `includeCaCertUrl`
        # @return [Boolean]
        attr_accessor :include_ca_cert_url
        alias_method :include_ca_cert_url?, :include_ca_cert_url
      
        # Required. When true, includes a URL to the CRL corresponding to certificates
        # issued from a CertificateAuthority. CRLs will expire 7 days from their
        # creation. However, we will rebuild daily. CRLs are also rebuilt shortly after
        # a certificate is revoked.
        # Corresponds to the JSON property `includeCrlAccessUrl`
        # @return [Boolean]
        attr_accessor :include_crl_access_url
        alias_method :include_crl_access_url?, :include_crl_access_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_ca_cert_url = args[:include_ca_cert_url] if args.key?(:include_ca_cert_url)
          @include_crl_access_url = args[:include_crl_access_url] if args.key?(:include_crl_access_url)
        end
      end
      
      # A KeyId identifies a specific public key, usually by hashing the public key.
      class KeyId
        include Google::Apis::Core::Hashable
      
        # Optional. The value of this KeyId encoded in lowercase hexadecimal. This is
        # most likely the 160 bit SHA-1 hash of the public key.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
        end
      end
      
      # A KeyUsage describes key usage values that may appear in an X.509 certificate.
      class KeyUsage
        include Google::Apis::Core::Hashable
      
        # KeyUsage.KeyUsageOptions corresponds to the key usage values described in
        # https://tools.ietf.org/html/rfc5280#section-4.2.1.3.
        # Corresponds to the JSON property `baseKeyUsage`
        # @return [Google::Apis::PrivatecaV1beta1::KeyUsageOptions]
        attr_accessor :base_key_usage
      
        # KeyUsage.ExtendedKeyUsageOptions has fields that correspond to certain common
        # OIDs that could be specified as an extended key usage value.
        # Corresponds to the JSON property `extendedKeyUsage`
        # @return [Google::Apis::PrivatecaV1beta1::ExtendedKeyUsageOptions]
        attr_accessor :extended_key_usage
      
        # Used to describe extended key usages that are not listed in the KeyUsage.
        # ExtendedKeyUsageOptions message.
        # Corresponds to the JSON property `unknownExtendedKeyUsages`
        # @return [Array<Google::Apis::PrivatecaV1beta1::ObjectIdProp>]
        attr_accessor :unknown_extended_key_usages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_key_usage = args[:base_key_usage] if args.key?(:base_key_usage)
          @extended_key_usage = args[:extended_key_usage] if args.key?(:extended_key_usage)
          @unknown_extended_key_usages = args[:unknown_extended_key_usages] if args.key?(:unknown_extended_key_usages)
        end
      end
      
      # KeyUsage.KeyUsageOptions corresponds to the key usage values described in
      # https://tools.ietf.org/html/rfc5280#section-4.2.1.3.
      class KeyUsageOptions
        include Google::Apis::Core::Hashable
      
        # The key may be used to sign certificates.
        # Corresponds to the JSON property `certSign`
        # @return [Boolean]
        attr_accessor :cert_sign
        alias_method :cert_sign?, :cert_sign
      
        # The key may be used for cryptographic commitments. Note that this may also be
        # referred to as "non-repudiation".
        # Corresponds to the JSON property `contentCommitment`
        # @return [Boolean]
        attr_accessor :content_commitment
        alias_method :content_commitment?, :content_commitment
      
        # The key may be used sign certificate revocation lists.
        # Corresponds to the JSON property `crlSign`
        # @return [Boolean]
        attr_accessor :crl_sign
        alias_method :crl_sign?, :crl_sign
      
        # The key may be used to encipher data.
        # Corresponds to the JSON property `dataEncipherment`
        # @return [Boolean]
        attr_accessor :data_encipherment
        alias_method :data_encipherment?, :data_encipherment
      
        # The key may be used to decipher only.
        # Corresponds to the JSON property `decipherOnly`
        # @return [Boolean]
        attr_accessor :decipher_only
        alias_method :decipher_only?, :decipher_only
      
        # The key may be used for digital signatures.
        # Corresponds to the JSON property `digitalSignature`
        # @return [Boolean]
        attr_accessor :digital_signature
        alias_method :digital_signature?, :digital_signature
      
        # The key may be used to encipher only.
        # Corresponds to the JSON property `encipherOnly`
        # @return [Boolean]
        attr_accessor :encipher_only
        alias_method :encipher_only?, :encipher_only
      
        # The key may be used in a key agreement protocol.
        # Corresponds to the JSON property `keyAgreement`
        # @return [Boolean]
        attr_accessor :key_agreement
        alias_method :key_agreement?, :key_agreement
      
        # The key may be used to encipher other keys.
        # Corresponds to the JSON property `keyEncipherment`
        # @return [Boolean]
        attr_accessor :key_encipherment
        alias_method :key_encipherment?, :key_encipherment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_sign = args[:cert_sign] if args.key?(:cert_sign)
          @content_commitment = args[:content_commitment] if args.key?(:content_commitment)
          @crl_sign = args[:crl_sign] if args.key?(:crl_sign)
          @data_encipherment = args[:data_encipherment] if args.key?(:data_encipherment)
          @decipher_only = args[:decipher_only] if args.key?(:decipher_only)
          @digital_signature = args[:digital_signature] if args.key?(:digital_signature)
          @encipher_only = args[:encipher_only] if args.key?(:encipher_only)
          @key_agreement = args[:key_agreement] if args.key?(:key_agreement)
          @key_encipherment = args[:key_encipherment] if args.key?(:key_encipherment)
        end
      end
      
      # A Cloud KMS key configuration that a CertificateAuthority will use.
      class KeyVersionSpec
        include Google::Apis::Core::Hashable
      
        # Required. The algorithm to use for creating a managed Cloud KMS key for a for
        # a simplified experience. All managed keys will be have their ProtectionLevel
        # as `HSM`.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # Required. The resource name for an existing Cloud KMS CryptoKeyVersion in the
        # format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
        # This option enables full flexibility in the key's capabilities and properties.
        # Corresponds to the JSON property `cloudKmsKeyVersion`
        # @return [String]
        attr_accessor :cloud_kms_key_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @cloud_kms_key_version = args[:cloud_kms_key_version] if args.key?(:cloud_kms_key_version)
        end
      end
      
      # Response message for CertificateAuthorityService.ListCertificateAuthorities.
      class ListCertificateAuthoritiesResponse
        include Google::Apis::Core::Hashable
      
        # The list of CertificateAuthorities.
        # Corresponds to the JSON property `certificateAuthorities`
        # @return [Array<Google::Apis::PrivatecaV1beta1::CertificateAuthority>]
        attr_accessor :certificate_authorities
      
        # A token to retrieve next page of results. Pass this value in
        # ListCertificateAuthoritiesRequest.next_page_token to retrieve the next page of
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of locations (e.g. "us-west1") that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_authorities = args[:certificate_authorities] if args.key?(:certificate_authorities)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for CertificateAuthorityService.
      # ListCertificateRevocationLists.
      class ListCertificateRevocationListsResponse
        include Google::Apis::Core::Hashable
      
        # The list of CertificateRevocationLists.
        # Corresponds to the JSON property `certificateRevocationLists`
        # @return [Array<Google::Apis::PrivatecaV1beta1::CertificateRevocationList>]
        attr_accessor :certificate_revocation_lists
      
        # A token to retrieve next page of results. Pass this value in
        # ListCertificateRevocationListsRequest.next_page_token to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of locations (e.g. "us-west1") that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_revocation_lists = args[:certificate_revocation_lists] if args.key?(:certificate_revocation_lists)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for CertificateAuthorityService.ListCertificates.
      class ListCertificatesResponse
        include Google::Apis::Core::Hashable
      
        # The list of Certificates.
        # Corresponds to the JSON property `certificates`
        # @return [Array<Google::Apis::PrivatecaV1beta1::Certificate>]
        attr_accessor :certificates
      
        # A token to retrieve next page of results. Pass this value in
        # ListCertificatesRequest.next_page_token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of locations (e.g. "us-west1") that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificates = args[:certificates] if args.key?(:certificates)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::PrivatecaV1beta1::Location>]
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
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::PrivatecaV1beta1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # Response message for CertificateAuthorityService.ListReusableConfigs.
      class ListReusableConfigsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results. Pass this value in
        # ListReusableConfigsRequest.next_page_token to retrieve the next page of
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of ReusableConfigs.
        # Corresponds to the JSON property `reusableConfigs`
        # @return [Array<Google::Apis::PrivatecaV1beta1::ReusableConfig>]
        attr_accessor :reusable_configs
      
        # A list of locations (e.g. "us-west1") that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reusable_configs = args[:reusable_configs] if args.key?(:reusable_configs)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
      # An ObjectId specifies an object identifier (OID). These provide context and
      # describe types in ASN.1 messages.
      class ObjectIdProp
        include Google::Apis::Core::Hashable
      
        # Required. The parts of an OID path. The most significant parts of the path
        # come first.
        # Corresponds to the JSON property `objectIdPath`
        # @return [Array<Fixnum>]
        attr_accessor :object_id_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_path = args[:object_id_path] if args.key?(:object_id_path)
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
        # @return [Google::Apis::PrivatecaV1beta1::Status]
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
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members` to a single `role`. Members can be
      # user accounts, service accounts, Google groups, and domains (such as G Suite).
      # A `role` is a named list of permissions; each `role` can be an IAM predefined
      # role or a user-created custom role. For some types of Google Cloud resources,
      # a `binding` can also specify a `condition`, which is a logical expression that
      # allows access to a resource only if the expression evaluates to `true`. A
      # condition can add constraints based on attributes of the request, the resource,
      # or both. To learn which resources support conditions in their IAM policies,
      # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
      # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
      # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
      # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
      # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
      # title": "expirable access", "description": "Does not grant access after Sep
      # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
      # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
      # members: - user:mike@example.com - group:admins@example.com - domain:google.
      # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
      # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
      # roles/resourcemanager.organizationViewer condition: title: expirable access
      # description: Does not grant access after Sep 2020 expression: request.time <
      # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
      # description of IAM and its features, see the [IAM documentation](https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::PrivatecaV1beta1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::PrivatecaV1beta1::Binding>]
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
      
      # A PublicKey describes a public key.
      class PublicKey
        include Google::Apis::Core::Hashable
      
        # Required. A public key. When this is specified in a request, the padding and
        # encoding can be any of the options described by the respective 'KeyType' value.
        # When this is generated by the service, it will always be an RFC 5280 [
        # SubjectPublicKeyInfo](https://tools.ietf.org/html/rfc5280#section-4.1)
        # structure containing an algorithm identifier and a key.
        # Corresponds to the JSON property `key`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :key
      
        # Required. The type of public key.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Request message for CertificateAuthorityService.RestoreCertificateAuthority.
      class RestoreCertificateAuthorityRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An ID to identify requests. Specify a unique request ID so that if
        # you must retry your request, the server will know to ignore the request if it
        # has already been completed. The server will guarantee that for at least 60
        # minutes since the first request. For example, consider a situation where you
        # make an initial request and t he request times out. If you make the request
        # again with the same request ID, the server can check if original operation
        # with the same request ID was received, and if so, will ignore the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # A ReusableConfig refers to a managed ReusableConfigValues. Those, in turn, are
      # used to describe certain fields of an X.509 certificate, such as the key usage
      # fields, fields specific to CA certificates, certificate policy extensions and
      # custom extensions.
      class ReusableConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this ReusableConfig was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A human-readable description of scenarios these ReusableConfigValues
        # may be compatible with.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Labels with user-defined metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The resource path for this ReusableConfig in the format `projects/
        # */locations/*/reusableConfigs/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time at which this ReusableConfig was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # A ReusableConfigValues is used to describe certain fields of an X.509
        # certificate, such as the key usage fields, fields specific to CA certificates,
        # certificate policy extensions and custom extensions.
        # Corresponds to the JSON property `values`
        # @return [Google::Apis::PrivatecaV1beta1::ReusableConfigValues]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A ReusableConfigValues is used to describe certain fields of an X.509
      # certificate, such as the key usage fields, fields specific to CA certificates,
      # certificate policy extensions and custom extensions.
      class ReusableConfigValues
        include Google::Apis::Core::Hashable
      
        # Optional. Describes custom X.509 extensions.
        # Corresponds to the JSON property `additionalExtensions`
        # @return [Array<Google::Apis::PrivatecaV1beta1::X509Extension>]
        attr_accessor :additional_extensions
      
        # Optional. Describes Online Certificate Status Protocol (OCSP) endpoint
        # addresses that appear in the "Authority Information Access" extension in the
        # certificate.
        # Corresponds to the JSON property `aiaOcspServers`
        # @return [Array<String>]
        attr_accessor :aia_ocsp_servers
      
        # Describes values that are relevant in a CA certificate.
        # Corresponds to the JSON property `caOptions`
        # @return [Google::Apis::PrivatecaV1beta1::CaOptions]
        attr_accessor :ca_options
      
        # A KeyUsage describes key usage values that may appear in an X.509 certificate.
        # Corresponds to the JSON property `keyUsage`
        # @return [Google::Apis::PrivatecaV1beta1::KeyUsage]
        attr_accessor :key_usage
      
        # Optional. Describes the X.509 certificate policy object identifiers, per https:
        # //tools.ietf.org/html/rfc5280#section-4.2.1.4.
        # Corresponds to the JSON property `policyIds`
        # @return [Array<Google::Apis::PrivatecaV1beta1::ObjectIdProp>]
        attr_accessor :policy_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_extensions = args[:additional_extensions] if args.key?(:additional_extensions)
          @aia_ocsp_servers = args[:aia_ocsp_servers] if args.key?(:aia_ocsp_servers)
          @ca_options = args[:ca_options] if args.key?(:ca_options)
          @key_usage = args[:key_usage] if args.key?(:key_usage)
          @policy_ids = args[:policy_ids] if args.key?(:policy_ids)
        end
      end
      
      # A ReusableConfigWrapper describes values that may assist in creating an X.509
      # certificate, or a reference to a pre-defined set of values.
      class ReusableConfigWrapper
        include Google::Apis::Core::Hashable
      
        # Required. A resource path to a ReusableConfig in the format `projects/*/
        # locations/*/reusableConfigs/*`.
        # Corresponds to the JSON property `reusableConfig`
        # @return [String]
        attr_accessor :reusable_config
      
        # A ReusableConfigValues is used to describe certain fields of an X.509
        # certificate, such as the key usage fields, fields specific to CA certificates,
        # certificate policy extensions and custom extensions.
        # Corresponds to the JSON property `reusableConfigValues`
        # @return [Google::Apis::PrivatecaV1beta1::ReusableConfigValues]
        attr_accessor :reusable_config_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reusable_config = args[:reusable_config] if args.key?(:reusable_config)
          @reusable_config_values = args[:reusable_config_values] if args.key?(:reusable_config_values)
        end
      end
      
      # Describes fields that are relavent to the revocation of a Certificate.
      class RevocationDetails
        include Google::Apis::Core::Hashable
      
        # Indicates why a Certificate was revoked.
        # Corresponds to the JSON property `revocationState`
        # @return [String]
        attr_accessor :revocation_state
      
        # The time at which this Certificate was revoked.
        # Corresponds to the JSON property `revocationTime`
        # @return [String]
        attr_accessor :revocation_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @revocation_state = args[:revocation_state] if args.key?(:revocation_state)
          @revocation_time = args[:revocation_time] if args.key?(:revocation_time)
        end
      end
      
      # Request message for CertificateAuthorityService.RevokeCertificate.
      class RevokeCertificateRequest
        include Google::Apis::Core::Hashable
      
        # Required. The RevocationReason for revoking this certificate.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Optional. An ID to identify requests. Specify a unique request ID so that if
        # you must retry your request, the server will know to ignore the request if it
        # has already been completed. The server will guarantee that for at least 60
        # minutes since the first request. For example, consider a situation where you
        # make an initial request and t he request times out. If you make the request
        # again with the same request ID, the server can check if original operation
        # with the same request ID was received, and if so, will ignore the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Describes a revoked Certificate.
      class RevokedCertificate
        include Google::Apis::Core::Hashable
      
        # The resource path for the Certificate in the format `projects/*/locations/*/
        # certificateAuthorities/*/certificates/*`.
        # Corresponds to the JSON property `certificate`
        # @return [String]
        attr_accessor :certificate
      
        # The serial number of the Certificate.
        # Corresponds to the JSON property `hexSerialNumber`
        # @return [String]
        attr_accessor :hex_serial_number
      
        # The reason the Certificate was revoked.
        # Corresponds to the JSON property `revocationReason`
        # @return [String]
        attr_accessor :revocation_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate = args[:certificate] if args.key?(:certificate)
          @hex_serial_number = args[:hex_serial_number] if args.key?(:hex_serial_number)
          @revocation_reason = args[:revocation_reason] if args.key?(:revocation_reason)
        end
      end
      
      # Request message for CertificateAuthorityService.
      # ScheduleDeleteCertificateAuthority.
      class ScheduleDeleteCertificateAuthorityRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An ID to identify requests. Specify a unique request ID so that if
        # you must retry your request, the server will know to ignore the request if it
        # has already been completed. The server will guarantee that for at least 60
        # minutes since the first request. For example, consider a situation where you
        # make an initial request and t he request times out. If you make the request
        # again with the same request ID, the server can check if original operation
        # with the same request ID was received, and if so, will ignore the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members` to a single `role`. Members can be
        # user accounts, service accounts, Google groups, and domains (such as G Suite).
        # A `role` is a named list of permissions; each `role` can be an IAM predefined
        # role or a user-created custom role. For some types of Google Cloud resources,
        # a `binding` can also specify a `condition`, which is a logical expression that
        # allows access to a resource only if the expression evaluates to `true`. A
        # condition can add constraints based on attributes of the request, the resource,
        # or both. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
        # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
        # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
        # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
        # title": "expirable access", "description": "Does not grant access after Sep
        # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
        # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
        # members: - user:mike@example.com - group:admins@example.com - domain:google.
        # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
        # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
        # roles/resourcemanager.organizationViewer condition: title: expirable access
        # description: Does not grant access after Sep 2020 expression: request.time <
        # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
        # description of IAM and its features, see the [IAM documentation](https://cloud.
        # google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::PrivatecaV1beta1::Policy]
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
      
      # Subject describes parts of a distinguished name that, in turn, describes the
      # subject of the certificate.
      class Subject
        include Google::Apis::Core::Hashable
      
        # The country code of the subject.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # The locality or city of the subject.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # The organization of the subject.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # The organizational_unit of the subject.
        # Corresponds to the JSON property `organizationalUnit`
        # @return [String]
        attr_accessor :organizational_unit
      
        # The postal code of the subject.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # The province, territory, or regional state of the subject.
        # Corresponds to the JSON property `province`
        # @return [String]
        attr_accessor :province
      
        # The street address of the subject.
        # Corresponds to the JSON property `streetAddress`
        # @return [String]
        attr_accessor :street_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] if args.key?(:country_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @organizational_unit = args[:organizational_unit] if args.key?(:organizational_unit)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @province = args[:province] if args.key?(:province)
          @street_address = args[:street_address] if args.key?(:street_address)
        end
      end
      
      # SubjectAltNames corresponds to a more modern way of listing what the asserted
      # identity is in a certificate (i.e., compared to the "common name" in the
      # distinguished name).
      class SubjectAltNames
        include Google::Apis::Core::Hashable
      
        # Contains additional subject alternative name values.
        # Corresponds to the JSON property `customSans`
        # @return [Array<Google::Apis::PrivatecaV1beta1::X509Extension>]
        attr_accessor :custom_sans
      
        # Contains only valid, fully-qualified host names.
        # Corresponds to the JSON property `dnsNames`
        # @return [Array<String>]
        attr_accessor :dns_names
      
        # Contains only valid RFC 2822 E-mail addresses.
        # Corresponds to the JSON property `emailAddresses`
        # @return [Array<String>]
        attr_accessor :email_addresses
      
        # Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<String>]
        attr_accessor :ip_addresses
      
        # Contains only valid RFC 3986 URIs.
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_sans = args[:custom_sans] if args.key?(:custom_sans)
          @dns_names = args[:dns_names] if args.key?(:dns_names)
          @email_addresses = args[:email_addresses] if args.key?(:email_addresses)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @uris = args[:uris] if args.key?(:uris)
        end
      end
      
      # These values are used to create the distinguished name and subject alternative
      # name fields in an X.509 certificate.
      class SubjectConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The "common name" of the distinguished name.
        # Corresponds to the JSON property `commonName`
        # @return [String]
        attr_accessor :common_name
      
        # Subject describes parts of a distinguished name that, in turn, describes the
        # subject of the certificate.
        # Corresponds to the JSON property `subject`
        # @return [Google::Apis::PrivatecaV1beta1::Subject]
        attr_accessor :subject
      
        # SubjectAltNames corresponds to a more modern way of listing what the asserted
        # identity is in a certificate (i.e., compared to the "common name" in the
        # distinguished name).
        # Corresponds to the JSON property `subjectAltName`
        # @return [Google::Apis::PrivatecaV1beta1::SubjectAltNames]
        attr_accessor :subject_alt_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_name = args[:common_name] if args.key?(:common_name)
          @subject = args[:subject] if args.key?(:subject)
          @subject_alt_name = args[:subject_alt_name] if args.key?(:subject_alt_name)
        end
      end
      
      # These values describe fields in an issued X.509 certificate such as the
      # distinguished name, subject alternative names, serial number, and lifetime.
      class SubjectDescription
        include Google::Apis::Core::Hashable
      
        # The "common name" of the distinguished name.
        # Corresponds to the JSON property `commonName`
        # @return [String]
        attr_accessor :common_name
      
        # The serial number encoded in lowercase hexadecimal.
        # Corresponds to the JSON property `hexSerialNumber`
        # @return [String]
        attr_accessor :hex_serial_number
      
        # For convenience, the actual lifetime of an issued certificate. Corresponds to '
        # not_after_time' - 'not_before_time'.
        # Corresponds to the JSON property `lifetime`
        # @return [String]
        attr_accessor :lifetime
      
        # The time at which the certificate expires.
        # Corresponds to the JSON property `notAfterTime`
        # @return [String]
        attr_accessor :not_after_time
      
        # The time at which the certificate becomes valid.
        # Corresponds to the JSON property `notBeforeTime`
        # @return [String]
        attr_accessor :not_before_time
      
        # Subject describes parts of a distinguished name that, in turn, describes the
        # subject of the certificate.
        # Corresponds to the JSON property `subject`
        # @return [Google::Apis::PrivatecaV1beta1::Subject]
        attr_accessor :subject
      
        # SubjectAltNames corresponds to a more modern way of listing what the asserted
        # identity is in a certificate (i.e., compared to the "common name" in the
        # distinguished name).
        # Corresponds to the JSON property `subjectAltName`
        # @return [Google::Apis::PrivatecaV1beta1::SubjectAltNames]
        attr_accessor :subject_alt_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_name = args[:common_name] if args.key?(:common_name)
          @hex_serial_number = args[:hex_serial_number] if args.key?(:hex_serial_number)
          @lifetime = args[:lifetime] if args.key?(:lifetime)
          @not_after_time = args[:not_after_time] if args.key?(:not_after_time)
          @not_before_time = args[:not_before_time] if args.key?(:not_before_time)
          @subject = args[:subject] if args.key?(:subject)
          @subject_alt_name = args[:subject_alt_name] if args.key?(:subject_alt_name)
        end
      end
      
      # Describes a subordinate CA's issuers. This is either a resource path to a
      # known issuing CertificateAuthority, or a PEM issuer certificate chain.
      class SubordinateConfig
        include Google::Apis::Core::Hashable
      
        # Required. This can refer to a CertificateAuthority in the same project that
        # was used to create a subordinate CertificateAuthority. This field is used for
        # information and usability purposes only. The resource name is in the format `
        # projects/*/locations/*/certificateAuthorities/*`.
        # Corresponds to the JSON property `certificateAuthority`
        # @return [String]
        attr_accessor :certificate_authority
      
        # This message describes a subordinate CA's issuer certificate chain. This
        # wrapper exists for compatibility reasons.
        # Corresponds to the JSON property `pemIssuerChain`
        # @return [Google::Apis::PrivatecaV1beta1::SubordinateConfigChain]
        attr_accessor :pem_issuer_chain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_authority = args[:certificate_authority] if args.key?(:certificate_authority)
          @pem_issuer_chain = args[:pem_issuer_chain] if args.key?(:pem_issuer_chain)
        end
      end
      
      # This message describes a subordinate CA's issuer certificate chain. This
      # wrapper exists for compatibility reasons.
      class SubordinateConfigChain
        include Google::Apis::Core::Hashable
      
        # Required. Expected to be in leaf-to-root order according to RFC 5246.
        # Corresponds to the JSON property `pemCertificates`
        # @return [Array<String>]
        attr_accessor :pem_certificates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pem_certificates = args[:pem_certificates] if args.key?(:pem_certificates)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed. For more information see [IAM
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
      
      # An X509Extension specifies an X.509 extension, which may be used in different
      # parts of X.509 objects like certificates, CSRs, and CRLs.
      class X509Extension
        include Google::Apis::Core::Hashable
      
        # Required. Indicates whether or not this extension is critical (i.e., if the
        # client does not know how to handle this extension, the client should consider
        # this to be an error).
        # Corresponds to the JSON property `critical`
        # @return [Boolean]
        attr_accessor :critical
        alias_method :critical?, :critical
      
        # An ObjectId specifies an object identifier (OID). These provide context and
        # describe types in ASN.1 messages.
        # Corresponds to the JSON property `objectId`
        # @return [Google::Apis::PrivatecaV1beta1::ObjectIdProp]
        attr_accessor :object_id_prop
      
        # Required. The value of this X.509 extension.
        # Corresponds to the JSON property `value`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @critical = args[:critical] if args.key?(:critical)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @value = args[:value] if args.key?(:value)
        end
      end
    end
  end
end
