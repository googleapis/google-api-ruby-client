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
      
      class AuthorizationAttemptInfo
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
      
      class CertificateMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateMapEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsAuthorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsResourceRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GclbTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCertificateMapEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCertificateMapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCertificatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDnsAuthorizationsResponse
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
      
      class ManagedCertificate
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
      
      class ProvisioningIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcesCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SelfManagedCertificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizationAttemptInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          property :domain, as: 'domain'
          property :failure_reason, as: 'failureReason'
          property :state, as: 'state'
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
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :expire_time, as: 'expireTime'
          hash :labels, as: 'labels'
          property :managed, as: 'managed', class: Google::Apis::CertificatemanagerV1::ManagedCertificate, decorator: Google::Apis::CertificatemanagerV1::ManagedCertificate::Representation
      
          property :name, as: 'name'
          property :pem_certificate, as: 'pemCertificate'
          collection :san_dnsnames, as: 'sanDnsnames'
          property :scope, as: 'scope'
          property :self_managed, as: 'selfManaged', class: Google::Apis::CertificatemanagerV1::SelfManagedCertificate, decorator: Google::Apis::CertificatemanagerV1::SelfManagedCertificate::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class CertificateMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          collection :gclb_targets, as: 'gclbTargets', class: Google::Apis::CertificatemanagerV1::GclbTarget, decorator: Google::Apis::CertificatemanagerV1::GclbTarget::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CertificateMapEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificates, as: 'certificates'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :hostname, as: 'hostname'
          hash :labels, as: 'labels'
          property :matcher, as: 'matcher'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class DnsAuthorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :dns_resource_record, as: 'dnsResourceRecord', class: Google::Apis::CertificatemanagerV1::DnsResourceRecord, decorator: Google::Apis::CertificatemanagerV1::DnsResourceRecord::Representation
      
          property :domain, as: 'domain'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class DnsResourceRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GclbTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_configs, as: 'ipConfigs', class: Google::Apis::CertificatemanagerV1::IpConfig, decorator: Google::Apis::CertificatemanagerV1::IpConfig::Representation
      
          property :target_https_proxy, as: 'targetHttpsProxy'
          property :target_ssl_proxy, as: 'targetSslProxy'
        end
      end
      
      class IpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          collection :ports, as: 'ports'
        end
      end
      
      class ListCertificateMapEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificate_map_entries, as: 'certificateMapEntries', class: Google::Apis::CertificatemanagerV1::CertificateMapEntry, decorator: Google::Apis::CertificatemanagerV1::CertificateMapEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCertificateMapsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificate_maps, as: 'certificateMaps', class: Google::Apis::CertificatemanagerV1::CertificateMap, decorator: Google::Apis::CertificatemanagerV1::CertificateMap::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCertificatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificates, as: 'certificates', class: Google::Apis::CertificatemanagerV1::Certificate, decorator: Google::Apis::CertificatemanagerV1::Certificate::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDnsAuthorizationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dns_authorizations, as: 'dnsAuthorizations', class: Google::Apis::CertificatemanagerV1::DnsAuthorization, decorator: Google::Apis::CertificatemanagerV1::DnsAuthorization::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::CertificatemanagerV1::Location, decorator: Google::Apis::CertificatemanagerV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::CertificatemanagerV1::Operation, decorator: Google::Apis::CertificatemanagerV1::Operation::Representation
      
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
      
      class ManagedCertificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorization_attempt_info, as: 'authorizationAttemptInfo', class: Google::Apis::CertificatemanagerV1::AuthorizationAttemptInfo, decorator: Google::Apis::CertificatemanagerV1::AuthorizationAttemptInfo::Representation
      
          collection :dns_authorizations, as: 'dnsAuthorizations'
          collection :domains, as: 'domains'
          property :provisioning_issue, as: 'provisioningIssue', class: Google::Apis::CertificatemanagerV1::ProvisioningIssue, decorator: Google::Apis::CertificatemanagerV1::ProvisioningIssue::Representation
      
          property :state, as: 'state'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CertificatemanagerV1::Status, decorator: Google::Apis::CertificatemanagerV1::Status::Representation
      
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
      
      class ProvisioningIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          property :reason, as: 'reason'
        end
      end
      
      class ResourcesCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificates, :numeric_string => true, as: 'certificates'
          property :compute_time, as: 'computeTime'
          property :name, as: 'name'
        end
      end
      
      class SelfManagedCertificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pem_certificate, as: 'pemCertificate'
          property :pem_private_key, as: 'pemPrivateKey'
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
    end
  end
end
