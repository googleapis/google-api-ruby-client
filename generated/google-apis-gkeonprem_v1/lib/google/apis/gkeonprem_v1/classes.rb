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
    module GkeonpremV1
      
      # Authorization defines the On-Prem cluster authorization configuration to
      # bootstrap onto the admin cluster.
      class Authorization
        include Google::Apis::Core::Hashable
      
        # Required. For VMware user, bare metal user and standalone clusters, users that
        # will be granted the cluster-admin role on the cluster, providing full access
        # to the cluster. For bare metal Admin cluster, users will be granted the view
        # role, which is a view only access.
        # Corresponds to the JSON property `adminUsers`
        # @return [Array<Google::Apis::GkeonpremV1::ClusterUser>]
        attr_accessor :admin_users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_users = args[:admin_users] if args.key?(:admin_users)
        end
      end
      
      # BareMetalAdminApiServerArgument represents an arg name->value pair. Only a
      # subset of customized flags are supported. Please refer to the API server
      # documentation below to know the exact format: https://kubernetes.io/docs/
      # reference/command-line-tools-reference/kube-apiserver/
      class BareMetalAdminApiServerArgument
        include Google::Apis::Core::Hashable
      
        # Required. The argument name as it appears on the API Server command line
        # please make sure to remove the leading dashes.
        # Corresponds to the JSON property `argument`
        # @return [String]
        attr_accessor :argument
      
        # Required. The value of the arg as it will be passed to the API Server command
        # line.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @argument = args[:argument] if args.key?(:argument)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # ## Resource that represents a bare metal admin cluster.
      class BareMetalAdminCluster
        include Google::Apis::Core::Hashable
      
        # Annotations on the bare metal admin cluster. This field has the same
        # restrictions as Kubernetes annotations. The total size of all keys and values
        # combined is limited to 256k. Key can have 2 segments: prefix (optional) and
        # name (required), separated by a slash (/). Prefix must be a DNS subdomain.
        # Name must be 63 characters or less, begin and end with alphanumerics, with
        # dashes (-), underscores (_), dots (.), and alphanumerics between.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # The Anthos clusters on bare metal version for the bare metal admin cluster.
        # Corresponds to the JSON property `bareMetalVersion`
        # @return [String]
        attr_accessor :bare_metal_version
      
        # BareMetalAdminClusterOperationsConfig specifies the admin cluster's
        # observability infrastructure.
        # Corresponds to the JSON property `clusterOperations`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminClusterOperationsConfig]
        attr_accessor :cluster_operations
      
        # BareMetalAdminControlPlaneConfig specifies the control plane configuration.
        # Corresponds to the JSON property `controlPlane`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminControlPlaneConfig]
        attr_accessor :control_plane
      
        # Output only. The time at which this bare metal admin cluster was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time at which this bare metal admin cluster was deleted. If
        # the resource is not deleted, this must be empty
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # A human readable description of this bare metal admin cluster.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The IP address name of bare metal admin cluster's API server.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding. Allows clients to perform consistent read-
        # modify-writes through optimistic concurrency control.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Fleet related configuration. Fleets are a Google Cloud concept for logically
        # organizing clusters, letting you use and manage multi-cluster capabilities and
        # apply consistent policies across your systems. See [Anthos Fleets](`https://
        # cloud.google.com/anthos/multicluster-management/fleets`) for more details on
        # Anthos multi-cluster capabilities using Fleets. ##
        # Corresponds to the JSON property `fleet`
        # @return [Google::Apis::GkeonpremV1::Fleet]
        attr_accessor :fleet
      
        # BareMetalAdminLoadBalancerConfig specifies the load balancer configuration.
        # Corresponds to the JSON property `loadBalancer`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminLoadBalancerConfig]
        attr_accessor :load_balancer
      
        # Output only. The object name of the bare metal cluster custom resource. This
        # field is used to support conflicting names when enrolling existing clusters to
        # the API. When used as a part of cluster enrollment, this field will differ
        # from the ID in the resource name. For new clusters, this field will match the
        # user provided cluster name and be visible in the last component of the
        # resource name. It is not modifiable. All users should use this name to access
        # their cluster using gkectl or kubectl and should expect to see the local name
        # when viewing admin cluster controller logs.
        # Corresponds to the JSON property `localName`
        # @return [String]
        attr_accessor :local_name
      
        # BareMetalAdminMaintenanceConfig specifies configurations to put bare metal
        # Admin cluster CRs nodes in and out of maintenance.
        # Corresponds to the JSON property `maintenanceConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminMaintenanceConfig]
        attr_accessor :maintenance_config
      
        # BareMetalAdminMaintenanceStatus represents the maintenance status for bare
        # metal Admin cluster CR's nodes.
        # Corresponds to the JSON property `maintenanceStatus`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminMaintenanceStatus]
        attr_accessor :maintenance_status
      
        # Immutable. The bare metal admin cluster resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # BareMetalAdminNetworkConfig specifies the cluster network configuration.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminNetworkConfig]
        attr_accessor :network_config
      
        # Specifies the node access related settings for the bare metal admin cluster.
        # Corresponds to the JSON property `nodeAccessConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminNodeAccessConfig]
        attr_accessor :node_access_config
      
        # BareMetalAdminWorkloadNodeConfig specifies the workload node configurations.
        # Corresponds to the JSON property `nodeConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminWorkloadNodeConfig]
        attr_accessor :node_config
      
        # Specifies operating system operation settings for cluster provisioning.
        # Corresponds to the JSON property `osEnvironmentConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminOsEnvironmentConfig]
        attr_accessor :os_environment_config
      
        # BareMetalAdminProxyConfig specifies the cluster proxy configuration.
        # Corresponds to the JSON property `proxy`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminProxyConfig]
        attr_accessor :proxy
      
        # Output only. If set, there are currently changes in flight to the bare metal
        # Admin Cluster.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Specifies the security related settings for the bare metal admin cluster.
        # Corresponds to the JSON property `securityConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminSecurityConfig]
        attr_accessor :security_config
      
        # Output only. The current state of the bare metal admin cluster.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # ResourceStatus describes why a cluster or node pool has a certain status. (e.g.
        # , ERROR or DEGRADED).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GkeonpremV1::ResourceStatus]
        attr_accessor :status
      
        # BareMetalAdminStorageConfig specifies the cluster storage configuration.
        # Corresponds to the JSON property `storage`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminStorageConfig]
        attr_accessor :storage
      
        # Output only. The unique identifier of the bare metal admin cluster.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time at which this bare metal admin cluster was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # ValidationCheck represents the result of preflight check.
        # Corresponds to the JSON property `validationCheck`
        # @return [Google::Apis::GkeonpremV1::ValidationCheck]
        attr_accessor :validation_check
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @bare_metal_version = args[:bare_metal_version] if args.key?(:bare_metal_version)
          @cluster_operations = args[:cluster_operations] if args.key?(:cluster_operations)
          @control_plane = args[:control_plane] if args.key?(:control_plane)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @description = args[:description] if args.key?(:description)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @etag = args[:etag] if args.key?(:etag)
          @fleet = args[:fleet] if args.key?(:fleet)
          @load_balancer = args[:load_balancer] if args.key?(:load_balancer)
          @local_name = args[:local_name] if args.key?(:local_name)
          @maintenance_config = args[:maintenance_config] if args.key?(:maintenance_config)
          @maintenance_status = args[:maintenance_status] if args.key?(:maintenance_status)
          @name = args[:name] if args.key?(:name)
          @network_config = args[:network_config] if args.key?(:network_config)
          @node_access_config = args[:node_access_config] if args.key?(:node_access_config)
          @node_config = args[:node_config] if args.key?(:node_config)
          @os_environment_config = args[:os_environment_config] if args.key?(:os_environment_config)
          @proxy = args[:proxy] if args.key?(:proxy)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @security_config = args[:security_config] if args.key?(:security_config)
          @state = args[:state] if args.key?(:state)
          @status = args[:status] if args.key?(:status)
          @storage = args[:storage] if args.key?(:storage)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @validation_check = args[:validation_check] if args.key?(:validation_check)
        end
      end
      
      # BareMetalAdminClusterOperationsConfig specifies the admin cluster's
      # observability infrastructure.
      class BareMetalAdminClusterOperationsConfig
        include Google::Apis::Core::Hashable
      
        # Whether collection of application logs/metrics should be enabled (in addition
        # to system logs/metrics).
        # Corresponds to the JSON property `enableApplicationLogs`
        # @return [Boolean]
        attr_accessor :enable_application_logs
        alias_method :enable_application_logs?, :enable_application_logs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_application_logs = args[:enable_application_logs] if args.key?(:enable_application_logs)
        end
      end
      
      # BareMetalAdminControlPlaneConfig specifies the control plane configuration.
      class BareMetalAdminControlPlaneConfig
        include Google::Apis::Core::Hashable
      
        # Customizes the default API server args. Only a subset of customized flags are
        # supported. Please refer to the API server documentation below to know the
        # exact format: https://kubernetes.io/docs/reference/command-line-tools-
        # reference/kube-apiserver/
        # Corresponds to the JSON property `apiServerArgs`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalAdminApiServerArgument>]
        attr_accessor :api_server_args
      
        # BareMetalAdminControlPlaneNodePoolConfig specifies the control plane node pool
        # configuration. We have a control plane specific node pool config so that we
        # can flexible about supporting control plane specific fields in the future.
        # Corresponds to the JSON property `controlPlaneNodePoolConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminControlPlaneNodePoolConfig]
        attr_accessor :control_plane_node_pool_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_server_args = args[:api_server_args] if args.key?(:api_server_args)
          @control_plane_node_pool_config = args[:control_plane_node_pool_config] if args.key?(:control_plane_node_pool_config)
        end
      end
      
      # BareMetalAdminControlPlaneNodePoolConfig specifies the control plane node pool
      # configuration. We have a control plane specific node pool config so that we
      # can flexible about supporting control plane specific fields in the future.
      class BareMetalAdminControlPlaneNodePoolConfig
        include Google::Apis::Core::Hashable
      
        # BareMetalNodePoolConfig describes the configuration of all nodes within a
        # given bare metal node pool.
        # Corresponds to the JSON property `nodePoolConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalNodePoolConfig]
        attr_accessor :node_pool_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_pool_config = args[:node_pool_config] if args.key?(:node_pool_config)
        end
      end
      
      # BareMetalAdminDrainedMachine represents the machines that are drained.
      class BareMetalAdminDrainedMachine
        include Google::Apis::Core::Hashable
      
        # Drained machine IP address.
        # Corresponds to the JSON property `nodeIp`
        # @return [String]
        attr_accessor :node_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_ip = args[:node_ip] if args.key?(:node_ip)
        end
      end
      
      # BareMetalAdminDrainingMachine represents the machines that are currently
      # draining.
      class BareMetalAdminDrainingMachine
        include Google::Apis::Core::Hashable
      
        # Draining machine IP address.
        # Corresponds to the JSON property `nodeIp`
        # @return [String]
        attr_accessor :node_ip
      
        # The count of pods yet to drain.
        # Corresponds to the JSON property `podCount`
        # @return [Fixnum]
        attr_accessor :pod_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_ip = args[:node_ip] if args.key?(:node_ip)
          @pod_count = args[:pod_count] if args.key?(:pod_count)
        end
      end
      
      # BareMetalAdminIslandModeCidrConfig specifies the cluster CIDR configuration
      # while running in island mode.
      class BareMetalAdminIslandModeCidrConfig
        include Google::Apis::Core::Hashable
      
        # Required. All pods in the cluster are assigned an RFC1918 IPv4 address from
        # these ranges. This field cannot be changed after creation.
        # Corresponds to the JSON property `podAddressCidrBlocks`
        # @return [Array<String>]
        attr_accessor :pod_address_cidr_blocks
      
        # Required. All services in the cluster are assigned an RFC1918 IPv4 address
        # from these ranges. This field cannot be changed after creation.
        # Corresponds to the JSON property `serviceAddressCidrBlocks`
        # @return [Array<String>]
        attr_accessor :service_address_cidr_blocks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pod_address_cidr_blocks = args[:pod_address_cidr_blocks] if args.key?(:pod_address_cidr_blocks)
          @service_address_cidr_blocks = args[:service_address_cidr_blocks] if args.key?(:service_address_cidr_blocks)
        end
      end
      
      # BareMetalAdminLoadBalancerConfig specifies the load balancer configuration.
      class BareMetalAdminLoadBalancerConfig
        include Google::Apis::Core::Hashable
      
        # BareMetalAdminManualLbConfig represents configuration parameters for a manual
        # load balancer.
        # Corresponds to the JSON property `manualLbConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminManualLbConfig]
        attr_accessor :manual_lb_config
      
        # BareMetalAdminPortConfig is the specification of load balancer ports.
        # Corresponds to the JSON property `portConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminPortConfig]
        attr_accessor :port_config
      
        # BareMetalAdminVipConfig for bare metal load balancer configurations.
        # Corresponds to the JSON property `vipConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminVipConfig]
        attr_accessor :vip_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manual_lb_config = args[:manual_lb_config] if args.key?(:manual_lb_config)
          @port_config = args[:port_config] if args.key?(:port_config)
          @vip_config = args[:vip_config] if args.key?(:vip_config)
        end
      end
      
      # BareMetalAdminMachineDrainStatus represents the status of bare metal node
      # machines that are undergoing drain operations.
      class BareMetalAdminMachineDrainStatus
        include Google::Apis::Core::Hashable
      
        # The list of drained machines.
        # Corresponds to the JSON property `drainedMachines`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalAdminDrainedMachine>]
        attr_accessor :drained_machines
      
        # The list of draning machines.
        # Corresponds to the JSON property `drainingMachines`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalAdminDrainingMachine>]
        attr_accessor :draining_machines
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drained_machines = args[:drained_machines] if args.key?(:drained_machines)
          @draining_machines = args[:draining_machines] if args.key?(:draining_machines)
        end
      end
      
      # BareMetalAdminMaintenanceConfig specifies configurations to put bare metal
      # Admin cluster CRs nodes in and out of maintenance.
      class BareMetalAdminMaintenanceConfig
        include Google::Apis::Core::Hashable
      
        # Required. All IPv4 address from these ranges will be placed into maintenance
        # mode. Nodes in maintenance mode will be cordoned and drained. When both of
        # these are true, the "baremetal.cluster.gke.io/maintenance" annotation will be
        # set on the node resource.
        # Corresponds to the JSON property `maintenanceAddressCidrBlocks`
        # @return [Array<String>]
        attr_accessor :maintenance_address_cidr_blocks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maintenance_address_cidr_blocks = args[:maintenance_address_cidr_blocks] if args.key?(:maintenance_address_cidr_blocks)
        end
      end
      
      # BareMetalAdminMaintenanceStatus represents the maintenance status for bare
      # metal Admin cluster CR's nodes.
      class BareMetalAdminMaintenanceStatus
        include Google::Apis::Core::Hashable
      
        # BareMetalAdminMachineDrainStatus represents the status of bare metal node
        # machines that are undergoing drain operations.
        # Corresponds to the JSON property `machineDrainStatus`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminMachineDrainStatus]
        attr_accessor :machine_drain_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_drain_status = args[:machine_drain_status] if args.key?(:machine_drain_status)
        end
      end
      
      # BareMetalAdminManualLbConfig represents configuration parameters for a manual
      # load balancer.
      class BareMetalAdminManualLbConfig
        include Google::Apis::Core::Hashable
      
        # Whether manual load balancing is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # BareMetalAdminNetworkConfig specifies the cluster network configuration.
      class BareMetalAdminNetworkConfig
        include Google::Apis::Core::Hashable
      
        # BareMetalAdminIslandModeCidrConfig specifies the cluster CIDR configuration
        # while running in island mode.
        # Corresponds to the JSON property `islandModeCidr`
        # @return [Google::Apis::GkeonpremV1::BareMetalAdminIslandModeCidrConfig]
        attr_accessor :island_mode_cidr
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @island_mode_cidr = args[:island_mode_cidr] if args.key?(:island_mode_cidr)
        end
      end
      
      # Specifies the node access related settings for the bare metal admin cluster.
      class BareMetalAdminNodeAccessConfig
        include Google::Apis::Core::Hashable
      
        # Required. LoginUser is the user name used to access node machines. It defaults
        # to "root" if not set.
        # Corresponds to the JSON property `loginUser`
        # @return [String]
        attr_accessor :login_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @login_user = args[:login_user] if args.key?(:login_user)
        end
      end
      
      # Specifies operating system operation settings for cluster provisioning.
      class BareMetalAdminOsEnvironmentConfig
        include Google::Apis::Core::Hashable
      
        # Whether the package repo should be added when initializing bare metal machines.
        # Corresponds to the JSON property `packageRepoExcluded`
        # @return [Boolean]
        attr_accessor :package_repo_excluded
        alias_method :package_repo_excluded?, :package_repo_excluded
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @package_repo_excluded = args[:package_repo_excluded] if args.key?(:package_repo_excluded)
        end
      end
      
      # BareMetalAdminPortConfig is the specification of load balancer ports.
      class BareMetalAdminPortConfig
        include Google::Apis::Core::Hashable
      
        # The port that control plane hosted load balancers will listen on.
        # Corresponds to the JSON property `controlPlaneLoadBalancerPort`
        # @return [Fixnum]
        attr_accessor :control_plane_load_balancer_port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_plane_load_balancer_port = args[:control_plane_load_balancer_port] if args.key?(:control_plane_load_balancer_port)
        end
      end
      
      # BareMetalAdminProxyConfig specifies the cluster proxy configuration.
      class BareMetalAdminProxyConfig
        include Google::Apis::Core::Hashable
      
        # A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["
        # 127.0.0.1", "example.com", ".corp", "localhost"].
        # Corresponds to the JSON property `noProxy`
        # @return [Array<String>]
        attr_accessor :no_proxy
      
        # Required. Specifies the address of your proxy server. Examples: `http://domain`
        # WARNING: Do not provide credentials in the format `http://(username:password@)
        # domain` these will be rejected by the server.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @no_proxy = args[:no_proxy] if args.key?(:no_proxy)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Specifies the security related settings for the bare metal admin cluster.
      class BareMetalAdminSecurityConfig
        include Google::Apis::Core::Hashable
      
        # Authorization defines the On-Prem cluster authorization configuration to
        # bootstrap onto the admin cluster.
        # Corresponds to the JSON property `authorization`
        # @return [Google::Apis::GkeonpremV1::Authorization]
        attr_accessor :authorization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization = args[:authorization] if args.key?(:authorization)
        end
      end
      
      # BareMetalAdminStorageConfig specifies the cluster storage configuration.
      class BareMetalAdminStorageConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the configs for local persistent volumes (PVs).
        # Corresponds to the JSON property `lvpNodeMountsConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalLvpConfig]
        attr_accessor :lvp_node_mounts_config
      
        # Specifies the configs for local persistent volumes under a shared file system.
        # Corresponds to the JSON property `lvpShareConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalLvpShareConfig]
        attr_accessor :lvp_share_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lvp_node_mounts_config = args[:lvp_node_mounts_config] if args.key?(:lvp_node_mounts_config)
          @lvp_share_config = args[:lvp_share_config] if args.key?(:lvp_share_config)
        end
      end
      
      # BareMetalAdminVipConfig for bare metal load balancer configurations.
      class BareMetalAdminVipConfig
        include Google::Apis::Core::Hashable
      
        # The VIP which you previously set aside for the Kubernetes API of this bare
        # metal admin cluster.
        # Corresponds to the JSON property `controlPlaneVip`
        # @return [String]
        attr_accessor :control_plane_vip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_plane_vip = args[:control_plane_vip] if args.key?(:control_plane_vip)
        end
      end
      
      # BareMetalAdminWorkloadNodeConfig specifies the workload node configurations.
      class BareMetalAdminWorkloadNodeConfig
        include Google::Apis::Core::Hashable
      
        # The maximum number of pods a node can run. The size of the CIDR range assigned
        # to the node will be derived from this parameter. By default 110 Pods are
        # created per Node. Upper bound is 250 for both HA and non-HA admin cluster.
        # Lower bound is 64 for non-HA admin cluster and 32 for HA admin cluster.
        # Corresponds to the JSON property `maxPodsPerNode`
        # @return [Fixnum]
        attr_accessor :max_pods_per_node
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_pods_per_node = args[:max_pods_per_node] if args.key?(:max_pods_per_node)
        end
      end
      
      # Represents an arg name->value pair. Only a subset of customized flags are
      # supported. For the exact format, refer to the [API server documentation](https:
      # //kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/).
      class BareMetalApiServerArgument
        include Google::Apis::Core::Hashable
      
        # Required. The argument name as it appears on the API Server command line, make
        # sure to remove the leading dashes.
        # Corresponds to the JSON property `argument`
        # @return [String]
        attr_accessor :argument
      
        # Required. The value of the arg as it will be passed to the API Server command
        # line.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @argument = args[:argument] if args.key?(:argument)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # BareMetalBgpLbConfig represents configuration parameters for a Border Gateway
      # Protocol (BGP) load balancer.
      class BareMetalBgpLbConfig
        include Google::Apis::Core::Hashable
      
        # Required. AddressPools is a list of non-overlapping IP pools used by load
        # balancer typed services. All addresses must be routable to load balancer nodes.
        # IngressVIP must be included in the pools.
        # Corresponds to the JSON property `addressPools`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalLoadBalancerAddressPool>]
        attr_accessor :address_pools
      
        # Required. BGP autonomous system number (ASN) of the cluster. This field can be
        # updated after cluster creation.
        # Corresponds to the JSON property `asn`
        # @return [Fixnum]
        attr_accessor :asn
      
        # Required. The list of BGP peers that the cluster will connect to. At least one
        # peer must be configured for each control plane node. Control plane nodes will
        # connect to these peers to advertise the control plane VIP. The Services load
        # balancer also uses these peers by default. This field can be updated after
        # cluster creation.
        # Corresponds to the JSON property `bgpPeerConfigs`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalBgpPeerConfig>]
        attr_accessor :bgp_peer_configs
      
        # Specifies the load balancer's node pool configuration.
        # Corresponds to the JSON property `loadBalancerNodePoolConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalLoadBalancerNodePoolConfig]
        attr_accessor :load_balancer_node_pool_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_pools = args[:address_pools] if args.key?(:address_pools)
          @asn = args[:asn] if args.key?(:asn)
          @bgp_peer_configs = args[:bgp_peer_configs] if args.key?(:bgp_peer_configs)
          @load_balancer_node_pool_config = args[:load_balancer_node_pool_config] if args.key?(:load_balancer_node_pool_config)
        end
      end
      
      # BareMetalBgpPeerConfig represents configuration parameters for a Border
      # Gateway Protocol (BGP) peer.
      class BareMetalBgpPeerConfig
        include Google::Apis::Core::Hashable
      
        # Required. BGP autonomous system number (ASN) for the network that contains the
        # external peer device.
        # Corresponds to the JSON property `asn`
        # @return [Fixnum]
        attr_accessor :asn
      
        # The IP address of the control plane node that connects to the external peer.
        # If you don't specify any control plane nodes, all control plane nodes can
        # connect to the external peer. If you specify one or more IP addresses, only
        # the nodes specified participate in peering sessions.
        # Corresponds to the JSON property `controlPlaneNodes`
        # @return [Array<String>]
        attr_accessor :control_plane_nodes
      
        # Required. The IP address of the external peer device.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asn = args[:asn] if args.key?(:asn)
          @control_plane_nodes = args[:control_plane_nodes] if args.key?(:control_plane_nodes)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
        end
      end
      
      # Resource that represents a bare metal user cluster.
      class BareMetalCluster
        include Google::Apis::Core::Hashable
      
        # Required. The admin cluster this bare metal user cluster belongs to. This is
        # the full resource name of the admin cluster's fleet membership.
        # Corresponds to the JSON property `adminClusterMembership`
        # @return [String]
        attr_accessor :admin_cluster_membership
      
        # Output only. The resource name of the bare metal admin cluster managing this
        # user cluster.
        # Corresponds to the JSON property `adminClusterName`
        # @return [String]
        attr_accessor :admin_cluster_name
      
        # Annotations on the bare metal user cluster. This field has the same
        # restrictions as Kubernetes annotations. The total size of all keys and values
        # combined is limited to 256k. Key can have 2 segments: prefix (optional) and
        # name (required), separated by a slash (/). Prefix must be a DNS subdomain.
        # Name must be 63 characters or less, begin and end with alphanumerics, with
        # dashes (-), underscores (_), dots (.), and alphanumerics between.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Required. The Anthos clusters on bare metal version for your user cluster.
        # Corresponds to the JSON property `bareMetalVersion`
        # @return [String]
        attr_accessor :bare_metal_version
      
        # Specifies the bare metal user cluster's observability infrastructure.
        # Corresponds to the JSON property `clusterOperations`
        # @return [Google::Apis::GkeonpremV1::BareMetalClusterOperationsConfig]
        attr_accessor :cluster_operations
      
        # Specifies the control plane configuration.
        # Corresponds to the JSON property `controlPlane`
        # @return [Google::Apis::GkeonpremV1::BareMetalControlPlaneConfig]
        attr_accessor :control_plane
      
        # Output only. The time when the bare metal user cluster was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time when the bare metal user cluster was deleted. If the
        # resource is not deleted, this must be empty
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # A human readable description of this bare metal user cluster.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The IP address of the bare metal user cluster's API server.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and may be sent on update and delete requests to ensure the
        # client has an up-to-date value before proceeding. Allows clients to perform
        # consistent read-modify-writes through optimistic concurrency control.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Fleet related configuration. Fleets are a Google Cloud concept for logically
        # organizing clusters, letting you use and manage multi-cluster capabilities and
        # apply consistent policies across your systems. See [Anthos Fleets](`https://
        # cloud.google.com/anthos/multicluster-management/fleets`) for more details on
        # Anthos multi-cluster capabilities using Fleets. ##
        # Corresponds to the JSON property `fleet`
        # @return [Google::Apis::GkeonpremV1::Fleet]
        attr_accessor :fleet
      
        # Specifies the load balancer configuration.
        # Corresponds to the JSON property `loadBalancer`
        # @return [Google::Apis::GkeonpremV1::BareMetalLoadBalancerConfig]
        attr_accessor :load_balancer
      
        # Output only. The object name of the bare metal user cluster custom resource on
        # the associated admin cluster. This field is used to support conflicting names
        # when enrolling existing clusters to the API. When used as a part of cluster
        # enrollment, this field will differ from the name in the resource name. For new
        # clusters, this field will match the user provided cluster name and be visible
        # in the last component of the resource name. It is not modifiable. When the
        # local name and cluster name differ, the local name is used in the admin
        # cluster controller logs. You use the cluster name when accessing the cluster
        # using bmctl and kubectl.
        # Corresponds to the JSON property `localName`
        # @return [String]
        attr_accessor :local_name
      
        # Specifies configurations to put bare metal nodes in and out of maintenance.
        # Corresponds to the JSON property `maintenanceConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalMaintenanceConfig]
        attr_accessor :maintenance_config
      
        # Represents the maintenance status of the bare metal user cluster.
        # Corresponds to the JSON property `maintenanceStatus`
        # @return [Google::Apis::GkeonpremV1::BareMetalMaintenanceStatus]
        attr_accessor :maintenance_status
      
        # Immutable. The bare metal user cluster resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies the cluster network configuration.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalNetworkConfig]
        attr_accessor :network_config
      
        # Specifies the node access related settings for the bare metal user cluster.
        # Corresponds to the JSON property `nodeAccessConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalNodeAccessConfig]
        attr_accessor :node_access_config
      
        # Specifies the workload node configurations.
        # Corresponds to the JSON property `nodeConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalWorkloadNodeConfig]
        attr_accessor :node_config
      
        # Specifies operating system settings for cluster provisioning.
        # Corresponds to the JSON property `osEnvironmentConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalOsEnvironmentConfig]
        attr_accessor :os_environment_config
      
        # Specifies the cluster proxy configuration.
        # Corresponds to the JSON property `proxy`
        # @return [Google::Apis::GkeonpremV1::BareMetalProxyConfig]
        attr_accessor :proxy
      
        # Output only. If set, there are currently changes in flight to the bare metal
        # user cluster.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Specifies the security related settings for the bare metal user cluster.
        # Corresponds to the JSON property `securityConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalSecurityConfig]
        attr_accessor :security_config
      
        # Output only. The current state of the bare metal user cluster.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # ResourceStatus describes why a cluster or node pool has a certain status. (e.g.
        # , ERROR or DEGRADED).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GkeonpremV1::ResourceStatus]
        attr_accessor :status
      
        # BareMetalStorageConfig specifies the cluster storage configuration.
        # Corresponds to the JSON property `storage`
        # @return [Google::Apis::GkeonpremV1::BareMetalStorageConfig]
        attr_accessor :storage
      
        # Output only. The unique identifier of the bare metal user cluster.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the bare metal user cluster was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # ValidationCheck represents the result of preflight check.
        # Corresponds to the JSON property `validationCheck`
        # @return [Google::Apis::GkeonpremV1::ValidationCheck]
        attr_accessor :validation_check
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_cluster_membership = args[:admin_cluster_membership] if args.key?(:admin_cluster_membership)
          @admin_cluster_name = args[:admin_cluster_name] if args.key?(:admin_cluster_name)
          @annotations = args[:annotations] if args.key?(:annotations)
          @bare_metal_version = args[:bare_metal_version] if args.key?(:bare_metal_version)
          @cluster_operations = args[:cluster_operations] if args.key?(:cluster_operations)
          @control_plane = args[:control_plane] if args.key?(:control_plane)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @description = args[:description] if args.key?(:description)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @etag = args[:etag] if args.key?(:etag)
          @fleet = args[:fleet] if args.key?(:fleet)
          @load_balancer = args[:load_balancer] if args.key?(:load_balancer)
          @local_name = args[:local_name] if args.key?(:local_name)
          @maintenance_config = args[:maintenance_config] if args.key?(:maintenance_config)
          @maintenance_status = args[:maintenance_status] if args.key?(:maintenance_status)
          @name = args[:name] if args.key?(:name)
          @network_config = args[:network_config] if args.key?(:network_config)
          @node_access_config = args[:node_access_config] if args.key?(:node_access_config)
          @node_config = args[:node_config] if args.key?(:node_config)
          @os_environment_config = args[:os_environment_config] if args.key?(:os_environment_config)
          @proxy = args[:proxy] if args.key?(:proxy)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @security_config = args[:security_config] if args.key?(:security_config)
          @state = args[:state] if args.key?(:state)
          @status = args[:status] if args.key?(:status)
          @storage = args[:storage] if args.key?(:storage)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @validation_check = args[:validation_check] if args.key?(:validation_check)
        end
      end
      
      # Specifies the bare metal user cluster's observability infrastructure.
      class BareMetalClusterOperationsConfig
        include Google::Apis::Core::Hashable
      
        # Whether collection of application logs/metrics should be enabled (in addition
        # to system logs/metrics).
        # Corresponds to the JSON property `enableApplicationLogs`
        # @return [Boolean]
        attr_accessor :enable_application_logs
        alias_method :enable_application_logs?, :enable_application_logs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_application_logs = args[:enable_application_logs] if args.key?(:enable_application_logs)
        end
      end
      
      # Specifies the control plane configuration.
      class BareMetalControlPlaneConfig
        include Google::Apis::Core::Hashable
      
        # Customizes the default API server args. Only a subset of customized flags are
        # supported. For the exact format, refer to the [API server documentation](https:
        # //kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/).
        # Corresponds to the JSON property `apiServerArgs`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalApiServerArgument>]
        attr_accessor :api_server_args
      
        # Specifies the control plane node pool configuration.
        # Corresponds to the JSON property `controlPlaneNodePoolConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalControlPlaneNodePoolConfig]
        attr_accessor :control_plane_node_pool_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_server_args = args[:api_server_args] if args.key?(:api_server_args)
          @control_plane_node_pool_config = args[:control_plane_node_pool_config] if args.key?(:control_plane_node_pool_config)
        end
      end
      
      # Specifies the control plane node pool configuration.
      class BareMetalControlPlaneNodePoolConfig
        include Google::Apis::Core::Hashable
      
        # BareMetalNodePoolConfig describes the configuration of all nodes within a
        # given bare metal node pool.
        # Corresponds to the JSON property `nodePoolConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalNodePoolConfig]
        attr_accessor :node_pool_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_pool_config = args[:node_pool_config] if args.key?(:node_pool_config)
        end
      end
      
      # Represents a machine that is currently drained.
      class BareMetalDrainedMachine
        include Google::Apis::Core::Hashable
      
        # Drained machine IP address.
        # Corresponds to the JSON property `nodeIp`
        # @return [String]
        attr_accessor :node_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_ip = args[:node_ip] if args.key?(:node_ip)
        end
      end
      
      # Represents a machine that is currently draining.
      class BareMetalDrainingMachine
        include Google::Apis::Core::Hashable
      
        # Draining machine IP address.
        # Corresponds to the JSON property `nodeIp`
        # @return [String]
        attr_accessor :node_ip
      
        # The count of pods yet to drain.
        # Corresponds to the JSON property `podCount`
        # @return [Fixnum]
        attr_accessor :pod_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_ip = args[:node_ip] if args.key?(:node_ip)
          @pod_count = args[:pod_count] if args.key?(:pod_count)
        end
      end
      
      # Specifies the cluster CIDR configuration while running in island mode.
      class BareMetalIslandModeCidrConfig
        include Google::Apis::Core::Hashable
      
        # Required. All pods in the cluster are assigned an RFC1918 IPv4 address from
        # these ranges. This field cannot be changed after creation.
        # Corresponds to the JSON property `podAddressCidrBlocks`
        # @return [Array<String>]
        attr_accessor :pod_address_cidr_blocks
      
        # Required. All services in the cluster are assigned an RFC1918 IPv4 address
        # from these ranges. This field is mutable after creation starting with version
        # 1.15.
        # Corresponds to the JSON property `serviceAddressCidrBlocks`
        # @return [Array<String>]
        attr_accessor :service_address_cidr_blocks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pod_address_cidr_blocks = args[:pod_address_cidr_blocks] if args.key?(:pod_address_cidr_blocks)
          @service_address_cidr_blocks = args[:service_address_cidr_blocks] if args.key?(:service_address_cidr_blocks)
        end
      end
      
      # KubeletConfig defines the modifiable kubelet configurations for baremetal
      # machines. Note: this list includes fields supported in GKE (see https://cloud.
      # google.com/kubernetes-engine/docs/how-to/node-system-config#kubelet-options).
      class BareMetalKubeletConfig
        include Google::Apis::Core::Hashable
      
        # The maximum size of bursty pulls, temporarily allows pulls to burst to this
        # number, while still not exceeding registry_pull_qps. The value must not be a
        # negative number. Updating this field may impact scalability by changing the
        # amount of traffic produced by image pulls. Defaults to 10.
        # Corresponds to the JSON property `registryBurst`
        # @return [Fixnum]
        attr_accessor :registry_burst
      
        # The limit of registry pulls per second. Setting this value to 0 means no limit.
        # Updating this field may impact scalability by changing the amount of traffic
        # produced by image pulls. Defaults to 5.
        # Corresponds to the JSON property `registryPullQps`
        # @return [Fixnum]
        attr_accessor :registry_pull_qps
      
        # Prevents the Kubelet from pulling multiple images at a time. We recommend *not*
        # changing the default value on nodes that run docker daemon with version < 1.9
        # or an Another Union File System (Aufs) storage backend. Issue https://github.
        # com/kubernetes/kubernetes/issues/10959 has more details.
        # Corresponds to the JSON property `serializeImagePullsDisabled`
        # @return [Boolean]
        attr_accessor :serialize_image_pulls_disabled
        alias_method :serialize_image_pulls_disabled?, :serialize_image_pulls_disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @registry_burst = args[:registry_burst] if args.key?(:registry_burst)
          @registry_pull_qps = args[:registry_pull_qps] if args.key?(:registry_pull_qps)
          @serialize_image_pulls_disabled = args[:serialize_image_pulls_disabled] if args.key?(:serialize_image_pulls_disabled)
        end
      end
      
      # Represents an IP pool used by the load balancer.
      class BareMetalLoadBalancerAddressPool
        include Google::Apis::Core::Hashable
      
        # Required. The addresses that are part of this pool. Each address must be
        # either in the CIDR form (1.2.3.0/24) or range form (1.2.3.1-1.2.3.5).
        # Corresponds to the JSON property `addresses`
        # @return [Array<String>]
        attr_accessor :addresses
      
        # If true, avoid using IPs ending in .0 or .255. This avoids buggy consumer
        # devices mistakenly dropping IPv4 traffic for those special IP addresses.
        # Corresponds to the JSON property `avoidBuggyIps`
        # @return [Boolean]
        attr_accessor :avoid_buggy_ips
        alias_method :avoid_buggy_ips?, :avoid_buggy_ips
      
        # If true, prevent IP addresses from being automatically assigned.
        # Corresponds to the JSON property `manualAssign`
        # @return [Boolean]
        attr_accessor :manual_assign
        alias_method :manual_assign?, :manual_assign
      
        # Required. The name of the address pool.
        # Corresponds to the JSON property `pool`
        # @return [String]
        attr_accessor :pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addresses = args[:addresses] if args.key?(:addresses)
          @avoid_buggy_ips = args[:avoid_buggy_ips] if args.key?(:avoid_buggy_ips)
          @manual_assign = args[:manual_assign] if args.key?(:manual_assign)
          @pool = args[:pool] if args.key?(:pool)
        end
      end
      
      # Specifies the load balancer configuration.
      class BareMetalLoadBalancerConfig
        include Google::Apis::Core::Hashable
      
        # BareMetalBgpLbConfig represents configuration parameters for a Border Gateway
        # Protocol (BGP) load balancer.
        # Corresponds to the JSON property `bgpLbConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalBgpLbConfig]
        attr_accessor :bgp_lb_config
      
        # Represents configuration parameters for a manual load balancer.
        # Corresponds to the JSON property `manualLbConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalManualLbConfig]
        attr_accessor :manual_lb_config
      
        # Represents configuration parameters for a MetalLB load balancer.
        # Corresponds to the JSON property `metalLbConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalMetalLbConfig]
        attr_accessor :metal_lb_config
      
        # Specifies load balancer ports for the bare metal user cluster.
        # Corresponds to the JSON property `portConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalPortConfig]
        attr_accessor :port_config
      
        # Specifies the VIP config for the bare metal load balancer.
        # Corresponds to the JSON property `vipConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalVipConfig]
        attr_accessor :vip_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bgp_lb_config = args[:bgp_lb_config] if args.key?(:bgp_lb_config)
          @manual_lb_config = args[:manual_lb_config] if args.key?(:manual_lb_config)
          @metal_lb_config = args[:metal_lb_config] if args.key?(:metal_lb_config)
          @port_config = args[:port_config] if args.key?(:port_config)
          @vip_config = args[:vip_config] if args.key?(:vip_config)
        end
      end
      
      # Specifies the load balancer's node pool configuration.
      class BareMetalLoadBalancerNodePoolConfig
        include Google::Apis::Core::Hashable
      
        # BareMetalNodePoolConfig describes the configuration of all nodes within a
        # given bare metal node pool.
        # Corresponds to the JSON property `nodePoolConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalNodePoolConfig]
        attr_accessor :node_pool_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_pool_config = args[:node_pool_config] if args.key?(:node_pool_config)
        end
      end
      
      # Specifies the configs for local persistent volumes (PVs).
      class BareMetalLvpConfig
        include Google::Apis::Core::Hashable
      
        # Required. The host machine path.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Required. The StorageClass name that PVs will be created with.
        # Corresponds to the JSON property `storageClass`
        # @return [String]
        attr_accessor :storage_class
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
          @storage_class = args[:storage_class] if args.key?(:storage_class)
        end
      end
      
      # Specifies the configs for local persistent volumes under a shared file system.
      class BareMetalLvpShareConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the configs for local persistent volumes (PVs).
        # Corresponds to the JSON property `lvpConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalLvpConfig]
        attr_accessor :lvp_config
      
        # The number of subdirectories to create under path.
        # Corresponds to the JSON property `sharedPathPvCount`
        # @return [Fixnum]
        attr_accessor :shared_path_pv_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lvp_config = args[:lvp_config] if args.key?(:lvp_config)
          @shared_path_pv_count = args[:shared_path_pv_count] if args.key?(:shared_path_pv_count)
        end
      end
      
      # Represents the status of node machines that are undergoing drain operations.
      class BareMetalMachineDrainStatus
        include Google::Apis::Core::Hashable
      
        # The list of drained machines.
        # Corresponds to the JSON property `drainedMachines`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalDrainedMachine>]
        attr_accessor :drained_machines
      
        # The list of draning machines.
        # Corresponds to the JSON property `drainingMachines`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalDrainingMachine>]
        attr_accessor :draining_machines
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drained_machines = args[:drained_machines] if args.key?(:drained_machines)
          @draining_machines = args[:draining_machines] if args.key?(:draining_machines)
        end
      end
      
      # Specifies configurations to put bare metal nodes in and out of maintenance.
      class BareMetalMaintenanceConfig
        include Google::Apis::Core::Hashable
      
        # Required. All IPv4 address from these ranges will be placed into maintenance
        # mode. Nodes in maintenance mode will be cordoned and drained. When both of
        # these are true, the "baremetal.cluster.gke.io/maintenance" annotation will be
        # set on the node resource.
        # Corresponds to the JSON property `maintenanceAddressCidrBlocks`
        # @return [Array<String>]
        attr_accessor :maintenance_address_cidr_blocks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maintenance_address_cidr_blocks = args[:maintenance_address_cidr_blocks] if args.key?(:maintenance_address_cidr_blocks)
        end
      end
      
      # Represents the maintenance status of the bare metal user cluster.
      class BareMetalMaintenanceStatus
        include Google::Apis::Core::Hashable
      
        # Represents the status of node machines that are undergoing drain operations.
        # Corresponds to the JSON property `machineDrainStatus`
        # @return [Google::Apis::GkeonpremV1::BareMetalMachineDrainStatus]
        attr_accessor :machine_drain_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_drain_status = args[:machine_drain_status] if args.key?(:machine_drain_status)
        end
      end
      
      # Represents configuration parameters for a manual load balancer.
      class BareMetalManualLbConfig
        include Google::Apis::Core::Hashable
      
        # Whether manual load balancing is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Represents configuration parameters for a MetalLB load balancer.
      class BareMetalMetalLbConfig
        include Google::Apis::Core::Hashable
      
        # Required. AddressPools is a list of non-overlapping IP pools used by load
        # balancer typed services. All addresses must be routable to load balancer nodes.
        # IngressVIP must be included in the pools.
        # Corresponds to the JSON property `addressPools`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalLoadBalancerAddressPool>]
        attr_accessor :address_pools
      
        # Specifies the load balancer's node pool configuration.
        # Corresponds to the JSON property `loadBalancerNodePoolConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalLoadBalancerNodePoolConfig]
        attr_accessor :load_balancer_node_pool_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_pools = args[:address_pools] if args.key?(:address_pools)
          @load_balancer_node_pool_config = args[:load_balancer_node_pool_config] if args.key?(:load_balancer_node_pool_config)
        end
      end
      
      # Specifies the multiple networking interfaces cluster configuration.
      class BareMetalMultipleNetworkInterfacesConfig
        include Google::Apis::Core::Hashable
      
        # Whether to enable multiple network interfaces for your pods. When set
        # network_config.advanced_networking is automatically set to true.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Specifies the cluster network configuration.
      class BareMetalNetworkConfig
        include Google::Apis::Core::Hashable
      
        # Enables the use of advanced Anthos networking features, such as Bundled Load
        # Balancing with BGP or the egress NAT gateway. Setting configuration for
        # advanced networking features will automatically set this flag.
        # Corresponds to the JSON property `advancedNetworking`
        # @return [Boolean]
        attr_accessor :advanced_networking
        alias_method :advanced_networking?, :advanced_networking
      
        # Specifies the cluster CIDR configuration while running in island mode.
        # Corresponds to the JSON property `islandModeCidr`
        # @return [Google::Apis::GkeonpremV1::BareMetalIslandModeCidrConfig]
        attr_accessor :island_mode_cidr
      
        # Specifies the multiple networking interfaces cluster configuration.
        # Corresponds to the JSON property `multipleNetworkInterfacesConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalMultipleNetworkInterfacesConfig]
        attr_accessor :multiple_network_interfaces_config
      
        # Specifies the SR-IOV networking operator config.
        # Corresponds to the JSON property `srIovConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalSrIovConfig]
        attr_accessor :sr_iov_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_networking = args[:advanced_networking] if args.key?(:advanced_networking)
          @island_mode_cidr = args[:island_mode_cidr] if args.key?(:island_mode_cidr)
          @multiple_network_interfaces_config = args[:multiple_network_interfaces_config] if args.key?(:multiple_network_interfaces_config)
          @sr_iov_config = args[:sr_iov_config] if args.key?(:sr_iov_config)
        end
      end
      
      # Specifies the node access related settings for the bare metal user cluster.
      class BareMetalNodeAccessConfig
        include Google::Apis::Core::Hashable
      
        # LoginUser is the user name used to access node machines. It defaults to "root"
        # if not set.
        # Corresponds to the JSON property `loginUser`
        # @return [String]
        attr_accessor :login_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @login_user = args[:login_user] if args.key?(:login_user)
        end
      end
      
      # BareMetalNodeConfig lists machine addresses to access Nodes.
      class BareMetalNodeConfig
        include Google::Apis::Core::Hashable
      
        # The labels assigned to this node. An object containing a list of key/value
        # pairs. The labels here, unioned with the labels set on BareMetalNodePoolConfig
        # are the set of labels that will be applied to the node. If there are any
        # conflicts, the BareMetalNodeConfig labels take precedence. Example: ` "name": "
        # wrench", "mass": "1.3kg", "count": "3" `.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The default IPv4 address for SSH access and Kubernetes node. Example: 192.168.
        # 0.1
        # Corresponds to the JSON property `nodeIp`
        # @return [String]
        attr_accessor :node_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @node_ip = args[:node_ip] if args.key?(:node_ip)
        end
      end
      
      # Resource that represents a bare metal node pool.
      class BareMetalNodePool
        include Google::Apis::Core::Hashable
      
        # Annotations on the bare metal node pool. This field has the same restrictions
        # as Kubernetes annotations. The total size of all keys and values combined is
        # limited to 256k. Key can have 2 segments: prefix (optional) and name (required)
        # , separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63
        # characters or less, begin and end with alphanumerics, with dashes (-),
        # underscores (_), dots (.), and alphanumerics between.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The time at which this bare metal node pool was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time at which this bare metal node pool was deleted. If the
        # resource is not deleted, this must be empty
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # The display name for the bare metal node pool.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding. Allows clients to perform consistent read-
        # modify-writes through optimistic concurrency control.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Immutable. The bare metal node pool resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # BareMetalNodePoolConfig describes the configuration of all nodes within a
        # given bare metal node pool.
        # Corresponds to the JSON property `nodePoolConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalNodePoolConfig]
        attr_accessor :node_pool_config
      
        # Output only. If set, there are currently changes in flight to the bare metal
        # node pool.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The current state of the bare metal node pool.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # ResourceStatus describes why a cluster or node pool has a certain status. (e.g.
        # , ERROR or DEGRADED).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GkeonpremV1::ResourceStatus]
        attr_accessor :status
      
        # Output only. The unique identifier of the bare metal node pool.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time at which this bare metal node pool was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @node_pool_config = args[:node_pool_config] if args.key?(:node_pool_config)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @status = args[:status] if args.key?(:status)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # BareMetalNodePoolConfig describes the configuration of all nodes within a
      # given bare metal node pool.
      class BareMetalNodePoolConfig
        include Google::Apis::Core::Hashable
      
        # KubeletConfig defines the modifiable kubelet configurations for baremetal
        # machines. Note: this list includes fields supported in GKE (see https://cloud.
        # google.com/kubernetes-engine/docs/how-to/node-system-config#kubelet-options).
        # Corresponds to the JSON property `kubeletConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalKubeletConfig]
        attr_accessor :kubelet_config
      
        # The labels assigned to nodes of this node pool. An object containing a list of
        # key/value pairs. Example: ` "name": "wrench", "mass": "1.3kg", "count": "3" `.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The list of machine addresses in the bare metal node pool.
        # Corresponds to the JSON property `nodeConfigs`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalNodeConfig>]
        attr_accessor :node_configs
      
        # Specifies the nodes operating system (default: LINUX).
        # Corresponds to the JSON property `operatingSystem`
        # @return [String]
        attr_accessor :operating_system
      
        # The initial taints assigned to nodes of this node pool.
        # Corresponds to the JSON property `taints`
        # @return [Array<Google::Apis::GkeonpremV1::NodeTaint>]
        attr_accessor :taints
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kubelet_config = args[:kubelet_config] if args.key?(:kubelet_config)
          @labels = args[:labels] if args.key?(:labels)
          @node_configs = args[:node_configs] if args.key?(:node_configs)
          @operating_system = args[:operating_system] if args.key?(:operating_system)
          @taints = args[:taints] if args.key?(:taints)
        end
      end
      
      # Specifies operating system settings for cluster provisioning.
      class BareMetalOsEnvironmentConfig
        include Google::Apis::Core::Hashable
      
        # Whether the package repo should not be included when initializing bare metal
        # machines.
        # Corresponds to the JSON property `packageRepoExcluded`
        # @return [Boolean]
        attr_accessor :package_repo_excluded
        alias_method :package_repo_excluded?, :package_repo_excluded
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @package_repo_excluded = args[:package_repo_excluded] if args.key?(:package_repo_excluded)
        end
      end
      
      # Specifies load balancer ports for the bare metal user cluster.
      class BareMetalPortConfig
        include Google::Apis::Core::Hashable
      
        # The port that control plane hosted load balancers will listen on.
        # Corresponds to the JSON property `controlPlaneLoadBalancerPort`
        # @return [Fixnum]
        attr_accessor :control_plane_load_balancer_port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_plane_load_balancer_port = args[:control_plane_load_balancer_port] if args.key?(:control_plane_load_balancer_port)
        end
      end
      
      # Specifies the cluster proxy configuration.
      class BareMetalProxyConfig
        include Google::Apis::Core::Hashable
      
        # A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["
        # 127.0.0.1", "example.com", ".corp", "localhost"].
        # Corresponds to the JSON property `noProxy`
        # @return [Array<String>]
        attr_accessor :no_proxy
      
        # Required. Specifies the address of your proxy server. Examples: `http://domain`
        # Do not provide credentials in the format `http://(username:password@)domain`
        # these will be rejected by the server.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @no_proxy = args[:no_proxy] if args.key?(:no_proxy)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Specifies the security related settings for the bare metal user cluster.
      class BareMetalSecurityConfig
        include Google::Apis::Core::Hashable
      
        # Authorization defines the On-Prem cluster authorization configuration to
        # bootstrap onto the admin cluster.
        # Corresponds to the JSON property `authorization`
        # @return [Google::Apis::GkeonpremV1::Authorization]
        attr_accessor :authorization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization = args[:authorization] if args.key?(:authorization)
        end
      end
      
      # Specifies the SR-IOV networking operator config.
      class BareMetalSrIovConfig
        include Google::Apis::Core::Hashable
      
        # Whether to install the SR-IOV operator.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # BareMetalStorageConfig specifies the cluster storage configuration.
      class BareMetalStorageConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the configs for local persistent volumes (PVs).
        # Corresponds to the JSON property `lvpNodeMountsConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalLvpConfig]
        attr_accessor :lvp_node_mounts_config
      
        # Specifies the configs for local persistent volumes under a shared file system.
        # Corresponds to the JSON property `lvpShareConfig`
        # @return [Google::Apis::GkeonpremV1::BareMetalLvpShareConfig]
        attr_accessor :lvp_share_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lvp_node_mounts_config = args[:lvp_node_mounts_config] if args.key?(:lvp_node_mounts_config)
          @lvp_share_config = args[:lvp_share_config] if args.key?(:lvp_share_config)
        end
      end
      
      # Contains information about a specific Anthos on bare metal version.
      class BareMetalVersionInfo
        include Google::Apis::Core::Hashable
      
        # If set, the cluster dependencies (e.g. the admin cluster, other user clusters
        # managed by the same admin cluster, version skew policy, etc) must be upgraded
        # before this version can be installed or upgraded to.
        # Corresponds to the JSON property `hasDependencies`
        # @return [Boolean]
        attr_accessor :has_dependencies
        alias_method :has_dependencies?, :has_dependencies
      
        # Version number e.g. 1.13.1.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_dependencies = args[:has_dependencies] if args.key?(:has_dependencies)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Specifies the VIP config for the bare metal load balancer.
      class BareMetalVipConfig
        include Google::Apis::Core::Hashable
      
        # The VIP which you previously set aside for the Kubernetes API of this bare
        # metal user cluster.
        # Corresponds to the JSON property `controlPlaneVip`
        # @return [String]
        attr_accessor :control_plane_vip
      
        # The VIP which you previously set aside for ingress traffic into this bare
        # metal user cluster.
        # Corresponds to the JSON property `ingressVip`
        # @return [String]
        attr_accessor :ingress_vip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_plane_vip = args[:control_plane_vip] if args.key?(:control_plane_vip)
          @ingress_vip = args[:ingress_vip] if args.key?(:ingress_vip)
        end
      end
      
      # Specifies the workload node configurations.
      class BareMetalWorkloadNodeConfig
        include Google::Apis::Core::Hashable
      
        # Specifies which container runtime will be used.
        # Corresponds to the JSON property `containerRuntime`
        # @return [String]
        attr_accessor :container_runtime
      
        # The maximum number of pods a node can run. The size of the CIDR range assigned
        # to the node will be derived from this parameter.
        # Corresponds to the JSON property `maxPodsPerNode`
        # @return [Fixnum]
        attr_accessor :max_pods_per_node
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_runtime = args[:container_runtime] if args.key?(:container_runtime)
          @max_pods_per_node = args[:max_pods_per_node] if args.key?(:max_pods_per_node)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::GkeonpremV1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `deleted:
        # user:`emailid`?uid=`uniqueid``: An email address (plus unique identifier)
        # representing a user that has been recently deleted. For example, `alice@
        # example.com?uid=123456789012345678901`. If the user is recovered, this value
        # reverts to `user:`emailid`` and the recovered user retains the role in the
        # binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address
        # (plus unique identifier) representing a service account that has been recently
        # deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
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
      
      # ClusterUser configures user principals for an RBAC policy.
      class ClusterUser
        include Google::Apis::Core::Hashable
      
        # Required. The name of the user, e.g. `my-gcp-id@gmail.com`.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @username = args[:username] if args.key?(:username)
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
      
      # Message for enrolling an existing bare metal admin cluster to the GKE on-prem
      # API.
      class EnrollBareMetalAdminClusterRequest
        include Google::Apis::Core::Hashable
      
        # User provided OnePlatform identifier that is used as part of the resource name.
        # This must be unique among all GKE on-prem clusters within a project and
        # location and will return a 409 if the cluster already exists. This value must
        # be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/
        # rfc1123) format.
        # Corresponds to the JSON property `bareMetalAdminClusterId`
        # @return [String]
        attr_accessor :bare_metal_admin_cluster_id
      
        # Required. This is the full resource name of this admin cluster's fleet
        # membership.
        # Corresponds to the JSON property `membership`
        # @return [String]
        attr_accessor :membership
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bare_metal_admin_cluster_id = args[:bare_metal_admin_cluster_id] if args.key?(:bare_metal_admin_cluster_id)
          @membership = args[:membership] if args.key?(:membership)
        end
      end
      
      # Message for enrolling an existing bare metal cluster to the Anthos On-Prem API.
      class EnrollBareMetalClusterRequest
        include Google::Apis::Core::Hashable
      
        # Required. The admin cluster this bare metal user cluster belongs to. This is
        # the full resource name of the admin cluster's fleet membership. In the future,
        # references to other resource types might be allowed if admin clusters are
        # modeled as their own resources.
        # Corresponds to the JSON property `adminClusterMembership`
        # @return [String]
        attr_accessor :admin_cluster_membership
      
        # User provided OnePlatform identifier that is used as part of the resource name.
        # This must be unique among all bare metal clusters within a project and
        # location and will return a 409 if the cluster already exists. This value must
        # be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/
        # rfc1123) format.
        # Corresponds to the JSON property `bareMetalClusterId`
        # @return [String]
        attr_accessor :bare_metal_cluster_id
      
        # The object name of the bare metal cluster custom resource on the associated
        # admin cluster. This field is used to support conflicting resource names when
        # enrolling existing clusters to the API. When not provided, this field will
        # resolve to the bare_metal_cluster_id. Otherwise, it must match the object name
        # of the bare metal cluster custom resource. It is not modifiable outside /
        # beyond the enrollment operation.
        # Corresponds to the JSON property `localName`
        # @return [String]
        attr_accessor :local_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_cluster_membership = args[:admin_cluster_membership] if args.key?(:admin_cluster_membership)
          @bare_metal_cluster_id = args[:bare_metal_cluster_id] if args.key?(:bare_metal_cluster_id)
          @local_name = args[:local_name] if args.key?(:local_name)
        end
      end
      
      # Message for enrolling an existing bare metal node pool to the GKE on-prem API.
      class EnrollBareMetalNodePoolRequest
        include Google::Apis::Core::Hashable
      
        # User provided OnePlatform identifier that is used as part of the resource name.
        # This value must be up to 40 characters and follow RFC-1123 (https://tools.
        # ietf.org/html/rfc1123) format.
        # Corresponds to the JSON property `bareMetalNodePoolId`
        # @return [String]
        attr_accessor :bare_metal_node_pool_id
      
        # If set, only validate the request, but do not actually enroll the node pool.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bare_metal_node_pool_id = args[:bare_metal_node_pool_id] if args.key?(:bare_metal_node_pool_id)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Message for enrolling an existing VMware admin cluster to the GKE on-prem API.
      class EnrollVmwareAdminClusterRequest
        include Google::Apis::Core::Hashable
      
        # The object name of the VMware OnPremAdminCluster custom resource on the
        # associated admin cluster. This field is used to support conflicting resource
        # names when enrolling existing clusters to the API. When not provided, this
        # field will resolve to the vmware_admin_cluster_id. Otherwise, it must match
        # the object name of the VMware OnPremAdminCluster custom resource. It is not
        # modifiable outside / beyond the enrollment operation.
        # Corresponds to the JSON property `localName`
        # @return [String]
        attr_accessor :local_name
      
        # Required. This is the full resource name of this admin cluster's fleet
        # membership.
        # Corresponds to the JSON property `membership`
        # @return [String]
        attr_accessor :membership
      
        # User provided OnePlatform identifier that is used as part of the resource name.
        # This must be unique among all GKE on-prem clusters within a project and
        # location and will return a 409 if the cluster already exists. This value must
        # be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/
        # rfc1123) format.
        # Corresponds to the JSON property `vmwareAdminClusterId`
        # @return [String]
        attr_accessor :vmware_admin_cluster_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_name = args[:local_name] if args.key?(:local_name)
          @membership = args[:membership] if args.key?(:membership)
          @vmware_admin_cluster_id = args[:vmware_admin_cluster_id] if args.key?(:vmware_admin_cluster_id)
        end
      end
      
      # Message for enrolling an existing VMware cluster to the Anthos On-Prem API.
      class EnrollVmwareClusterRequest
        include Google::Apis::Core::Hashable
      
        # Required. The admin cluster this VMware user cluster belongs to. This is the
        # full resource name of the admin cluster's fleet membership. In the future,
        # references to other resource types might be allowed if admin clusters are
        # modeled as their own resources.
        # Corresponds to the JSON property `adminClusterMembership`
        # @return [String]
        attr_accessor :admin_cluster_membership
      
        # The object name of the VMware OnPremUserCluster custom resource on the
        # associated admin cluster. This field is used to support conflicting resource
        # names when enrolling existing clusters to the API. When not provided, this
        # field will resolve to the vmware_cluster_id. Otherwise, it must match the
        # object name of the VMware OnPremUserCluster custom resource. It is not
        # modifiable outside / beyond the enrollment operation.
        # Corresponds to the JSON property `localName`
        # @return [String]
        attr_accessor :local_name
      
        # Validate the request without actually doing any updates.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        # User provided OnePlatform identifier that is used as part of the resource name.
        # This must be unique among all GKE on-prem clusters within a project and
        # location and will return a 409 if the cluster already exists. This value must
        # be up to 40 characters and follow RFC-1123 (https://tools.ietf.org/html/
        # rfc1123) format.
        # Corresponds to the JSON property `vmwareClusterId`
        # @return [String]
        attr_accessor :vmware_cluster_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_cluster_membership = args[:admin_cluster_membership] if args.key?(:admin_cluster_membership)
          @local_name = args[:local_name] if args.key?(:local_name)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
          @vmware_cluster_id = args[:vmware_cluster_id] if args.key?(:vmware_cluster_id)
        end
      end
      
      # Message for enrolling a VMware node pool.
      class EnrollVmwareNodePoolRequest
        include Google::Apis::Core::Hashable
      
        # The target node pool id to be enrolled.
        # Corresponds to the JSON property `vmwareNodePoolId`
        # @return [String]
        attr_accessor :vmware_node_pool_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vmware_node_pool_id = args[:vmware_node_pool_id] if args.key?(:vmware_node_pool_id)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Fleet related configuration. Fleets are a Google Cloud concept for logically
      # organizing clusters, letting you use and manage multi-cluster capabilities and
      # apply consistent policies across your systems. See [Anthos Fleets](`https://
      # cloud.google.com/anthos/multicluster-management/fleets`) for more details on
      # Anthos multi-cluster capabilities using Fleets. ##
      class Fleet
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the managed fleet Membership resource associated to
        # this cluster. Membership names are formatted as `projects//locations//
        # memberships/`.
        # Corresponds to the JSON property `membership`
        # @return [String]
        attr_accessor :membership
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @membership = args[:membership] if args.key?(:membership)
        end
      end
      
      # Response message for listing bare metal admin clusters.
      class ListBareMetalAdminClustersResponse
        include Google::Apis::Core::Hashable
      
        # The list of bare metal admin cluster.
        # Corresponds to the JSON property `bareMetalAdminClusters`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalAdminCluster>]
        attr_accessor :bare_metal_admin_clusters
      
        # A token identifying a page of results the server should return. If the token
        # is not empty this means that more results are available and should be
        # retrieved by repeating the request with the provided page token.
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
          @bare_metal_admin_clusters = args[:bare_metal_admin_clusters] if args.key?(:bare_metal_admin_clusters)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for listing bare metal Clusters.
      class ListBareMetalClustersResponse
        include Google::Apis::Core::Hashable
      
        # The list of bare metal Clusters.
        # Corresponds to the JSON property `bareMetalClusters`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalCluster>]
        attr_accessor :bare_metal_clusters
      
        # A token identifying a page of results the server should return. If the token
        # is not empty this means that more results are available and should be
        # retrieved by repeating the request with the provided page token.
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
          @bare_metal_clusters = args[:bare_metal_clusters] if args.key?(:bare_metal_clusters)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for listing bare metal node pools.
      class ListBareMetalNodePoolsResponse
        include Google::Apis::Core::Hashable
      
        # The node pools from the specified parent resource.
        # Corresponds to the JSON property `bareMetalNodePools`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalNodePool>]
        attr_accessor :bare_metal_node_pools
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
          @bare_metal_node_pools = args[:bare_metal_node_pools] if args.key?(:bare_metal_node_pools)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::GkeonpremV1::Location>]
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
        # @return [Array<Google::Apis::GkeonpremV1::Operation>]
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
      
      # Response message for listing VMware admin clusters.
      class ListVmwareAdminClustersResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return. If the token
        # is not empty this means that more results are available and should be
        # retrieved by repeating the request with the provided page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The list of VMware admin cluster.
        # Corresponds to the JSON property `vmwareAdminClusters`
        # @return [Array<Google::Apis::GkeonpremV1::VmwareAdminCluster>]
        attr_accessor :vmware_admin_clusters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @vmware_admin_clusters = args[:vmware_admin_clusters] if args.key?(:vmware_admin_clusters)
        end
      end
      
      # Response message for listing VMware Clusters.
      class ListVmwareClustersResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return. If the token
        # is not empty this means that more results are available and should be
        # retrieved by repeating the request with the provided page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The list of VMware Cluster.
        # Corresponds to the JSON property `vmwareClusters`
        # @return [Array<Google::Apis::GkeonpremV1::VmwareCluster>]
        attr_accessor :vmware_clusters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @vmware_clusters = args[:vmware_clusters] if args.key?(:vmware_clusters)
        end
      end
      
      # Response message for listing VMware node pools.
      class ListVmwareNodePoolsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The node pools from the specified parent resource.
        # Corresponds to the JSON property `vmwareNodePools`
        # @return [Array<Google::Apis::GkeonpremV1::VmwareNodePool>]
        attr_accessor :vmware_node_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @vmware_node_pools = args[:vmware_node_pools] if args.key?(:vmware_node_pools)
        end
      end
      
      # A resource that represents a Google Cloud location.
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
      
      # NodeTaint applied to every Kubernetes node in a node pool. Kubernetes taints
      # can be used together with tolerations to control how workloads are scheduled
      # to your nodes. Node taints are permanent.
      class NodeTaint
        include Google::Apis::Core::Hashable
      
        # The taint effect.
        # Corresponds to the JSON property `effect`
        # @return [String]
        attr_accessor :effect
      
        # Key associated with the effect.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Value associated with the effect.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effect = args[:effect] if args.key?(:effect)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
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
        # @return [Google::Apis::GkeonpremV1::Status]
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
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have [Operation.
        # error] value with a [google.rpc.Status.code] of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Type of operation being executed.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Name of the verb executed by the operation.
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
          @type = args[:type] if args.key?(:type)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
      # bindings: - members: - user:mike@example.com - group:admins@example.com -
      # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
      # com role: roles/resourcemanager.organizationViewer condition: title: expirable
      # access description: Does not grant access after Sep 2020 expression: request.
      # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
      # a description of IAM and its features, see the [IAM documentation](https://
      # cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::GkeonpremV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Response message for querying bare metal admin cluster version config.
      class QueryBareMetalAdminVersionConfigResponse
        include Google::Apis::Core::Hashable
      
        # List of available versions to install or to upgrade to.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalVersionInfo>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # Response message for querying bare metal admin cluster version config.
      class QueryBareMetalVersionConfigResponse
        include Google::Apis::Core::Hashable
      
        # List of available versions to install or to upgrade to.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::GkeonpremV1::BareMetalVersionInfo>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # Response message for querying VMware user cluster version config.
      class QueryVmwareVersionConfigResponse
        include Google::Apis::Core::Hashable
      
        # List of available versions to install or to upgrade to.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::GkeonpremV1::VmwareVersionInfo>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # ResourceCondition provides a standard mechanism for higher-level status
      # reporting from controller.
      class ResourceCondition
        include Google::Apis::Core::Hashable
      
        # Last time the condition transit from one status to another.
        # Corresponds to the JSON property `lastTransitionTime`
        # @return [String]
        attr_accessor :last_transition_time
      
        # Human-readable message indicating details about last transition.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Machine-readable message indicating details about last transition.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # state of the condition.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Type of the condition. (e.g., ClusterRunning, NodePoolRunning or
        # ServerSidePreflightReady)
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_transition_time = args[:last_transition_time] if args.key?(:last_transition_time)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # ResourceStatus describes why a cluster or node pool has a certain status. (e.g.
      # , ERROR or DEGRADED).
      class ResourceStatus
        include Google::Apis::Core::Hashable
      
        # ResourceCondition provide a standard mechanism for higher-level status
        # reporting from controller.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::GkeonpremV1::ResourceCondition>]
        attr_accessor :conditions
      
        # Human-friendly representation of the error message from controller. The error
        # message can be temporary as the controller controller creates a cluster or
        # node pool. If the error message persists for a longer period of time, it can
        # be used to surface error message to indicate real problems requiring user
        # intervention.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
          @error_message = args[:error_message] if args.key?(:error_message)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
        # bindings: - members: - user:mike@example.com - group:admins@example.com -
        # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
        # com role: roles/resourcemanager.organizationViewer condition: title: expirable
        # access description: Does not grant access after Sep 2020 expression: request.
        # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
        # a description of IAM and its features, see the [IAM documentation](https://
        # cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::GkeonpremV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
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
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # ValidationCheck represents the result of preflight check.
      class ValidationCheck
        include Google::Apis::Core::Hashable
      
        # Options used for the validation check
        # Corresponds to the JSON property `option`
        # @return [String]
        attr_accessor :option
      
        # Output only. The scenario when the preflight checks were run.
        # Corresponds to the JSON property `scenario`
        # @return [String]
        attr_accessor :scenario
      
        # ValidationCheckStatus defines the detailed validation check status.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GkeonpremV1::ValidationCheckStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @option = args[:option] if args.key?(:option)
          @scenario = args[:scenario] if args.key?(:scenario)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # ValidationCheckResult defines the details about the validation check.
      class ValidationCheckResult
        include Google::Apis::Core::Hashable
      
        # The category of the validation.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The description of the validation check.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Detailed failure information, which might be unformatted.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # A human-readable message of the check failure.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The validation check state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @description = args[:description] if args.key?(:description)
          @details = args[:details] if args.key?(:details)
          @reason = args[:reason] if args.key?(:reason)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # ValidationCheckStatus defines the detailed validation check status.
      class ValidationCheckStatus
        include Google::Apis::Core::Hashable
      
        # Individual checks which failed as part of the Preflight check execution.
        # Corresponds to the JSON property `result`
        # @return [Array<Google::Apis::GkeonpremV1::ValidationCheckResult>]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # Specifies anti affinity group config for the VMware user cluster.
      class VmwareAagConfig
        include Google::Apis::Core::Hashable
      
        # Spread nodes across at least three physical hosts (requires at least three
        # hosts). Enabled by default.
        # Corresponds to the JSON property `aagConfigDisabled`
        # @return [Boolean]
        attr_accessor :aag_config_disabled
        alias_method :aag_config_disabled?, :aag_config_disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aag_config_disabled = args[:aag_config_disabled] if args.key?(:aag_config_disabled)
        end
      end
      
      # Represents an IP pool used by the load balancer.
      class VmwareAddressPool
        include Google::Apis::Core::Hashable
      
        # Required. The addresses that are part of this pool. Each address must be
        # either in the CIDR form (1.2.3.0/24) or range form (1.2.3.1-1.2.3.5).
        # Corresponds to the JSON property `addresses`
        # @return [Array<String>]
        attr_accessor :addresses
      
        # If true, avoid using IPs ending in .0 or .255. This avoids buggy consumer
        # devices mistakenly dropping IPv4 traffic for those special IP addresses.
        # Corresponds to the JSON property `avoidBuggyIps`
        # @return [Boolean]
        attr_accessor :avoid_buggy_ips
        alias_method :avoid_buggy_ips?, :avoid_buggy_ips
      
        # If true, prevent IP addresses from being automatically assigned.
        # Corresponds to the JSON property `manualAssign`
        # @return [Boolean]
        attr_accessor :manual_assign
        alias_method :manual_assign?, :manual_assign
      
        # Required. The name of the address pool.
        # Corresponds to the JSON property `pool`
        # @return [String]
        attr_accessor :pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addresses = args[:addresses] if args.key?(:addresses)
          @avoid_buggy_ips = args[:avoid_buggy_ips] if args.key?(:avoid_buggy_ips)
          @manual_assign = args[:manual_assign] if args.key?(:manual_assign)
          @pool = args[:pool] if args.key?(:pool)
        end
      end
      
      # VmwareAdminAddonNodeConfig contains add-on node configurations for VMware
      # admin cluster.
      class VmwareAdminAddonNodeConfig
        include Google::Apis::Core::Hashable
      
        # Represents auto resizing configurations for the VMware user cluster.
        # Corresponds to the JSON property `autoResizeConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareAutoResizeConfig]
        attr_accessor :auto_resize_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_resize_config = args[:auto_resize_config] if args.key?(:auto_resize_config)
        end
      end
      
      # Resource that represents a VMware admin cluster.
      class VmwareAdminCluster
        include Google::Apis::Core::Hashable
      
        # VmwareAdminAddonNodeConfig contains add-on node configurations for VMware
        # admin cluster.
        # Corresponds to the JSON property `addonNode`
        # @return [Google::Apis::GkeonpremV1::VmwareAdminAddonNodeConfig]
        attr_accessor :addon_node
      
        # Annotations on the VMware admin cluster. This field has the same restrictions
        # as Kubernetes annotations. The total size of all keys and values combined is
        # limited to 256k. Key can have 2 segments: prefix (optional) and name (required)
        # , separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63
        # characters or less, begin and end with alphanumerics, with dashes (-),
        # underscores (_), dots (.), and alphanumerics between.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Specifies anti affinity group config for the VMware user cluster.
        # Corresponds to the JSON property `antiAffinityGroups`
        # @return [Google::Apis::GkeonpremV1::VmwareAagConfig]
        attr_accessor :anti_affinity_groups
      
        # Specifies config to enable/disable auto repair. The cluster-health-controller
        # is deployed only if Enabled is true.
        # Corresponds to the JSON property `autoRepairConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareAutoRepairConfig]
        attr_accessor :auto_repair_config
      
        # The bootstrap cluster this VMware admin cluster belongs to.
        # Corresponds to the JSON property `bootstrapClusterMembership`
        # @return [String]
        attr_accessor :bootstrap_cluster_membership
      
        # VmwareAdminControlPlaneNodeConfig contains control plane node configuration
        # for VMware admin cluster.
        # Corresponds to the JSON property `controlPlaneNode`
        # @return [Google::Apis::GkeonpremV1::VmwareAdminControlPlaneNodeConfig]
        attr_accessor :control_plane_node
      
        # Output only. The time at which VMware admin cluster was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A human readable description of this VMware admin cluster.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The DNS name of VMware admin cluster's API server.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding. Allows clients to perform consistent read-
        # modify-writes through optimistic concurrency control.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Fleet related configuration. Fleets are a Google Cloud concept for logically
        # organizing clusters, letting you use and manage multi-cluster capabilities and
        # apply consistent policies across your systems. See [Anthos Fleets](`https://
        # cloud.google.com/anthos/multicluster-management/fleets`) for more details on
        # Anthos multi-cluster capabilities using Fleets. ##
        # Corresponds to the JSON property `fleet`
        # @return [Google::Apis::GkeonpremV1::Fleet]
        attr_accessor :fleet
      
        # The OS image type for the VMware admin cluster.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # VmwareAdminLoadBalancerConfig contains load balancer configuration for VMware
        # admin cluster.
        # Corresponds to the JSON property `loadBalancer`
        # @return [Google::Apis::GkeonpremV1::VmwareAdminLoadBalancerConfig]
        attr_accessor :load_balancer
      
        # Output only. The object name of the VMware OnPremAdminCluster custom resource.
        # This field is used to support conflicting names when enrolling existing
        # clusters to the API. When used as a part of cluster enrollment, this field
        # will differ from the ID in the resource name. For new clusters, this field
        # will match the user provided cluster name and be visible in the last component
        # of the resource name. It is not modifiable. All users should use this name to
        # access their cluster using gkectl or kubectl and should expect to see the
        # local name when viewing admin cluster controller logs.
        # Corresponds to the JSON property `localName`
        # @return [String]
        attr_accessor :local_name
      
        # Immutable. The VMware admin cluster resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # VmwareAdminNetworkConfig contains network configuration for VMware admin
        # cluster.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareAdminNetworkConfig]
        attr_accessor :network_config
      
        # The Anthos clusters on the VMware version for the admin cluster.
        # Corresponds to the JSON property `onPremVersion`
        # @return [String]
        attr_accessor :on_prem_version
      
        # VmwarePlatformConfig represents configuration for the VMware platform.
        # Corresponds to the JSON property `platformConfig`
        # @return [Google::Apis::GkeonpremV1::VmwarePlatformConfig]
        attr_accessor :platform_config
      
        # Output only. If set, there are currently changes in flight to the VMware admin
        # cluster.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The current state of VMware admin cluster.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # ResourceStatus describes why a cluster or node pool has a certain status. (e.g.
        # , ERROR or DEGRADED).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GkeonpremV1::ResourceStatus]
        attr_accessor :status
      
        # Output only. The unique identifier of the VMware admin cluster.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time at which VMware admin cluster was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # VmwareAdminVCenterConfig contains VCenter configuration for VMware admin
        # cluster.
        # Corresponds to the JSON property `vcenter`
        # @return [Google::Apis::GkeonpremV1::VmwareAdminVCenterConfig]
        attr_accessor :vcenter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addon_node = args[:addon_node] if args.key?(:addon_node)
          @annotations = args[:annotations] if args.key?(:annotations)
          @anti_affinity_groups = args[:anti_affinity_groups] if args.key?(:anti_affinity_groups)
          @auto_repair_config = args[:auto_repair_config] if args.key?(:auto_repair_config)
          @bootstrap_cluster_membership = args[:bootstrap_cluster_membership] if args.key?(:bootstrap_cluster_membership)
          @control_plane_node = args[:control_plane_node] if args.key?(:control_plane_node)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @etag = args[:etag] if args.key?(:etag)
          @fleet = args[:fleet] if args.key?(:fleet)
          @image_type = args[:image_type] if args.key?(:image_type)
          @load_balancer = args[:load_balancer] if args.key?(:load_balancer)
          @local_name = args[:local_name] if args.key?(:local_name)
          @name = args[:name] if args.key?(:name)
          @network_config = args[:network_config] if args.key?(:network_config)
          @on_prem_version = args[:on_prem_version] if args.key?(:on_prem_version)
          @platform_config = args[:platform_config] if args.key?(:platform_config)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @status = args[:status] if args.key?(:status)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vcenter = args[:vcenter] if args.key?(:vcenter)
        end
      end
      
      # VmwareAdminControlPlaneNodeConfig contains control plane node configuration
      # for VMware admin cluster.
      class VmwareAdminControlPlaneNodeConfig
        include Google::Apis::Core::Hashable
      
        # The number of vCPUs for the control-plane node of the admin cluster.
        # Corresponds to the JSON property `cpus`
        # @return [Fixnum]
        attr_accessor :cpus
      
        # The number of mebibytes of memory for the control-plane node of the admin
        # cluster.
        # Corresponds to the JSON property `memory`
        # @return [Fixnum]
        attr_accessor :memory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpus = args[:cpus] if args.key?(:cpus)
          @memory = args[:memory] if args.key?(:memory)
        end
      end
      
      # VmwareAdminF5BigIpConfig represents configuration parameters for an F5 BIG-IP
      # load balancer.
      class VmwareAdminF5BigIpConfig
        include Google::Apis::Core::Hashable
      
        # The load balancer's IP address.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # The preexisting partition to be used by the load balancer. This partition is
        # usually created for the admin cluster for example: 'my-f5-admin-partition'.
        # Corresponds to the JSON property `partition`
        # @return [String]
        attr_accessor :partition
      
        # The pool name. Only necessary, if using SNAT.
        # Corresponds to the JSON property `snatPool`
        # @return [String]
        attr_accessor :snat_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @partition = args[:partition] if args.key?(:partition)
          @snat_pool = args[:snat_pool] if args.key?(:snat_pool)
        end
      end
      
      # VmwareAdminLoadBalancerConfig contains load balancer configuration for VMware
      # admin cluster.
      class VmwareAdminLoadBalancerConfig
        include Google::Apis::Core::Hashable
      
        # VmwareAdminF5BigIpConfig represents configuration parameters for an F5 BIG-IP
        # load balancer.
        # Corresponds to the JSON property `f5Config`
        # @return [Google::Apis::GkeonpremV1::VmwareAdminF5BigIpConfig]
        attr_accessor :f5_config
      
        # Manually configured load balancers.
        # Corresponds to the JSON property `manualLbConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareAdminManualLbConfig]
        attr_accessor :manual_lb_config
      
        # VmwareAdminMetalLbConfig represents configuration parameters for a MetalLB
        # load balancer. For admin clusters, currently no configurations is needed.
        # Corresponds to the JSON property `metalLbConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareAdminMetalLbConfig]
        attr_accessor :metal_lb_config
      
        # VmwareAdminVipConfig for VMware load balancer configurations.
        # Corresponds to the JSON property `vipConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareAdminVipConfig]
        attr_accessor :vip_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @f5_config = args[:f5_config] if args.key?(:f5_config)
          @manual_lb_config = args[:manual_lb_config] if args.key?(:manual_lb_config)
          @metal_lb_config = args[:metal_lb_config] if args.key?(:metal_lb_config)
          @vip_config = args[:vip_config] if args.key?(:vip_config)
        end
      end
      
      # 
      class VmwareAdminManualLbConfig
        include Google::Apis::Core::Hashable
      
        # NodePort for add-ons server in the admin cluster.
        # Corresponds to the JSON property `addonsNodePort`
        # @return [Fixnum]
        attr_accessor :addons_node_port
      
        # NodePort for control plane service. The Kubernetes API server in the admin
        # cluster is implemented as a Service of type NodePort (ex. 30968).
        # Corresponds to the JSON property `controlPlaneNodePort`
        # @return [Fixnum]
        attr_accessor :control_plane_node_port
      
        # NodePort for ingress service's http. The ingress service in the admin cluster
        # is implemented as a Service of type NodePort (ex. 32527).
        # Corresponds to the JSON property `ingressHttpNodePort`
        # @return [Fixnum]
        attr_accessor :ingress_http_node_port
      
        # NodePort for ingress service's https. The ingress service in the admin cluster
        # is implemented as a Service of type NodePort (ex. 30139).
        # Corresponds to the JSON property `ingressHttpsNodePort`
        # @return [Fixnum]
        attr_accessor :ingress_https_node_port
      
        # NodePort for konnectivity server service running as a sidecar in each kube-
        # apiserver pod (ex. 30564).
        # Corresponds to the JSON property `konnectivityServerNodePort`
        # @return [Fixnum]
        attr_accessor :konnectivity_server_node_port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addons_node_port = args[:addons_node_port] if args.key?(:addons_node_port)
          @control_plane_node_port = args[:control_plane_node_port] if args.key?(:control_plane_node_port)
          @ingress_http_node_port = args[:ingress_http_node_port] if args.key?(:ingress_http_node_port)
          @ingress_https_node_port = args[:ingress_https_node_port] if args.key?(:ingress_https_node_port)
          @konnectivity_server_node_port = args[:konnectivity_server_node_port] if args.key?(:konnectivity_server_node_port)
        end
      end
      
      # VmwareAdminMetalLbConfig represents configuration parameters for a MetalLB
      # load balancer. For admin clusters, currently no configurations is needed.
      class VmwareAdminMetalLbConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # VmwareAdminNetworkConfig contains network configuration for VMware admin
      # cluster.
      class VmwareAdminNetworkConfig
        include Google::Apis::Core::Hashable
      
        # Represents the network configuration required for the VMware user clusters
        # with DHCP IP configurations.
        # Corresponds to the JSON property `dhcpIpConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareDhcpIpConfig]
        attr_accessor :dhcp_ip_config
      
        # Represents the common parameters for all the hosts irrespective of their IP
        # address.
        # Corresponds to the JSON property `hostConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareHostConfig]
        attr_accessor :host_config
      
        # Required. All pods in the cluster are assigned an RFC1918 IPv4 address from
        # these ranges. Only a single range is supported. This field cannot be changed
        # after creation.
        # Corresponds to the JSON property `podAddressCidrBlocks`
        # @return [Array<String>]
        attr_accessor :pod_address_cidr_blocks
      
        # Required. All services in the cluster are assigned an RFC1918 IPv4 address
        # from these ranges. Only a single range is supported. This field cannot be
        # changed after creation.
        # Corresponds to the JSON property `serviceAddressCidrBlocks`
        # @return [Array<String>]
        attr_accessor :service_address_cidr_blocks
      
        # Represents the network configuration required for the VMware user clusters
        # with Static IP configurations.
        # Corresponds to the JSON property `staticIpConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareStaticIpConfig]
        attr_accessor :static_ip_config
      
        # vcenter_network specifies vCenter network name.
        # Corresponds to the JSON property `vcenterNetwork`
        # @return [String]
        attr_accessor :vcenter_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dhcp_ip_config = args[:dhcp_ip_config] if args.key?(:dhcp_ip_config)
          @host_config = args[:host_config] if args.key?(:host_config)
          @pod_address_cidr_blocks = args[:pod_address_cidr_blocks] if args.key?(:pod_address_cidr_blocks)
          @service_address_cidr_blocks = args[:service_address_cidr_blocks] if args.key?(:service_address_cidr_blocks)
          @static_ip_config = args[:static_ip_config] if args.key?(:static_ip_config)
          @vcenter_network = args[:vcenter_network] if args.key?(:vcenter_network)
        end
      end
      
      # VmwareAdminVCenterConfig contains VCenter configuration for VMware admin
      # cluster.
      class VmwareAdminVCenterConfig
        include Google::Apis::Core::Hashable
      
        # The vCenter IP address.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Contains the vCenter CA certificate public key for SSL verification.
        # Corresponds to the JSON property `caCertData`
        # @return [String]
        attr_accessor :ca_cert_data
      
        # The name of the vCenter cluster for the admin cluster.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # The name of the virtual machine disk (VMDK) for the admin cluster.
        # Corresponds to the JSON property `dataDisk`
        # @return [String]
        attr_accessor :data_disk
      
        # The name of the vCenter datacenter for the admin cluster.
        # Corresponds to the JSON property `datacenter`
        # @return [String]
        attr_accessor :datacenter
      
        # The name of the vCenter datastore for the admin cluster.
        # Corresponds to the JSON property `datastore`
        # @return [String]
        attr_accessor :datastore
      
        # The name of the vCenter folder for the admin cluster.
        # Corresponds to the JSON property `folder`
        # @return [String]
        attr_accessor :folder
      
        # The name of the vCenter resource pool for the admin cluster.
        # Corresponds to the JSON property `resourcePool`
        # @return [String]
        attr_accessor :resource_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @ca_cert_data = args[:ca_cert_data] if args.key?(:ca_cert_data)
          @cluster = args[:cluster] if args.key?(:cluster)
          @data_disk = args[:data_disk] if args.key?(:data_disk)
          @datacenter = args[:datacenter] if args.key?(:datacenter)
          @datastore = args[:datastore] if args.key?(:datastore)
          @folder = args[:folder] if args.key?(:folder)
          @resource_pool = args[:resource_pool] if args.key?(:resource_pool)
        end
      end
      
      # VmwareAdminVipConfig for VMware load balancer configurations.
      class VmwareAdminVipConfig
        include Google::Apis::Core::Hashable
      
        # The VIP to configure the load balancer for add-ons.
        # Corresponds to the JSON property `addonsVip`
        # @return [String]
        attr_accessor :addons_vip
      
        # The VIP which you previously set aside for the Kubernetes API of the admin
        # cluster.
        # Corresponds to the JSON property `controlPlaneVip`
        # @return [String]
        attr_accessor :control_plane_vip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addons_vip = args[:addons_vip] if args.key?(:addons_vip)
          @control_plane_vip = args[:control_plane_vip] if args.key?(:control_plane_vip)
        end
      end
      
      # Specifies config to enable/disable auto repair. The cluster-health-controller
      # is deployed only if Enabled is true.
      class VmwareAutoRepairConfig
        include Google::Apis::Core::Hashable
      
        # Whether auto repair is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Represents auto resizing configurations for the VMware user cluster.
      class VmwareAutoResizeConfig
        include Google::Apis::Core::Hashable
      
        # Whether to enable controle plane node auto resizing.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # VmwareBundleConfig represents configuration for the bundle.
      class VmwareBundleConfig
        include Google::Apis::Core::Hashable
      
        # ResourceStatus describes why a cluster or node pool has a certain status. (e.g.
        # , ERROR or DEGRADED).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GkeonpremV1::ResourceStatus]
        attr_accessor :status
      
        # The version of the bundle.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Resource that represents a VMware user cluster. ##
      class VmwareCluster
        include Google::Apis::Core::Hashable
      
        # Required. The admin cluster this VMware user cluster belongs to. This is the
        # full resource name of the admin cluster's fleet membership. In the future,
        # references to other resource types might be allowed if admin clusters are
        # modeled as their own resources.
        # Corresponds to the JSON property `adminClusterMembership`
        # @return [String]
        attr_accessor :admin_cluster_membership
      
        # Output only. The resource name of the VMware admin cluster hosting this user
        # cluster.
        # Corresponds to the JSON property `adminClusterName`
        # @return [String]
        attr_accessor :admin_cluster_name
      
        # Annotations on the VMware user cluster. This field has the same restrictions
        # as Kubernetes annotations. The total size of all keys and values combined is
        # limited to 256k. Key can have 2 segments: prefix (optional) and name (required)
        # , separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63
        # characters or less, begin and end with alphanumerics, with dashes (-),
        # underscores (_), dots (.), and alphanumerics between.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Specifies anti affinity group config for the VMware user cluster.
        # Corresponds to the JSON property `antiAffinityGroups`
        # @return [Google::Apis::GkeonpremV1::VmwareAagConfig]
        attr_accessor :anti_affinity_groups
      
        # Authorization defines the On-Prem cluster authorization configuration to
        # bootstrap onto the admin cluster.
        # Corresponds to the JSON property `authorization`
        # @return [Google::Apis::GkeonpremV1::Authorization]
        attr_accessor :authorization
      
        # Specifies config to enable/disable auto repair. The cluster-health-controller
        # is deployed only if Enabled is true.
        # Corresponds to the JSON property `autoRepairConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareAutoRepairConfig]
        attr_accessor :auto_repair_config
      
        # Specifies control plane node config for the VMware user cluster.
        # Corresponds to the JSON property `controlPlaneNode`
        # @return [Google::Apis::GkeonpremV1::VmwareControlPlaneNodeConfig]
        attr_accessor :control_plane_node
      
        # Output only. The time at which VMware user cluster was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Contains configurations for Dataplane V2, which is optimized dataplane for
        # Kubernetes networking. For more information, see: https://cloud.google.com/
        # kubernetes-engine/docs/concepts/dataplane-v2
        # Corresponds to the JSON property `dataplaneV2`
        # @return [Google::Apis::GkeonpremV1::VmwareDataplaneV2Config]
        attr_accessor :dataplane_v2
      
        # Output only. The time at which VMware user cluster was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # A human readable description of this VMware user cluster.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Enable control plane V2. Default to false.
        # Corresponds to the JSON property `enableControlPlaneV2`
        # @return [Boolean]
        attr_accessor :enable_control_plane_v2
        alias_method :enable_control_plane_v2?, :enable_control_plane_v2
      
        # Output only. The DNS name of VMware user cluster's API server.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding. Allows clients to perform consistent read-
        # modify-writes through optimistic concurrency control.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Fleet related configuration. Fleets are a Google Cloud concept for logically
        # organizing clusters, letting you use and manage multi-cluster capabilities and
        # apply consistent policies across your systems. See [Anthos Fleets](`https://
        # cloud.google.com/anthos/multicluster-management/fleets`) for more details on
        # Anthos multi-cluster capabilities using Fleets. ##
        # Corresponds to the JSON property `fleet`
        # @return [Google::Apis::GkeonpremV1::Fleet]
        attr_accessor :fleet
      
        # Specifies the locad balancer config for the VMware user cluster.
        # Corresponds to the JSON property `loadBalancer`
        # @return [Google::Apis::GkeonpremV1::VmwareLoadBalancerConfig]
        attr_accessor :load_balancer
      
        # Output only. The object name of the VMware OnPremUserCluster custom resource
        # on the associated admin cluster. This field is used to support conflicting
        # names when enrolling existing clusters to the API. When used as a part of
        # cluster enrollment, this field will differ from the ID in the resource name.
        # For new clusters, this field will match the user provided cluster name and be
        # visible in the last component of the resource name. It is not modifiable. All
        # users should use this name to access their cluster using gkectl or kubectl and
        # should expect to see the local name when viewing admin cluster controller logs.
        # Corresponds to the JSON property `localName`
        # @return [String]
        attr_accessor :local_name
      
        # Immutable. The VMware user cluster resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies network config for the VMware user cluster.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareNetworkConfig]
        attr_accessor :network_config
      
        # The Anthos clusters on the VMware version for your user cluster. Defaults to
        # the admin cluster version.
        # Corresponds to the JSON property `onPremVersion`
        # @return [String]
        attr_accessor :on_prem_version
      
        # Output only. If set, there are currently changes in flight to the VMware user
        # cluster.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The current state of VMware user cluster.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # ResourceStatus describes why a cluster or node pool has a certain status. (e.g.
        # , ERROR or DEGRADED).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GkeonpremV1::ResourceStatus]
        attr_accessor :status
      
        # Specifies vSphere CSI components deployment config in the VMware user cluster.
        # Corresponds to the JSON property `storage`
        # @return [Google::Apis::GkeonpremV1::VmwareStorageConfig]
        attr_accessor :storage
      
        # Output only. The unique identifier of the VMware user cluster.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time at which VMware user cluster was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # ValidationCheck represents the result of preflight check.
        # Corresponds to the JSON property `validationCheck`
        # @return [Google::Apis::GkeonpremV1::ValidationCheck]
        attr_accessor :validation_check
      
        # Represents configuration for the VMware VCenter for the user cluster.
        # Corresponds to the JSON property `vcenter`
        # @return [Google::Apis::GkeonpremV1::VmwareVCenterConfig]
        attr_accessor :vcenter
      
        # Enable VM tracking.
        # Corresponds to the JSON property `vmTrackingEnabled`
        # @return [Boolean]
        attr_accessor :vm_tracking_enabled
        alias_method :vm_tracking_enabled?, :vm_tracking_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_cluster_membership = args[:admin_cluster_membership] if args.key?(:admin_cluster_membership)
          @admin_cluster_name = args[:admin_cluster_name] if args.key?(:admin_cluster_name)
          @annotations = args[:annotations] if args.key?(:annotations)
          @anti_affinity_groups = args[:anti_affinity_groups] if args.key?(:anti_affinity_groups)
          @authorization = args[:authorization] if args.key?(:authorization)
          @auto_repair_config = args[:auto_repair_config] if args.key?(:auto_repair_config)
          @control_plane_node = args[:control_plane_node] if args.key?(:control_plane_node)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataplane_v2 = args[:dataplane_v2] if args.key?(:dataplane_v2)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @description = args[:description] if args.key?(:description)
          @enable_control_plane_v2 = args[:enable_control_plane_v2] if args.key?(:enable_control_plane_v2)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @etag = args[:etag] if args.key?(:etag)
          @fleet = args[:fleet] if args.key?(:fleet)
          @load_balancer = args[:load_balancer] if args.key?(:load_balancer)
          @local_name = args[:local_name] if args.key?(:local_name)
          @name = args[:name] if args.key?(:name)
          @network_config = args[:network_config] if args.key?(:network_config)
          @on_prem_version = args[:on_prem_version] if args.key?(:on_prem_version)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @status = args[:status] if args.key?(:status)
          @storage = args[:storage] if args.key?(:storage)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @validation_check = args[:validation_check] if args.key?(:validation_check)
          @vcenter = args[:vcenter] if args.key?(:vcenter)
          @vm_tracking_enabled = args[:vm_tracking_enabled] if args.key?(:vm_tracking_enabled)
        end
      end
      
      # Specifies control plane node config for the VMware user cluster.
      class VmwareControlPlaneNodeConfig
        include Google::Apis::Core::Hashable
      
        # Represents auto resizing configurations for the VMware user cluster.
        # Corresponds to the JSON property `autoResizeConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareAutoResizeConfig]
        attr_accessor :auto_resize_config
      
        # The number of CPUs for each admin cluster node that serve as control planes
        # for this VMware user cluster. (default: 4 CPUs)
        # Corresponds to the JSON property `cpus`
        # @return [Fixnum]
        attr_accessor :cpus
      
        # The megabytes of memory for each admin cluster node that serves as a control
        # plane for this VMware user cluster (default: 8192 MB memory).
        # Corresponds to the JSON property `memory`
        # @return [Fixnum]
        attr_accessor :memory
      
        # The number of control plane nodes for this VMware user cluster. (default: 1
        # replica).
        # Corresponds to the JSON property `replicas`
        # @return [Fixnum]
        attr_accessor :replicas
      
        # Specifies control plane node config.
        # Corresponds to the JSON property `vsphereConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareControlPlaneVsphereConfig]
        attr_accessor :vsphere_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_resize_config = args[:auto_resize_config] if args.key?(:auto_resize_config)
          @cpus = args[:cpus] if args.key?(:cpus)
          @memory = args[:memory] if args.key?(:memory)
          @replicas = args[:replicas] if args.key?(:replicas)
          @vsphere_config = args[:vsphere_config] if args.key?(:vsphere_config)
        end
      end
      
      # Specifies control plane V2 config.
      class VmwareControlPlaneV2Config
        include Google::Apis::Core::Hashable
      
        # Represents a collection of IP addresses to assign to nodes.
        # Corresponds to the JSON property `controlPlaneIpBlock`
        # @return [Google::Apis::GkeonpremV1::VmwareIpBlock]
        attr_accessor :control_plane_ip_block
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_plane_ip_block = args[:control_plane_ip_block] if args.key?(:control_plane_ip_block)
        end
      end
      
      # Specifies control plane node config.
      class VmwareControlPlaneVsphereConfig
        include Google::Apis::Core::Hashable
      
        # The Vsphere datastore used by the control plane Node.
        # Corresponds to the JSON property `datastore`
        # @return [String]
        attr_accessor :datastore
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datastore = args[:datastore] if args.key?(:datastore)
        end
      end
      
      # Contains configurations for Dataplane V2, which is optimized dataplane for
      # Kubernetes networking. For more information, see: https://cloud.google.com/
      # kubernetes-engine/docs/concepts/dataplane-v2
      class VmwareDataplaneV2Config
        include Google::Apis::Core::Hashable
      
        # Enable advanced networking which requires dataplane_v2_enabled to be set true.
        # Corresponds to the JSON property `advancedNetworking`
        # @return [Boolean]
        attr_accessor :advanced_networking
        alias_method :advanced_networking?, :advanced_networking
      
        # Enables Dataplane V2.
        # Corresponds to the JSON property `dataplaneV2Enabled`
        # @return [Boolean]
        attr_accessor :dataplane_v2_enabled
        alias_method :dataplane_v2_enabled?, :dataplane_v2_enabled
      
        # Enable Dataplane V2 for clusters with Windows nodes.
        # Corresponds to the JSON property `windowsDataplaneV2Enabled`
        # @return [Boolean]
        attr_accessor :windows_dataplane_v2_enabled
        alias_method :windows_dataplane_v2_enabled?, :windows_dataplane_v2_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_networking = args[:advanced_networking] if args.key?(:advanced_networking)
          @dataplane_v2_enabled = args[:dataplane_v2_enabled] if args.key?(:dataplane_v2_enabled)
          @windows_dataplane_v2_enabled = args[:windows_dataplane_v2_enabled] if args.key?(:windows_dataplane_v2_enabled)
        end
      end
      
      # Represents the network configuration required for the VMware user clusters
      # with DHCP IP configurations.
      class VmwareDhcpIpConfig
        include Google::Apis::Core::Hashable
      
        # enabled is a flag to mark if DHCP IP allocation is used for VMware user
        # clusters.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # Represents configuration parameters for an F5 BIG-IP load balancer.
      class VmwareF5BigIpConfig
        include Google::Apis::Core::Hashable
      
        # The load balancer's IP address.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # The preexisting partition to be used by the load balancer. This partition is
        # usually created for the admin cluster for example: 'my-f5-admin-partition'.
        # Corresponds to the JSON property `partition`
        # @return [String]
        attr_accessor :partition
      
        # The pool name. Only necessary, if using SNAT.
        # Corresponds to the JSON property `snatPool`
        # @return [String]
        attr_accessor :snat_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @partition = args[:partition] if args.key?(:partition)
          @snat_pool = args[:snat_pool] if args.key?(:snat_pool)
        end
      end
      
      # Represents the common parameters for all the hosts irrespective of their IP
      # address.
      class VmwareHostConfig
        include Google::Apis::Core::Hashable
      
        # DNS search domains.
        # Corresponds to the JSON property `dnsSearchDomains`
        # @return [Array<String>]
        attr_accessor :dns_search_domains
      
        # DNS servers.
        # Corresponds to the JSON property `dnsServers`
        # @return [Array<String>]
        attr_accessor :dns_servers
      
        # NTP servers.
        # Corresponds to the JSON property `ntpServers`
        # @return [Array<String>]
        attr_accessor :ntp_servers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_search_domains = args[:dns_search_domains] if args.key?(:dns_search_domains)
          @dns_servers = args[:dns_servers] if args.key?(:dns_servers)
          @ntp_servers = args[:ntp_servers] if args.key?(:ntp_servers)
        end
      end
      
      # Represents VMware user cluster node's network configuration.
      class VmwareHostIp
        include Google::Apis::Core::Hashable
      
        # Hostname of the machine. VM's name will be used if this field is empty.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24).
        # Corresponds to the JSON property `ip`
        # @return [String]
        attr_accessor :ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hostname = args[:hostname] if args.key?(:hostname)
          @ip = args[:ip] if args.key?(:ip)
        end
      end
      
      # Represents a collection of IP addresses to assign to nodes.
      class VmwareIpBlock
        include Google::Apis::Core::Hashable
      
        # The network gateway used by the VMware user cluster.
        # Corresponds to the JSON property `gateway`
        # @return [String]
        attr_accessor :gateway
      
        # The node's network configurations used by the VMware user cluster.
        # Corresponds to the JSON property `ips`
        # @return [Array<Google::Apis::GkeonpremV1::VmwareHostIp>]
        attr_accessor :ips
      
        # The netmask used by the VMware user cluster.
        # Corresponds to the JSON property `netmask`
        # @return [String]
        attr_accessor :netmask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gateway = args[:gateway] if args.key?(:gateway)
          @ips = args[:ips] if args.key?(:ips)
          @netmask = args[:netmask] if args.key?(:netmask)
        end
      end
      
      # Specifies the locad balancer config for the VMware user cluster.
      class VmwareLoadBalancerConfig
        include Google::Apis::Core::Hashable
      
        # Represents configuration parameters for an F5 BIG-IP load balancer.
        # Corresponds to the JSON property `f5Config`
        # @return [Google::Apis::GkeonpremV1::VmwareF5BigIpConfig]
        attr_accessor :f5_config
      
        # Represents configuration parameters for an already existing manual load
        # balancer. Given the nature of manual load balancers it is expected that said
        # load balancer will be fully managed by users. IMPORTANT: Please note that the
        # Anthos On-Prem API will not generate or update ManualLB configurations it can
        # only bind a pre-existing configuration to a new VMware user cluster.
        # Corresponds to the JSON property `manualLbConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareManualLbConfig]
        attr_accessor :manual_lb_config
      
        # Represents configuration parameters for the MetalLB load balancer.
        # Corresponds to the JSON property `metalLbConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareMetalLbConfig]
        attr_accessor :metal_lb_config
      
        # Specifies the VIP config for the VMware user cluster load balancer.
        # Corresponds to the JSON property `vipConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareVipConfig]
        attr_accessor :vip_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @f5_config = args[:f5_config] if args.key?(:f5_config)
          @manual_lb_config = args[:manual_lb_config] if args.key?(:manual_lb_config)
          @metal_lb_config = args[:metal_lb_config] if args.key?(:metal_lb_config)
          @vip_config = args[:vip_config] if args.key?(:vip_config)
        end
      end
      
      # Represents configuration parameters for an already existing manual load
      # balancer. Given the nature of manual load balancers it is expected that said
      # load balancer will be fully managed by users. IMPORTANT: Please note that the
      # Anthos On-Prem API will not generate or update ManualLB configurations it can
      # only bind a pre-existing configuration to a new VMware user cluster.
      class VmwareManualLbConfig
        include Google::Apis::Core::Hashable
      
        # NodePort for control plane service. The Kubernetes API server in the admin
        # cluster is implemented as a Service of type NodePort (ex. 30968).
        # Corresponds to the JSON property `controlPlaneNodePort`
        # @return [Fixnum]
        attr_accessor :control_plane_node_port
      
        # NodePort for ingress service's http. The ingress service in the admin cluster
        # is implemented as a Service of type NodePort (ex. 32527).
        # Corresponds to the JSON property `ingressHttpNodePort`
        # @return [Fixnum]
        attr_accessor :ingress_http_node_port
      
        # NodePort for ingress service's https. The ingress service in the admin cluster
        # is implemented as a Service of type NodePort (ex. 30139).
        # Corresponds to the JSON property `ingressHttpsNodePort`
        # @return [Fixnum]
        attr_accessor :ingress_https_node_port
      
        # NodePort for konnectivity server service running as a sidecar in each kube-
        # apiserver pod (ex. 30564).
        # Corresponds to the JSON property `konnectivityServerNodePort`
        # @return [Fixnum]
        attr_accessor :konnectivity_server_node_port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_plane_node_port = args[:control_plane_node_port] if args.key?(:control_plane_node_port)
          @ingress_http_node_port = args[:ingress_http_node_port] if args.key?(:ingress_http_node_port)
          @ingress_https_node_port = args[:ingress_https_node_port] if args.key?(:ingress_https_node_port)
          @konnectivity_server_node_port = args[:konnectivity_server_node_port] if args.key?(:konnectivity_server_node_port)
        end
      end
      
      # Represents configuration parameters for the MetalLB load balancer.
      class VmwareMetalLbConfig
        include Google::Apis::Core::Hashable
      
        # Required. AddressPools is a list of non-overlapping IP pools used by load
        # balancer typed services. All addresses must be routable to load balancer nodes.
        # IngressVIP must be included in the pools.
        # Corresponds to the JSON property `addressPools`
        # @return [Array<Google::Apis::GkeonpremV1::VmwareAddressPool>]
        attr_accessor :address_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_pools = args[:address_pools] if args.key?(:address_pools)
        end
      end
      
      # Specifies network config for the VMware user cluster.
      class VmwareNetworkConfig
        include Google::Apis::Core::Hashable
      
        # Specifies control plane V2 config.
        # Corresponds to the JSON property `controlPlaneV2Config`
        # @return [Google::Apis::GkeonpremV1::VmwareControlPlaneV2Config]
        attr_accessor :control_plane_v2_config
      
        # Represents the network configuration required for the VMware user clusters
        # with DHCP IP configurations.
        # Corresponds to the JSON property `dhcpIpConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareDhcpIpConfig]
        attr_accessor :dhcp_ip_config
      
        # Represents the common parameters for all the hosts irrespective of their IP
        # address.
        # Corresponds to the JSON property `hostConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareHostConfig]
        attr_accessor :host_config
      
        # Required. All pods in the cluster are assigned an RFC1918 IPv4 address from
        # these ranges. Only a single range is supported. This field cannot be changed
        # after creation.
        # Corresponds to the JSON property `podAddressCidrBlocks`
        # @return [Array<String>]
        attr_accessor :pod_address_cidr_blocks
      
        # Required. All services in the cluster are assigned an RFC1918 IPv4 address
        # from these ranges. Only a single range is supported. This field cannot be
        # changed after creation.
        # Corresponds to the JSON property `serviceAddressCidrBlocks`
        # @return [Array<String>]
        attr_accessor :service_address_cidr_blocks
      
        # Represents the network configuration required for the VMware user clusters
        # with Static IP configurations.
        # Corresponds to the JSON property `staticIpConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareStaticIpConfig]
        attr_accessor :static_ip_config
      
        # Output only. vcenter_network specifies vCenter network name. Inherited from
        # the admin cluster.
        # Corresponds to the JSON property `vcenterNetwork`
        # @return [String]
        attr_accessor :vcenter_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_plane_v2_config = args[:control_plane_v2_config] if args.key?(:control_plane_v2_config)
          @dhcp_ip_config = args[:dhcp_ip_config] if args.key?(:dhcp_ip_config)
          @host_config = args[:host_config] if args.key?(:host_config)
          @pod_address_cidr_blocks = args[:pod_address_cidr_blocks] if args.key?(:pod_address_cidr_blocks)
          @service_address_cidr_blocks = args[:service_address_cidr_blocks] if args.key?(:service_address_cidr_blocks)
          @static_ip_config = args[:static_ip_config] if args.key?(:static_ip_config)
          @vcenter_network = args[:vcenter_network] if args.key?(:vcenter_network)
        end
      end
      
      # Parameters that describe the configuration of all nodes within a given node
      # pool.
      class VmwareNodeConfig
        include Google::Apis::Core::Hashable
      
        # VMware disk size to be used during creation.
        # Corresponds to the JSON property `bootDiskSizeGb`
        # @return [Fixnum]
        attr_accessor :boot_disk_size_gb
      
        # The number of CPUs for each node in the node pool.
        # Corresponds to the JSON property `cpus`
        # @return [Fixnum]
        attr_accessor :cpus
      
        # Allow node pool traffic to be load balanced. Only works for clusters with
        # MetalLB load balancers.
        # Corresponds to the JSON property `enableLoadBalancer`
        # @return [Boolean]
        attr_accessor :enable_load_balancer
        alias_method :enable_load_balancer?, :enable_load_balancer
      
        # The OS image name in vCenter, only valid when using Windows.
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # Required. The OS image to be used for each node in a node pool. Currently `cos`
        # , `ubuntu`, `ubuntu_containerd` and `windows` are supported.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # The map of Kubernetes labels (key/value pairs) to be applied to each node.
        # These will added in addition to any default label(s) that Kubernetes may apply
        # to the node. In case of conflict in label keys, the applied set may differ
        # depending on the Kubernetes version -- it's best to assume the behavior is
        # undefined and conflicts should be avoided. For more information, including
        # usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/
        # working-with-objects/labels/
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The megabytes of memory for each node in the node pool.
        # Corresponds to the JSON property `memoryMb`
        # @return [Fixnum]
        attr_accessor :memory_mb
      
        # The number of nodes in the node pool.
        # Corresponds to the JSON property `replicas`
        # @return [Fixnum]
        attr_accessor :replicas
      
        # The initial taints assigned to nodes of this node pool.
        # Corresponds to the JSON property `taints`
        # @return [Array<Google::Apis::GkeonpremV1::NodeTaint>]
        attr_accessor :taints
      
        # VmwareVsphereConfig represents configuration for the VMware VCenter for node
        # pool.
        # Corresponds to the JSON property `vsphereConfig`
        # @return [Google::Apis::GkeonpremV1::VmwareVsphereConfig]
        attr_accessor :vsphere_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boot_disk_size_gb = args[:boot_disk_size_gb] if args.key?(:boot_disk_size_gb)
          @cpus = args[:cpus] if args.key?(:cpus)
          @enable_load_balancer = args[:enable_load_balancer] if args.key?(:enable_load_balancer)
          @image = args[:image] if args.key?(:image)
          @image_type = args[:image_type] if args.key?(:image_type)
          @labels = args[:labels] if args.key?(:labels)
          @memory_mb = args[:memory_mb] if args.key?(:memory_mb)
          @replicas = args[:replicas] if args.key?(:replicas)
          @taints = args[:taints] if args.key?(:taints)
          @vsphere_config = args[:vsphere_config] if args.key?(:vsphere_config)
        end
      end
      
      # Resource VmwareNodePool represents a VMware node pool. ##
      class VmwareNodePool
        include Google::Apis::Core::Hashable
      
        # Annotations on the node pool. This field has the same restrictions as
        # Kubernetes annotations. The total size of all keys and values combined is
        # limited to 256k. Key can have 2 segments: prefix (optional) and name (required)
        # , separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63
        # characters or less, begin and end with alphanumerics, with dashes (-),
        # underscores (_), dots (.), and alphanumerics between.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Parameters that describe the configuration of all nodes within a given node
        # pool.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::GkeonpremV1::VmwareNodeConfig]
        attr_accessor :config
      
        # Output only. The time at which this node pool was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time at which this node pool was deleted. If the resource is
        # not deleted, this must be empty
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # The display name for the node pool.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding. Allows clients to perform consistent read-
        # modify-writes through optimistic concurrency control.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Immutable. The resource name of this node pool.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # NodePoolAutoscaling config for the NodePool to allow for the kubernetes to
        # scale NodePool.
        # Corresponds to the JSON property `nodePoolAutoscaling`
        # @return [Google::Apis::GkeonpremV1::VmwareNodePoolAutoscalingConfig]
        attr_accessor :node_pool_autoscaling
      
        # Anthos version for the node pool. Defaults to the user cluster version.
        # Corresponds to the JSON property `onPremVersion`
        # @return [String]
        attr_accessor :on_prem_version
      
        # Output only. If set, there are currently changes in flight to the node pool.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The current state of the node pool.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # ResourceStatus describes why a cluster or node pool has a certain status. (e.g.
        # , ERROR or DEGRADED).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GkeonpremV1::ResourceStatus]
        attr_accessor :status
      
        # Output only. The unique identifier of the node pool.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time at which this node pool was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @node_pool_autoscaling = args[:node_pool_autoscaling] if args.key?(:node_pool_autoscaling)
          @on_prem_version = args[:on_prem_version] if args.key?(:on_prem_version)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @status = args[:status] if args.key?(:status)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # NodePoolAutoscaling config for the NodePool to allow for the kubernetes to
      # scale NodePool.
      class VmwareNodePoolAutoscalingConfig
        include Google::Apis::Core::Hashable
      
        # Maximum number of replicas in the NodePool.
        # Corresponds to the JSON property `maxReplicas`
        # @return [Fixnum]
        attr_accessor :max_replicas
      
        # Minimum number of replicas in the NodePool.
        # Corresponds to the JSON property `minReplicas`
        # @return [Fixnum]
        attr_accessor :min_replicas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_replicas = args[:max_replicas] if args.key?(:max_replicas)
          @min_replicas = args[:min_replicas] if args.key?(:min_replicas)
        end
      end
      
      # VmwarePlatformConfig represents configuration for the VMware platform.
      class VmwarePlatformConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The list of bundles installed in the admin cluster.
        # Corresponds to the JSON property `bundles`
        # @return [Array<Google::Apis::GkeonpremV1::VmwareBundleConfig>]
        attr_accessor :bundles
      
        # Output only. The platform version e.g. 1.13.2.
        # Corresponds to the JSON property `platformVersion`
        # @return [String]
        attr_accessor :platform_version
      
        # Input only. The required platform version e.g. 1.13.1. If the current platform
        # version is lower than the target version, the platform version will be updated
        # to the target version. If the target version is not installed in the platform (
        # bundle versions), download the target version bundle.
        # Corresponds to the JSON property `requiredPlatformVersion`
        # @return [String]
        attr_accessor :required_platform_version
      
        # ResourceStatus describes why a cluster or node pool has a certain status. (e.g.
        # , ERROR or DEGRADED).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::GkeonpremV1::ResourceStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundles = args[:bundles] if args.key?(:bundles)
          @platform_version = args[:platform_version] if args.key?(:platform_version)
          @required_platform_version = args[:required_platform_version] if args.key?(:required_platform_version)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Represents the network configuration required for the VMware user clusters
      # with Static IP configurations.
      class VmwareStaticIpConfig
        include Google::Apis::Core::Hashable
      
        # Represents the configuration values for static IP allocation to nodes.
        # Corresponds to the JSON property `ipBlocks`
        # @return [Array<Google::Apis::GkeonpremV1::VmwareIpBlock>]
        attr_accessor :ip_blocks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_blocks = args[:ip_blocks] if args.key?(:ip_blocks)
        end
      end
      
      # Specifies vSphere CSI components deployment config in the VMware user cluster.
      class VmwareStorageConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not to deploy vSphere CSI components in the VMware user cluster.
        # Enabled by default.
        # Corresponds to the JSON property `vsphereCsiDisabled`
        # @return [Boolean]
        attr_accessor :vsphere_csi_disabled
        alias_method :vsphere_csi_disabled?, :vsphere_csi_disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vsphere_csi_disabled = args[:vsphere_csi_disabled] if args.key?(:vsphere_csi_disabled)
        end
      end
      
      # Represents configuration for the VMware VCenter for the user cluster.
      class VmwareVCenterConfig
        include Google::Apis::Core::Hashable
      
        # The vCenter IP address.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Contains the vCenter CA certificate public key for SSL verification.
        # Corresponds to the JSON property `caCertData`
        # @return [String]
        attr_accessor :ca_cert_data
      
        # The name of the vCenter cluster for the user cluster.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # The name of the vCenter datacenter for the user cluster.
        # Corresponds to the JSON property `datacenter`
        # @return [String]
        attr_accessor :datacenter
      
        # The name of the vCenter datastore for the user cluster.
        # Corresponds to the JSON property `datastore`
        # @return [String]
        attr_accessor :datastore
      
        # The name of the vCenter folder for the user cluster.
        # Corresponds to the JSON property `folder`
        # @return [String]
        attr_accessor :folder
      
        # The name of the vCenter resource pool for the user cluster.
        # Corresponds to the JSON property `resourcePool`
        # @return [String]
        attr_accessor :resource_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @ca_cert_data = args[:ca_cert_data] if args.key?(:ca_cert_data)
          @cluster = args[:cluster] if args.key?(:cluster)
          @datacenter = args[:datacenter] if args.key?(:datacenter)
          @datastore = args[:datastore] if args.key?(:datastore)
          @folder = args[:folder] if args.key?(:folder)
          @resource_pool = args[:resource_pool] if args.key?(:resource_pool)
        end
      end
      
      # Contains information about a specific Anthos on VMware version.
      class VmwareVersionInfo
        include Google::Apis::Core::Hashable
      
        # If set, the cluster dependencies (e.g. the admin cluster, other user clusters
        # managed by the same admin cluster) must be upgraded before this version can be
        # installed or upgraded to.
        # Corresponds to the JSON property `hasDependencies`
        # @return [Boolean]
        attr_accessor :has_dependencies
        alias_method :has_dependencies?, :has_dependencies
      
        # If set, the version is installed in the admin cluster. Otherwise, the version
        # bundle must be downloaded and installed before a user cluster can be created
        # at or upgraded to this version.
        # Corresponds to the JSON property `isInstalled`
        # @return [Boolean]
        attr_accessor :is_installed
        alias_method :is_installed?, :is_installed
      
        # Version number e.g. 1.13.1-gke.1000.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_dependencies = args[:has_dependencies] if args.key?(:has_dependencies)
          @is_installed = args[:is_installed] if args.key?(:is_installed)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Specifies the VIP config for the VMware user cluster load balancer.
      class VmwareVipConfig
        include Google::Apis::Core::Hashable
      
        # The VIP which you previously set aside for the Kubernetes API of this cluster.
        # Corresponds to the JSON property `controlPlaneVip`
        # @return [String]
        attr_accessor :control_plane_vip
      
        # The VIP which you previously set aside for ingress traffic into this cluster.
        # Corresponds to the JSON property `ingressVip`
        # @return [String]
        attr_accessor :ingress_vip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_plane_vip = args[:control_plane_vip] if args.key?(:control_plane_vip)
          @ingress_vip = args[:ingress_vip] if args.key?(:ingress_vip)
        end
      end
      
      # VmwareVsphereConfig represents configuration for the VMware VCenter for node
      # pool.
      class VmwareVsphereConfig
        include Google::Apis::Core::Hashable
      
        # The name of the vCenter datastore. Inherited from the user cluster.
        # Corresponds to the JSON property `datastore`
        # @return [String]
        attr_accessor :datastore
      
        # Tags to apply to VMs.
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::GkeonpremV1::VmwareVsphereTag>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datastore = args[:datastore] if args.key?(:datastore)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # VmwareVsphereTag describes a vSphere tag to be placed on VMs in the node pool.
      # For more information, see https://docs.vmware.com/en/VMware-vSphere/7.0/com.
      # vmware.vsphere.vcenterhost.doc/GUID-E8E854DD-AA97-4E0C-8419-CE84F93C4058.html
      class VmwareVsphereTag
        include Google::Apis::Core::Hashable
      
        # The Vsphere tag category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The Vsphere tag name.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
    end
  end
end
