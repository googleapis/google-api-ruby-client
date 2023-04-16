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
    module CertificatemanagerV1
      
      # State of the latest attempt to authorize a domain for certificate issuance.
      class AuthorizationAttemptInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Human readable explanation for reaching the state. Provided to
        # help address the configuration issues. Not guaranteed to be stable. For
        # programmatic access use FailureReason enum.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # Domain name of the authorization attempt.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Output only. Reason for failure of the authorization attempt for the domain.
        # Corresponds to the JSON property `failureReason`
        # @return [String]
        attr_accessor :failure_reason
      
        # Output only. State of the domain for managed certificate issuance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @domain = args[:domain] if args.key?(:domain)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
          @state = args[:state] if args.key?(:state)
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
      
      # Defines TLS certificate.
      class Certificate
        include Google::Apis::Core::Hashable
      
        # Output only. The creation timestamp of a Certificate.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # One or more paragraphs of text description of a certificate.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The expiry timestamp of a Certificate.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Set of labels associated with a Certificate.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Configuration and state of a Managed Certificate. Certificate Manager
        # provisions and renews Managed Certificates automatically, for as long as it's
        # authorized to do so.
        # Corresponds to the JSON property `managed`
        # @return [Google::Apis::CertificatemanagerV1::ManagedCertificate]
        attr_accessor :managed
      
        # A user-defined name of the certificate. Certificate names must be unique
        # globally and match pattern `projects/*/locations/*/certificates/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The PEM-encoded certificate chain.
        # Corresponds to the JSON property `pemCertificate`
        # @return [String]
        attr_accessor :pem_certificate
      
        # Output only. The list of Subject Alternative Names of dnsName type defined in
        # the certificate (see RFC 5280 4.2.1.6). Managed certificates that haven't been
        # provisioned yet have this field populated with a value of the managed.domains
        # field.
        # Corresponds to the JSON property `sanDnsnames`
        # @return [Array<String>]
        attr_accessor :san_dnsnames
      
        # Immutable. The scope of the certificate.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Certificate data for a SelfManaged Certificate. SelfManaged Certificates are
        # uploaded by the user. Updating such certificates before they expire remains
        # the user's responsibility.
        # Corresponds to the JSON property `selfManaged`
        # @return [Google::Apis::CertificatemanagerV1::SelfManagedCertificate]
        attr_accessor :self_managed
      
        # Output only. The last update timestamp of a Certificate.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @labels = args[:labels] if args.key?(:labels)
          @managed = args[:managed] if args.key?(:managed)
          @name = args[:name] if args.key?(:name)
          @pem_certificate = args[:pem_certificate] if args.key?(:pem_certificate)
          @san_dnsnames = args[:san_dnsnames] if args.key?(:san_dnsnames)
          @scope = args[:scope] if args.key?(:scope)
          @self_managed = args[:self_managed] if args.key?(:self_managed)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The CA that issues the workload certificate. It includes CA address, type,
      # authentication to CA service, etc.
      class CertificateAuthorityConfig
        include Google::Apis::Core::Hashable
      
        # Contains information required to contact CA service.
        # Corresponds to the JSON property `certificateAuthorityServiceConfig`
        # @return [Google::Apis::CertificatemanagerV1::CertificateAuthorityServiceConfig]
        attr_accessor :certificate_authority_service_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_authority_service_config = args[:certificate_authority_service_config] if args.key?(:certificate_authority_service_config)
        end
      end
      
      # Contains information required to contact CA service.
      class CertificateAuthorityServiceConfig
        include Google::Apis::Core::Hashable
      
        # Required. A CA pool resource used to issue a certificate. The CA pool string
        # has a relative resource path following the form "projects/`project`/locations/`
        # location`/caPools/`ca_pool`".
        # Corresponds to the JSON property `caPool`
        # @return [String]
        attr_accessor :ca_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_pool = args[:ca_pool] if args.key?(:ca_pool)
        end
      end
      
      # CertificateIssuanceConfig specifies how to issue and manage a certificate.
      class CertificateIssuanceConfig
        include Google::Apis::Core::Hashable
      
        # The CA that issues the workload certificate. It includes CA address, type,
        # authentication to CA service, etc.
        # Corresponds to the JSON property `certificateAuthorityConfig`
        # @return [Google::Apis::CertificatemanagerV1::CertificateAuthorityConfig]
        attr_accessor :certificate_authority_config
      
        # Output only. The creation timestamp of a CertificateIssuanceConfig.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # One or more paragraphs of text description of a CertificateIssuanceConfig.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The key algorithm to use when generating the private key.
        # Corresponds to the JSON property `keyAlgorithm`
        # @return [String]
        attr_accessor :key_algorithm
      
        # Set of labels associated with a CertificateIssuanceConfig.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Workload certificate lifetime requested.
        # Corresponds to the JSON property `lifetime`
        # @return [String]
        attr_accessor :lifetime
      
        # A user-defined name of the certificate issuance config.
        # CertificateIssuanceConfig names must be unique globally and match pattern `
        # projects/*/locations/*/certificateIssuanceConfigs/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Specifies the percentage of elapsed time of the certificate lifetime
        # to wait before renewing the certificate. Must be a number between 1-99,
        # inclusive.
        # Corresponds to the JSON property `rotationWindowPercentage`
        # @return [Fixnum]
        attr_accessor :rotation_window_percentage
      
        # Output only. The last update timestamp of a CertificateIssuanceConfig.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_authority_config = args[:certificate_authority_config] if args.key?(:certificate_authority_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @key_algorithm = args[:key_algorithm] if args.key?(:key_algorithm)
          @labels = args[:labels] if args.key?(:labels)
          @lifetime = args[:lifetime] if args.key?(:lifetime)
          @name = args[:name] if args.key?(:name)
          @rotation_window_percentage = args[:rotation_window_percentage] if args.key?(:rotation_window_percentage)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Defines a collection of certificate configurations.
      class CertificateMap
        include Google::Apis::Core::Hashable
      
        # Output only. The creation timestamp of a Certificate Map.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # One or more paragraphs of text description of a certificate map.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. A list of GCLB targets that use this Certificate Map. A Target
        # Proxy is only present on this list if it's attached to a Forwarding Rule.
        # Corresponds to the JSON property `gclbTargets`
        # @return [Array<Google::Apis::CertificatemanagerV1::GclbTarget>]
        attr_accessor :gclb_targets
      
        # Set of labels associated with a Certificate Map.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A user-defined name of the Certificate Map. Certificate Map names must be
        # unique globally and match pattern `projects/*/locations/*/certificateMaps/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The update timestamp of a Certificate Map.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @gclb_targets = args[:gclb_targets] if args.key?(:gclb_targets)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Defines a certificate map entry.
      class CertificateMapEntry
        include Google::Apis::Core::Hashable
      
        # A set of Certificates defines for the given `hostname`. There can be defined
        # up to four certificates in each Certificate Map Entry. Each certificate must
        # match pattern `projects/*/locations/*/certificates/*`.
        # Corresponds to the JSON property `certificates`
        # @return [Array<String>]
        attr_accessor :certificates
      
        # Output only. The creation timestamp of a Certificate Map Entry.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # One or more paragraphs of text description of a certificate map entry.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.
        # example.com`) for a set of hostnames with common suffix. Used as Server Name
        # Indication (SNI) for selecting a proper certificate.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Set of labels associated with a Certificate Map Entry.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A predefined matcher for particular cases, other than SNI selection.
        # Corresponds to the JSON property `matcher`
        # @return [String]
        attr_accessor :matcher
      
        # A user-defined name of the Certificate Map Entry. Certificate Map Entry names
        # must be unique globally and match pattern `projects/*/locations/*/
        # certificateMaps/*/certificateMapEntries/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A serving state of this Certificate Map Entry.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The update timestamp of a Certificate Map Entry.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificates = args[:certificates] if args.key?(:certificates)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @hostname = args[:hostname] if args.key?(:hostname)
          @labels = args[:labels] if args.key?(:labels)
          @matcher = args[:matcher] if args.key?(:matcher)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A DnsAuthorization resource describes a way to perform domain authorization
      # for certificate issuance.
      class DnsAuthorization
        include Google::Apis::Core::Hashable
      
        # Output only. The creation timestamp of a DnsAuthorization.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # One or more paragraphs of text description of a DnsAuthorization.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The structure describing the DNS Resource Record that needs to be added to DNS
        # configuration for the authorization to be usable by certificate.
        # Corresponds to the JSON property `dnsResourceRecord`
        # @return [Google::Apis::CertificatemanagerV1::DnsResourceRecord]
        attr_accessor :dns_resource_record
      
        # Required. Immutable. A domain that is being authorized. A DnsAuthorization
        # resource covers a single domain and its wildcard, e.g. authorization for `
        # example.com` can be used to issue certificates for `example.com` and `*.
        # example.com`.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Set of labels associated with a DnsAuthorization.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A user-defined name of the dns authorization. DnsAuthorization names must be
        # unique globally and match pattern `projects/*/locations/*/dnsAuthorizations/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The last update timestamp of a DnsAuthorization.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @dns_resource_record = args[:dns_resource_record] if args.key?(:dns_resource_record)
          @domain = args[:domain] if args.key?(:domain)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The structure describing the DNS Resource Record that needs to be added to DNS
      # configuration for the authorization to be usable by certificate.
      class DnsResourceRecord
        include Google::Apis::Core::Hashable
      
        # Output only. Data of the DNS Resource Record.
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        # Output only. Fully qualified name of the DNS Resource Record. e.g. `_acme-
        # challenge.example.com`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Type of the DNS Resource Record. Currently always set to "CNAME".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Describes a Target Proxy that uses this Certificate Map.
      class GclbTarget
        include Google::Apis::Core::Hashable
      
        # Output only. IP configurations for this Target Proxy where the Certificate Map
        # is serving.
        # Corresponds to the JSON property `ipConfigs`
        # @return [Array<Google::Apis::CertificatemanagerV1::IpConfig>]
        attr_accessor :ip_configs
      
        # Output only. This field returns the resource name in the following format: `//
        # compute.googleapis.com/projects/*/global/targetHttpsProxies/*`.
        # Corresponds to the JSON property `targetHttpsProxy`
        # @return [String]
        attr_accessor :target_https_proxy
      
        # Output only. This field returns the resource name in the following format: `//
        # compute.googleapis.com/projects/*/global/targetSslProxies/*`.
        # Corresponds to the JSON property `targetSslProxy`
        # @return [String]
        attr_accessor :target_ssl_proxy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_configs = args[:ip_configs] if args.key?(:ip_configs)
          @target_https_proxy = args[:target_https_proxy] if args.key?(:target_https_proxy)
          @target_ssl_proxy = args[:target_ssl_proxy] if args.key?(:target_ssl_proxy)
        end
      end
      
      # Defines an intermediate CA.
      class IntermediateCa
        include Google::Apis::Core::Hashable
      
        # PEM intermediate certificate used for building up paths for validation. Each
        # certificate provided in PEM format may occupy up to 5kB.
        # Corresponds to the JSON property `pemCertificate`
        # @return [String]
        attr_accessor :pem_certificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pem_certificate = args[:pem_certificate] if args.key?(:pem_certificate)
        end
      end
      
      # Defines IP configuration where this Certificate Map is serving.
      class IpConfig
        include Google::Apis::Core::Hashable
      
        # Output only. An external IP address.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Output only. Ports.
        # Corresponds to the JSON property `ports`
        # @return [Array<Fixnum>]
        attr_accessor :ports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @ports = args[:ports] if args.key?(:ports)
        end
      end
      
      # Response for the `ListCertificateIssuanceConfigs` method.
      class ListCertificateIssuanceConfigsResponse
        include Google::Apis::Core::Hashable
      
        # A list of certificate configs for the parent resource.
        # Corresponds to the JSON property `certificateIssuanceConfigs`
        # @return [Array<Google::Apis::CertificatemanagerV1::CertificateIssuanceConfig>]
        attr_accessor :certificate_issuance_configs
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_issuance_configs = args[:certificate_issuance_configs] if args.key?(:certificate_issuance_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for the `ListCertificateMapEntries` method.
      class ListCertificateMapEntriesResponse
        include Google::Apis::Core::Hashable
      
        # A list of certificate map entries for the parent resource.
        # Corresponds to the JSON property `certificateMapEntries`
        # @return [Array<Google::Apis::CertificatemanagerV1::CertificateMapEntry>]
        attr_accessor :certificate_map_entries
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_map_entries = args[:certificate_map_entries] if args.key?(:certificate_map_entries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for the `ListCertificateMaps` method.
      class ListCertificateMapsResponse
        include Google::Apis::Core::Hashable
      
        # A list of certificate maps for the parent resource.
        # Corresponds to the JSON property `certificateMaps`
        # @return [Array<Google::Apis::CertificatemanagerV1::CertificateMap>]
        attr_accessor :certificate_maps
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_maps = args[:certificate_maps] if args.key?(:certificate_maps)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for the `ListCertificates` method.
      class ListCertificatesResponse
        include Google::Apis::Core::Hashable
      
        # A list of certificates for the parent resource.
        # Corresponds to the JSON property `certificates`
        # @return [Array<Google::Apis::CertificatemanagerV1::Certificate>]
        attr_accessor :certificates
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of locations that could not be reached.
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
      
      # Response for the `ListDnsAuthorizations` method.
      class ListDnsAuthorizationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of dns authorizations for the parent resource.
        # Corresponds to the JSON property `dnsAuthorizations`
        # @return [Array<Google::Apis::CertificatemanagerV1::DnsAuthorization>]
        attr_accessor :dns_authorizations
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_authorizations = args[:dns_authorizations] if args.key?(:dns_authorizations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::CertificatemanagerV1::Location>]
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
        # @return [Array<Google::Apis::CertificatemanagerV1::Operation>]
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
      
      # Response for the `ListTrustConfigs` method.
      class ListTrustConfigsResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of TrustConfigs for the parent resource.
        # Corresponds to the JSON property `trustConfigs`
        # @return [Array<Google::Apis::CertificatemanagerV1::TrustConfig>]
        attr_accessor :trust_configs
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @trust_configs = args[:trust_configs] if args.key?(:trust_configs)
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
      
      # Configuration and state of a Managed Certificate. Certificate Manager
      # provisions and renews Managed Certificates automatically, for as long as it's
      # authorized to do so.
      class ManagedCertificate
        include Google::Apis::Core::Hashable
      
        # Output only. Detailed state of the latest authorization attempt for each
        # domain specified for managed certificate resource.
        # Corresponds to the JSON property `authorizationAttemptInfo`
        # @return [Array<Google::Apis::CertificatemanagerV1::AuthorizationAttemptInfo>]
        attr_accessor :authorization_attempt_info
      
        # Immutable. Authorizations that will be used for performing domain
        # authorization.
        # Corresponds to the JSON property `dnsAuthorizations`
        # @return [Array<String>]
        attr_accessor :dns_authorizations
      
        # Immutable. The domains for which a managed SSL certificate will be generated.
        # Wildcard domains are only supported with DNS challenge resolution.
        # Corresponds to the JSON property `domains`
        # @return [Array<String>]
        attr_accessor :domains
      
        # Immutable. The resource name for a CertificateIssuanceConfig used to configure
        # private PKI certificates in the format `projects/*/locations/*/
        # certificateIssuanceConfigs/*`. If this field is not set, the certificates will
        # instead be publicly signed as documented at https://cloud.google.com/load-
        # balancing/docs/ssl-certificates/google-managed-certs#caa.
        # Corresponds to the JSON property `issuanceConfig`
        # @return [String]
        attr_accessor :issuance_config
      
        # Information about issues with provisioning a Managed Certificate.
        # Corresponds to the JSON property `provisioningIssue`
        # @return [Google::Apis::CertificatemanagerV1::ProvisioningIssue]
        attr_accessor :provisioning_issue
      
        # Output only. State of the managed certificate resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization_attempt_info = args[:authorization_attempt_info] if args.key?(:authorization_attempt_info)
          @dns_authorizations = args[:dns_authorizations] if args.key?(:dns_authorizations)
          @domains = args[:domains] if args.key?(:domains)
          @issuance_config = args[:issuance_config] if args.key?(:issuance_config)
          @provisioning_issue = args[:provisioning_issue] if args.key?(:provisioning_issue)
          @state = args[:state] if args.key?(:state)
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
        # @return [Google::Apis::CertificatemanagerV1::Status]
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
      
      # Represents the metadata of the long-running operation. Output only.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Identifies whether the user has requested cancellation of the operation.
        # Operations that have successfully been cancelled have Operation.error value
        # with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Name of the verb executed by the operation.
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
      
      # Information about issues with provisioning a Managed Certificate.
      class ProvisioningIssue
        include Google::Apis::Core::Hashable
      
        # Output only. Human readable explanation about the issue. Provided to help
        # address the configuration issues. Not guaranteed to be stable. For
        # programmatic access use Reason enum.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # Output only. Reason for provisioning failures.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Certificate data for a SelfManaged Certificate. SelfManaged Certificates are
      # uploaded by the user. Updating such certificates before they expire remains
      # the user's responsibility.
      class SelfManagedCertificate
        include Google::Apis::Core::Hashable
      
        # Input only. The PEM-encoded certificate chain. Leaf certificate comes first,
        # followed by intermediate ones if any.
        # Corresponds to the JSON property `pemCertificate`
        # @return [String]
        attr_accessor :pem_certificate
      
        # Input only. The PEM-encoded private key of the leaf certificate.
        # Corresponds to the JSON property `pemPrivateKey`
        # @return [String]
        attr_accessor :pem_private_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pem_certificate = args[:pem_certificate] if args.key?(:pem_certificate)
          @pem_private_key = args[:pem_private_key] if args.key?(:pem_private_key)
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
      
      # Defines a trust anchor.
      class TrustAnchor
        include Google::Apis::Core::Hashable
      
        # PEM root certificate of the PKI used for validation. Each certificate provided
        # in PEM format may occupy up to 5kB.
        # Corresponds to the JSON property `pemCertificate`
        # @return [String]
        attr_accessor :pem_certificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pem_certificate = args[:pem_certificate] if args.key?(:pem_certificate)
        end
      end
      
      # Defines a trust config.
      class TrustConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The creation timestamp of a TrustConfig.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # One or more paragraphs of text description of a TrustConfig.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Set of labels associated with a TrustConfig.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A user-defined name of the trust config. TrustConfig names must be unique
        # globally and match pattern `projects/*/locations/*/trustConfigs/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Set of trust stores to perform validation against. This field is supported
        # when TrustConfig is configured with Load Balancers, currently not supported
        # for SPIFFE certificate validation. Only one TrustStore specified is currently
        # allowed.
        # Corresponds to the JSON property `trustStores`
        # @return [Array<Google::Apis::CertificatemanagerV1::TrustStore>]
        attr_accessor :trust_stores
      
        # Output only. The last update timestamp of a TrustConfig.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @trust_stores = args[:trust_stores] if args.key?(:trust_stores)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Defines a trust store.
      class TrustStore
        include Google::Apis::Core::Hashable
      
        # Set of intermediate CA certificates used for the path building phase of chain
        # validation. The field is currently not supported if TrustConfig is used for
        # the workload certificate feature.
        # Corresponds to the JSON property `intermediateCas`
        # @return [Array<Google::Apis::CertificatemanagerV1::IntermediateCa>]
        attr_accessor :intermediate_cas
      
        # List of Trust Anchors to be used while performing validation against a given
        # TrustStore.
        # Corresponds to the JSON property `trustAnchors`
        # @return [Array<Google::Apis::CertificatemanagerV1::TrustAnchor>]
        attr_accessor :trust_anchors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intermediate_cas = args[:intermediate_cas] if args.key?(:intermediate_cas)
          @trust_anchors = args[:trust_anchors] if args.key?(:trust_anchors)
        end
      end
    end
  end
end
