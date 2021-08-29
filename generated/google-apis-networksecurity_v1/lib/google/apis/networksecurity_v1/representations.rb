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
    module NetworksecurityV1
      
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
      
      class GoogleCloudNetworksecurityV1CertificateProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNetworksecurityV1GrpcEndpoint
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
      
      class ListAuthorizationPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientTlsPoliciesResponse
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
      
      class ValidationCa
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :rules, as: 'rules', class: Google::Apis::NetworksecurityV1::Rule, decorator: Google::Apis::NetworksecurityV1::Rule::Representation
      
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
          property :client_certificate, as: 'clientCertificate', class: Google::Apis::NetworksecurityV1::GoogleCloudNetworksecurityV1CertificateProvider, decorator: Google::Apis::NetworksecurityV1::GoogleCloudNetworksecurityV1CertificateProvider::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :server_validation_ca, as: 'serverValidationCa', class: Google::Apis::NetworksecurityV1::ValidationCa, decorator: Google::Apis::NetworksecurityV1::ValidationCa::Representation
      
          property :sni, as: 'sni'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Destination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hosts, as: 'hosts'
          property :http_header_match, as: 'httpHeaderMatch', class: Google::Apis::NetworksecurityV1::HttpHeaderMatch, decorator: Google::Apis::NetworksecurityV1::HttpHeaderMatch::Representation
      
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
      
      class GoogleCloudNetworksecurityV1CertificateProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_provider_instance, as: 'certificateProviderInstance', class: Google::Apis::NetworksecurityV1::CertificateProviderInstance, decorator: Google::Apis::NetworksecurityV1::CertificateProviderInstance::Representation
      
          property :grpc_endpoint, as: 'grpcEndpoint', class: Google::Apis::NetworksecurityV1::GoogleCloudNetworksecurityV1GrpcEndpoint, decorator: Google::Apis::NetworksecurityV1::GoogleCloudNetworksecurityV1GrpcEndpoint::Representation
      
        end
      end
      
      class GoogleCloudNetworksecurityV1GrpcEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_uri, as: 'targetUri'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::NetworksecurityV1::GoogleIamV1AuditLogConfig, decorator: Google::Apis::NetworksecurityV1::GoogleIamV1AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::NetworksecurityV1::Expr, decorator: Google::Apis::NetworksecurityV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::NetworksecurityV1::GoogleIamV1AuditConfig, decorator: Google::Apis::NetworksecurityV1::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::NetworksecurityV1::GoogleIamV1Binding, decorator: Google::Apis::NetworksecurityV1::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::NetworksecurityV1::GoogleIamV1Policy, decorator: Google::Apis::NetworksecurityV1::GoogleIamV1Policy::Representation
      
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
      
      class ListAuthorizationPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorization_policies, as: 'authorizationPolicies', class: Google::Apis::NetworksecurityV1::AuthorizationPolicy, decorator: Google::Apis::NetworksecurityV1::AuthorizationPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListClientTlsPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :client_tls_policies, as: 'clientTlsPolicies', class: Google::Apis::NetworksecurityV1::ClientTlsPolicy, decorator: Google::Apis::NetworksecurityV1::ClientTlsPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::NetworksecurityV1::Location, decorator: Google::Apis::NetworksecurityV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::NetworksecurityV1::Operation, decorator: Google::Apis::NetworksecurityV1::Operation::Representation
      
        end
      end
      
      class ListServerTlsPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :server_tls_policies, as: 'serverTlsPolicies', class: Google::Apis::NetworksecurityV1::ServerTlsPolicy, decorator: Google::Apis::NetworksecurityV1::ServerTlsPolicy::Representation
      
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
          collection :client_validation_ca, as: 'clientValidationCa', class: Google::Apis::NetworksecurityV1::ValidationCa, decorator: Google::Apis::NetworksecurityV1::ValidationCa::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::NetworksecurityV1::Status, decorator: Google::Apis::NetworksecurityV1::Status::Representation
      
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
      
      class Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations', class: Google::Apis::NetworksecurityV1::Destination, decorator: Google::Apis::NetworksecurityV1::Destination::Representation
      
          collection :sources, as: 'sources', class: Google::Apis::NetworksecurityV1::Source, decorator: Google::Apis::NetworksecurityV1::Source::Representation
      
        end
      end
      
      class ServerTlsPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_open, as: 'allowOpen'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :mtls_policy, as: 'mtlsPolicy', class: Google::Apis::NetworksecurityV1::MtlsPolicy, decorator: Google::Apis::NetworksecurityV1::MtlsPolicy::Representation
      
          property :name, as: 'name'
          property :server_certificate, as: 'serverCertificate', class: Google::Apis::NetworksecurityV1::GoogleCloudNetworksecurityV1CertificateProvider, decorator: Google::Apis::NetworksecurityV1::GoogleCloudNetworksecurityV1CertificateProvider::Representation
      
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
      
      class ValidationCa
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_provider_instance, as: 'certificateProviderInstance', class: Google::Apis::NetworksecurityV1::CertificateProviderInstance, decorator: Google::Apis::NetworksecurityV1::CertificateProviderInstance::Representation
      
          property :grpc_endpoint, as: 'grpcEndpoint', class: Google::Apis::NetworksecurityV1::GoogleCloudNetworksecurityV1GrpcEndpoint, decorator: Google::Apis::NetworksecurityV1::GoogleCloudNetworksecurityV1GrpcEndpoint::Representation
      
        end
      end
    end
  end
end
