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
    module TrafficdirectorV3
      
      class Address
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientStatusRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClustersConfigDump
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContextParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamicCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamicEndpointConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamicListener
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamicListenerState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamicRouteConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DynamicScopedRouteConfigs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EndpointsConfigDump
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvoyInternalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Extension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenericXdsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRe2
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InlineScopedRouteConfigs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListenersConfigDump
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Locality
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Node
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NullMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PathSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerXdsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pipe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegexMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoutesConfigDump
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScopedRoutesConfigDump
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SemanticVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SocketAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StaticCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StaticEndpointConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StaticListener
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StaticRouteConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StructMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateFailureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValueMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Address
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :envoy_internal_address, as: 'envoyInternalAddress', class: Google::Apis::TrafficdirectorV3::EnvoyInternalAddress, decorator: Google::Apis::TrafficdirectorV3::EnvoyInternalAddress::Representation
      
          property :pipe, as: 'pipe', class: Google::Apis::TrafficdirectorV3::Pipe, decorator: Google::Apis::TrafficdirectorV3::Pipe::Representation
      
          property :socket_address, as: 'socketAddress', class: Google::Apis::TrafficdirectorV3::SocketAddress, decorator: Google::Apis::TrafficdirectorV3::SocketAddress::Representation
      
        end
      end
      
      class BuildVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metadata, as: 'metadata'
          property :version, as: 'version', class: Google::Apis::TrafficdirectorV3::SemanticVersion, decorator: Google::Apis::TrafficdirectorV3::SemanticVersion::Representation
      
        end
      end
      
      class ClientConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :generic_xds_configs, as: 'genericXdsConfigs', class: Google::Apis::TrafficdirectorV3::GenericXdsConfig, decorator: Google::Apis::TrafficdirectorV3::GenericXdsConfig::Representation
      
          property :node, as: 'node', class: Google::Apis::TrafficdirectorV3::Node, decorator: Google::Apis::TrafficdirectorV3::Node::Representation
      
          collection :xds_config, as: 'xdsConfig', class: Google::Apis::TrafficdirectorV3::PerXdsConfig, decorator: Google::Apis::TrafficdirectorV3::PerXdsConfig::Representation
      
        end
      end
      
      class ClientStatusRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude_resource_contents, as: 'excludeResourceContents'
          property :node, as: 'node', class: Google::Apis::TrafficdirectorV3::Node, decorator: Google::Apis::TrafficdirectorV3::Node::Representation
      
          collection :node_matchers, as: 'nodeMatchers', class: Google::Apis::TrafficdirectorV3::NodeMatcher, decorator: Google::Apis::TrafficdirectorV3::NodeMatcher::Representation
      
        end
      end
      
      class ClientStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :config, as: 'config', class: Google::Apis::TrafficdirectorV3::ClientConfig, decorator: Google::Apis::TrafficdirectorV3::ClientConfig::Representation
      
        end
      end
      
      class ClustersConfigDump
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dynamic_active_clusters, as: 'dynamicActiveClusters', class: Google::Apis::TrafficdirectorV3::DynamicCluster, decorator: Google::Apis::TrafficdirectorV3::DynamicCluster::Representation
      
          collection :dynamic_warming_clusters, as: 'dynamicWarmingClusters', class: Google::Apis::TrafficdirectorV3::DynamicCluster, decorator: Google::Apis::TrafficdirectorV3::DynamicCluster::Representation
      
          collection :static_clusters, as: 'staticClusters', class: Google::Apis::TrafficdirectorV3::StaticCluster, decorator: Google::Apis::TrafficdirectorV3::StaticCluster::Representation
      
          property :version_info, as: 'versionInfo'
        end
      end
      
      class ContextParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :params, as: 'params'
        end
      end
      
      class DoubleMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact, as: 'exact'
          property :range, as: 'range', class: Google::Apis::TrafficdirectorV3::DoubleRange, decorator: Google::Apis::TrafficdirectorV3::DoubleRange::Representation
      
        end
      end
      
      class DoubleRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :start, as: 'start'
        end
      end
      
      class DynamicCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_status, as: 'clientStatus'
          hash :cluster, as: 'cluster'
          property :error_state, as: 'errorState', class: Google::Apis::TrafficdirectorV3::UpdateFailureState, decorator: Google::Apis::TrafficdirectorV3::UpdateFailureState::Representation
      
          property :last_updated, as: 'lastUpdated'
          property :version_info, as: 'versionInfo'
        end
      end
      
      class DynamicEndpointConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_status, as: 'clientStatus'
          hash :endpoint_config, as: 'endpointConfig'
          property :error_state, as: 'errorState', class: Google::Apis::TrafficdirectorV3::UpdateFailureState, decorator: Google::Apis::TrafficdirectorV3::UpdateFailureState::Representation
      
          property :last_updated, as: 'lastUpdated'
          property :version_info, as: 'versionInfo'
        end
      end
      
      class DynamicListener
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_state, as: 'activeState', class: Google::Apis::TrafficdirectorV3::DynamicListenerState, decorator: Google::Apis::TrafficdirectorV3::DynamicListenerState::Representation
      
          property :client_status, as: 'clientStatus'
          property :draining_state, as: 'drainingState', class: Google::Apis::TrafficdirectorV3::DynamicListenerState, decorator: Google::Apis::TrafficdirectorV3::DynamicListenerState::Representation
      
          property :error_state, as: 'errorState', class: Google::Apis::TrafficdirectorV3::UpdateFailureState, decorator: Google::Apis::TrafficdirectorV3::UpdateFailureState::Representation
      
          property :name, as: 'name'
          property :warming_state, as: 'warmingState', class: Google::Apis::TrafficdirectorV3::DynamicListenerState, decorator: Google::Apis::TrafficdirectorV3::DynamicListenerState::Representation
      
        end
      end
      
      class DynamicListenerState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_updated, as: 'lastUpdated'
          hash :listener, as: 'listener'
          property :version_info, as: 'versionInfo'
        end
      end
      
      class DynamicRouteConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_status, as: 'clientStatus'
          property :error_state, as: 'errorState', class: Google::Apis::TrafficdirectorV3::UpdateFailureState, decorator: Google::Apis::TrafficdirectorV3::UpdateFailureState::Representation
      
          property :last_updated, as: 'lastUpdated'
          hash :route_config, as: 'routeConfig'
          property :version_info, as: 'versionInfo'
        end
      end
      
      class DynamicScopedRouteConfigs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_status, as: 'clientStatus'
          property :error_state, as: 'errorState', class: Google::Apis::TrafficdirectorV3::UpdateFailureState, decorator: Google::Apis::TrafficdirectorV3::UpdateFailureState::Representation
      
          property :last_updated, as: 'lastUpdated'
          property :name, as: 'name'
          collection :scoped_route_configs, as: 'scopedRouteConfigs'
          property :version_info, as: 'versionInfo'
        end
      end
      
      class EndpointsConfigDump
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dynamic_endpoint_configs, as: 'dynamicEndpointConfigs', class: Google::Apis::TrafficdirectorV3::DynamicEndpointConfig, decorator: Google::Apis::TrafficdirectorV3::DynamicEndpointConfig::Representation
      
          collection :static_endpoint_configs, as: 'staticEndpointConfigs', class: Google::Apis::TrafficdirectorV3::StaticEndpointConfig, decorator: Google::Apis::TrafficdirectorV3::StaticEndpointConfig::Representation
      
        end
      end
      
      class EnvoyInternalAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint_id, as: 'endpointId'
          property :server_listener_name, as: 'serverListenerName'
        end
      end
      
      class Extension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :disabled, as: 'disabled'
          property :name, as: 'name'
          property :type_descriptor, as: 'typeDescriptor'
          collection :type_urls, as: 'typeUrls'
          property :version, as: 'version', class: Google::Apis::TrafficdirectorV3::BuildVersion, decorator: Google::Apis::TrafficdirectorV3::BuildVersion::Representation
      
        end
      end
      
      class GenericXdsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_status, as: 'clientStatus'
          property :config_status, as: 'configStatus'
          property :error_state, as: 'errorState', class: Google::Apis::TrafficdirectorV3::UpdateFailureState, decorator: Google::Apis::TrafficdirectorV3::UpdateFailureState::Representation
      
          property :is_static_resource, as: 'isStaticResource'
          property :last_updated, as: 'lastUpdated'
          property :name, as: 'name'
          property :type_url, as: 'typeUrl'
          property :version_info, as: 'versionInfo'
          hash :xds_config, as: 'xdsConfig'
        end
      end
      
      class GoogleRe2
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_program_size, as: 'maxProgramSize'
        end
      end
      
      class InlineScopedRouteConfigs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_updated, as: 'lastUpdated'
          property :name, as: 'name'
          collection :scoped_route_configs, as: 'scopedRouteConfigs'
        end
      end
      
      class ListMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :one_of, as: 'oneOf', class: Google::Apis::TrafficdirectorV3::ValueMatcher, decorator: Google::Apis::TrafficdirectorV3::ValueMatcher::Representation
      
        end
      end
      
      class ListenersConfigDump
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dynamic_listeners, as: 'dynamicListeners', class: Google::Apis::TrafficdirectorV3::DynamicListener, decorator: Google::Apis::TrafficdirectorV3::DynamicListener::Representation
      
          collection :static_listeners, as: 'staticListeners', class: Google::Apis::TrafficdirectorV3::StaticListener, decorator: Google::Apis::TrafficdirectorV3::StaticListener::Representation
      
          property :version_info, as: 'versionInfo'
        end
      end
      
      class Locality
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region, as: 'region'
          property :sub_zone, as: 'subZone'
          property :zone, as: 'zone'
        end
      end
      
      class Node
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :client_features, as: 'clientFeatures'
          property :cluster, as: 'cluster'
          hash :dynamic_parameters, as: 'dynamicParameters', class: Google::Apis::TrafficdirectorV3::ContextParams, decorator: Google::Apis::TrafficdirectorV3::ContextParams::Representation
      
          collection :extensions, as: 'extensions', class: Google::Apis::TrafficdirectorV3::Extension, decorator: Google::Apis::TrafficdirectorV3::Extension::Representation
      
          property :id, as: 'id'
          collection :listening_addresses, as: 'listeningAddresses', class: Google::Apis::TrafficdirectorV3::Address, decorator: Google::Apis::TrafficdirectorV3::Address::Representation
      
          property :locality, as: 'locality', class: Google::Apis::TrafficdirectorV3::Locality, decorator: Google::Apis::TrafficdirectorV3::Locality::Representation
      
          hash :metadata, as: 'metadata'
          property :user_agent_build_version, as: 'userAgentBuildVersion', class: Google::Apis::TrafficdirectorV3::BuildVersion, decorator: Google::Apis::TrafficdirectorV3::BuildVersion::Representation
      
          property :user_agent_name, as: 'userAgentName'
          property :user_agent_version, as: 'userAgentVersion'
        end
      end
      
      class NodeMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_id, as: 'nodeId', class: Google::Apis::TrafficdirectorV3::StringMatcher, decorator: Google::Apis::TrafficdirectorV3::StringMatcher::Representation
      
          collection :node_metadatas, as: 'nodeMetadatas', class: Google::Apis::TrafficdirectorV3::StructMatcher, decorator: Google::Apis::TrafficdirectorV3::StructMatcher::Representation
      
        end
      end
      
      class NullMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class OrMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :value_matchers, as: 'valueMatchers', class: Google::Apis::TrafficdirectorV3::ValueMatcher, decorator: Google::Apis::TrafficdirectorV3::ValueMatcher::Representation
      
        end
      end
      
      class PathSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
        end
      end
      
      class PerXdsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_status, as: 'clientStatus'
          property :cluster_config, as: 'clusterConfig', class: Google::Apis::TrafficdirectorV3::ClustersConfigDump, decorator: Google::Apis::TrafficdirectorV3::ClustersConfigDump::Representation
      
          property :endpoint_config, as: 'endpointConfig', class: Google::Apis::TrafficdirectorV3::EndpointsConfigDump, decorator: Google::Apis::TrafficdirectorV3::EndpointsConfigDump::Representation
      
          property :listener_config, as: 'listenerConfig', class: Google::Apis::TrafficdirectorV3::ListenersConfigDump, decorator: Google::Apis::TrafficdirectorV3::ListenersConfigDump::Representation
      
          property :route_config, as: 'routeConfig', class: Google::Apis::TrafficdirectorV3::RoutesConfigDump, decorator: Google::Apis::TrafficdirectorV3::RoutesConfigDump::Representation
      
          property :scoped_route_config, as: 'scopedRouteConfig', class: Google::Apis::TrafficdirectorV3::ScopedRoutesConfigDump, decorator: Google::Apis::TrafficdirectorV3::ScopedRoutesConfigDump::Representation
      
          property :status, as: 'status'
        end
      end
      
      class Pipe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :path, as: 'path'
        end
      end
      
      class RegexMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_re2, as: 'googleRe2', class: Google::Apis::TrafficdirectorV3::GoogleRe2, decorator: Google::Apis::TrafficdirectorV3::GoogleRe2::Representation
      
          property :regex, as: 'regex'
        end
      end
      
      class RoutesConfigDump
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dynamic_route_configs, as: 'dynamicRouteConfigs', class: Google::Apis::TrafficdirectorV3::DynamicRouteConfig, decorator: Google::Apis::TrafficdirectorV3::DynamicRouteConfig::Representation
      
          collection :static_route_configs, as: 'staticRouteConfigs', class: Google::Apis::TrafficdirectorV3::StaticRouteConfig, decorator: Google::Apis::TrafficdirectorV3::StaticRouteConfig::Representation
      
        end
      end
      
      class ScopedRoutesConfigDump
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dynamic_scoped_route_configs, as: 'dynamicScopedRouteConfigs', class: Google::Apis::TrafficdirectorV3::DynamicScopedRouteConfigs, decorator: Google::Apis::TrafficdirectorV3::DynamicScopedRouteConfigs::Representation
      
          collection :inline_scoped_route_configs, as: 'inlineScopedRouteConfigs', class: Google::Apis::TrafficdirectorV3::InlineScopedRouteConfigs, decorator: Google::Apis::TrafficdirectorV3::InlineScopedRouteConfigs::Representation
      
        end
      end
      
      class SemanticVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :major_number, as: 'majorNumber'
          property :minor_number, as: 'minorNumber'
          property :patch, as: 'patch'
        end
      end
      
      class SocketAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :ipv4_compat, as: 'ipv4Compat'
          property :named_port, as: 'namedPort'
          property :port_value, as: 'portValue'
          property :protocol, as: 'protocol'
          property :resolver_name, as: 'resolverName'
        end
      end
      
      class StaticCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :cluster, as: 'cluster'
          property :last_updated, as: 'lastUpdated'
        end
      end
      
      class StaticEndpointConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :endpoint_config, as: 'endpointConfig'
          property :last_updated, as: 'lastUpdated'
        end
      end
      
      class StaticListener
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_updated, as: 'lastUpdated'
          hash :listener, as: 'listener'
        end
      end
      
      class StaticRouteConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_updated, as: 'lastUpdated'
          hash :route_config, as: 'routeConfig'
        end
      end
      
      class StringMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contains, as: 'contains'
          property :exact, as: 'exact'
          property :ignore_case, as: 'ignoreCase'
          property :prefix, as: 'prefix'
          property :safe_regex, as: 'safeRegex', class: Google::Apis::TrafficdirectorV3::RegexMatcher, decorator: Google::Apis::TrafficdirectorV3::RegexMatcher::Representation
      
          property :suffix, as: 'suffix'
        end
      end
      
      class StructMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :path, as: 'path', class: Google::Apis::TrafficdirectorV3::PathSegment, decorator: Google::Apis::TrafficdirectorV3::PathSegment::Representation
      
          property :value, as: 'value', class: Google::Apis::TrafficdirectorV3::ValueMatcher, decorator: Google::Apis::TrafficdirectorV3::ValueMatcher::Representation
      
        end
      end
      
      class UpdateFailureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          hash :failed_configuration, as: 'failedConfiguration'
          property :last_update_attempt, as: 'lastUpdateAttempt'
          property :version_info, as: 'versionInfo'
        end
      end
      
      class ValueMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_match, as: 'boolMatch'
          property :double_match, as: 'doubleMatch', class: Google::Apis::TrafficdirectorV3::DoubleMatcher, decorator: Google::Apis::TrafficdirectorV3::DoubleMatcher::Representation
      
          property :list_match, as: 'listMatch', class: Google::Apis::TrafficdirectorV3::ListMatcher, decorator: Google::Apis::TrafficdirectorV3::ListMatcher::Representation
      
          property :null_match, as: 'nullMatch', class: Google::Apis::TrafficdirectorV3::NullMatch, decorator: Google::Apis::TrafficdirectorV3::NullMatch::Representation
      
          property :or_match, as: 'orMatch', class: Google::Apis::TrafficdirectorV3::OrMatcher, decorator: Google::Apis::TrafficdirectorV3::OrMatcher::Representation
      
          property :present_match, as: 'presentMatch'
          property :string_match, as: 'stringMatch', class: Google::Apis::TrafficdirectorV3::StringMatcher, decorator: Google::Apis::TrafficdirectorV3::StringMatcher::Representation
      
        end
      end
    end
  end
end
