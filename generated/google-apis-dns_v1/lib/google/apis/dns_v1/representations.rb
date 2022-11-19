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
    module DnsV1
      
      class Change
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListChangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsKeyDigest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsKeySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsKeysListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
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
      
      class GoogleIamV1GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1GetPolicyOptions
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
      
      class ManagedZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneCloudLoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneDnsSecConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneForwardingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneForwardingConfigNameServerTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneOperationsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZonePeeringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZonePeeringConfigTargetNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZonePrivateVisibilityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZonePrivateVisibilityConfigGkeCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZonePrivateVisibilityConfigNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneReverseLookupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneServiceDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneServiceDirectoryConfigNamespace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListManagedZonesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationDnsKeyContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationManagedZoneContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PoliciesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PoliciesPatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PoliciesUpdateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyAlternativeNameServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyAlternativeNameServerConfigTargetNameServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Project
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Quota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicyGeoPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicyGeoPolicyGeoPolicyItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicyHealthCheckTargets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicyLoadBalancerTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicyPrimaryBackupPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicyWrrPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicyWrrPolicyWrrPolicyItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceRecordSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceRecordSetsDeleteResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListResourceRecordSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponseHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePoliciesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePoliciesPatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePoliciesUpdateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyGkeCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyRuleLocalData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyRulesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyRulesPatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyRulesUpdateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Change
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additions, as: 'additions', class: Google::Apis::DnsV1::ResourceRecordSet, decorator: Google::Apis::DnsV1::ResourceRecordSet::Representation
      
          collection :deletions, as: 'deletions', class: Google::Apis::DnsV1::ResourceRecordSet, decorator: Google::Apis::DnsV1::ResourceRecordSet::Representation
      
          property :id, as: 'id'
          property :is_serving, as: 'isServing'
          property :kind, as: 'kind'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
        end
      end
      
      class ListChangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :changes, as: 'changes', class: Google::Apis::DnsV1::Change, decorator: Google::Apis::DnsV1::Change::Representation
      
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class DnsKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :creation_time, as: 'creationTime'
          property :description, as: 'description'
          collection :digests, as: 'digests', class: Google::Apis::DnsV1::DnsKeyDigest, decorator: Google::Apis::DnsV1::DnsKeyDigest::Representation
      
          property :id, as: 'id'
          property :is_active, as: 'isActive'
          property :key_length, as: 'keyLength'
          property :key_tag, as: 'keyTag'
          property :kind, as: 'kind'
          property :public_key, as: 'publicKey'
          property :type, as: 'type'
        end
      end
      
      class DnsKeyDigest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digest, as: 'digest'
          property :type, as: 'type'
        end
      end
      
      class DnsKeySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :key_length, as: 'keyLength'
          property :key_type, as: 'keyType'
          property :kind, as: 'kind'
        end
      end
      
      class DnsKeysListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dns_keys, as: 'dnsKeys', class: Google::Apis::DnsV1::DnsKey, decorator: Google::Apis::DnsV1::DnsKey::Representation
      
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
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
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::DnsV1::GoogleIamV1AuditLogConfig, decorator: Google::Apis::DnsV1::GoogleIamV1AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::DnsV1::Expr, decorator: Google::Apis::DnsV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::DnsV1::GoogleIamV1GetPolicyOptions, decorator: Google::Apis::DnsV1::GoogleIamV1GetPolicyOptions::Representation
      
        end
      end
      
      class GoogleIamV1GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::DnsV1::GoogleIamV1AuditConfig, decorator: Google::Apis::DnsV1::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::DnsV1::GoogleIamV1Binding, decorator: Google::Apis::DnsV1::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::DnsV1::GoogleIamV1Policy, decorator: Google::Apis::DnsV1::GoogleIamV1Policy::Representation
      
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
      
      class ManagedZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_logging_config, as: 'cloudLoggingConfig', class: Google::Apis::DnsV1::ManagedZoneCloudLoggingConfig, decorator: Google::Apis::DnsV1::ManagedZoneCloudLoggingConfig::Representation
      
          property :creation_time, as: 'creationTime'
          property :description, as: 'description'
          property :dns_name, as: 'dnsName'
          property :dnssec_config, as: 'dnssecConfig', class: Google::Apis::DnsV1::ManagedZoneDnsSecConfig, decorator: Google::Apis::DnsV1::ManagedZoneDnsSecConfig::Representation
      
          property :forwarding_config, as: 'forwardingConfig', class: Google::Apis::DnsV1::ManagedZoneForwardingConfig, decorator: Google::Apis::DnsV1::ManagedZoneForwardingConfig::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :name_server_set, as: 'nameServerSet'
          collection :name_servers, as: 'nameServers'
          property :peering_config, as: 'peeringConfig', class: Google::Apis::DnsV1::ManagedZonePeeringConfig, decorator: Google::Apis::DnsV1::ManagedZonePeeringConfig::Representation
      
          property :private_visibility_config, as: 'privateVisibilityConfig', class: Google::Apis::DnsV1::ManagedZonePrivateVisibilityConfig, decorator: Google::Apis::DnsV1::ManagedZonePrivateVisibilityConfig::Representation
      
          property :reverse_lookup_config, as: 'reverseLookupConfig', class: Google::Apis::DnsV1::ManagedZoneReverseLookupConfig, decorator: Google::Apis::DnsV1::ManagedZoneReverseLookupConfig::Representation
      
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::DnsV1::ManagedZoneServiceDirectoryConfig, decorator: Google::Apis::DnsV1::ManagedZoneServiceDirectoryConfig::Representation
      
          property :visibility, as: 'visibility'
        end
      end
      
      class ManagedZoneCloudLoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_logging, as: 'enableLogging'
          property :kind, as: 'kind'
        end
      end
      
      class ManagedZoneDnsSecConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :default_key_specs, as: 'defaultKeySpecs', class: Google::Apis::DnsV1::DnsKeySpec, decorator: Google::Apis::DnsV1::DnsKeySpec::Representation
      
          property :kind, as: 'kind'
          property :non_existence, as: 'nonExistence'
          property :state, as: 'state'
        end
      end
      
      class ManagedZoneForwardingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :target_name_servers, as: 'targetNameServers', class: Google::Apis::DnsV1::ManagedZoneForwardingConfigNameServerTarget, decorator: Google::Apis::DnsV1::ManagedZoneForwardingConfigNameServerTarget::Representation
      
        end
      end
      
      class ManagedZoneForwardingConfigNameServerTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :forwarding_path, as: 'forwardingPath'
          property :ipv4_address, as: 'ipv4Address'
          property :ipv6_address, as: 'ipv6Address'
          property :kind, as: 'kind'
        end
      end
      
      class ManagedZoneOperationsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DnsV1::Operation, decorator: Google::Apis::DnsV1::Operation::Representation
      
        end
      end
      
      class ManagedZonePeeringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :target_network, as: 'targetNetwork', class: Google::Apis::DnsV1::ManagedZonePeeringConfigTargetNetwork, decorator: Google::Apis::DnsV1::ManagedZonePeeringConfigTargetNetwork::Representation
      
        end
      end
      
      class ManagedZonePeeringConfigTargetNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deactivate_time, as: 'deactivateTime'
          property :kind, as: 'kind'
          property :network_url, as: 'networkUrl'
        end
      end
      
      class ManagedZonePrivateVisibilityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gke_clusters, as: 'gkeClusters', class: Google::Apis::DnsV1::ManagedZonePrivateVisibilityConfigGkeCluster, decorator: Google::Apis::DnsV1::ManagedZonePrivateVisibilityConfigGkeCluster::Representation
      
          property :kind, as: 'kind'
          collection :networks, as: 'networks', class: Google::Apis::DnsV1::ManagedZonePrivateVisibilityConfigNetwork, decorator: Google::Apis::DnsV1::ManagedZonePrivateVisibilityConfigNetwork::Representation
      
        end
      end
      
      class ManagedZonePrivateVisibilityConfigGkeCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gke_cluster_name, as: 'gkeClusterName'
          property :kind, as: 'kind'
        end
      end
      
      class ManagedZonePrivateVisibilityConfigNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :network_url, as: 'networkUrl'
        end
      end
      
      class ManagedZoneReverseLookupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class ManagedZoneServiceDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :namespace, as: 'namespace', class: Google::Apis::DnsV1::ManagedZoneServiceDirectoryConfigNamespace, decorator: Google::Apis::DnsV1::ManagedZoneServiceDirectoryConfigNamespace::Representation
      
        end
      end
      
      class ManagedZoneServiceDirectoryConfigNamespace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deletion_time, as: 'deletionTime'
          property :kind, as: 'kind'
          property :namespace_url, as: 'namespaceUrl'
        end
      end
      
      class ListManagedZonesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :kind, as: 'kind'
          collection :managed_zones, as: 'managedZones', class: Google::Apis::DnsV1::ManagedZone, decorator: Google::Apis::DnsV1::ManagedZone::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_key_context, as: 'dnsKeyContext', class: Google::Apis::DnsV1::OperationDnsKeyContext, decorator: Google::Apis::DnsV1::OperationDnsKeyContext::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :type, as: 'type'
          property :user, as: 'user'
          property :zone_context, as: 'zoneContext', class: Google::Apis::DnsV1::OperationManagedZoneContext, decorator: Google::Apis::DnsV1::OperationManagedZoneContext::Representation
      
        end
      end
      
      class OperationDnsKeyContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue', class: Google::Apis::DnsV1::DnsKey, decorator: Google::Apis::DnsV1::DnsKey::Representation
      
          property :old_value, as: 'oldValue', class: Google::Apis::DnsV1::DnsKey, decorator: Google::Apis::DnsV1::DnsKey::Representation
      
        end
      end
      
      class OperationManagedZoneContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue', class: Google::Apis::DnsV1::ManagedZone, decorator: Google::Apis::DnsV1::ManagedZone::Representation
      
          property :old_value, as: 'oldValue', class: Google::Apis::DnsV1::ManagedZone, decorator: Google::Apis::DnsV1::ManagedZone::Representation
      
        end
      end
      
      class PoliciesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :policies, as: 'policies', class: Google::Apis::DnsV1::Policy, decorator: Google::Apis::DnsV1::Policy::Representation
      
        end
      end
      
      class PoliciesPatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :policy, as: 'policy', class: Google::Apis::DnsV1::Policy, decorator: Google::Apis::DnsV1::Policy::Representation
      
        end
      end
      
      class PoliciesUpdateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :policy, as: 'policy', class: Google::Apis::DnsV1::Policy, decorator: Google::Apis::DnsV1::Policy::Representation
      
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternative_name_server_config, as: 'alternativeNameServerConfig', class: Google::Apis::DnsV1::PolicyAlternativeNameServerConfig, decorator: Google::Apis::DnsV1::PolicyAlternativeNameServerConfig::Representation
      
          property :description, as: 'description'
          property :enable_inbound_forwarding, as: 'enableInboundForwarding'
          property :enable_logging, as: 'enableLogging'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :networks, as: 'networks', class: Google::Apis::DnsV1::PolicyNetwork, decorator: Google::Apis::DnsV1::PolicyNetwork::Representation
      
        end
      end
      
      class PolicyAlternativeNameServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :target_name_servers, as: 'targetNameServers', class: Google::Apis::DnsV1::PolicyAlternativeNameServerConfigTargetNameServer, decorator: Google::Apis::DnsV1::PolicyAlternativeNameServerConfigTargetNameServer::Representation
      
        end
      end
      
      class PolicyAlternativeNameServerConfigTargetNameServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :forwarding_path, as: 'forwardingPath'
          property :ipv4_address, as: 'ipv4Address'
          property :ipv6_address, as: 'ipv6Address'
          property :kind, as: 'kind'
        end
      end
      
      class PolicyNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :network_url, as: 'networkUrl'
        end
      end
      
      class Project
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :number, :numeric_string => true, as: 'number'
          property :quota, as: 'quota', class: Google::Apis::DnsV1::Quota, decorator: Google::Apis::DnsV1::Quota::Representation
      
        end
      end
      
      class Quota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_keys_per_managed_zone, as: 'dnsKeysPerManagedZone'
          property :gke_clusters_per_managed_zone, as: 'gkeClustersPerManagedZone'
          property :gke_clusters_per_policy, as: 'gkeClustersPerPolicy'
          property :gke_clusters_per_response_policy, as: 'gkeClustersPerResponsePolicy'
          property :items_per_routing_policy, as: 'itemsPerRoutingPolicy'
          property :kind, as: 'kind'
          property :managed_zones, as: 'managedZones'
          property :managed_zones_per_gke_cluster, as: 'managedZonesPerGkeCluster'
          property :managed_zones_per_network, as: 'managedZonesPerNetwork'
          property :networks_per_managed_zone, as: 'networksPerManagedZone'
          property :networks_per_policy, as: 'networksPerPolicy'
          property :networks_per_response_policy, as: 'networksPerResponsePolicy'
          property :peering_zones_per_target_network, as: 'peeringZonesPerTargetNetwork'
          property :policies, as: 'policies'
          property :resource_records_per_rrset, as: 'resourceRecordsPerRrset'
          property :response_policies, as: 'responsePolicies'
          property :response_policy_rules_per_response_policy, as: 'responsePolicyRulesPerResponsePolicy'
          property :rrset_additions_per_change, as: 'rrsetAdditionsPerChange'
          property :rrset_deletions_per_change, as: 'rrsetDeletionsPerChange'
          property :rrsets_per_managed_zone, as: 'rrsetsPerManagedZone'
          property :target_name_servers_per_managed_zone, as: 'targetNameServersPerManagedZone'
          property :target_name_servers_per_policy, as: 'targetNameServersPerPolicy'
          property :total_rrdata_size_per_change, as: 'totalRrdataSizePerChange'
          collection :whitelisted_key_specs, as: 'whitelistedKeySpecs', class: Google::Apis::DnsV1::DnsKeySpec, decorator: Google::Apis::DnsV1::DnsKeySpec::Representation
      
        end
      end
      
      class RrSetRoutingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :geo, as: 'geo', class: Google::Apis::DnsV1::RrSetRoutingPolicyGeoPolicy, decorator: Google::Apis::DnsV1::RrSetRoutingPolicyGeoPolicy::Representation
      
          property :kind, as: 'kind'
          property :primary_backup, as: 'primaryBackup', class: Google::Apis::DnsV1::RrSetRoutingPolicyPrimaryBackupPolicy, decorator: Google::Apis::DnsV1::RrSetRoutingPolicyPrimaryBackupPolicy::Representation
      
          property :wrr, as: 'wrr', class: Google::Apis::DnsV1::RrSetRoutingPolicyWrrPolicy, decorator: Google::Apis::DnsV1::RrSetRoutingPolicyWrrPolicy::Representation
      
        end
      end
      
      class RrSetRoutingPolicyGeoPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_fencing, as: 'enableFencing'
          collection :items, as: 'items', class: Google::Apis::DnsV1::RrSetRoutingPolicyGeoPolicyGeoPolicyItem, decorator: Google::Apis::DnsV1::RrSetRoutingPolicyGeoPolicyGeoPolicyItem::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class RrSetRoutingPolicyGeoPolicyGeoPolicyItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :health_checked_targets, as: 'healthCheckedTargets', class: Google::Apis::DnsV1::RrSetRoutingPolicyHealthCheckTargets, decorator: Google::Apis::DnsV1::RrSetRoutingPolicyHealthCheckTargets::Representation
      
          property :kind, as: 'kind'
          property :location, as: 'location'
          collection :rrdatas, as: 'rrdatas'
          collection :signature_rrdatas, as: 'signatureRrdatas'
        end
      end
      
      class RrSetRoutingPolicyHealthCheckTargets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :internal_load_balancers, as: 'internalLoadBalancers', class: Google::Apis::DnsV1::RrSetRoutingPolicyLoadBalancerTarget, decorator: Google::Apis::DnsV1::RrSetRoutingPolicyLoadBalancerTarget::Representation
      
        end
      end
      
      class RrSetRoutingPolicyLoadBalancerTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :ip_protocol, as: 'ipProtocol'
          property :kind, as: 'kind'
          property :load_balancer_type, as: 'loadBalancerType'
          property :network_url, as: 'networkUrl'
          property :port, as: 'port'
          property :project, as: 'project'
          property :region, as: 'region'
        end
      end
      
      class RrSetRoutingPolicyPrimaryBackupPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_geo_targets, as: 'backupGeoTargets', class: Google::Apis::DnsV1::RrSetRoutingPolicyGeoPolicy, decorator: Google::Apis::DnsV1::RrSetRoutingPolicyGeoPolicy::Representation
      
          property :kind, as: 'kind'
          property :primary_targets, as: 'primaryTargets', class: Google::Apis::DnsV1::RrSetRoutingPolicyHealthCheckTargets, decorator: Google::Apis::DnsV1::RrSetRoutingPolicyHealthCheckTargets::Representation
      
          property :trickle_traffic, as: 'trickleTraffic'
        end
      end
      
      class RrSetRoutingPolicyWrrPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::DnsV1::RrSetRoutingPolicyWrrPolicyWrrPolicyItem, decorator: Google::Apis::DnsV1::RrSetRoutingPolicyWrrPolicyWrrPolicyItem::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class RrSetRoutingPolicyWrrPolicyWrrPolicyItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :health_checked_targets, as: 'healthCheckedTargets', class: Google::Apis::DnsV1::RrSetRoutingPolicyHealthCheckTargets, decorator: Google::Apis::DnsV1::RrSetRoutingPolicyHealthCheckTargets::Representation
      
          property :kind, as: 'kind'
          collection :rrdatas, as: 'rrdatas'
          collection :signature_rrdatas, as: 'signatureRrdatas'
          property :weight, as: 'weight'
        end
      end
      
      class ResourceRecordSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :routing_policy, as: 'routingPolicy', class: Google::Apis::DnsV1::RrSetRoutingPolicy, decorator: Google::Apis::DnsV1::RrSetRoutingPolicy::Representation
      
          collection :rrdatas, as: 'rrdatas'
          collection :signature_rrdatas, as: 'signatureRrdatas'
          property :ttl, as: 'ttl'
          property :type, as: 'type'
        end
      end
      
      class ResourceRecordSetsDeleteResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListResourceRecordSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :rrsets, as: 'rrsets', class: Google::Apis::DnsV1::ResourceRecordSet, decorator: Google::Apis::DnsV1::ResourceRecordSet::Representation
      
        end
      end
      
      class ResponseHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
        end
      end
      
      class ResponsePoliciesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :response_policies, as: 'responsePolicies', class: Google::Apis::DnsV1::ResponsePolicy, decorator: Google::Apis::DnsV1::ResponsePolicy::Representation
      
        end
      end
      
      class ResponsePoliciesPatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :response_policy, as: 'responsePolicy', class: Google::Apis::DnsV1::ResponsePolicy, decorator: Google::Apis::DnsV1::ResponsePolicy::Representation
      
        end
      end
      
      class ResponsePoliciesUpdateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :response_policy, as: 'responsePolicy', class: Google::Apis::DnsV1::ResponsePolicy, decorator: Google::Apis::DnsV1::ResponsePolicy::Representation
      
        end
      end
      
      class ResponsePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :gke_clusters, as: 'gkeClusters', class: Google::Apis::DnsV1::ResponsePolicyGkeCluster, decorator: Google::Apis::DnsV1::ResponsePolicyGkeCluster::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          hash :labels, as: 'labels'
          collection :networks, as: 'networks', class: Google::Apis::DnsV1::ResponsePolicyNetwork, decorator: Google::Apis::DnsV1::ResponsePolicyNetwork::Representation
      
          property :response_policy_name, as: 'responsePolicyName'
        end
      end
      
      class ResponsePolicyGkeCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gke_cluster_name, as: 'gkeClusterName'
          property :kind, as: 'kind'
        end
      end
      
      class ResponsePolicyNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :network_url, as: 'networkUrl'
        end
      end
      
      class ResponsePolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :behavior, as: 'behavior'
          property :dns_name, as: 'dnsName'
          property :kind, as: 'kind'
          property :local_data, as: 'localData', class: Google::Apis::DnsV1::ResponsePolicyRuleLocalData, decorator: Google::Apis::DnsV1::ResponsePolicyRuleLocalData::Representation
      
          property :rule_name, as: 'ruleName'
        end
      end
      
      class ResponsePolicyRuleLocalData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :local_datas, as: 'localDatas', class: Google::Apis::DnsV1::ResourceRecordSet, decorator: Google::Apis::DnsV1::ResourceRecordSet::Representation
      
        end
      end
      
      class ResponsePolicyRulesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :response_policy_rules, as: 'responsePolicyRules', class: Google::Apis::DnsV1::ResponsePolicyRule, decorator: Google::Apis::DnsV1::ResponsePolicyRule::Representation
      
        end
      end
      
      class ResponsePolicyRulesPatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :response_policy_rule, as: 'responsePolicyRule', class: Google::Apis::DnsV1::ResponsePolicyRule, decorator: Google::Apis::DnsV1::ResponsePolicyRule::Representation
      
        end
      end
      
      class ResponsePolicyRulesUpdateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV1::ResponseHeader, decorator: Google::Apis::DnsV1::ResponseHeader::Representation
      
          property :response_policy_rule, as: 'responsePolicyRule', class: Google::Apis::DnsV1::ResponsePolicyRule, decorator: Google::Apis::DnsV1::ResponsePolicyRule::Representation
      
        end
      end
    end
  end
end
