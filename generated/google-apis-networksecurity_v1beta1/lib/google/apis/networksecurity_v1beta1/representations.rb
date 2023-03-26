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
    module NetworksecurityV1beta1
      
      class AddAddressGroupItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddressGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateProviderInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientTlsPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloneAddressGroupItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Destination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GatewaySecurityPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GatewaySecurityPolicyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNetworksecurityV1beta1CertificateProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNetworksecurityV1beta1GrpcEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHeaderMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAddressGroupReferencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAddressGroupReferencesResponseAddressGroupReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAddressGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAuthorizationPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientTlsPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGatewaySecurityPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGatewaySecurityPolicyRulesResponse
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
      
      class ListServerTlsPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTlsInspectionPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUrlListsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MtlsPolicy
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
      
      class RemoveAddressGroupItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServerTlsPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TlsInspectionPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidationCa
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddAddressGroupItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items'
          property :request_id, as: 'requestId'
        end
      end
      
      class AddressGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity, as: 'capacity'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          collection :items, as: 'items'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class AuthorizationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :rules, as: 'rules', class: Google::Apis::NetworksecurityV1beta1::Rule, decorator: Google::Apis::NetworksecurityV1beta1::Rule::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CertificateProviderInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :plugin_instance, as: 'pluginInstance'
        end
      end
      
      class ClientTlsPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_certificate, as: 'clientCertificate', class: Google::Apis::NetworksecurityV1beta1::GoogleCloudNetworksecurityV1beta1CertificateProvider, decorator: Google::Apis::NetworksecurityV1beta1::GoogleCloudNetworksecurityV1beta1CertificateProvider::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :server_validation_ca, as: 'serverValidationCa', class: Google::Apis::NetworksecurityV1beta1::ValidationCa, decorator: Google::Apis::NetworksecurityV1beta1::ValidationCa::Representation
      
          property :sni, as: 'sni'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CloneAddressGroupItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
          property :source_address_group, as: 'sourceAddressGroup'
        end
      end
      
      class Destination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hosts, as: 'hosts'
          property :http_header_match, as: 'httpHeaderMatch', class: Google::Apis::NetworksecurityV1beta1::HttpHeaderMatch, decorator: Google::Apis::NetworksecurityV1beta1::HttpHeaderMatch::Representation
      
          collection :methods_prop, as: 'methods'
          collection :ports, as: 'ports'
        end
      end
      
      class Empty
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
      
      class GatewaySecurityPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          property :tls_inspection_policy, as: 'tlsInspectionPolicy'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GatewaySecurityPolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_matcher, as: 'applicationMatcher'
          property :basic_profile, as: 'basicProfile'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :enabled, as: 'enabled'
          property :name, as: 'name'
          property :priority, as: 'priority'
          property :session_matcher, as: 'sessionMatcher'
          property :tls_inspection_enabled, as: 'tlsInspectionEnabled'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudNetworksecurityV1beta1CertificateProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_provider_instance, as: 'certificateProviderInstance', class: Google::Apis::NetworksecurityV1beta1::CertificateProviderInstance, decorator: Google::Apis::NetworksecurityV1beta1::CertificateProviderInstance::Representation
      
          property :grpc_endpoint, as: 'grpcEndpoint', class: Google::Apis::NetworksecurityV1beta1::GoogleCloudNetworksecurityV1beta1GrpcEndpoint, decorator: Google::Apis::NetworksecurityV1beta1::GoogleCloudNetworksecurityV1beta1GrpcEndpoint::Representation
      
        end
      end
      
      class GoogleCloudNetworksecurityV1beta1GrpcEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_uri, as: 'targetUri'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::NetworksecurityV1beta1::GoogleIamV1AuditLogConfig, decorator: Google::Apis::NetworksecurityV1beta1::GoogleIamV1AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleIamV1AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::NetworksecurityV1beta1::Expr, decorator: Google::Apis::NetworksecurityV1beta1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::NetworksecurityV1beta1::GoogleIamV1AuditConfig, decorator: Google::Apis::NetworksecurityV1beta1::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::NetworksecurityV1beta1::GoogleIamV1Binding, decorator: Google::Apis::NetworksecurityV1beta1::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy, decorator: Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class HttpHeaderMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header_name, as: 'headerName'
          property :regex_match, as: 'regexMatch'
        end
      end
      
      class ListAddressGroupReferencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_group_references, as: 'addressGroupReferences', class: Google::Apis::NetworksecurityV1beta1::ListAddressGroupReferencesResponseAddressGroupReference, decorator: Google::Apis::NetworksecurityV1beta1::ListAddressGroupReferencesResponseAddressGroupReference::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAddressGroupReferencesResponseAddressGroupReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :firewall_policy, as: 'firewallPolicy'
          property :rule_priority, as: 'rulePriority'
        end
      end
      
      class ListAddressGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_groups, as: 'addressGroups', class: Google::Apis::NetworksecurityV1beta1::AddressGroup, decorator: Google::Apis::NetworksecurityV1beta1::AddressGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAuthorizationPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorization_policies, as: 'authorizationPolicies', class: Google::Apis::NetworksecurityV1beta1::AuthorizationPolicy, decorator: Google::Apis::NetworksecurityV1beta1::AuthorizationPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListClientTlsPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :client_tls_policies, as: 'clientTlsPolicies', class: Google::Apis::NetworksecurityV1beta1::ClientTlsPolicy, decorator: Google::Apis::NetworksecurityV1beta1::ClientTlsPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGatewaySecurityPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gateway_security_policies, as: 'gatewaySecurityPolicies', class: Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicy, decorator: Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGatewaySecurityPolicyRulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gateway_security_policy_rules, as: 'gatewaySecurityPolicyRules', class: Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicyRule, decorator: Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicyRule::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::NetworksecurityV1beta1::Location, decorator: Google::Apis::NetworksecurityV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::NetworksecurityV1beta1::Operation, decorator: Google::Apis::NetworksecurityV1beta1::Operation::Representation
      
        end
      end
      
      class ListServerTlsPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :server_tls_policies, as: 'serverTlsPolicies', class: Google::Apis::NetworksecurityV1beta1::ServerTlsPolicy, decorator: Google::Apis::NetworksecurityV1beta1::ServerTlsPolicy::Representation
      
        end
      end
      
      class ListTlsInspectionPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tls_inspection_policies, as: 'tlsInspectionPolicies', class: Google::Apis::NetworksecurityV1beta1::TlsInspectionPolicy, decorator: Google::Apis::NetworksecurityV1beta1::TlsInspectionPolicy::Representation
      
        end
      end
      
      class ListUrlListsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :url_lists, as: 'urlLists', class: Google::Apis::NetworksecurityV1beta1::UrlList, decorator: Google::Apis::NetworksecurityV1beta1::UrlList::Representation
      
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
      
      class MtlsPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :client_validation_ca, as: 'clientValidationCa', class: Google::Apis::NetworksecurityV1beta1::ValidationCa, decorator: Google::Apis::NetworksecurityV1beta1::ValidationCa::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::NetworksecurityV1beta1::Status, decorator: Google::Apis::NetworksecurityV1beta1::Status::Representation
      
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
      
      class RemoveAddressGroupItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items'
          property :request_id, as: 'requestId'
        end
      end
      
      class Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations', class: Google::Apis::NetworksecurityV1beta1::Destination, decorator: Google::Apis::NetworksecurityV1beta1::Destination::Representation
      
          collection :sources, as: 'sources', class: Google::Apis::NetworksecurityV1beta1::Source, decorator: Google::Apis::NetworksecurityV1beta1::Source::Representation
      
        end
      end
      
      class ServerTlsPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_open, as: 'allowOpen'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :mtls_policy, as: 'mtlsPolicy', class: Google::Apis::NetworksecurityV1beta1::MtlsPolicy, decorator: Google::Apis::NetworksecurityV1beta1::MtlsPolicy::Representation
      
          property :name, as: 'name'
          property :server_certificate, as: 'serverCertificate', class: Google::Apis::NetworksecurityV1beta1::GoogleCloudNetworksecurityV1beta1CertificateProvider, decorator: Google::Apis::NetworksecurityV1beta1::GoogleCloudNetworksecurityV1beta1CertificateProvider::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_blocks, as: 'ipBlocks'
          collection :principals, as: 'principals'
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
      
      class TlsInspectionPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_pool, as: 'caPool'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class UrlList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          collection :values, as: 'values'
        end
      end
      
      class ValidationCa
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_provider_instance, as: 'certificateProviderInstance', class: Google::Apis::NetworksecurityV1beta1::CertificateProviderInstance, decorator: Google::Apis::NetworksecurityV1beta1::CertificateProviderInstance::Representation
      
          property :grpc_endpoint, as: 'grpcEndpoint', class: Google::Apis::NetworksecurityV1beta1::GoogleCloudNetworksecurityV1beta1GrpcEndpoint, decorator: Google::Apis::NetworksecurityV1beta1::GoogleCloudNetworksecurityV1beta1GrpcEndpoint::Representation
      
        end
      end
    end
  end
end
