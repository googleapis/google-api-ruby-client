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
    module ContainerV1beta1
      
      # 
      class Cluster
        include Google::Apis::Core::Hashable
      
        # The API version of the Kubernetes master and kubelets running in this cluster.
        # Leave blank to pick up the latest stable release, or specify a version of the
        # form "x.y.z". The Google Container Engine release notes lists the currently
        # supported versions. If an incorrect version is specified, the server returns
        # an error listing the currently supported versions.
        # Corresponds to the JSON property `clusterApiVersion`
        # @return [String]
        attr_accessor :cluster_api_version
      
        # The IP address range of the container pods in this cluster, in  CIDR notation (
        # e.g. 10.96.0.0/14). Leave blank to have one automatically chosen or specify a /
        # 14 block in 10.0.0.0/8 or 172.16.0.0/12.
        # Corresponds to the JSON property `containerIpv4Cidr`
        # @return [String]
        attr_accessor :container_ipv4_cidr
      
        # [Output only] The time the cluster was created, in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this cluster.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Whether logs from the cluster should be made available via the Google Cloud
        # Logging service. This includes both logs from your applications running in the
        # cluster as well as logs from the Kubernetes components themselves.
        # Corresponds to the JSON property `enableCloudLogging`
        # @return [Boolean]
        attr_accessor :enable_cloud_logging
        alias_method :enable_cloud_logging?, :enable_cloud_logging
      
        # Whether metrics from the cluster should be made available via the Google Cloud
        # Monitoring service.
        # Corresponds to the JSON property `enableCloudMonitoring`
        # @return [Boolean]
        attr_accessor :enable_cloud_monitoring
        alias_method :enable_cloud_monitoring?, :enable_cloud_monitoring
      
        # [Output only] The IP address of this cluster's Kubernetes master. The endpoint
        # can be accessed from the internet at https://username:password@endpoint/.
        # See the masterAuth property of this resource for username and password
        # information.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # [Output only] The resource URLs of [instance groups](/compute/docs/instance-
        # groups/) associated with this cluster.
        # Corresponds to the JSON property `instanceGroupUrls`
        # @return [Array<String>]
        attr_accessor :instance_group_urls
      
        # The authentication information for accessing the master. Authentication is
        # either done using HTTP basic authentication or using a bearer token.
        # Corresponds to the JSON property `masterAuth`
        # @return [Google::Apis::ContainerV1beta1::MasterAuth]
        attr_accessor :master_auth
      
        # The name of this cluster. The name must be unique within this project and zone,
        # and can be up to 40 characters with the following restrictions:
        # - Lowercase letters, numbers, and hyphens only.
        # - Must start with a letter.
        # - Must end with a number or a letter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the Google Compute Engine network to which the cluster is
        # connected.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The machine type and image to use for all nodes in this cluster. See the
        # descriptions of the child properties of nodeConfig.
        # Corresponds to the JSON property `nodeConfig`
        # @return [Google::Apis::ContainerV1beta1::NodeConfig]
        attr_accessor :node_config
      
        # [Output only] The size of the address space on each node for hosting
        # containers.
        # Corresponds to the JSON property `nodeRoutingPrefixSize`
        # @return [Fixnum]
        attr_accessor :node_routing_prefix_size
      
        # The number of nodes to create in this cluster. You must ensure that your
        # Compute Engine resource quota is sufficient for this number of instances plus
        # one (to include the master). You must also have available firewall and routes
        # quota.
        # Corresponds to the JSON property `numNodes`
        # @return [Fixnum]
        attr_accessor :num_nodes
      
        # [Output only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output only] The IP address range of the Kubernetes services in this cluster,
        # in  CIDR notation (e.g. 1.2.3.4/29). Service addresses are typically put in
        # the last /16 from the container CIDR.
        # Corresponds to the JSON property `servicesIpv4Cidr`
        # @return [String]
        attr_accessor :services_ipv4_cidr
      
        # [Output only] The current status of this cluster.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output only] Additional information about the current status of this cluster,
        # if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # [Output only] The name of the Google Compute Engine zone in which the cluster
        # resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_api_version = args[:cluster_api_version] unless args[:cluster_api_version].nil?
          @container_ipv4_cidr = args[:container_ipv4_cidr] unless args[:container_ipv4_cidr].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @enable_cloud_logging = args[:enable_cloud_logging] unless args[:enable_cloud_logging].nil?
          @enable_cloud_monitoring = args[:enable_cloud_monitoring] unless args[:enable_cloud_monitoring].nil?
          @endpoint = args[:endpoint] unless args[:endpoint].nil?
          @instance_group_urls = args[:instance_group_urls] unless args[:instance_group_urls].nil?
          @master_auth = args[:master_auth] unless args[:master_auth].nil?
          @name = args[:name] unless args[:name].nil?
          @network = args[:network] unless args[:network].nil?
          @node_config = args[:node_config] unless args[:node_config].nil?
          @node_routing_prefix_size = args[:node_routing_prefix_size] unless args[:node_routing_prefix_size].nil?
          @num_nodes = args[:num_nodes] unless args[:num_nodes].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @services_ipv4_cidr = args[:services_ipv4_cidr] unless args[:services_ipv4_cidr].nil?
          @status = args[:status] unless args[:status].nil?
          @status_message = args[:status_message] unless args[:status_message].nil?
          @zone = args[:zone] unless args[:zone].nil?
        end
      end
      
      # 
      class CreateClusterRequest
        include Google::Apis::Core::Hashable
      
        # A cluster resource.
        # Corresponds to the JSON property `cluster`
        # @return [Google::Apis::ContainerV1beta1::Cluster]
        attr_accessor :cluster
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] unless args[:cluster].nil?
        end
      end
      
      # 
      class ListAggregatedClustersResponse
        include Google::Apis::Core::Hashable
      
        # A list of clusters in the project, across all zones.
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::ContainerV1beta1::Cluster>]
        attr_accessor :clusters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] unless args[:clusters].nil?
        end
      end
      
      # 
      class ListAggregatedOperationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of operations in the project, across all zones.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ContainerV1beta1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] unless args[:operations].nil?
        end
      end
      
      # 
      class ListClustersResponse
        include Google::Apis::Core::Hashable
      
        # A list of clusters in the project in the specified zone.
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::ContainerV1beta1::Cluster>]
        attr_accessor :clusters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] unless args[:clusters].nil?
        end
      end
      
      # 
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of operations in the project in the specified zone.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ContainerV1beta1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] unless args[:operations].nil?
        end
      end
      
      # The authentication information for accessing the master. Authentication is
      # either done using HTTP basic authentication or using a bearer token.
      class MasterAuth
        include Google::Apis::Core::Hashable
      
        # The token used to authenticate API requests to the master. The token is to be
        # included in an HTTP Authorization Header in all requests to the master
        # endpoint. The format of the header is: "Authorization: Bearer ".
        # Corresponds to the JSON property `bearerToken`
        # @return [String]
        attr_accessor :bearer_token
      
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
      
        # [Output only] Base64 encoded public certificate that is the root of trust for
        # the cluster.
        # Corresponds to the JSON property `clusterCaCertificate`
        # @return [String]
        attr_accessor :cluster_ca_certificate
      
        # The password to use for HTTP basic authentication when accessing the
        # Kubernetes master endpoint. Because the master endpoint is open to the
        # internet, you should create a strong password.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The username to use for HTTP basic authentication when accessing the
        # Kubernetes master endpoint.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bearer_token = args[:bearer_token] unless args[:bearer_token].nil?
          @client_certificate = args[:client_certificate] unless args[:client_certificate].nil?
          @client_key = args[:client_key] unless args[:client_key].nil?
          @cluster_ca_certificate = args[:cluster_ca_certificate] unless args[:cluster_ca_certificate].nil?
          @password = args[:password] unless args[:password].nil?
          @user = args[:user] unless args[:user].nil?
        end
      end
      
      # 
      class NodeConfig
        include Google::Apis::Core::Hashable
      
        # The name of a Google Compute Engine machine type (e.g. n1-standard-1).
        # If unspecified, the default machine type is n1-standard-1.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The optional list of ServiceAccounts, each with their specified scopes, to be
        # made available on all of the node VMs. In addition to the service accounts and
        # scopes specified, the "default" account will always be created with the
        # following scopes to ensure the correct functioning of the cluster:
        # - https://www.googleapis.com/auth/compute,
        # - https://www.googleapis.com/auth/devstorage.read_only
        # Corresponds to the JSON property `serviceAccounts`
        # @return [Array<Google::Apis::ContainerV1beta1::ServiceAccount>]
        attr_accessor :service_accounts
      
        # The fully-specified name of a Google Compute Engine image. For example: https:/
        # /www.googleapis.com/compute/v1/projects/debian-cloud/global/images/backports-
        # debian-7-wheezy-vYYYYMMDD (where YYYMMDD is the version date).
        # If specifying an image, you are responsible for ensuring its compatibility
        # with the Debian 7 backports image. We recommend leaving this field blank to
        # accept the default backports-debian-7-wheezy value.
        # Corresponds to the JSON property `sourceImage`
        # @return [String]
        attr_accessor :source_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] unless args[:machine_type].nil?
          @service_accounts = args[:service_accounts] unless args[:service_accounts].nil?
          @source_image = args[:source_image] unless args[:source_image].nil?
        end
      end
      
      # Defines the operation resource. All fields are output only.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If an error has occurred, a textual description of the error.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # The server-assigned ID for the operation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The operation type.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The current status of the operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Optional] The URL of the cluster resource that this operation is associated
        # with.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Server-defined URL for the target of the operation.
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        # The name of the Google Compute Engine zone in which the operation is taking
        # place.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] unless args[:error_message].nil?
          @name = args[:name] unless args[:name].nil?
          @operation_type = args[:operation_type] unless args[:operation_type].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @status = args[:status] unless args[:status].nil?
          @target = args[:target] unless args[:target].nil?
          @target_link = args[:target_link] unless args[:target_link].nil?
          @zone = args[:zone] unless args[:zone].nil?
        end
      end
      
      # A Compute Engine service account.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # Email address of the service account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The list of scopes to be made available for this service account.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] unless args[:email].nil?
          @scopes = args[:scopes] unless args[:scopes].nil?
        end
      end
    end
  end
end
