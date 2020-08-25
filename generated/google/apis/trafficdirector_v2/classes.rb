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
    module TrafficdirectorV2
      
      # Addresses specify either a logical or physical address and port, which are
      # used to tell Envoy where to bind/listen, connect to upstream and find
      # management servers.
      class Address
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `pipe`
        # @return [Google::Apis::TrafficdirectorV2::Pipe]
        attr_accessor :pipe
      
        # [#next-free-field: 7]
        # Corresponds to the JSON property `socketAddress`
        # @return [Google::Apis::TrafficdirectorV2::SocketAddress]
        attr_accessor :socket_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pipe = args[:pipe] if args.key?(:pipe)
          @socket_address = args[:socket_address] if args.key?(:socket_address)
        end
      end
      
      # BuildVersion combines SemVer version of extension with free-form build
      # information (i.e. 'alpha', 'private-build') as a set of strings.
      class BuildVersion
        include Google::Apis::Core::Hashable
      
        # Free-form build information. Envoy defines several well known keys in the
        # source/common/version/version.h file
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Envoy uses SemVer (https://semver.org/). Major/minor versions indicate
        # expected behaviors and APIs, the patch version field is used only for security
        # fixes and can be generally ignored.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::TrafficdirectorV2::SemanticVersion]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # All xds configs for a particular client.
      class ClientConfig
        include Google::Apis::Core::Hashable
      
        # Identifies a specific Envoy instance. The node identifier is presented to the
        # management server, which may use this identifier to distinguish per Envoy
        # configuration for serving. [#next-free-field: 12]
        # Corresponds to the JSON property `node`
        # @return [Google::Apis::TrafficdirectorV2::Node]
        attr_accessor :node
      
        # 
        # Corresponds to the JSON property `xdsConfig`
        # @return [Array<Google::Apis::TrafficdirectorV2::PerXdsConfig>]
        attr_accessor :xds_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node = args[:node] if args.key?(:node)
          @xds_config = args[:xds_config] if args.key?(:xds_config)
        end
      end
      
      # Request for client status of clients identified by a list of NodeMatchers.
      class ClientStatusRequest
        include Google::Apis::Core::Hashable
      
        # Management server can use these match criteria to identify clients. The match
        # follows OR semantics.
        # Corresponds to the JSON property `nodeMatchers`
        # @return [Array<Google::Apis::TrafficdirectorV2::NodeMatcher>]
        attr_accessor :node_matchers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_matchers = args[:node_matchers] if args.key?(:node_matchers)
        end
      end
      
      # 
      class ClientStatusResponse
        include Google::Apis::Core::Hashable
      
        # Client configs for the clients specified in the ClientStatusRequest.
        # Corresponds to the JSON property `config`
        # @return [Array<Google::Apis::TrafficdirectorV2::ClientConfig>]
        attr_accessor :config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
        end
      end
      
      # Envoy's cluster manager fills this message with all currently known clusters.
      # Cluster configuration information can be used to recreate an Envoy
      # configuration by populating all clusters as static clusters or by returning
      # them in a CDS response.
      class ClustersConfigDump
        include Google::Apis::Core::Hashable
      
        # The dynamically loaded active clusters. These are clusters that are available
        # to service data plane traffic.
        # Corresponds to the JSON property `dynamicActiveClusters`
        # @return [Array<Google::Apis::TrafficdirectorV2::DynamicCluster>]
        attr_accessor :dynamic_active_clusters
      
        # The dynamically loaded warming clusters. These are clusters that are currently
        # undergoing warming in preparation to service data plane traffic. Note that if
        # attempting to recreate an Envoy configuration from a configuration dump, the
        # warming clusters should generally be discarded.
        # Corresponds to the JSON property `dynamicWarmingClusters`
        # @return [Array<Google::Apis::TrafficdirectorV2::DynamicCluster>]
        attr_accessor :dynamic_warming_clusters
      
        # The statically loaded cluster configs.
        # Corresponds to the JSON property `staticClusters`
        # @return [Array<Google::Apis::TrafficdirectorV2::StaticCluster>]
        attr_accessor :static_clusters
      
        # This is the :ref:`version_info ` in the last processed CDS discovery response.
        # If there are only static bootstrap clusters, this field will be "".
        # Corresponds to the JSON property `versionInfo`
        # @return [String]
        attr_accessor :version_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_active_clusters = args[:dynamic_active_clusters] if args.key?(:dynamic_active_clusters)
          @dynamic_warming_clusters = args[:dynamic_warming_clusters] if args.key?(:dynamic_warming_clusters)
          @static_clusters = args[:static_clusters] if args.key?(:static_clusters)
          @version_info = args[:version_info] if args.key?(:version_info)
        end
      end
      
      # Specifies the way to match a double value.
      class DoubleMatcher
        include Google::Apis::Core::Hashable
      
        # If specified, the input double value must be equal to the value specified here.
        # Corresponds to the JSON property `exact`
        # @return [Float]
        attr_accessor :exact
      
        # Specifies the double start and end of the range using half-open interval
        # semantics [start, end).
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::TrafficdirectorV2::DoubleRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exact = args[:exact] if args.key?(:exact)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # Specifies the double start and end of the range using half-open interval
      # semantics [start, end).
      class DoubleRange
        include Google::Apis::Core::Hashable
      
        # end of the range (exclusive)
        # Corresponds to the JSON property `end`
        # @return [Float]
        attr_accessor :end
      
        # start of the range (inclusive)
        # Corresponds to the JSON property `start`
        # @return [Float]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Describes a dynamically loaded cluster via the CDS API.
      class DynamicCluster
        include Google::Apis::Core::Hashable
      
        # The cluster config.
        # Corresponds to the JSON property `cluster`
        # @return [Hash<String,Object>]
        attr_accessor :cluster
      
        # The timestamp when the Cluster was last updated.
        # Corresponds to the JSON property `lastUpdated`
        # @return [String]
        attr_accessor :last_updated
      
        # This is the per-resource version information. This version is currently taken
        # from the :ref:`version_info ` field at the time that the cluster was loaded.
        # In the future, discrete per-cluster versions may be supported by the API.
        # Corresponds to the JSON property `versionInfo`
        # @return [String]
        attr_accessor :version_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @last_updated = args[:last_updated] if args.key?(:last_updated)
          @version_info = args[:version_info] if args.key?(:version_info)
        end
      end
      
      # Describes a dynamically loaded listener via the LDS API. [#next-free-field: 6]
      class DynamicListener
        include Google::Apis::Core::Hashable
      
        # The listener state for any active listener by this name. These are listeners
        # that are available to service data plane traffic.
        # Corresponds to the JSON property `activeState`
        # @return [Google::Apis::TrafficdirectorV2::DynamicListenerState]
        attr_accessor :active_state
      
        # The listener state for any draining listener by this name. These are listeners
        # that are currently undergoing draining in preparation to stop servicing data
        # plane traffic. Note that if attempting to recreate an Envoy configuration from
        # a configuration dump, the draining listeners should generally be discarded.
        # Corresponds to the JSON property `drainingState`
        # @return [Google::Apis::TrafficdirectorV2::DynamicListenerState]
        attr_accessor :draining_state
      
        # Set if the last update failed, cleared after the next successful update.
        # Corresponds to the JSON property `errorState`
        # @return [Google::Apis::TrafficdirectorV2::UpdateFailureState]
        attr_accessor :error_state
      
        # The name or unique id of this listener, pulled from the DynamicListenerState
        # config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The listener state for any warming listener by this name. These are listeners
        # that are currently undergoing warming in preparation to service data plane
        # traffic. Note that if attempting to recreate an Envoy configuration from a
        # configuration dump, the warming listeners should generally be discarded.
        # Corresponds to the JSON property `warmingState`
        # @return [Google::Apis::TrafficdirectorV2::DynamicListenerState]
        attr_accessor :warming_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_state = args[:active_state] if args.key?(:active_state)
          @draining_state = args[:draining_state] if args.key?(:draining_state)
          @error_state = args[:error_state] if args.key?(:error_state)
          @name = args[:name] if args.key?(:name)
          @warming_state = args[:warming_state] if args.key?(:warming_state)
        end
      end
      
      # 
      class DynamicListenerState
        include Google::Apis::Core::Hashable
      
        # The timestamp when the Listener was last successfully updated.
        # Corresponds to the JSON property `lastUpdated`
        # @return [String]
        attr_accessor :last_updated
      
        # The listener config.
        # Corresponds to the JSON property `listener`
        # @return [Hash<String,Object>]
        attr_accessor :listener
      
        # This is the per-resource version information. This version is currently taken
        # from the :ref:`version_info ` field at the time that the listener was loaded.
        # In the future, discrete per-listener versions may be supported by the API.
        # Corresponds to the JSON property `versionInfo`
        # @return [String]
        attr_accessor :version_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_updated = args[:last_updated] if args.key?(:last_updated)
          @listener = args[:listener] if args.key?(:listener)
          @version_info = args[:version_info] if args.key?(:version_info)
        end
      end
      
      # 
      class DynamicRouteConfig
        include Google::Apis::Core::Hashable
      
        # The timestamp when the Route was last updated.
        # Corresponds to the JSON property `lastUpdated`
        # @return [String]
        attr_accessor :last_updated
      
        # The route config.
        # Corresponds to the JSON property `routeConfig`
        # @return [Hash<String,Object>]
        attr_accessor :route_config
      
        # This is the per-resource version information. This version is currently taken
        # from the :ref:`version_info ` field at the time that the route configuration
        # was loaded.
        # Corresponds to the JSON property `versionInfo`
        # @return [String]
        attr_accessor :version_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_updated = args[:last_updated] if args.key?(:last_updated)
          @route_config = args[:route_config] if args.key?(:route_config)
          @version_info = args[:version_info] if args.key?(:version_info)
        end
      end
      
      # 
      class DynamicScopedRouteConfigs
        include Google::Apis::Core::Hashable
      
        # The timestamp when the scoped route config set was last updated.
        # Corresponds to the JSON property `lastUpdated`
        # @return [String]
        attr_accessor :last_updated
      
        # The name assigned to the scoped route configurations.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The scoped route configurations.
        # Corresponds to the JSON property `scopedRouteConfigs`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :scoped_route_configs
      
        # This is the per-resource version information. This version is currently taken
        # from the :ref:`version_info ` field at the time that the scoped routes
        # configuration was loaded.
        # Corresponds to the JSON property `versionInfo`
        # @return [String]
        attr_accessor :version_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_updated = args[:last_updated] if args.key?(:last_updated)
          @name = args[:name] if args.key?(:name)
          @scoped_route_configs = args[:scoped_route_configs] if args.key?(:scoped_route_configs)
          @version_info = args[:version_info] if args.key?(:version_info)
        end
      end
      
      # Version and identification for an Envoy extension. [#next-free-field: 6]
      class Extension
        include Google::Apis::Core::Hashable
      
        # Category of the extension. Extension category names use reverse DNS notation.
        # For instance "envoy.filters.listener" for Envoy's built-in listener filters or
        # "com.acme.filters.http" for HTTP filters from acme.com vendor. [#comment:
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Indicates that the extension is present but was disabled via dynamic
        # configuration.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # This is the name of the Envoy filter as specified in the Envoy configuration,
        # e.g. envoy.filters.http.router, com.acme.widget.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [#not-implemented-hide:] Type descriptor of extension configuration proto. [#
        # comment:
        # Corresponds to the JSON property `typeDescriptor`
        # @return [String]
        attr_accessor :type_descriptor
      
        # BuildVersion combines SemVer version of extension with free-form build
        # information (i.e. 'alpha', 'private-build') as a set of strings.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::TrafficdirectorV2::BuildVersion]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @disabled = args[:disabled] if args.key?(:disabled)
          @name = args[:name] if args.key?(:name)
          @type_descriptor = args[:type_descriptor] if args.key?(:type_descriptor)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Google's `RE2 `_ regex engine. The regex string must adhere to the documented `
      # syntax `_. The engine is designed to complete execution in linear time as well
      # as limit the amount of memory used. Envoy supports program size checking via
      # runtime. The runtime keys `re2.max_program_size.error_level` and `re2.
      # max_program_size.warn_level` can be set to integers as the maximum program
      # size or complexity that a compiled regex can have before an exception is
      # thrown or a warning is logged, respectively. `re2.max_program_size.error_level`
      # defaults to 100, and `re2.max_program_size.warn_level` has no default if
      # unset (will not check/log a warning). Envoy emits two stats for tracking the
      # program size of regexes: the histogram `re2.program_size`, which records the
      # program size, and the counter `re2.exceeded_warn_level`, which is incremented
      # each time the program size exceeds the warn level threshold.
      class GoogleRe2
        include Google::Apis::Core::Hashable
      
        # This field controls the RE2 "program size" which is a rough estimate of how
        # complex a compiled regex is to evaluate. A regex that has a program size
        # greater than the configured value will fail to compile. In this case, the
        # configured max program size can be increased or the regex can be simplified.
        # If not specified, the default is 100. This field is deprecated; regexp
        # validation should be performed on the management server instead of being done
        # by each individual client.
        # Corresponds to the JSON property `maxProgramSize`
        # @return [Fixnum]
        attr_accessor :max_program_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_program_size = args[:max_program_size] if args.key?(:max_program_size)
        end
      end
      
      # 
      class InlineScopedRouteConfigs
        include Google::Apis::Core::Hashable
      
        # The timestamp when the scoped route config set was last updated.
        # Corresponds to the JSON property `lastUpdated`
        # @return [String]
        attr_accessor :last_updated
      
        # The name assigned to the scoped route configurations.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The scoped route configurations.
        # Corresponds to the JSON property `scopedRouteConfigs`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :scoped_route_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_updated = args[:last_updated] if args.key?(:last_updated)
          @name = args[:name] if args.key?(:name)
          @scoped_route_configs = args[:scoped_route_configs] if args.key?(:scoped_route_configs)
        end
      end
      
      # Specifies the way to match a list value.
      class ListMatcher
        include Google::Apis::Core::Hashable
      
        # Specifies the way to match a ProtobufWkt::Value. Primitive values and
        # ListValue are supported. StructValue is not supported and is always not
        # matched. [#next-free-field: 7]
        # Corresponds to the JSON property `oneOf`
        # @return [Google::Apis::TrafficdirectorV2::ValueMatcher]
        attr_accessor :one_of
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @one_of = args[:one_of] if args.key?(:one_of)
        end
      end
      
      # Envoy's listener manager fills this message with all currently known listeners.
      # Listener configuration information can be used to recreate an Envoy
      # configuration by populating all listeners as static listeners or by returning
      # them in a LDS response.
      class ListenersConfigDump
        include Google::Apis::Core::Hashable
      
        # State for any warming, active, or draining listeners.
        # Corresponds to the JSON property `dynamicListeners`
        # @return [Array<Google::Apis::TrafficdirectorV2::DynamicListener>]
        attr_accessor :dynamic_listeners
      
        # The statically loaded listener configs.
        # Corresponds to the JSON property `staticListeners`
        # @return [Array<Google::Apis::TrafficdirectorV2::StaticListener>]
        attr_accessor :static_listeners
      
        # This is the :ref:`version_info ` in the last processed LDS discovery response.
        # If there are only static bootstrap listeners, this field will be "".
        # Corresponds to the JSON property `versionInfo`
        # @return [String]
        attr_accessor :version_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_listeners = args[:dynamic_listeners] if args.key?(:dynamic_listeners)
          @static_listeners = args[:static_listeners] if args.key?(:static_listeners)
          @version_info = args[:version_info] if args.key?(:version_info)
        end
      end
      
      # Identifies location of where either Envoy runs or where upstream hosts run.
      class Locality
        include Google::Apis::Core::Hashable
      
        # Region this :ref:`zone ` belongs to.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # When used for locality of upstream hosts, this field further splits zone into
        # smaller chunks of sub-zones so they can be load balanced independently.
        # Corresponds to the JSON property `subZone`
        # @return [String]
        attr_accessor :sub_zone
      
        # Defines the local service zone where Envoy is running. Though optional, it
        # should be set if discovery service routing is used and the discovery service
        # exposes :ref:`zone data `, either in this message or via :option:`--service-
        # zone`. The meaning of zone is context dependent, e.g. `Availability Zone (AZ) `
        # _ on AWS, `Zone `_ on GCP, etc.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
          @sub_zone = args[:sub_zone] if args.key?(:sub_zone)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Identifies a specific Envoy instance. The node identifier is presented to the
      # management server, which may use this identifier to distinguish per Envoy
      # configuration for serving. [#next-free-field: 12]
      class Node
        include Google::Apis::Core::Hashable
      
        # This is motivated by informing a management server during canary which version
        # of Envoy is being tested in a heterogeneous fleet. This will be set by Envoy
        # in management server RPCs. This field is deprecated in favor of the
        # user_agent_name and user_agent_version values.
        # Corresponds to the JSON property `buildVersion`
        # @return [String]
        attr_accessor :build_version
      
        # Client feature support list. These are well known features described in the
        # Envoy API repository for a given major version of an API. Client features use
        # reverse DNS naming scheme, for example `com.acme.feature`. See :ref:`the list
        # of features ` that xDS client may support.
        # Corresponds to the JSON property `clientFeatures`
        # @return [Array<String>]
        attr_accessor :client_features
      
        # Defines the local service cluster name where Envoy is running. Though optional,
        # it should be set if any of the following features are used: :ref:`statsd `, :
        # ref:`health check cluster verification `, :ref:`runtime override directory `, :
        # ref:`user agent addition `, :ref:`HTTP global rate limiting `, :ref:`CDS `,
        # and :ref:`HTTP tracing `, either in this message or via :option:`--service-
        # cluster`.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # List of extensions and their versions supported by the node.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Google::Apis::TrafficdirectorV2::Extension>]
        attr_accessor :extensions
      
        # An opaque node identifier for the Envoy node. This also provides the local
        # service node name. It should be set if any of the following features are used:
        # :ref:`statsd `, :ref:`CDS `, and :ref:`HTTP tracing `, either in this message
        # or via :option:`--service-node`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Known listening ports on the node as a generic hint to the management server
        # for filtering :ref:`listeners ` to be returned. For example, if there is a
        # listener bound to port 80, the list can optionally contain the SocketAddress `(
        # 0.0.0.0,80)`. The field is optional and just a hint.
        # Corresponds to the JSON property `listeningAddresses`
        # @return [Array<Google::Apis::TrafficdirectorV2::Address>]
        attr_accessor :listening_addresses
      
        # Identifies location of where either Envoy runs or where upstream hosts run.
        # Corresponds to the JSON property `locality`
        # @return [Google::Apis::TrafficdirectorV2::Locality]
        attr_accessor :locality
      
        # Opaque metadata extending the node identifier. Envoy will pass this directly
        # to the management server.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # BuildVersion combines SemVer version of extension with free-form build
        # information (i.e. 'alpha', 'private-build') as a set of strings.
        # Corresponds to the JSON property `userAgentBuildVersion`
        # @return [Google::Apis::TrafficdirectorV2::BuildVersion]
        attr_accessor :user_agent_build_version
      
        # Free-form string that identifies the entity requesting config. E.g. "envoy" or
        # "grpc"
        # Corresponds to the JSON property `userAgentName`
        # @return [String]
        attr_accessor :user_agent_name
      
        # Free-form string that identifies the version of the entity requesting config.
        # E.g. "1.12.2" or "abcd1234", or "SpecialEnvoyBuild"
        # Corresponds to the JSON property `userAgentVersion`
        # @return [String]
        attr_accessor :user_agent_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_version = args[:build_version] if args.key?(:build_version)
          @client_features = args[:client_features] if args.key?(:client_features)
          @cluster = args[:cluster] if args.key?(:cluster)
          @extensions = args[:extensions] if args.key?(:extensions)
          @id = args[:id] if args.key?(:id)
          @listening_addresses = args[:listening_addresses] if args.key?(:listening_addresses)
          @locality = args[:locality] if args.key?(:locality)
          @metadata = args[:metadata] if args.key?(:metadata)
          @user_agent_build_version = args[:user_agent_build_version] if args.key?(:user_agent_build_version)
          @user_agent_name = args[:user_agent_name] if args.key?(:user_agent_name)
          @user_agent_version = args[:user_agent_version] if args.key?(:user_agent_version)
        end
      end
      
      # Specifies the way to match a Node. The match follows AND semantics.
      class NodeMatcher
        include Google::Apis::Core::Hashable
      
        # Specifies the way to match a string. [#next-free-field: 7]
        # Corresponds to the JSON property `nodeId`
        # @return [Google::Apis::TrafficdirectorV2::StringMatcher]
        attr_accessor :node_id
      
        # Specifies match criteria on the node metadata.
        # Corresponds to the JSON property `nodeMetadatas`
        # @return [Array<Google::Apis::TrafficdirectorV2::StructMatcher>]
        attr_accessor :node_metadatas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_id = args[:node_id] if args.key?(:node_id)
          @node_metadatas = args[:node_metadatas] if args.key?(:node_metadatas)
        end
      end
      
      # NullMatch is an empty message to specify a null value.
      class NullMatch
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Specifies the segment in a path to retrieve value from Struct.
      class PathSegment
        include Google::Apis::Core::Hashable
      
        # If specified, use the key to retrieve the value in a Struct.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # Detailed config (per xDS) with status. [#next-free-field: 6]
      class PerXdsConfig
        include Google::Apis::Core::Hashable
      
        # Envoy's cluster manager fills this message with all currently known clusters.
        # Cluster configuration information can be used to recreate an Envoy
        # configuration by populating all clusters as static clusters or by returning
        # them in a CDS response.
        # Corresponds to the JSON property `clusterConfig`
        # @return [Google::Apis::TrafficdirectorV2::ClustersConfigDump]
        attr_accessor :cluster_config
      
        # Envoy's listener manager fills this message with all currently known listeners.
        # Listener configuration information can be used to recreate an Envoy
        # configuration by populating all listeners as static listeners or by returning
        # them in a LDS response.
        # Corresponds to the JSON property `listenerConfig`
        # @return [Google::Apis::TrafficdirectorV2::ListenersConfigDump]
        attr_accessor :listener_config
      
        # Envoy's RDS implementation fills this message with all currently loaded routes,
        # as described by their RouteConfiguration objects. Static routes that are
        # either defined in the bootstrap configuration or defined inline while
        # configuring listeners are separated from those configured dynamically via RDS.
        # Route configuration information can be used to recreate an Envoy configuration
        # by populating all routes as static routes or by returning them in RDS
        # responses.
        # Corresponds to the JSON property `routeConfig`
        # @return [Google::Apis::TrafficdirectorV2::RoutesConfigDump]
        attr_accessor :route_config
      
        # Envoy's scoped RDS implementation fills this message with all currently loaded
        # route configuration scopes (defined via ScopedRouteConfigurationsSet protos).
        # This message lists both the scopes defined inline with the higher order object
        # (i.e., the HttpConnectionManager) and the dynamically obtained scopes via the
        # SRDS API.
        # Corresponds to the JSON property `scopedRouteConfig`
        # @return [Google::Apis::TrafficdirectorV2::ScopedRoutesConfigDump]
        attr_accessor :scoped_route_config
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_config = args[:cluster_config] if args.key?(:cluster_config)
          @listener_config = args[:listener_config] if args.key?(:listener_config)
          @route_config = args[:route_config] if args.key?(:route_config)
          @scoped_route_config = args[:scoped_route_config] if args.key?(:scoped_route_config)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class Pipe
        include Google::Apis::Core::Hashable
      
        # The mode for the Pipe. Not applicable for abstract sockets.
        # Corresponds to the JSON property `mode`
        # @return [Fixnum]
        attr_accessor :mode
      
        # Unix Domain Socket path. On Linux, paths starting with '@' will use the
        # abstract namespace. The starting '@' is replaced by a null byte by Envoy.
        # Paths starting with '@' will result in an error in environments other than
        # Linux.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # A regex matcher designed for safety when used with untrusted input.
      class RegexMatcher
        include Google::Apis::Core::Hashable
      
        # Google's `RE2 `_ regex engine. The regex string must adhere to the documented `
        # syntax `_. The engine is designed to complete execution in linear time as well
        # as limit the amount of memory used. Envoy supports program size checking via
        # runtime. The runtime keys `re2.max_program_size.error_level` and `re2.
        # max_program_size.warn_level` can be set to integers as the maximum program
        # size or complexity that a compiled regex can have before an exception is
        # thrown or a warning is logged, respectively. `re2.max_program_size.error_level`
        # defaults to 100, and `re2.max_program_size.warn_level` has no default if
        # unset (will not check/log a warning). Envoy emits two stats for tracking the
        # program size of regexes: the histogram `re2.program_size`, which records the
        # program size, and the counter `re2.exceeded_warn_level`, which is incremented
        # each time the program size exceeds the warn level threshold.
        # Corresponds to the JSON property `googleRe2`
        # @return [Google::Apis::TrafficdirectorV2::GoogleRe2]
        attr_accessor :google_re2
      
        # The regex match string. The string must be supported by the configured engine.
        # Corresponds to the JSON property `regex`
        # @return [String]
        attr_accessor :regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_re2 = args[:google_re2] if args.key?(:google_re2)
          @regex = args[:regex] if args.key?(:regex)
        end
      end
      
      # Envoy's RDS implementation fills this message with all currently loaded routes,
      # as described by their RouteConfiguration objects. Static routes that are
      # either defined in the bootstrap configuration or defined inline while
      # configuring listeners are separated from those configured dynamically via RDS.
      # Route configuration information can be used to recreate an Envoy configuration
      # by populating all routes as static routes or by returning them in RDS
      # responses.
      class RoutesConfigDump
        include Google::Apis::Core::Hashable
      
        # The dynamically loaded route configs.
        # Corresponds to the JSON property `dynamicRouteConfigs`
        # @return [Array<Google::Apis::TrafficdirectorV2::DynamicRouteConfig>]
        attr_accessor :dynamic_route_configs
      
        # The statically loaded route configs.
        # Corresponds to the JSON property `staticRouteConfigs`
        # @return [Array<Google::Apis::TrafficdirectorV2::StaticRouteConfig>]
        attr_accessor :static_route_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_route_configs = args[:dynamic_route_configs] if args.key?(:dynamic_route_configs)
          @static_route_configs = args[:static_route_configs] if args.key?(:static_route_configs)
        end
      end
      
      # Envoy's scoped RDS implementation fills this message with all currently loaded
      # route configuration scopes (defined via ScopedRouteConfigurationsSet protos).
      # This message lists both the scopes defined inline with the higher order object
      # (i.e., the HttpConnectionManager) and the dynamically obtained scopes via the
      # SRDS API.
      class ScopedRoutesConfigDump
        include Google::Apis::Core::Hashable
      
        # The dynamically loaded scoped route configs.
        # Corresponds to the JSON property `dynamicScopedRouteConfigs`
        # @return [Array<Google::Apis::TrafficdirectorV2::DynamicScopedRouteConfigs>]
        attr_accessor :dynamic_scoped_route_configs
      
        # The statically loaded scoped route configs.
        # Corresponds to the JSON property `inlineScopedRouteConfigs`
        # @return [Array<Google::Apis::TrafficdirectorV2::InlineScopedRouteConfigs>]
        attr_accessor :inline_scoped_route_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_scoped_route_configs = args[:dynamic_scoped_route_configs] if args.key?(:dynamic_scoped_route_configs)
          @inline_scoped_route_configs = args[:inline_scoped_route_configs] if args.key?(:inline_scoped_route_configs)
        end
      end
      
      # Envoy uses SemVer (https://semver.org/). Major/minor versions indicate
      # expected behaviors and APIs, the patch version field is used only for security
      # fixes and can be generally ignored.
      class SemanticVersion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `majorNumber`
        # @return [Fixnum]
        attr_accessor :major_number
      
        # 
        # Corresponds to the JSON property `minorNumber`
        # @return [Fixnum]
        attr_accessor :minor_number
      
        # 
        # Corresponds to the JSON property `patch`
        # @return [Fixnum]
        attr_accessor :patch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @major_number = args[:major_number] if args.key?(:major_number)
          @minor_number = args[:minor_number] if args.key?(:minor_number)
          @patch = args[:patch] if args.key?(:patch)
        end
      end
      
      # [#next-free-field: 7]
      class SocketAddress
        include Google::Apis::Core::Hashable
      
        # The address for this socket. :ref:`Listeners ` will bind to the address. An
        # empty address is not allowed. Specify ``0.0.0.0`` or ``::`` to bind to any
        # address. [#comment:TODO(zuercher) reinstate when implemented: It is possible
        # to distinguish a Listener address via the prefix/suffix matching in :ref:`
        # FilterChainMatch `.] When used within an upstream :ref:`BindConfig `, the
        # address controls the source address of outbound connections. For :ref:`
        # clusters `, the cluster type determines whether the address must be an IP (*
        # STATIC* or *EDS* clusters) or a hostname resolved by DNS (*STRICT_DNS* or *
        # LOGICAL_DNS* clusters). Address resolution can be customized via :ref:`
        # resolver_name `.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # When binding to an IPv6 address above, this enables `IPv4 compatibility `_.
        # Binding to ``::`` will allow both IPv4 and IPv6 connections, with peer IPv4
        # addresses mapped into IPv6 space as ``::FFFF:``.
        # Corresponds to the JSON property `ipv4Compat`
        # @return [Boolean]
        attr_accessor :ipv4_compat
        alias_method :ipv4_compat?, :ipv4_compat
      
        # This is only valid if :ref:`resolver_name ` is specified below and the named
        # resolver is capable of named port resolution.
        # Corresponds to the JSON property `namedPort`
        # @return [String]
        attr_accessor :named_port
      
        # 
        # Corresponds to the JSON property `portValue`
        # @return [Fixnum]
        attr_accessor :port_value
      
        # 
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # The name of the custom resolver. This must have been registered with Envoy. If
        # this is empty, a context dependent default applies. If the address is a
        # concrete IP address, no resolution will occur. If address is a hostname this
        # should be set for resolution other than DNS. Specifying a custom resolver with
        # *STRICT_DNS* or *LOGICAL_DNS* will generate an error at runtime.
        # Corresponds to the JSON property `resolverName`
        # @return [String]
        attr_accessor :resolver_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @ipv4_compat = args[:ipv4_compat] if args.key?(:ipv4_compat)
          @named_port = args[:named_port] if args.key?(:named_port)
          @port_value = args[:port_value] if args.key?(:port_value)
          @protocol = args[:protocol] if args.key?(:protocol)
          @resolver_name = args[:resolver_name] if args.key?(:resolver_name)
        end
      end
      
      # Describes a statically loaded cluster.
      class StaticCluster
        include Google::Apis::Core::Hashable
      
        # The cluster config.
        # Corresponds to the JSON property `cluster`
        # @return [Hash<String,Object>]
        attr_accessor :cluster
      
        # The timestamp when the Cluster was last updated.
        # Corresponds to the JSON property `lastUpdated`
        # @return [String]
        attr_accessor :last_updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @last_updated = args[:last_updated] if args.key?(:last_updated)
        end
      end
      
      # Describes a statically loaded listener.
      class StaticListener
        include Google::Apis::Core::Hashable
      
        # The timestamp when the Listener was last successfully updated.
        # Corresponds to the JSON property `lastUpdated`
        # @return [String]
        attr_accessor :last_updated
      
        # The listener config.
        # Corresponds to the JSON property `listener`
        # @return [Hash<String,Object>]
        attr_accessor :listener
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_updated = args[:last_updated] if args.key?(:last_updated)
          @listener = args[:listener] if args.key?(:listener)
        end
      end
      
      # 
      class StaticRouteConfig
        include Google::Apis::Core::Hashable
      
        # The timestamp when the Route was last updated.
        # Corresponds to the JSON property `lastUpdated`
        # @return [String]
        attr_accessor :last_updated
      
        # The route config.
        # Corresponds to the JSON property `routeConfig`
        # @return [Hash<String,Object>]
        attr_accessor :route_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_updated = args[:last_updated] if args.key?(:last_updated)
          @route_config = args[:route_config] if args.key?(:route_config)
        end
      end
      
      # Specifies the way to match a string. [#next-free-field: 7]
      class StringMatcher
        include Google::Apis::Core::Hashable
      
        # The input string must match exactly the string specified here. Examples: * *
        # abc* only matches the value *abc*.
        # Corresponds to the JSON property `exact`
        # @return [String]
        attr_accessor :exact
      
        # If true, indicates the exact/prefix/suffix matching should be case insensitive.
        # This has no effect for the safe_regex match. For example, the matcher *data*
        # will match both input string *Data* and *data* if set to true.
        # Corresponds to the JSON property `ignoreCase`
        # @return [Boolean]
        attr_accessor :ignore_case
        alias_method :ignore_case?, :ignore_case
      
        # The input string must have the prefix specified here. Note: empty prefix is
        # not allowed, please use regex instead. Examples: * *abc* matches the value *
        # abc.xyz*
        # Corresponds to the JSON property `prefix`
        # @return [String]
        attr_accessor :prefix
      
        # The input string must match the regular expression specified here. The regex
        # grammar is defined `here `_. Examples: * The regex ``\d`3``` matches the value
        # *123* * The regex ``\d`3``` does not match the value *1234* * The regex ``\d`3`
        # `` does not match the value *123.456* .. attention:: This field has been
        # deprecated in favor of `safe_regex` as it is not safe for use with untrusted
        # input in all cases.
        # Corresponds to the JSON property `regex`
        # @return [String]
        attr_accessor :regex
      
        # A regex matcher designed for safety when used with untrusted input.
        # Corresponds to the JSON property `safeRegex`
        # @return [Google::Apis::TrafficdirectorV2::RegexMatcher]
        attr_accessor :safe_regex
      
        # The input string must have the suffix specified here. Note: empty prefix is
        # not allowed, please use regex instead. Examples: * *abc* matches the value *
        # xyz.abc*
        # Corresponds to the JSON property `suffix`
        # @return [String]
        attr_accessor :suffix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exact = args[:exact] if args.key?(:exact)
          @ignore_case = args[:ignore_case] if args.key?(:ignore_case)
          @prefix = args[:prefix] if args.key?(:prefix)
          @regex = args[:regex] if args.key?(:regex)
          @safe_regex = args[:safe_regex] if args.key?(:safe_regex)
          @suffix = args[:suffix] if args.key?(:suffix)
        end
      end
      
      # StructMatcher provides a general interface to check if a given value is
      # matched in google.protobuf.Struct. It uses `path` to retrieve the value from
      # the struct and then check if it's matched to the specified value. For example,
      # for the following Struct: .. code-block:: yaml fields: a: struct_value: fields:
      # b: struct_value: fields: c: string_value: pro t: list_value: values: -
      # string_value: m - string_value: n The following MetadataMatcher is matched as
      # the path [a, b, c] will retrieve a string value "pro" from the Metadata which
      # is matched to the specified prefix match. .. code-block:: yaml path: - key: a -
      # key: b - key: c value: string_match: prefix: pr The following StructMatcher
      # is matched as the code will match one of the string values in the list at the
      # path [a, t]. .. code-block:: yaml path: - key: a - key: t value: list_match:
      # one_of: string_match: exact: m An example use of StructMatcher is to match
      # metadata in envoy.v*.core.Node.
      class StructMatcher
        include Google::Apis::Core::Hashable
      
        # The path to retrieve the Value from the Struct.
        # Corresponds to the JSON property `path`
        # @return [Array<Google::Apis::TrafficdirectorV2::PathSegment>]
        attr_accessor :path
      
        # Specifies the way to match a ProtobufWkt::Value. Primitive values and
        # ListValue are supported. StructValue is not supported and is always not
        # matched. [#next-free-field: 7]
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::TrafficdirectorV2::ValueMatcher]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class UpdateFailureState
        include Google::Apis::Core::Hashable
      
        # Details about the last failed update attempt.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # What the component configuration would have been if the update had succeeded.
        # Corresponds to the JSON property `failedConfiguration`
        # @return [Hash<String,Object>]
        attr_accessor :failed_configuration
      
        # Time of the latest failed update attempt.
        # Corresponds to the JSON property `lastUpdateAttempt`
        # @return [String]
        attr_accessor :last_update_attempt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @failed_configuration = args[:failed_configuration] if args.key?(:failed_configuration)
          @last_update_attempt = args[:last_update_attempt] if args.key?(:last_update_attempt)
        end
      end
      
      # Specifies the way to match a ProtobufWkt::Value. Primitive values and
      # ListValue are supported. StructValue is not supported and is always not
      # matched. [#next-free-field: 7]
      class ValueMatcher
        include Google::Apis::Core::Hashable
      
        # If specified, a match occurs if and only if the target value is a bool value
        # and is equal to this field.
        # Corresponds to the JSON property `boolMatch`
        # @return [Boolean]
        attr_accessor :bool_match
        alias_method :bool_match?, :bool_match
      
        # Specifies the way to match a double value.
        # Corresponds to the JSON property `doubleMatch`
        # @return [Google::Apis::TrafficdirectorV2::DoubleMatcher]
        attr_accessor :double_match
      
        # Specifies the way to match a list value.
        # Corresponds to the JSON property `listMatch`
        # @return [Google::Apis::TrafficdirectorV2::ListMatcher]
        attr_accessor :list_match
      
        # NullMatch is an empty message to specify a null value.
        # Corresponds to the JSON property `nullMatch`
        # @return [Google::Apis::TrafficdirectorV2::NullMatch]
        attr_accessor :null_match
      
        # If specified, value match will be performed based on whether the path is
        # referring to a valid primitive value in the metadata. If the path is referring
        # to a non-primitive value, the result is always not matched.
        # Corresponds to the JSON property `presentMatch`
        # @return [Boolean]
        attr_accessor :present_match
        alias_method :present_match?, :present_match
      
        # Specifies the way to match a string. [#next-free-field: 7]
        # Corresponds to the JSON property `stringMatch`
        # @return [Google::Apis::TrafficdirectorV2::StringMatcher]
        attr_accessor :string_match
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_match = args[:bool_match] if args.key?(:bool_match)
          @double_match = args[:double_match] if args.key?(:double_match)
          @list_match = args[:list_match] if args.key?(:list_match)
          @null_match = args[:null_match] if args.key?(:null_match)
          @present_match = args[:present_match] if args.key?(:present_match)
          @string_match = args[:string_match] if args.key?(:string_match)
        end
      end
    end
  end
end
