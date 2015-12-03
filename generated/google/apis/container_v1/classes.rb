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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] unless args[:clusters].nil?
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
        # Compute Engine [resource quota](/compute/docs/resource-quotas) is sufficient
        # for this number of instances. You must also have available firewall and routes
        # quota.
        # Corresponds to the JSON property `initialNodeCount`
        # @return [Fixnum]
        attr_accessor :initial_node_count
      
        # Per-node parameters.
        # Corresponds to the JSON property `nodeConfig`
        # @return [Google::Apis::ContainerV1::NodeConfig]
        attr_accessor :node_config
      
        # The authentication information for accessing the master endpoint.
        # Authentication can be done using HTTP basic auth or using client certificates.
        # Corresponds to the JSON property `masterAuth`
        # @return [Google::Apis::ContainerV1::MasterAuth]
        attr_accessor :master_auth
      
        # The logging service that the cluster should write logs to. Currently available
        # options: * "logging.googleapis.com" - the Google Cloud Logging service * "none"
        # - no logs will be exported from the cluster * "" - default value; the default
        # is "logging.googleapis.com"
        # Corresponds to the JSON property `loggingService`
        # @return [String]
        attr_accessor :logging_service
      
        # The monitoring service that the cluster should write metrics to. Currently
        # available options: * "monitoring.googleapis.com" - the Google Cloud Monitoring
        # service * "none" - no metrics will be exported from the cluster * "" - default
        # value; the default is "monitoring.googleapis.com"
        # Corresponds to the JSON property `monitoringService`
        # @return [String]
        attr_accessor :monitoring_service
      
        # The name of the Google Compute Engine [network](/compute/docs/networking#
        # networks_1) to which the cluster is connected. If left unspecified, the "
        # default" network will be used.
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
      
        # [Output only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output only] The name of the Google Compute Engine [zone](/compute/docs/zones#
        # available) in which the cluster resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        # [Output only] The IP address of this cluster's Kubernetes master endpoint. The
        # endpoint can be accessed from the internet at `https://username:password@
        # endpoint/`. See the `masterAuth` property of this resource for username and
        # password information.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # [Output only] The software version of Kubernetes master and kubelets used in
        # the cluster when it was first created. The version can be upgraded over time.
        # Corresponds to the JSON property `initialClusterVersion`
        # @return [String]
        attr_accessor :initial_cluster_version
      
        # [Output only] The current software version of the master endpoint.
        # Corresponds to the JSON property `currentMasterVersion`
        # @return [String]
        attr_accessor :current_master_version
      
        # [Output only] The current version of the node software components. If they are
        # currently at different versions because they're in the process of being
        # upgraded, this reflects the minimum version of any of them.
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
        # containers. This is provisioned from within the container_ipv4_cidr range.
        # Corresponds to the JSON property `nodeIpv4CidrSize`
        # @return [Fixnum]
        attr_accessor :node_ipv4_cidr_size
      
        # [Output only] The IP address range of the Kubernetes services in this cluster,
        # in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
        # notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last /
        # 16 from the container CIDR.
        # Corresponds to the JSON property `servicesIpv4Cidr`
        # @return [String]
        attr_accessor :services_ipv4_cidr
      
        # [Output only] The resource URLs of [instance groups](/compute/docs/instance-
        # groups/) associated with this cluster.
        # Corresponds to the JSON property `instanceGroupUrls`
        # @return [Array<String>]
        attr_accessor :instance_group_urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @description = args[:description] unless args[:description].nil?
          @initial_node_count = args[:initial_node_count] unless args[:initial_node_count].nil?
          @node_config = args[:node_config] unless args[:node_config].nil?
          @master_auth = args[:master_auth] unless args[:master_auth].nil?
          @logging_service = args[:logging_service] unless args[:logging_service].nil?
          @monitoring_service = args[:monitoring_service] unless args[:monitoring_service].nil?
          @network = args[:network] unless args[:network].nil?
          @cluster_ipv4_cidr = args[:cluster_ipv4_cidr] unless args[:cluster_ipv4_cidr].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @zone = args[:zone] unless args[:zone].nil?
          @endpoint = args[:endpoint] unless args[:endpoint].nil?
          @initial_cluster_version = args[:initial_cluster_version] unless args[:initial_cluster_version].nil?
          @current_master_version = args[:current_master_version] unless args[:current_master_version].nil?
          @current_node_version = args[:current_node_version] unless args[:current_node_version].nil?
          @create_time = args[:create_time] unless args[:create_time].nil?
          @status = args[:status] unless args[:status].nil?
          @status_message = args[:status_message] unless args[:status_message].nil?
          @node_ipv4_cidr_size = args[:node_ipv4_cidr_size] unless args[:node_ipv4_cidr_size].nil?
          @services_ipv4_cidr = args[:services_ipv4_cidr] unless args[:services_ipv4_cidr].nil?
          @instance_group_urls = args[:instance_group_urls] unless args[:instance_group_urls].nil?
        end
      end
      
      # Per-node parameters.
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
        # with *gcr.io*. If unspecified, no scopes are added.
        # Corresponds to the JSON property `oauthScopes`
        # @return [Array<String>]
        attr_accessor :oauth_scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] unless args[:machine_type].nil?
          @disk_size_gb = args[:disk_size_gb] unless args[:disk_size_gb].nil?
          @oauth_scopes = args[:oauth_scopes] unless args[:oauth_scopes].nil?
        end
      end
      
      # The authentication information for accessing the master endpoint.
      # Authentication can be done using HTTP basic auth or using client certificates.
      class MasterAuth
        include Google::Apis::Core::Hashable
      
        # The username to use for HTTP basic authentication when accessing the
        # Kubernetes master endpoint.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # The password to use for HTTP basic authentication when accessing the
        # Kubernetes master endpoint. Because the master endpoint is open to the
        # internet, you should create a strong password.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # [Output only] Base64 encoded public certificate that is the root of trust for
        # the cluster.
        # Corresponds to the JSON property `clusterCaCertificate`
        # @return [String]
        attr_accessor :cluster_ca_certificate
      
        # [Output only] Base64 encoded public certificate used by clients to
        # authenticate to the cluster endpoint.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # [Output only] Base64 encoded private key used by clients to authenticate to
        # the cluster endpoint.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @username = args[:username] unless args[:username].nil?
          @password = args[:password] unless args[:password].nil?
          @cluster_ca_certificate = args[:cluster_ca_certificate] unless args[:cluster_ca_certificate].nil?
          @client_certificate = args[:client_certificate] unless args[:client_certificate].nil?
          @client_key = args[:client_key] unless args[:client_key].nil?
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
          @cluster = args[:cluster] unless args[:cluster].nil?
        end
      end
      
      # Defines the operation resource. All fields are output only.
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
          @name = args[:name] unless args[:name].nil?
          @zone = args[:zone] unless args[:zone].nil?
          @operation_type = args[:operation_type] unless args[:operation_type].nil?
          @status = args[:status] unless args[:status].nil?
          @status_message = args[:status_message] unless args[:status_message].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @target_link = args[:target_link] unless args[:target_link].nil?
        end
      end
      
      # UpdateClusterRequest updates a cluster.
      class UpdateClusterRequest
        include Google::Apis::Core::Hashable
      
        # ClusterUpdate describes an update to the cluster.
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::ContainerV1::ClusterUpdate]
        attr_accessor :update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update = args[:update] unless args[:update].nil?
        end
      end
      
      # ClusterUpdate describes an update to the cluster.
      class ClusterUpdate
        include Google::Apis::Core::Hashable
      
        # The Kubernetes version to change the nodes to (typically an upgrade). Use "-"
        # to upgrade to the latest version supported by the server.
        # Corresponds to the JSON property `desiredNodeVersion`
        # @return [String]
        attr_accessor :desired_node_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @desired_node_version = args[:desired_node_version] unless args[:desired_node_version].nil?
        end
      end
      
      # ListOperationsResponse is the result of ListOperationsRequest.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of operations in the project in the specified zone.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ContainerV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] unless args[:operations].nil?
        end
      end
      
      # Container Engine Server configuration.
      class ServerConfig
        include Google::Apis::Core::Hashable
      
        # What version this server deploys by default.
        # Corresponds to the JSON property `defaultClusterVersion`
        # @return [String]
        attr_accessor :default_cluster_version
      
        # List of valid node upgrade target versions.
        # Corresponds to the JSON property `validNodeVersions`
        # @return [Array<String>]
        attr_accessor :valid_node_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_cluster_version = args[:default_cluster_version] unless args[:default_cluster_version].nil?
          @valid_node_versions = args[:valid_node_versions] unless args[:valid_node_versions].nil?
        end
      end
    end
  end
end
