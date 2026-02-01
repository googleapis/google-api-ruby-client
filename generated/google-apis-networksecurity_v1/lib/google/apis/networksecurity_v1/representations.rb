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
      
      class AddAddressGroupItemsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddressGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AntivirusOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyAuthzRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyAuthzRuleFrom
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyAuthzRuleFromRequestSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyAuthzRuleHeaderMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyAuthzRuleIpBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyAuthzRulePrincipal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyAuthzRuleRequestResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyAuthzRuleRequestResourceTagValueIdSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyAuthzRuleStringMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyAuthzRuleTo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyAuthzRuleToRequestOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyAuthzRuleToRequestOperationHeaderSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyCustomProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyCustomProviderAuthzExtension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyCustomProviderCloudIap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthzPolicyTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendAuthenticationConfig
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
      
      class CustomInterceptProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomMirroringProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Destination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsThreatDetector
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
      
      class FirewallEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallEndpointAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallEndpointAssociationReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallEndpointEndpointSettings
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
      
      class InterceptDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterceptDeploymentGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterceptDeploymentGroupConnectedEndpointGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterceptDeploymentGroupDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterceptEndpointGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterceptEndpointGroupAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterceptEndpointGroupAssociationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterceptEndpointGroupAssociationLocationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterceptEndpointGroupConnectedDeploymentGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterceptLocation
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
      
      class ListAuthzPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackendAuthenticationConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientTlsPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDnsThreatDetectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFirewallEndpointAssociationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFirewallEndpointsResponse
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
      
      class ListInterceptDeploymentGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInterceptDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInterceptEndpointGroupAssociationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInterceptEndpointGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMirroringDeploymentGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMirroringDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMirroringEndpointGroupAssociationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMirroringEndpointGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSecurityProfileGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSecurityProfilesResponse
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
      
      class MirroringDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MirroringDeploymentGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MirroringDeploymentGroupConnectedEndpointGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MirroringDeploymentGroupDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MirroringEndpointGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MirroringEndpointGroupAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MirroringEndpointGroupAssociationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MirroringEndpointGroupAssociationLocationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MirroringEndpointGroupConnectedDeploymentGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MirroringLocation
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
      
      class SecurityProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityProfileGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServerTlsPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeverityOverride
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
      
      class ThreatOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ThreatPreventionProfile
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
          collection :purpose, as: 'purpose'
          property :self_link, as: 'selfLink'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class AntivirusOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :protocol, as: 'protocol'
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
          collection :rules, as: 'rules', class: Google::Apis::NetworksecurityV1::Rule, decorator: Google::Apis::NetworksecurityV1::Rule::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class AuthzPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :create_time, as: 'createTime'
          property :custom_provider, as: 'customProvider', class: Google::Apis::NetworksecurityV1::AuthzPolicyCustomProvider, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyCustomProvider::Representation
      
          property :description, as: 'description'
          collection :http_rules, as: 'httpRules', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRule, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRule::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :target, as: 'target', class: Google::Apis::NetworksecurityV1::AuthzPolicyTarget, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyTarget::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class AuthzPolicyAuthzRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :from, as: 'from', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleFrom, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleFrom::Representation
      
          property :to, as: 'to', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleTo, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleTo::Representation
      
          property :when, as: 'when'
        end
      end
      
      class AuthzPolicyAuthzRuleFrom
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :not_sources, as: 'notSources', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleFromRequestSource, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleFromRequestSource::Representation
      
          collection :sources, as: 'sources', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleFromRequestSource, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleFromRequestSource::Representation
      
        end
      end
      
      class AuthzPolicyAuthzRuleFromRequestSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_blocks, as: 'ipBlocks', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleIpBlock, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleIpBlock::Representation
      
          collection :principals, as: 'principals', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRulePrincipal, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRulePrincipal::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleRequestResource, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleRequestResource::Representation
      
        end
      end
      
      class AuthzPolicyAuthzRuleHeaderMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleStringMatch, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleStringMatch::Representation
      
        end
      end
      
      class AuthzPolicyAuthzRuleIpBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :length, as: 'length'
          property :prefix, as: 'prefix'
        end
      end
      
      class AuthzPolicyAuthzRulePrincipal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :principal, as: 'principal', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleStringMatch, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleStringMatch::Representation
      
          property :principal_selector, as: 'principalSelector'
        end
      end
      
      class AuthzPolicyAuthzRuleRequestResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iam_service_account, as: 'iamServiceAccount', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleStringMatch, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleStringMatch::Representation
      
          property :tag_value_id_set, as: 'tagValueIdSet', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleRequestResourceTagValueIdSet, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleRequestResourceTagValueIdSet::Representation
      
        end
      end
      
      class AuthzPolicyAuthzRuleRequestResourceTagValueIdSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ids, as: 'ids'
        end
      end
      
      class AuthzPolicyAuthzRuleStringMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contains, as: 'contains'
          property :exact, as: 'exact'
          property :ignore_case, as: 'ignoreCase'
          property :prefix, as: 'prefix'
          property :suffix, as: 'suffix'
        end
      end
      
      class AuthzPolicyAuthzRuleTo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :not_operations, as: 'notOperations', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleToRequestOperation, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleToRequestOperation::Representation
      
          collection :operations, as: 'operations', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleToRequestOperation, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleToRequestOperation::Representation
      
        end
      end
      
      class AuthzPolicyAuthzRuleToRequestOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header_set, as: 'headerSet', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleToRequestOperationHeaderSet, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleToRequestOperationHeaderSet::Representation
      
          collection :hosts, as: 'hosts', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleStringMatch, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleStringMatch::Representation
      
          collection :methods_prop, as: 'methods'
          collection :paths, as: 'paths', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleStringMatch, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleStringMatch::Representation
      
        end
      end
      
      class AuthzPolicyAuthzRuleToRequestOperationHeaderSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :headers, as: 'headers', class: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleHeaderMatch, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyAuthzRuleHeaderMatch::Representation
      
        end
      end
      
      class AuthzPolicyCustomProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authz_extension, as: 'authzExtension', class: Google::Apis::NetworksecurityV1::AuthzPolicyCustomProviderAuthzExtension, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyCustomProviderAuthzExtension::Representation
      
          property :cloud_iap, as: 'cloudIap', class: Google::Apis::NetworksecurityV1::AuthzPolicyCustomProviderCloudIap, decorator: Google::Apis::NetworksecurityV1::AuthzPolicyCustomProviderCloudIap::Representation
      
        end
      end
      
      class AuthzPolicyCustomProviderAuthzExtension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resources, as: 'resources'
        end
      end
      
      class AuthzPolicyCustomProviderCloudIap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AuthzPolicyTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :load_balancing_scheme, as: 'loadBalancingScheme'
          collection :resources, as: 'resources'
        end
      end
      
      class BackendAuthenticationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_certificate, as: 'clientCertificate'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :trust_config, as: 'trustConfig'
          property :update_time, as: 'updateTime'
          property :well_known_roots, as: 'wellKnownRoots'
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
      
      class CloneAddressGroupItemsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
          property :source_address_group, as: 'sourceAddressGroup'
        end
      end
      
      class CustomInterceptProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intercept_endpoint_group, as: 'interceptEndpointGroup'
        end
      end
      
      class CustomMirroringProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mirroring_endpoint_group, as: 'mirroringEndpointGroup'
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
      
      class DnsThreatDetector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :excluded_networks, as: 'excludedNetworks'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :provider, as: 'provider'
          property :update_time, as: 'updateTime'
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
      
      class FirewallEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_networks, as: 'associatedNetworks'
          collection :associations, as: 'associations', class: Google::Apis::NetworksecurityV1::FirewallEndpointAssociationReference, decorator: Google::Apis::NetworksecurityV1::FirewallEndpointAssociationReference::Representation
      
          property :billing_project_id, as: 'billingProjectId'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :endpoint_settings, as: 'endpointSettings', class: Google::Apis::NetworksecurityV1::FirewallEndpointEndpointSettings, decorator: Google::Apis::NetworksecurityV1::FirewallEndpointEndpointSettings::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class FirewallEndpointAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :disabled, as: 'disabled'
          property :firewall_endpoint, as: 'firewallEndpoint'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :tls_inspection_policy, as: 'tlsInspectionPolicy'
          property :update_time, as: 'updateTime'
        end
      end
      
      class FirewallEndpointAssociationReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :network, as: 'network'
        end
      end
      
      class FirewallEndpointEndpointSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :jumbo_frames_enabled, as: 'jumboFramesEnabled'
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
      
      class InterceptDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :forwarding_rule, as: 'forwardingRule'
          property :intercept_deployment_group, as: 'interceptDeploymentGroup'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class InterceptDeploymentGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connected_endpoint_groups, as: 'connectedEndpointGroups', class: Google::Apis::NetworksecurityV1::InterceptDeploymentGroupConnectedEndpointGroup, decorator: Google::Apis::NetworksecurityV1::InterceptDeploymentGroupConnectedEndpointGroup::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          collection :locations, as: 'locations', class: Google::Apis::NetworksecurityV1::InterceptLocation, decorator: Google::Apis::NetworksecurityV1::InterceptLocation::Representation
      
          property :name, as: 'name'
          collection :nested_deployments, as: 'nestedDeployments', class: Google::Apis::NetworksecurityV1::InterceptDeploymentGroupDeployment, decorator: Google::Apis::NetworksecurityV1::InterceptDeploymentGroupDeployment::Representation
      
          property :network, as: 'network'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class InterceptDeploymentGroupConnectedEndpointGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class InterceptDeploymentGroupDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class InterceptEndpointGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associations, as: 'associations', class: Google::Apis::NetworksecurityV1::InterceptEndpointGroupAssociationDetails, decorator: Google::Apis::NetworksecurityV1::InterceptEndpointGroupAssociationDetails::Representation
      
          property :connected_deployment_group, as: 'connectedDeploymentGroup', class: Google::Apis::NetworksecurityV1::InterceptEndpointGroupConnectedDeploymentGroup, decorator: Google::Apis::NetworksecurityV1::InterceptEndpointGroupConnectedDeploymentGroup::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :intercept_deployment_group, as: 'interceptDeploymentGroup'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class InterceptEndpointGroupAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :intercept_endpoint_group, as: 'interceptEndpointGroup'
          hash :labels, as: 'labels'
          collection :locations, as: 'locations', class: Google::Apis::NetworksecurityV1::InterceptLocation, decorator: Google::Apis::NetworksecurityV1::InterceptLocation::Representation
      
          collection :locations_details, as: 'locationsDetails', class: Google::Apis::NetworksecurityV1::InterceptEndpointGroupAssociationLocationDetails, decorator: Google::Apis::NetworksecurityV1::InterceptEndpointGroupAssociationLocationDetails::Representation
      
          property :name, as: 'name'
          property :network, as: 'network'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class InterceptEndpointGroupAssociationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :network, as: 'network'
          property :state, as: 'state'
        end
      end
      
      class InterceptEndpointGroupAssociationLocationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :state, as: 'state'
        end
      end
      
      class InterceptEndpointGroupConnectedDeploymentGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::NetworksecurityV1::InterceptLocation, decorator: Google::Apis::NetworksecurityV1::InterceptLocation::Representation
      
          property :name, as: 'name'
        end
      end
      
      class InterceptLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :state, as: 'state'
        end
      end
      
      class ListAddressGroupReferencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_group_references, as: 'addressGroupReferences', class: Google::Apis::NetworksecurityV1::ListAddressGroupReferencesResponseAddressGroupReference, decorator: Google::Apis::NetworksecurityV1::ListAddressGroupReferencesResponseAddressGroupReference::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAddressGroupReferencesResponseAddressGroupReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :firewall_policy, as: 'firewallPolicy'
          property :rule_priority, as: 'rulePriority'
          property :security_policy, as: 'securityPolicy'
        end
      end
      
      class ListAddressGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_groups, as: 'addressGroups', class: Google::Apis::NetworksecurityV1::AddressGroup, decorator: Google::Apis::NetworksecurityV1::AddressGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListAuthorizationPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorization_policies, as: 'authorizationPolicies', class: Google::Apis::NetworksecurityV1::AuthorizationPolicy, decorator: Google::Apis::NetworksecurityV1::AuthorizationPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAuthzPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authz_policies, as: 'authzPolicies', class: Google::Apis::NetworksecurityV1::AuthzPolicy, decorator: Google::Apis::NetworksecurityV1::AuthzPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListBackendAuthenticationConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backend_authentication_configs, as: 'backendAuthenticationConfigs', class: Google::Apis::NetworksecurityV1::BackendAuthenticationConfig, decorator: Google::Apis::NetworksecurityV1::BackendAuthenticationConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListClientTlsPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :client_tls_policies, as: 'clientTlsPolicies', class: Google::Apis::NetworksecurityV1::ClientTlsPolicy, decorator: Google::Apis::NetworksecurityV1::ClientTlsPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDnsThreatDetectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dns_threat_detectors, as: 'dnsThreatDetectors', class: Google::Apis::NetworksecurityV1::DnsThreatDetector, decorator: Google::Apis::NetworksecurityV1::DnsThreatDetector::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListFirewallEndpointAssociationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :firewall_endpoint_associations, as: 'firewallEndpointAssociations', class: Google::Apis::NetworksecurityV1::FirewallEndpointAssociation, decorator: Google::Apis::NetworksecurityV1::FirewallEndpointAssociation::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListFirewallEndpointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :firewall_endpoints, as: 'firewallEndpoints', class: Google::Apis::NetworksecurityV1::FirewallEndpoint, decorator: Google::Apis::NetworksecurityV1::FirewallEndpoint::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGatewaySecurityPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gateway_security_policies, as: 'gatewaySecurityPolicies', class: Google::Apis::NetworksecurityV1::GatewaySecurityPolicy, decorator: Google::Apis::NetworksecurityV1::GatewaySecurityPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGatewaySecurityPolicyRulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gateway_security_policy_rules, as: 'gatewaySecurityPolicyRules', class: Google::Apis::NetworksecurityV1::GatewaySecurityPolicyRule, decorator: Google::Apis::NetworksecurityV1::GatewaySecurityPolicyRule::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListInterceptDeploymentGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intercept_deployment_groups, as: 'interceptDeploymentGroups', class: Google::Apis::NetworksecurityV1::InterceptDeploymentGroup, decorator: Google::Apis::NetworksecurityV1::InterceptDeploymentGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInterceptDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intercept_deployments, as: 'interceptDeployments', class: Google::Apis::NetworksecurityV1::InterceptDeployment, decorator: Google::Apis::NetworksecurityV1::InterceptDeployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListInterceptEndpointGroupAssociationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intercept_endpoint_group_associations, as: 'interceptEndpointGroupAssociations', class: Google::Apis::NetworksecurityV1::InterceptEndpointGroupAssociation, decorator: Google::Apis::NetworksecurityV1::InterceptEndpointGroupAssociation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInterceptEndpointGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intercept_endpoint_groups, as: 'interceptEndpointGroups', class: Google::Apis::NetworksecurityV1::InterceptEndpointGroup, decorator: Google::Apis::NetworksecurityV1::InterceptEndpointGroup::Representation
      
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
      
      class ListMirroringDeploymentGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mirroring_deployment_groups, as: 'mirroringDeploymentGroups', class: Google::Apis::NetworksecurityV1::MirroringDeploymentGroup, decorator: Google::Apis::NetworksecurityV1::MirroringDeploymentGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMirroringDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mirroring_deployments, as: 'mirroringDeployments', class: Google::Apis::NetworksecurityV1::MirroringDeployment, decorator: Google::Apis::NetworksecurityV1::MirroringDeployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListMirroringEndpointGroupAssociationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mirroring_endpoint_group_associations, as: 'mirroringEndpointGroupAssociations', class: Google::Apis::NetworksecurityV1::MirroringEndpointGroupAssociation, decorator: Google::Apis::NetworksecurityV1::MirroringEndpointGroupAssociation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMirroringEndpointGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mirroring_endpoint_groups, as: 'mirroringEndpointGroups', class: Google::Apis::NetworksecurityV1::MirroringEndpointGroup, decorator: Google::Apis::NetworksecurityV1::MirroringEndpointGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::NetworksecurityV1::Operation, decorator: Google::Apis::NetworksecurityV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSecurityProfileGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :security_profile_groups, as: 'securityProfileGroups', class: Google::Apis::NetworksecurityV1::SecurityProfileGroup, decorator: Google::Apis::NetworksecurityV1::SecurityProfileGroup::Representation
      
        end
      end
      
      class ListSecurityProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :security_profiles, as: 'securityProfiles', class: Google::Apis::NetworksecurityV1::SecurityProfile, decorator: Google::Apis::NetworksecurityV1::SecurityProfile::Representation
      
        end
      end
      
      class ListServerTlsPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :server_tls_policies, as: 'serverTlsPolicies', class: Google::Apis::NetworksecurityV1::ServerTlsPolicy, decorator: Google::Apis::NetworksecurityV1::ServerTlsPolicy::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListTlsInspectionPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tls_inspection_policies, as: 'tlsInspectionPolicies', class: Google::Apis::NetworksecurityV1::TlsInspectionPolicy, decorator: Google::Apis::NetworksecurityV1::TlsInspectionPolicy::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListUrlListsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :url_lists, as: 'urlLists', class: Google::Apis::NetworksecurityV1::UrlList, decorator: Google::Apis::NetworksecurityV1::UrlList::Representation
      
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
      
          property :client_validation_mode, as: 'clientValidationMode'
          property :client_validation_trust_config, as: 'clientValidationTrustConfig'
        end
      end
      
      class MirroringDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :forwarding_rule, as: 'forwardingRule'
          hash :labels, as: 'labels'
          property :mirroring_deployment_group, as: 'mirroringDeploymentGroup'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MirroringDeploymentGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connected_endpoint_groups, as: 'connectedEndpointGroups', class: Google::Apis::NetworksecurityV1::MirroringDeploymentGroupConnectedEndpointGroup, decorator: Google::Apis::NetworksecurityV1::MirroringDeploymentGroupConnectedEndpointGroup::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          collection :locations, as: 'locations', class: Google::Apis::NetworksecurityV1::MirroringLocation, decorator: Google::Apis::NetworksecurityV1::MirroringLocation::Representation
      
          property :name, as: 'name'
          collection :nested_deployments, as: 'nestedDeployments', class: Google::Apis::NetworksecurityV1::MirroringDeploymentGroupDeployment, decorator: Google::Apis::NetworksecurityV1::MirroringDeploymentGroupDeployment::Representation
      
          property :network, as: 'network'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MirroringDeploymentGroupConnectedEndpointGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class MirroringDeploymentGroupDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class MirroringEndpointGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associations, as: 'associations', class: Google::Apis::NetworksecurityV1::MirroringEndpointGroupAssociationDetails, decorator: Google::Apis::NetworksecurityV1::MirroringEndpointGroupAssociationDetails::Representation
      
          collection :connected_deployment_groups, as: 'connectedDeploymentGroups', class: Google::Apis::NetworksecurityV1::MirroringEndpointGroupConnectedDeploymentGroup, decorator: Google::Apis::NetworksecurityV1::MirroringEndpointGroupConnectedDeploymentGroup::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :mirroring_deployment_group, as: 'mirroringDeploymentGroup'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MirroringEndpointGroupAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          collection :locations, as: 'locations', class: Google::Apis::NetworksecurityV1::MirroringLocation, decorator: Google::Apis::NetworksecurityV1::MirroringLocation::Representation
      
          collection :locations_details, as: 'locationsDetails', class: Google::Apis::NetworksecurityV1::MirroringEndpointGroupAssociationLocationDetails, decorator: Google::Apis::NetworksecurityV1::MirroringEndpointGroupAssociationLocationDetails::Representation
      
          property :mirroring_endpoint_group, as: 'mirroringEndpointGroup'
          property :name, as: 'name'
          property :network, as: 'network'
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class MirroringEndpointGroupAssociationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :network, as: 'network'
          property :state, as: 'state'
        end
      end
      
      class MirroringEndpointGroupAssociationLocationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :state, as: 'state'
        end
      end
      
      class MirroringEndpointGroupConnectedDeploymentGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::NetworksecurityV1::MirroringLocation, decorator: Google::Apis::NetworksecurityV1::MirroringLocation::Representation
      
          property :name, as: 'name'
        end
      end
      
      class MirroringLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :state, as: 'state'
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
          collection :destinations, as: 'destinations', class: Google::Apis::NetworksecurityV1::Destination, decorator: Google::Apis::NetworksecurityV1::Destination::Representation
      
          collection :sources, as: 'sources', class: Google::Apis::NetworksecurityV1::Source, decorator: Google::Apis::NetworksecurityV1::Source::Representation
      
        end
      end
      
      class SecurityProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :custom_intercept_profile, as: 'customInterceptProfile', class: Google::Apis::NetworksecurityV1::CustomInterceptProfile, decorator: Google::Apis::NetworksecurityV1::CustomInterceptProfile::Representation
      
          property :custom_mirroring_profile, as: 'customMirroringProfile', class: Google::Apis::NetworksecurityV1::CustomMirroringProfile, decorator: Google::Apis::NetworksecurityV1::CustomMirroringProfile::Representation
      
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :threat_prevention_profile, as: 'threatPreventionProfile', class: Google::Apis::NetworksecurityV1::ThreatPreventionProfile, decorator: Google::Apis::NetworksecurityV1::ThreatPreventionProfile::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SecurityProfileGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :custom_intercept_profile, as: 'customInterceptProfile'
          property :custom_mirroring_profile, as: 'customMirroringProfile'
          property :data_path_id, :numeric_string => true, as: 'dataPathId'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :threat_prevention_profile, as: 'threatPreventionProfile'
          property :update_time, as: 'updateTime'
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
      
      class SeverityOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :severity, as: 'severity'
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
      
      class ThreatOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :threat_id, as: 'threatId'
          property :type, as: 'type'
        end
      end
      
      class ThreatPreventionProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :antivirus_overrides, as: 'antivirusOverrides', class: Google::Apis::NetworksecurityV1::AntivirusOverride, decorator: Google::Apis::NetworksecurityV1::AntivirusOverride::Representation
      
          collection :severity_overrides, as: 'severityOverrides', class: Google::Apis::NetworksecurityV1::SeverityOverride, decorator: Google::Apis::NetworksecurityV1::SeverityOverride::Representation
      
          collection :threat_overrides, as: 'threatOverrides', class: Google::Apis::NetworksecurityV1::ThreatOverride, decorator: Google::Apis::NetworksecurityV1::ThreatOverride::Representation
      
        end
      end
      
      class TlsInspectionPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_pool, as: 'caPool'
          property :create_time, as: 'createTime'
          collection :custom_tls_features, as: 'customTlsFeatures'
          property :description, as: 'description'
          property :exclude_public_ca_set, as: 'excludePublicCaSet'
          property :min_tls_version, as: 'minTlsVersion'
          property :name, as: 'name'
          property :tls_feature_profile, as: 'tlsFeatureProfile'
          property :trust_config, as: 'trustConfig'
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
          property :certificate_provider_instance, as: 'certificateProviderInstance', class: Google::Apis::NetworksecurityV1::CertificateProviderInstance, decorator: Google::Apis::NetworksecurityV1::CertificateProviderInstance::Representation
      
          property :grpc_endpoint, as: 'grpcEndpoint', class: Google::Apis::NetworksecurityV1::GoogleCloudNetworksecurityV1GrpcEndpoint, decorator: Google::Apis::NetworksecurityV1::GoogleCloudNetworksecurityV1GrpcEndpoint::Representation
      
        end
      end
    end
  end
end
