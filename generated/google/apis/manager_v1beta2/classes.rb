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
    module ManagerV1beta2
      
      # A Compute Engine network accessConfig. Identical to the accessConfig on
      # corresponding Compute Engine resource.
      class AccessConfig
        include Google::Apis::Core::Hashable
      
        # Name of this access configuration.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An external IP address associated with this instance.
        # Corresponds to the JSON property `natIp`
        # @return [String]
        attr_accessor :nat_ip
      
        # Type of this access configuration file. (Currently only ONE_TO_ONE_NAT is
        # legal.)
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @nat_ip = args[:nat_ip] if args.key?(:nat_ip)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An Action encapsulates a set of commands as a single runnable module with
      # additional information needed during run-time.
      class Action
        include Google::Apis::Core::Hashable
      
        # A list of commands to run sequentially for this action.
        # Corresponds to the JSON property `commands`
        # @return [Array<String>]
        attr_accessor :commands
      
        # The timeout in milliseconds for this action to run.
        # Corresponds to the JSON property `timeoutMs`
        # @return [Fixnum]
        attr_accessor :timeout_ms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commands = args[:commands] if args.key?(:commands)
          @timeout_ms = args[:timeout_ms] if args.key?(:timeout_ms)
        end
      end
      
      # An allowed port resource.
      class AllowedRule
        include Google::Apis::Core::Hashable
      
        # ?tcp?, ?udp? or ?icmp?
        # Corresponds to the JSON property `IPProtocol`
        # @return [String]
        attr_accessor :ip_protocol
      
        # List of ports or port ranges (Example inputs include: ["22"], [?33?, "12345-
        # 12349"].
        # Corresponds to the JSON property `ports`
        # @return [Array<String>]
        attr_accessor :ports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_protocol = args[:ip_protocol] if args.key?(:ip_protocol)
          @ports = args[:ports] if args.key?(:ports)
        end
      end
      
      # 
      class AutoscalingModule
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `coolDownPeriodSec`
        # @return [Fixnum]
        attr_accessor :cool_down_period_sec
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `maxNumReplicas`
        # @return [Fixnum]
        attr_accessor :max_num_replicas
      
        # 
        # Corresponds to the JSON property `minNumReplicas`
        # @return [Fixnum]
        attr_accessor :min_num_replicas
      
        # 
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        # 
        # Corresponds to the JSON property `targetModule`
        # @return [String]
        attr_accessor :target_module
      
        # target_utilization should be in range [0,1].
        # Corresponds to the JSON property `targetUtilization`
        # @return [Float]
        attr_accessor :target_utilization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cool_down_period_sec = args[:cool_down_period_sec] if args.key?(:cool_down_period_sec)
          @description = args[:description] if args.key?(:description)
          @max_num_replicas = args[:max_num_replicas] if args.key?(:max_num_replicas)
          @min_num_replicas = args[:min_num_replicas] if args.key?(:min_num_replicas)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
          @target_module = args[:target_module] if args.key?(:target_module)
          @target_utilization = args[:target_utilization] if args.key?(:target_utilization)
        end
      end
      
      # 
      class AutoscalingModuleStatus
        include Google::Apis::Core::Hashable
      
        # [Output Only] The URL of the corresponding Autoscaling configuration.
        # Corresponds to the JSON property `autoscalingConfigUrl`
        # @return [String]
        attr_accessor :autoscaling_config_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_config_url = args[:autoscaling_config_url] if args.key?(:autoscaling_config_url)
        end
      end
      
      # [Output Only] The current state of a replica or module.
      class DeployState
        include Google::Apis::Core::Hashable
      
        # [Output Only] Human readable details about the current state.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # [Output Only] The status of the deployment. Possible values include:
        # - UNKNOWN
        # - DEPLOYING
        # - DEPLOYED
        # - DEPLOYMENT_FAILED
        # - DELETING
        # - DELETED
        # - DELETE_FAILED
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # A deployment represents a physical instantiation of a Template.
      class Deployment
        include Google::Apis::Core::Hashable
      
        # [Output Only] The time when this deployment was created.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # A user-supplied description of this Deployment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] List of status for the modules in this deployment.
        # Corresponds to the JSON property `modules`
        # @return [Hash<String,Google::Apis::ManagerV1beta2::ModuleStatus>]
        attr_accessor :modules
      
        # Name of this deployment. The name must conform to the following regular
        # expression: [a-zA-Z0-9-_]`1,64`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The set of parameter overrides to apply to the corresponding Template before
        # deploying.
        # Corresponds to the JSON property `overrides`
        # @return [Array<Google::Apis::ManagerV1beta2::ParamOverride>]
        attr_accessor :overrides
      
        # [Output Only] The current state of a replica or module.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::ManagerV1beta2::DeployState]
        attr_accessor :state
      
        # The name of the Template on which this deployment is based.
        # Corresponds to the JSON property `templateName`
        # @return [String]
        attr_accessor :template_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @description = args[:description] if args.key?(:description)
          @modules = args[:modules] if args.key?(:modules)
          @name = args[:name] if args.key?(:name)
          @overrides = args[:overrides] if args.key?(:overrides)
          @state = args[:state] if args.key?(:state)
          @template_name = args[:template_name] if args.key?(:template_name)
        end
      end
      
      # 
      class ListDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ManagerV1beta2::Deployment>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # How to attach a disk to a Replica.
      class DiskAttachment
        include Google::Apis::Core::Hashable
      
        # The device name of this disk.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        # A zero-based index to assign to this disk, where 0 is reserved for the boot
        # disk. If not specified, this is assigned by the server.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_name = args[:device_name] if args.key?(:device_name)
          @index = args[:index] if args.key?(:index)
        end
      end
      
      # An environment variable.
      class EnvVariable
        include Google::Apis::Core::Hashable
      
        # Whether this variable is hidden or visible.
        # Corresponds to the JSON property `hidden`
        # @return [Boolean]
        attr_accessor :hidden
        alias_method :hidden?, :hidden
      
        # Value of the environment variable.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hidden = args[:hidden] if args.key?(:hidden)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A pre-existing persistent disk that will be attached to every Replica in the
      # Pool.
      class ExistingDisk
        include Google::Apis::Core::Hashable
      
        # How to attach a disk to a Replica.
        # Corresponds to the JSON property `attachment`
        # @return [Google::Apis::ManagerV1beta2::DiskAttachment]
        attr_accessor :attachment
      
        # The fully-qualified URL of the Persistent Disk resource. It must be in the
        # same zone as the Pool.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment = args[:attachment] if args.key?(:attachment)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # A Firewall resource
      class FirewallModule
        include Google::Apis::Core::Hashable
      
        # The allowed ports or port ranges.
        # Corresponds to the JSON property `allowed`
        # @return [Array<Google::Apis::ManagerV1beta2::AllowedRule>]
        attr_accessor :allowed
      
        # The description of the firewall (optional)
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The NetworkModule to which this firewall should apply. If not specified, or if
        # specified as 'default', this firewall will be applied to the 'default' network.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Source IP ranges to apply this firewall to, see the GCE Spec for details on
        # syntax
        # Corresponds to the JSON property `sourceRanges`
        # @return [Array<String>]
        attr_accessor :source_ranges
      
        # Source Tags to apply this firewall to, see the GCE Spec for details on syntax
        # Corresponds to the JSON property `sourceTags`
        # @return [Array<String>]
        attr_accessor :source_tags
      
        # Target Tags to apply this firewall to, see the GCE Spec for details on syntax
        # Corresponds to the JSON property `targetTags`
        # @return [Array<String>]
        attr_accessor :target_tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed = args[:allowed] if args.key?(:allowed)
          @description = args[:description] if args.key?(:description)
          @network = args[:network] if args.key?(:network)
          @source_ranges = args[:source_ranges] if args.key?(:source_ranges)
          @source_tags = args[:source_tags] if args.key?(:source_tags)
          @target_tags = args[:target_tags] if args.key?(:target_tags)
        end
      end
      
      # 
      class FirewallModuleStatus
        include Google::Apis::Core::Hashable
      
        # [Output Only] The URL of the corresponding Firewall resource.
        # Corresponds to the JSON property `firewallUrl`
        # @return [String]
        attr_accessor :firewall_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @firewall_url = args[:firewall_url] if args.key?(:firewall_url)
        end
      end
      
      # 
      class HealthCheckModule
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `checkIntervalSec`
        # @return [Fixnum]
        attr_accessor :check_interval_sec
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `healthyThreshold`
        # @return [Fixnum]
        attr_accessor :healthy_threshold
      
        # 
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # 
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # 
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # 
        # Corresponds to the JSON property `timeoutSec`
        # @return [Fixnum]
        attr_accessor :timeout_sec
      
        # 
        # Corresponds to the JSON property `unhealthyThreshold`
        # @return [Fixnum]
        attr_accessor :unhealthy_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_interval_sec = args[:check_interval_sec] if args.key?(:check_interval_sec)
          @description = args[:description] if args.key?(:description)
          @healthy_threshold = args[:healthy_threshold] if args.key?(:healthy_threshold)
          @host = args[:host] if args.key?(:host)
          @path = args[:path] if args.key?(:path)
          @port = args[:port] if args.key?(:port)
          @timeout_sec = args[:timeout_sec] if args.key?(:timeout_sec)
          @unhealthy_threshold = args[:unhealthy_threshold] if args.key?(:unhealthy_threshold)
        end
      end
      
      # 
      class HealthCheckModuleStatus
        include Google::Apis::Core::Hashable
      
        # [Output Only] The HealthCheck URL.
        # Corresponds to the JSON property `healthCheckUrl`
        # @return [String]
        attr_accessor :health_check_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_check_url = args[:health_check_url] if args.key?(:health_check_url)
        end
      end
      
      # 
      class LbModule
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<String>]
        attr_accessor :health_checks
      
        # 
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # 
        # Corresponds to the JSON property `ipProtocol`
        # @return [String]
        attr_accessor :ip_protocol
      
        # 
        # Corresponds to the JSON property `portRange`
        # @return [String]
        attr_accessor :port_range
      
        # 
        # Corresponds to the JSON property `sessionAffinity`
        # @return [String]
        attr_accessor :session_affinity
      
        # 
        # Corresponds to the JSON property `targetModules`
        # @return [Array<String>]
        attr_accessor :target_modules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @health_checks = args[:health_checks] if args.key?(:health_checks)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @ip_protocol = args[:ip_protocol] if args.key?(:ip_protocol)
          @port_range = args[:port_range] if args.key?(:port_range)
          @session_affinity = args[:session_affinity] if args.key?(:session_affinity)
          @target_modules = args[:target_modules] if args.key?(:target_modules)
        end
      end
      
      # 
      class LbModuleStatus
        include Google::Apis::Core::Hashable
      
        # [Output Only] The URL of the corresponding ForwardingRule in GCE.
        # Corresponds to the JSON property `forwardingRuleUrl`
        # @return [String]
        attr_accessor :forwarding_rule_url
      
        # [Output Only] The URL of the corresponding TargetPool resource in GCE.
        # Corresponds to the JSON property `targetPoolUrl`
        # @return [String]
        attr_accessor :target_pool_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @forwarding_rule_url = args[:forwarding_rule_url] if args.key?(:forwarding_rule_url)
          @target_pool_url = args[:target_pool_url] if args.key?(:target_pool_url)
        end
      end
      
      # A Compute Engine metadata entry. Identical to the metadata on the
      # corresponding Compute Engine resource.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # The fingerprint of the metadata.
        # Corresponds to the JSON property `fingerPrint`
        # @return [String]
        attr_accessor :finger_print
      
        # A list of metadata items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ManagerV1beta2::MetadataItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finger_print = args[:finger_print] if args.key?(:finger_print)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # A Compute Engine metadata item, defined as a key:value pair. Identical to the
      # metadata on the corresponding Compute Engine resource.
      class MetadataItem
        include Google::Apis::Core::Hashable
      
        # A metadata key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # A metadata value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A module in a configuration. A module represents a single homogeneous,
      # possibly replicated task.
      class Module
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `autoscalingModule`
        # @return [Google::Apis::ManagerV1beta2::AutoscalingModule]
        attr_accessor :autoscaling_module
      
        # A Firewall resource
        # Corresponds to the JSON property `firewallModule`
        # @return [Google::Apis::ManagerV1beta2::FirewallModule]
        attr_accessor :firewall_module
      
        # 
        # Corresponds to the JSON property `healthCheckModule`
        # @return [Google::Apis::ManagerV1beta2::HealthCheckModule]
        attr_accessor :health_check_module
      
        # 
        # Corresponds to the JSON property `lbModule`
        # @return [Google::Apis::ManagerV1beta2::LbModule]
        attr_accessor :lb_module
      
        # 
        # Corresponds to the JSON property `networkModule`
        # @return [Google::Apis::ManagerV1beta2::NetworkModule]
        attr_accessor :network_module
      
        # 
        # Corresponds to the JSON property `replicaPoolModule`
        # @return [Google::Apis::ManagerV1beta2::ReplicaPoolModule]
        attr_accessor :replica_pool_module
      
        # The type of this module. Valid values ("AUTOSCALING", "FIREWALL", "
        # HEALTH_CHECK", "LOAD_BALANCING", "NETWORK", "REPLICA_POOL")
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_module = args[:autoscaling_module] if args.key?(:autoscaling_module)
          @firewall_module = args[:firewall_module] if args.key?(:firewall_module)
          @health_check_module = args[:health_check_module] if args.key?(:health_check_module)
          @lb_module = args[:lb_module] if args.key?(:lb_module)
          @network_module = args[:network_module] if args.key?(:network_module)
          @replica_pool_module = args[:replica_pool_module] if args.key?(:replica_pool_module)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # [Output Only] Aggregate status for a module.
      class ModuleStatus
        include Google::Apis::Core::Hashable
      
        # [Output Only] The status of the AutoscalingModule, set for type AUTOSCALING.
        # Corresponds to the JSON property `autoscalingModuleStatus`
        # @return [Google::Apis::ManagerV1beta2::AutoscalingModuleStatus]
        attr_accessor :autoscaling_module_status
      
        # [Output Only] The status of the FirewallModule, set for type FIREWALL.
        # Corresponds to the JSON property `firewallModuleStatus`
        # @return [Google::Apis::ManagerV1beta2::FirewallModuleStatus]
        attr_accessor :firewall_module_status
      
        # [Output Only] The status of the HealthCheckModule, set for type HEALTH_CHECK.
        # Corresponds to the JSON property `healthCheckModuleStatus`
        # @return [Google::Apis::ManagerV1beta2::HealthCheckModuleStatus]
        attr_accessor :health_check_module_status
      
        # [Output Only] The status of the LbModule, set for type LOAD_BALANCING.
        # Corresponds to the JSON property `lbModuleStatus`
        # @return [Google::Apis::ManagerV1beta2::LbModuleStatus]
        attr_accessor :lb_module_status
      
        # [Output Only] The status of the NetworkModule, set for type NETWORK.
        # Corresponds to the JSON property `networkModuleStatus`
        # @return [Google::Apis::ManagerV1beta2::NetworkModuleStatus]
        attr_accessor :network_module_status
      
        # [Output Only] The status of the ReplicaPoolModule, set for type VM.
        # Corresponds to the JSON property `replicaPoolModuleStatus`
        # @return [Google::Apis::ManagerV1beta2::ReplicaPoolModuleStatus]
        attr_accessor :replica_pool_module_status
      
        # [Output Only] The current state of a replica or module.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::ManagerV1beta2::DeployState]
        attr_accessor :state
      
        # [Output Only] The type of the module.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_module_status = args[:autoscaling_module_status] if args.key?(:autoscaling_module_status)
          @firewall_module_status = args[:firewall_module_status] if args.key?(:firewall_module_status)
          @health_check_module_status = args[:health_check_module_status] if args.key?(:health_check_module_status)
          @lb_module_status = args[:lb_module_status] if args.key?(:lb_module_status)
          @network_module_status = args[:network_module_status] if args.key?(:network_module_status)
          @replica_pool_module_status = args[:replica_pool_module_status] if args.key?(:replica_pool_module_status)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A Compute Engine NetworkInterface resource. Identical to the NetworkInterface
      # on the corresponding Compute Engine resource.
      class NetworkInterface
        include Google::Apis::Core::Hashable
      
        # An array of configurations for this interface. This specifies how this
        # interface is configured to interact with other network services
        # Corresponds to the JSON property `accessConfigs`
        # @return [Array<Google::Apis::ManagerV1beta2::AccessConfig>]
        attr_accessor :access_configs
      
        # Name of the interface.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the NetworkModule to which this interface applies. If not
        # specified, or specified as 'default', this will use the 'default' network.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # An optional IPV4 internal network address to assign to the instance for this
        # network interface.
        # Corresponds to the JSON property `networkIp`
        # @return [String]
        attr_accessor :network_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_configs = args[:access_configs] if args.key?(:access_configs)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @network_ip = args[:network_ip] if args.key?(:network_ip)
        end
      end
      
      # 
      class NetworkModule
        include Google::Apis::Core::Hashable
      
        # Required; The range of internal addresses that are legal on this network. This
        # range is a CIDR specification, for example: 192.168.0.0/16.
        # Corresponds to the JSON property `IPv4Range`
        # @return [String]
        attr_accessor :i_pv4_range
      
        # The description of the network.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An optional address that is used for default routing to other networks. This
        # must be within the range specified by IPv4Range, and is typicall the first
        # usable address in that range. If not specified, the default value is the first
        # usable address in IPv4Range.
        # Corresponds to the JSON property `gatewayIPv4`
        # @return [String]
        attr_accessor :gateway_i_pv4
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @i_pv4_range = args[:i_pv4_range] if args.key?(:i_pv4_range)
          @description = args[:description] if args.key?(:description)
          @gateway_i_pv4 = args[:gateway_i_pv4] if args.key?(:gateway_i_pv4)
        end
      end
      
      # 
      class NetworkModuleStatus
        include Google::Apis::Core::Hashable
      
        # [Output Only] The URL of the corresponding Network resource.
        # Corresponds to the JSON property `networkUrl`
        # @return [String]
        attr_accessor :network_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_url = args[:network_url] if args.key?(:network_url)
        end
      end
      
      # A Persistent Disk resource that will be created and attached to each Replica
      # in the Pool. Each Replica will have a unique persistent disk that is created
      # and attached to that Replica.
      class NewDisk
        include Google::Apis::Core::Hashable
      
        # How to attach a disk to a Replica.
        # Corresponds to the JSON property `attachment`
        # @return [Google::Apis::ManagerV1beta2::DiskAttachment]
        attr_accessor :attachment
      
        # If true, then this disk will be deleted when the instance is deleted.
        # Corresponds to the JSON property `autoDelete`
        # @return [Boolean]
        attr_accessor :auto_delete
        alias_method :auto_delete?, :auto_delete
      
        # If true, indicates that this is the root persistent disk.
        # Corresponds to the JSON property `boot`
        # @return [Boolean]
        attr_accessor :boot
        alias_method :boot?, :boot
      
        # Initialization parameters for creating a new disk.
        # Corresponds to the JSON property `initializeParams`
        # @return [Google::Apis::ManagerV1beta2::NewDiskInitializeParams]
        attr_accessor :initialize_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment = args[:attachment] if args.key?(:attachment)
          @auto_delete = args[:auto_delete] if args.key?(:auto_delete)
          @boot = args[:boot] if args.key?(:boot)
          @initialize_params = args[:initialize_params] if args.key?(:initialize_params)
        end
      end
      
      # Initialization parameters for creating a new disk.
      class NewDiskInitializeParams
        include Google::Apis::Core::Hashable
      
        # The size of the created disk in gigabytes.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [String]
        attr_accessor :disk_size_gb
      
        # Name of the disk type resource describing which disk type to use to create the
        # disk. For example 'pd-ssd' or 'pd-standard'. Default is 'pd-standard'
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # The fully-qualified URL of a source image to use to create this disk.
        # Corresponds to the JSON property `sourceImage`
        # @return [String]
        attr_accessor :source_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @source_image = args[:source_image] if args.key?(:source_image)
        end
      end
      
      # A specification for overriding parameters in a Template that corresponds to
      # the Deployment.
      class ParamOverride
        include Google::Apis::Core::Hashable
      
        # A JSON Path expression that specifies which parameter should be overridden.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # The new value to assign to the overridden parameter.
        # Corresponds to the JSON property `value`
        # @return [String]
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
      class ReplicaPoolModule
        include Google::Apis::Core::Hashable
      
        # A list of environment variables.
        # Corresponds to the JSON property `envVariables`
        # @return [Hash<String,Google::Apis::ManagerV1beta2::EnvVariable>]
        attr_accessor :env_variables
      
        # The Health Checks to configure for the ReplicaPoolModule
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<String>]
        attr_accessor :health_checks
      
        # Number of replicas in this module.
        # Corresponds to the JSON property `numReplicas`
        # @return [Fixnum]
        attr_accessor :num_replicas
      
        # Configuration information for a ReplicaPools resource. Specifying an item
        # within will determine the ReplicaPools API version used for a
        # ReplicaPoolModule. Only one may be specified.
        # Corresponds to the JSON property `replicaPoolParams`
        # @return [Google::Apis::ManagerV1beta2::ReplicaPoolParams]
        attr_accessor :replica_pool_params
      
        # [Output Only] The name of the Resource View associated with a
        # ReplicaPoolModule. This field will be generated by the service.
        # Corresponds to the JSON property `resourceView`
        # @return [String]
        attr_accessor :resource_view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @env_variables = args[:env_variables] if args.key?(:env_variables)
          @health_checks = args[:health_checks] if args.key?(:health_checks)
          @num_replicas = args[:num_replicas] if args.key?(:num_replicas)
          @replica_pool_params = args[:replica_pool_params] if args.key?(:replica_pool_params)
          @resource_view = args[:resource_view] if args.key?(:resource_view)
        end
      end
      
      # 
      class ReplicaPoolModuleStatus
        include Google::Apis::Core::Hashable
      
        # [Output Only] The URL of the associated ReplicaPool resource.
        # Corresponds to the JSON property `replicaPoolUrl`
        # @return [String]
        attr_accessor :replica_pool_url
      
        # [Output Only] The URL of the Resource Group associated with this ReplicaPool.
        # Corresponds to the JSON property `resourceViewUrl`
        # @return [String]
        attr_accessor :resource_view_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @replica_pool_url = args[:replica_pool_url] if args.key?(:replica_pool_url)
          @resource_view_url = args[:resource_view_url] if args.key?(:resource_view_url)
        end
      end
      
      # Configuration information for a ReplicaPools resource. Specifying an item
      # within will determine the ReplicaPools API version used for a
      # ReplicaPoolModule. Only one may be specified.
      class ReplicaPoolParams
        include Google::Apis::Core::Hashable
      
        # Configuration information for a ReplicaPools v1beta1 API resource. Directly
        # maps to ReplicaPool InitTemplate.
        # Corresponds to the JSON property `v1beta1`
        # @return [Google::Apis::ManagerV1beta2::ReplicaPoolParamsV1Beta1]
        attr_accessor :v1beta1
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @v1beta1 = args[:v1beta1] if args.key?(:v1beta1)
        end
      end
      
      # Configuration information for a ReplicaPools v1beta1 API resource. Directly
      # maps to ReplicaPool InitTemplate.
      class ReplicaPoolParamsV1Beta1
        include Google::Apis::Core::Hashable
      
        # Whether these replicas should be restarted if they experience a failure. The
        # default value is true.
        # Corresponds to the JSON property `autoRestart`
        # @return [Boolean]
        attr_accessor :auto_restart
        alias_method :auto_restart?, :auto_restart
      
        # The base name for instances within this ReplicaPool.
        # Corresponds to the JSON property `baseInstanceName`
        # @return [String]
        attr_accessor :base_instance_name
      
        # Enables IP Forwarding
        # Corresponds to the JSON property `canIpForward`
        # @return [Boolean]
        attr_accessor :can_ip_forward
        alias_method :can_ip_forward?, :can_ip_forward
      
        # An optional textual description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A list of existing Persistent Disk resources to attach to each replica in the
        # pool. Each disk will be attached in read-only mode to every replica.
        # Corresponds to the JSON property `disksToAttach`
        # @return [Array<Google::Apis::ManagerV1beta2::ExistingDisk>]
        attr_accessor :disks_to_attach
      
        # A list of Disk resources to create and attach to each Replica in the Pool.
        # Currently, you can only define one disk and it must be a root persistent disk.
        # Note that Replica Pool will create a root persistent disk for each replica.
        # Corresponds to the JSON property `disksToCreate`
        # @return [Array<Google::Apis::ManagerV1beta2::NewDisk>]
        attr_accessor :disks_to_create
      
        # Name of the Action to be run during initialization of a ReplicaPoolModule.
        # Corresponds to the JSON property `initAction`
        # @return [String]
        attr_accessor :init_action
      
        # The machine type for this instance. Either a complete URL, or the resource
        # name (e.g. n1-standard-1).
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # A Compute Engine metadata entry. Identical to the metadata on the
        # corresponding Compute Engine resource.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ManagerV1beta2::Metadata]
        attr_accessor :metadata
      
        # A list of network interfaces for the instance. Currently only one interface is
        # supported by Google Compute Engine.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::ManagerV1beta2::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # 
        # Corresponds to the JSON property `onHostMaintenance`
        # @return [String]
        attr_accessor :on_host_maintenance
      
        # A list of Service Accounts to enable for this instance.
        # Corresponds to the JSON property `serviceAccounts`
        # @return [Array<Google::Apis::ManagerV1beta2::ServiceAccount>]
        attr_accessor :service_accounts
      
        # A Compute Engine Instance tag, identical to the tags on the corresponding
        # Compute Engine Instance resource.
        # Corresponds to the JSON property `tags`
        # @return [Google::Apis::ManagerV1beta2::Tag]
        attr_accessor :tags
      
        # The zone for this ReplicaPool.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_restart = args[:auto_restart] if args.key?(:auto_restart)
          @base_instance_name = args[:base_instance_name] if args.key?(:base_instance_name)
          @can_ip_forward = args[:can_ip_forward] if args.key?(:can_ip_forward)
          @description = args[:description] if args.key?(:description)
          @disks_to_attach = args[:disks_to_attach] if args.key?(:disks_to_attach)
          @disks_to_create = args[:disks_to_create] if args.key?(:disks_to_create)
          @init_action = args[:init_action] if args.key?(:init_action)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @on_host_maintenance = args[:on_host_maintenance] if args.key?(:on_host_maintenance)
          @service_accounts = args[:service_accounts] if args.key?(:service_accounts)
          @tags = args[:tags] if args.key?(:tags)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # A Compute Engine service account, identical to the Compute Engine resource.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # Service account email address.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # List of OAuth2 scopes to obtain for the service account.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # A Compute Engine Instance tag, identical to the tags on the corresponding
      # Compute Engine Instance resource.
      class Tag
        include Google::Apis::Core::Hashable
      
        # The fingerprint of the tag.
        # Corresponds to the JSON property `fingerPrint`
        # @return [String]
        attr_accessor :finger_print
      
        # Items contained in this tag.
        # Corresponds to the JSON property `items`
        # @return [Array<String>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finger_print = args[:finger_print] if args.key?(:finger_print)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # A Template represents a complete configuration for a Deployment.
      class Template
        include Google::Apis::Core::Hashable
      
        # Action definitions for use in Module intents in this Template.
        # Corresponds to the JSON property `actions`
        # @return [Hash<String,Google::Apis::ManagerV1beta2::Action>]
        attr_accessor :actions
      
        # A user-supplied description of this Template.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A list of modules for this Template.
        # Corresponds to the JSON property `modules`
        # @return [Hash<String,Google::Apis::ManagerV1beta2::Module>]
        attr_accessor :modules
      
        # Name of this Template. The name must conform to the expression: [a-zA-Z0-9-_]`
        # 1,64`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @description = args[:description] if args.key?(:description)
          @modules = args[:modules] if args.key?(:modules)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class ListTemplatesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ManagerV1beta2::Template>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
    end
  end
end
