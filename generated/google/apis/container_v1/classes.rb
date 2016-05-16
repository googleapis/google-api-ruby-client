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
    module ContainerV1
      
      # ListClustersResponse is the result of ListClustersRequest.
      class ListClustersResponse
        include Google::Apis::Core::Hashable
      
        # A list of clusters in the project in the specified zone, or across all ones.
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::ContainerV1::Cluster>]
        attr_accessor :clusters
      
        # If any zones are listed here, the list of clusters returned may be missing
        # those zones.
        # Corresponds to the JSON property `missingZones`
        # @return [Array<String>]
        attr_accessor :missing_zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] if args.key?(:clusters)
          @missing_zones = args[:missing_zones] if args.key?(:missing_zones)
        end
      end
      
      # A Google Container Engine cluster.
      class Cluster
        include Google::Apis::Core::Hashable
      
        # The name of this cluster. The name must be unique within this project and zone,
        # and can be up to 40 characters with the following restrictions: * Lowercase
        # letters, numbers, and hyphens only. * Must start with a letter. * Must end
        # with a number or a letter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An optional description of this cluster.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The number of nodes to create in this cluster. You must ensure that your
        # Compute Engine resource quota is sufficient for this number of instances. You
        # must also have available firewall and routes quota. For requests, this field
        # should only be used in lieu of a "node_pool" object, since this configuration (
        # along with the "node_config") will be used to create a "NodePool" object with
        # an auto-generated name. Do not use this and a node_pool at the same time.
        # Corresponds to the JSON property `initialNodeCount`
        # @return [Fixnum]
        attr_accessor :initial_node_count
      
        # Parameters that describe the nodes in a cluster.
        # Corresponds to the JSON property `nodeConfig`
        # @return [Google::Apis::ContainerV1::NodeConfig]
        attr_accessor :node_config
      
        # The authentication information for accessing the master endpoint.
        # Authentication can be done using HTTP basic auth or using client certificates.
        # Corresponds to the JSON property `masterAuth`
        # @return [Google::Apis::ContainerV1::MasterAuth]
        attr_accessor :master_auth
      
        # The logging service the cluster should use to write logs. Currently available
        # options: * `logging.googleapis.com` - the Google Cloud Logging service. * `
        # none` - no logs will be exported from the cluster. * if left as an empty
        # string,`logging.googleapis.com` will be used.
        # Corresponds to the JSON property `loggingService`
        # @return [String]
        attr_accessor :logging_service
      
        # The monitoring service the cluster should use to write metrics. Currently
        # available options: * `monitoring.googleapis.com` - the Google Cloud Monitoring
        # service. * `none` - no metrics will be exported from the cluster. * if left as
        # an empty string, `monitoring.googleapis.com` will be used.
        # Corresponds to the JSON property `monitoringService`
        # @return [String]
        attr_accessor :monitoring_service
      
        # The name of the Google Compute Engine [network](/compute/docs/networks-and-
        # firewalls#networks) to which the cluster is connected. If left unspecified,
        # the `default` network will be used.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The IP address range of the container pods in this cluster, in [CIDR](http://
        # en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.
        # 0/14`). Leave blank to have one automatically chosen or specify a `/14` block
        # in `10.0.0.0/8`.
        # Corresponds to the JSON property `clusterIpv4Cidr`
        # @return [String]
        attr_accessor :cluster_ipv4_cidr
      
        # Configuration for the addons that can be automatically spun up in the cluster,
        # enabling additional functionality.
        # Corresponds to the JSON property `addonsConfig`
        # @return [Google::Apis::ContainerV1::AddonsConfig]
        attr_accessor :addons_config
      
        # The name of the Google Compute Engine [subnetwork](/compute/docs/subnetworks)
        # to which the cluster is connected.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # The node pools associated with this cluster. When creating a new cluster, only
        # a single node pool should be specified. This field should not be set if "
        # node_config" or "initial_node_count" are specified.
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::ContainerV1::NodePool>]
        attr_accessor :node_pools
      
        # The list of Google Compute Engine [locations](/compute/docs/zones#available)
        # in which the cluster's nodes should be located.
        # Corresponds to the JSON property `locations`
        # @return [Array<String>]
        attr_accessor :locations
      
        # [Output only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output only] The name of the Google Compute Engine [zone](/compute/docs/zones#
        # available) in which the cluster resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        # [Output only] The IP address of this cluster's master endpoint. The endpoint
        # can be accessed from the internet at `https://username:password@endpoint/`.
        # See the `masterAuth` property of this resource for username and password
        # information.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # [Output only] The software version of the master endpoint and kubelets used in
        # the cluster when it was first created. The version can be upgraded over time.
        # Corresponds to the JSON property `initialClusterVersion`
        # @return [String]
        attr_accessor :initial_cluster_version
      
        # [Output only] The current software version of the master endpoint.
        # Corresponds to the JSON property `currentMasterVersion`
        # @return [String]
        attr_accessor :current_master_version
      
        # [Output only] The current version of the node software components. If they are
        # currently at multiple versions because they're in the process of being
        # upgraded, this reflects the minimum version of all nodes.
        # Corresponds to the JSON property `currentNodeVersion`
        # @return [String]
        attr_accessor :current_node_version
      
        # [Output only] The time the cluster was created, in [RFC3339](https://www.ietf.
        # org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # [Output only] The current status of this cluster.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output only] Additional information about the current status of this cluster,
        # if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # [Output only] The size of the address space on each node for hosting
        # containers. This is provisioned from within the `container_ipv4_cidr` range.
        # Corresponds to the JSON property `nodeIpv4CidrSize`
        # @return [Fixnum]
        attr_accessor :node_ipv4_cidr_size
      
        # [Output only] The IP address range of the Kubernetes services in this cluster,
        # in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
        # notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last `
        # /16` from the container CIDR.
        # Corresponds to the JSON property `servicesIpv4Cidr`
        # @return [String]
        attr_accessor :services_ipv4_cidr
      
        # [Output only] The resource URLs of [instance groups](/compute/docs/instance-
        # groups/) associated with this cluster.
        # Corresponds to the JSON property `instanceGroupUrls`
        # @return [Array<String>]
        attr_accessor :instance_group_urls
      
        # [Output only] The number of nodes currently in the cluster.
        # Corresponds to the JSON property `currentNodeCount`
        # @return [Fixnum]
        attr_accessor :current_node_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @description = args[:description] if args.key?(:description)
          @initial_node_count = args[:initial_node_count] if args.key?(:initial_node_count)
          @node_config = args[:node_config] if args.key?(:node_config)
          @master_auth = args[:master_auth] if args.key?(:master_auth)
          @logging_service = args[:logging_service] if args.key?(:logging_service)
          @monitoring_service = args[:monitoring_service] if args.key?(:monitoring_service)
          @network = args[:network] if args.key?(:network)
          @cluster_ipv4_cidr = args[:cluster_ipv4_cidr] if args.key?(:cluster_ipv4_cidr)
          @addons_config = args[:addons_config] if args.key?(:addons_config)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @node_pools = args[:node_pools] if args.key?(:node_pools)
          @locations = args[:locations] if args.key?(:locations)
          @self_link = args[:self_link] if args.key?(:self_link)
          @zone = args[:zone] if args.key?(:zone)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @initial_cluster_version = args[:initial_cluster_version] if args.key?(:initial_cluster_version)
          @current_master_version = args[:current_master_version] if args.key?(:current_master_version)
          @current_node_version = args[:current_node_version] if args.key?(:current_node_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @node_ipv4_cidr_size = args[:node_ipv4_cidr_size] if args.key?(:node_ipv4_cidr_size)
          @services_ipv4_cidr = args[:services_ipv4_cidr] if args.key?(:services_ipv4_cidr)
          @instance_group_urls = args[:instance_group_urls] if args.key?(:instance_group_urls)
          @current_node_count = args[:current_node_count] if args.key?(:current_node_count)
        end
      end
      
      # Parameters that describe the nodes in a cluster.
      class NodeConfig
        include Google::Apis::Core::Hashable
      
        # The name of a Google Compute Engine [machine type](/compute/docs/machine-types)
        # (e.g. `n1-standard-1`). If unspecified, the default machine type is `n1-
        # standard-1`.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Size of the disk attached to each node, specified in GB. The smallest allowed
        # disk size is 10GB. If unspecified, the default disk size is 100GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # The set of Google API scopes to be made available on all of the node VMs under
        # the "default" service account. The following scopes are recommended, but not
        # required, and by default are not included: * `https://www.googleapis.com/auth/
        # compute` is required for mounting persistent storage on your nodes. * `https://
        # www.googleapis.com/auth/devstorage.read_only` is required for communicating
        # with **gcr.io** (the [Google Container Registry](/container-registry/)). If
        # unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are
        # enabled, in which case their required scopes will be added.
        # Corresponds to the JSON property `oauthScopes`
        # @return [Array<String>]
        attr_accessor :oauth_scopes
      
        # The metadata key/value pairs assigned to instances in the cluster. Keys must
        # conform to the regexp [a-zA-Z0-9-_]+ and be less than 128 bytes in length.
        # These are reflected as part of a URL in the metadata server. Additionally, to
        # avoid ambiguity, keys must not conflict with any other metadata keys for the
        # project or be one of the four reserved keys: "instance-template", "kube-env", "
        # startup-script", and "user-data" Values are free-form strings, and only have
        # meaning as interpreted by the image running in the instance. The only
        # restriction placed on them is that each value's size must be less than or
        # equal to 32 KB. The total size of all keys and values must be less than 512 KB.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @oauth_scopes = args[:oauth_scopes] if args.key?(:oauth_scopes)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # The authentication information for accessing the master endpoint.
      # Authentication can be done using HTTP basic auth or using client certificates.
      class MasterAuth
        include Google::Apis::Core::Hashable
      
        # The username to use for HTTP basic authentication to the master endpoint.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # The password to use for HTTP basic authentication to the master endpoint.
        # Because the master endpoint is open to the Internet, you should create a
        # strong password.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # [Output only] Base64-encoded public certificate that is the root of trust for
        # the cluster.
        # Corresponds to the JSON property `clusterCaCertificate`
        # @return [String]
        attr_accessor :cluster_ca_certificate
      
        # [Output only] Base64-encoded public certificate used by clients to
        # authenticate to the cluster endpoint.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # [Output only] Base64-encoded private key used by clients to authenticate to
        # the cluster endpoint.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @username = args[:username] if args.key?(:username)
          @password = args[:password] if args.key?(:password)
          @cluster_ca_certificate = args[:cluster_ca_certificate] if args.key?(:cluster_ca_certificate)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @client_key = args[:client_key] if args.key?(:client_key)
        end
      end
      
      # Configuration for the addons that can be automatically spun up in the cluster,
      # enabling additional functionality.
      class AddonsConfig
        include Google::Apis::Core::Hashable
      
        # Configuration options for the HTTP (L7) load balancing controller addon, which
        # makes it easy to set up HTTP load balancers for services in a cluster.
        # Corresponds to the JSON property `httpLoadBalancing`
        # @return [Google::Apis::ContainerV1::HttpLoadBalancing]
        attr_accessor :http_load_balancing
      
        # Configuration options for the horizontal pod autoscaling feature, which
        # increases or decreases the number of replica pods a replication controller has
        # based on the resource usage of the existing pods.
        # Corresponds to the JSON property `horizontalPodAutoscaling`
        # @return [Google::Apis::ContainerV1::HorizontalPodAutoscaling]
        attr_accessor :horizontal_pod_autoscaling
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_load_balancing = args[:http_load_balancing] if args.key?(:http_load_balancing)
          @horizontal_pod_autoscaling = args[:horizontal_pod_autoscaling] if args.key?(:horizontal_pod_autoscaling)
        end
      end
      
      # Configuration options for the HTTP (L7) load balancing controller addon, which
      # makes it easy to set up HTTP load balancers for services in a cluster.
      class HttpLoadBalancing
        include Google::Apis::Core::Hashable
      
        # Whether the HTTP Load Balancing controller is enabled in the cluster. When
        # enabled, it runs a small pod in the cluster that manages the load balancers.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
        end
      end
      
      # Configuration options for the horizontal pod autoscaling feature, which
      # increases or decreases the number of replica pods a replication controller has
      # based on the resource usage of the existing pods.
      class HorizontalPodAutoscaling
        include Google::Apis::Core::Hashable
      
        # Whether the Horizontal Pod Autoscaling feature is enabled in the cluster. When
        # enabled, it ensures that a Heapster pod is running in the cluster, which is
        # also used by the Cloud Monitoring service.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
        end
      end
      
      # NodePool contains the name and configuration for a cluster's node pool. Node
      # pools are a set of nodes (i.e. VM's), with a common configuration and
      # specification, under the control of the cluster master. They may have a set of
      # Kubernetes labels applied to them, which may be used to reference them during
      # pod scheduling. They may also be resized up or down, to accommodate the
      # workload.
      class NodePool
        include Google::Apis::Core::Hashable
      
        # The name of the node pool.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parameters that describe the nodes in a cluster.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::ContainerV1::NodeConfig]
        attr_accessor :config
      
        # The initial node count for the pool. You must ensure that your Compute Engine
        # resource quota is sufficient for this number of instances. You must also have
        # available firewall and routes quota.
        # Corresponds to the JSON property `initialNodeCount`
        # @return [Fixnum]
        attr_accessor :initial_node_count
      
        # Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The version of the Kubernetes of this node.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # [Output only] The resource URLs of [instance groups](/compute/docs/instance-
        # groups/) associated with this node pool.
        # Corresponds to the JSON property `instanceGroupUrls`
        # @return [Array<String>]
        attr_accessor :instance_group_urls
      
        # The status of the nodes in this pool instance.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output only] Additional information about the current status of this node
        # pool instance, if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @config = args[:config] if args.key?(:config)
          @initial_node_count = args[:initial_node_count] if args.key?(:initial_node_count)
          @self_link = args[:self_link] if args.key?(:self_link)
          @version = args[:version] if args.key?(:version)
          @instance_group_urls = args[:instance_group_urls] if args.key?(:instance_group_urls)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
        end
      end
      
      # CreateClusterRequest creates a cluster.
      class CreateClusterRequest
        include Google::Apis::Core::Hashable
      
        # A Google Container Engine cluster.
        # Corresponds to the JSON property `cluster`
        # @return [Google::Apis::ContainerV1::Cluster]
        attr_accessor :cluster
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
        end
      end
      
      # This operation resource represents operations that may have happened or are
      # happening on the cluster. All fields are output only.
      class Operation
        include Google::Apis::Core::Hashable
      
        # The server-assigned ID for the operation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the Google Compute Engine [zone](/compute/docs/zones#available) in
        # which the operation is taking place.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        # The operation type.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The current status of the operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Detailed operation progress, if available.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # If an error has occurred, a textual description of the error.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Server-defined URL for the target of the operation.
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @zone = args[:zone] if args.key?(:zone)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @status = args[:status] if args.key?(:status)
          @detail = args[:detail] if args.key?(:detail)
          @status_message = args[:status_message] if args.key?(:status_message)
          @self_link = args[:self_link] if args.key?(:self_link)
          @target_link = args[:target_link] if args.key?(:target_link)
        end
      end
      
      # UpdateClusterRequest updates the settings of a cluster.
      class UpdateClusterRequest
        include Google::Apis::Core::Hashable
      
        # ClusterUpdate describes an update to the cluster. Exactly one update can be
        # applied to a cluster with each request, so at most one field can be provided.
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::ContainerV1::ClusterUpdate]
        attr_accessor :update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update = args[:update] if args.key?(:update)
        end
      end
      
      # ClusterUpdate describes an update to the cluster. Exactly one update can be
      # applied to a cluster with each request, so at most one field can be provided.
      class ClusterUpdate
        include Google::Apis::Core::Hashable
      
        # The Kubernetes version to change the nodes to (typically an upgrade). Use `-`
        # to upgrade to the latest version supported by the server.
        # Corresponds to the JSON property `desiredNodeVersion`
        # @return [String]
        attr_accessor :desired_node_version
      
        # The monitoring service the cluster should use to write metrics. Currently
        # available options: * "monitoring.googleapis.com" - the Google Cloud Monitoring
        # service * "none" - no metrics will be exported from the cluster
        # Corresponds to the JSON property `desiredMonitoringService`
        # @return [String]
        attr_accessor :desired_monitoring_service
      
        # Configuration for the addons that can be automatically spun up in the cluster,
        # enabling additional functionality.
        # Corresponds to the JSON property `desiredAddonsConfig`
        # @return [Google::Apis::ContainerV1::AddonsConfig]
        attr_accessor :desired_addons_config
      
        # The node pool to be upgraded. This field is mandatory if the "
        # desired_node_version" or "desired_image_family" is specified and there is more
        # than one node pool on the cluster.
        # Corresponds to the JSON property `desiredNodePoolId`
        # @return [String]
        attr_accessor :desired_node_pool_id
      
        # The Kubernetes version to change the master to. The only valid value is the
        # latest supported version. Use "-" to have the server automatically select the
        # latest version.
        # Corresponds to the JSON property `desiredMasterVersion`
        # @return [String]
        attr_accessor :desired_master_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @desired_node_version = args[:desired_node_version] if args.key?(:desired_node_version)
          @desired_monitoring_service = args[:desired_monitoring_service] if args.key?(:desired_monitoring_service)
          @desired_addons_config = args[:desired_addons_config] if args.key?(:desired_addons_config)
          @desired_node_pool_id = args[:desired_node_pool_id] if args.key?(:desired_node_pool_id)
          @desired_master_version = args[:desired_master_version] if args.key?(:desired_master_version)
        end
      end
      
      # ListOperationsResponse is the result of ListOperationsRequest.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of operations in the project in the specified zone.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ContainerV1::Operation>]
        attr_accessor :operations
      
        # If any zones are listed here, the list of operations returned may be missing
        # the operations from those zones.
        # Corresponds to the JSON property `missingZones`
        # @return [Array<String>]
        attr_accessor :missing_zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] if args.key?(:operations)
          @missing_zones = args[:missing_zones] if args.key?(:missing_zones)
        end
      end
      
      # Container Engine service configuration.
      class ServerConfig
        include Google::Apis::Core::Hashable
      
        # Version of Kubernetes the service deploys by default.
        # Corresponds to the JSON property `defaultClusterVersion`
        # @return [String]
        attr_accessor :default_cluster_version
      
        # List of valid node upgrade target versions.
        # Corresponds to the JSON property `validNodeVersions`
        # @return [Array<String>]
        attr_accessor :valid_node_versions
      
        # Default image family.
        # Corresponds to the JSON property `defaultImageFamily`
        # @return [String]
        attr_accessor :default_image_family
      
        # List of valid image families.
        # Corresponds to the JSON property `validImageFamilies`
        # @return [Array<String>]
        attr_accessor :valid_image_families
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_cluster_version = args[:default_cluster_version] if args.key?(:default_cluster_version)
          @valid_node_versions = args[:valid_node_versions] if args.key?(:valid_node_versions)
          @default_image_family = args[:default_image_family] if args.key?(:default_image_family)
          @valid_image_families = args[:valid_image_families] if args.key?(:valid_image_families)
        end
      end
      
      # ListNodePoolsResponse is the result of ListNodePoolsRequest.
      class ListNodePoolsResponse
        include Google::Apis::Core::Hashable
      
        # A list of node pools for a cluster.
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::ContainerV1::NodePool>]
        attr_accessor :node_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_pools = args[:node_pools] if args.key?(:node_pools)
        end
      end
      
      # CreateNodePoolRequest creates a node pool for a cluster.
      class CreateNodePoolRequest
        include Google::Apis::Core::Hashable
      
        # NodePool contains the name and configuration for a cluster's node pool. Node
        # pools are a set of nodes (i.e. VM's), with a common configuration and
        # specification, under the control of the cluster master. They may have a set of
        # Kubernetes labels applied to them, which may be used to reference them during
        # pod scheduling. They may also be resized up or down, to accommodate the
        # workload.
        # Corresponds to the JSON property `nodePool`
        # @return [Google::Apis::ContainerV1::NodePool]
        attr_accessor :node_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_pool = args[:node_pool] if args.key?(:node_pool)
        end
      end
    end
  end
end
