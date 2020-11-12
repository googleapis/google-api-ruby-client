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
    module DomainsV1beta1
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizationCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigureContactSettingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigureDnsSettingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigureManagementSettingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Contact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContactSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomDns
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DsRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportRegistrationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlueRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDomainsDns
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
      
      class ListRegistrationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagementSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
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
      
      class PostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegisterDomainRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegisterParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Registration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetAuthorizationCodeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetrieveRegisterParametersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchDomainsResponse
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
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::DomainsV1beta1::AuditLogConfig, decorator: Google::Apis::DomainsV1beta1::AuditLogConfig::Representation
      
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
      
      class AuthorizationCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DomainsV1beta1::Expr, decorator: Google::Apis::DomainsV1beta1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class ConfigureContactSettingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contact_notices, as: 'contactNotices'
          property :contact_settings, as: 'contactSettings', class: Google::Apis::DomainsV1beta1::ContactSettings, decorator: Google::Apis::DomainsV1beta1::ContactSettings::Representation
      
          property :update_mask, as: 'updateMask'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class ConfigureDnsSettingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_settings, as: 'dnsSettings', class: Google::Apis::DomainsV1beta1::DnsSettings, decorator: Google::Apis::DomainsV1beta1::DnsSettings::Representation
      
          property :update_mask, as: 'updateMask'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class ConfigureManagementSettingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :management_settings, as: 'managementSettings', class: Google::Apis::DomainsV1beta1::ManagementSettings, decorator: Google::Apis::DomainsV1beta1::ManagementSettings::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Contact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :fax_number, as: 'faxNumber'
          property :phone_number, as: 'phoneNumber'
          property :postal_address, as: 'postalAddress', class: Google::Apis::DomainsV1beta1::PostalAddress, decorator: Google::Apis::DomainsV1beta1::PostalAddress::Representation
      
        end
      end
      
      class ContactSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_contact, as: 'adminContact', class: Google::Apis::DomainsV1beta1::Contact, decorator: Google::Apis::DomainsV1beta1::Contact::Representation
      
          property :privacy, as: 'privacy'
          property :registrant_contact, as: 'registrantContact', class: Google::Apis::DomainsV1beta1::Contact, decorator: Google::Apis::DomainsV1beta1::Contact::Representation
      
          property :technical_contact, as: 'technicalContact', class: Google::Apis::DomainsV1beta1::Contact, decorator: Google::Apis::DomainsV1beta1::Contact::Representation
      
        end
      end
      
      class CustomDns
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ds_records, as: 'dsRecords', class: Google::Apis::DomainsV1beta1::DsRecord, decorator: Google::Apis::DomainsV1beta1::DsRecord::Representation
      
          collection :name_servers, as: 'nameServers'
        end
      end
      
      class DnsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_dns, as: 'customDns', class: Google::Apis::DomainsV1beta1::CustomDns, decorator: Google::Apis::DomainsV1beta1::CustomDns::Representation
      
          collection :glue_records, as: 'glueRecords', class: Google::Apis::DomainsV1beta1::GlueRecord, decorator: Google::Apis::DomainsV1beta1::GlueRecord::Representation
      
          property :google_domains_dns, as: 'googleDomainsDns', class: Google::Apis::DomainsV1beta1::GoogleDomainsDns, decorator: Google::Apis::DomainsV1beta1::GoogleDomainsDns::Representation
      
        end
      end
      
      class DsRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :digest, as: 'digest'
          property :digest_type, as: 'digestType'
          property :key_tag, as: 'keyTag'
        end
      end
      
      class ExportRegistrationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GlueRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_name, as: 'hostName'
          collection :ipv4_addresses, as: 'ipv4Addresses'
          collection :ipv6_addresses, as: 'ipv6Addresses'
        end
      end
      
      class GoogleDomainsDns
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ds_records, as: 'dsRecords', class: Google::Apis::DomainsV1beta1::DsRecord, decorator: Google::Apis::DomainsV1beta1::DsRecord::Representation
      
          property :ds_state, as: 'dsState'
          collection :name_servers, as: 'nameServers'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DomainsV1beta1::Location, decorator: Google::Apis::DomainsV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DomainsV1beta1::Operation, decorator: Google::Apis::DomainsV1beta1::Operation::Representation
      
        end
      end
      
      class ListRegistrationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :registrations, as: 'registrations', class: Google::Apis::DomainsV1beta1::Registration, decorator: Google::Apis::DomainsV1beta1::Registration::Representation
      
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
      
      class ManagementSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :renewal_method, as: 'renewalMethod'
          property :transfer_lock_state, as: 'transferLockState'
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DomainsV1beta1::Status, decorator: Google::Apis::DomainsV1beta1::Status::Representation
      
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
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::DomainsV1beta1::AuditConfig, decorator: Google::Apis::DomainsV1beta1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::DomainsV1beta1::Binding, decorator: Google::Apis::DomainsV1beta1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PostalAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_lines, as: 'addressLines'
          property :administrative_area, as: 'administrativeArea'
          property :language_code, as: 'languageCode'
          property :locality, as: 'locality'
          property :organization, as: 'organization'
          property :postal_code, as: 'postalCode'
          collection :recipients, as: 'recipients'
          property :region_code, as: 'regionCode'
          property :revision, as: 'revision'
          property :sorting_code, as: 'sortingCode'
          property :sublocality, as: 'sublocality'
        end
      end
      
      class RegisterDomainRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contact_notices, as: 'contactNotices'
          collection :domain_notices, as: 'domainNotices'
          property :registration, as: 'registration', class: Google::Apis::DomainsV1beta1::Registration, decorator: Google::Apis::DomainsV1beta1::Registration::Representation
      
          property :validate_only, as: 'validateOnly'
          property :yearly_price, as: 'yearlyPrice', class: Google::Apis::DomainsV1beta1::Money, decorator: Google::Apis::DomainsV1beta1::Money::Representation
      
        end
      end
      
      class RegisterParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability, as: 'availability'
          property :domain_name, as: 'domainName'
          collection :domain_notices, as: 'domainNotices'
          collection :supported_privacy, as: 'supportedPrivacy'
          property :yearly_price, as: 'yearlyPrice', class: Google::Apis::DomainsV1beta1::Money, decorator: Google::Apis::DomainsV1beta1::Money::Representation
      
        end
      end
      
      class Registration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_settings, as: 'contactSettings', class: Google::Apis::DomainsV1beta1::ContactSettings, decorator: Google::Apis::DomainsV1beta1::ContactSettings::Representation
      
          property :create_time, as: 'createTime'
          property :dns_settings, as: 'dnsSettings', class: Google::Apis::DomainsV1beta1::DnsSettings, decorator: Google::Apis::DomainsV1beta1::DnsSettings::Representation
      
          property :domain_name, as: 'domainName'
          property :expire_time, as: 'expireTime'
          collection :issues, as: 'issues'
          hash :labels, as: 'labels'
          property :management_settings, as: 'managementSettings', class: Google::Apis::DomainsV1beta1::ManagementSettings, decorator: Google::Apis::DomainsV1beta1::ManagementSettings::Representation
      
          property :name, as: 'name'
          property :pending_contact_settings, as: 'pendingContactSettings', class: Google::Apis::DomainsV1beta1::ContactSettings, decorator: Google::Apis::DomainsV1beta1::ContactSettings::Representation
      
          property :state, as: 'state'
          collection :supported_privacy, as: 'supportedPrivacy'
        end
      end
      
      class ResetAuthorizationCodeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RetrieveRegisterParametersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :register_parameters, as: 'registerParameters', class: Google::Apis::DomainsV1beta1::RegisterParameters, decorator: Google::Apis::DomainsV1beta1::RegisterParameters::Representation
      
        end
      end
      
      class SearchDomainsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :register_parameters, as: 'registerParameters', class: Google::Apis::DomainsV1beta1::RegisterParameters, decorator: Google::Apis::DomainsV1beta1::RegisterParameters::Representation
      
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::DomainsV1beta1::Policy, decorator: Google::Apis::DomainsV1beta1::Policy::Representation
      
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
    end
  end
end
