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
      
      # The authentication information for accessing the master endpoint.
      # Authentication can be done using HTTP basic auth or using client
      # certificates.
      class MasterAuth
        include Google::Apis::Core::Hashable
      
        # The password to use for HTTP basic authentication to the master endpoint.
        # Because the master endpoint is open to the Internet, you should create a
        # strong password.  If a password is provided for cluster creation, username
        # must be non-empty.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Configuration for client certificates on the cluster.
        # Corresponds to the JSON property `clientCertificateConfig`
        # @return [Google::Apis::ContainerV1::ClientCertificateConfig]
        attr_accessor :client_certificate_config
      
        # [Output only] Base64-encoded private key used by clients to authenticate
        # to the cluster endpoint.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        # [Output only] Base64-encoded public certificate that is the root of
        # trust for the cluster.
        # Corresponds to the JSON property `clusterCaCertificate`
        # @return [String]
        attr_accessor :cluster_ca_certificate
      
        # [Output only] Base64-encoded public certificate used by clients to
        # authenticate to the cluster endpoint.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # The username to use for HTTP basic authentication to the master endpoint.
        # For clusters v1.6.0 and later, you can disable basic authentication by
        # providing an empty username.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @client_certificate_config = args[:client_certificate_config] if args.key?(:client_certificate_config)
          @client_key = args[:client_key] if args.key?(:client_key)
          @cluster_ca_certificate = args[:cluster_ca_certificate] if args.key?(:cluster_ca_certificate)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Parameters that describe the nodes in a cluster.
      class NodeConfig
        include Google::Apis::Core::Hashable
      
        # The map of Kubernetes labels (key/value pairs) to be applied to each node.
        # These will added in addition to any default label(s) that
        # Kubernetes may apply to the node.
        # In case of conflict in label keys, the applied set may differ depending on
        # the Kubernetes version -- it's best to assume the behavior is undefined
        # and conflicts should be avoided.
        # For more information, including usage and the valid values, see:
        # http://kubernetes.io/v1.1/docs/user-guide/labels.html
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The number of local SSD disks to be attached to the node.
        # The limit for this value is dependant upon the maximum number of
        # disks available on a machine per zone. See:
        # https://cloud.google.com/compute/docs/disks/local-ssd#local_ssd_limits
        # for more information.
        # Corresponds to the JSON property `localSsdCount`
        # @return [Fixnum]
        attr_accessor :local_ssd_count
      
        # The metadata key/value pairs assigned to instances in the cluster.
        # Keys must conform to the regexp [a-zA-Z0-9-_]+ and be less than 128 bytes
        # in length. These are reflected as part of a URL in the metadata server.
        # Additionally, to avoid ambiguity, keys must not conflict with any other
        # metadata keys for the project or be one of the four reserved keys:
        # "instance-template", "kube-env", "startup-script", and "user-data"
        # Values are free-form strings, and only have meaning as interpreted by
        # the image running in the instance. The only restriction placed on them is
        # that each value's size must be less than or equal to 32 KB.
        # The total size of all keys and values must be less than 512 KB.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Size of the disk attached to each node, specified in GB.
        # The smallest allowed disk size is 10GB.
        # If unspecified, the default disk size is 100GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # The list of instance tags applied to all nodes. Tags are used to identify
        # valid sources or targets for network firewalls and are specified by
        # the client during cluster or node pool creation. Each tag within the list
        # must comply with RFC1035.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # The Google Cloud Platform Service Account to be used by the node VMs. If
        # no Service Account is specified, the "default" service account is used.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The name of a Google Compute Engine [machine
        # type](/compute/docs/machine-types) (e.g.
        # `n1-standard-1`).
        # If unspecified, the default machine type is
        # `n1-standard-1`.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The image type to use for this node. Note that for a given image type,
        # the latest version of it will be used.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # The set of Google API scopes to be made available on all of the
        # node VMs under the "default" service account.
        # The following scopes are recommended, but not required, and by default are
        # not included:
        # * `https://www.googleapis.com/auth/compute` is required for mounting
        # persistent storage on your nodes.
        # * `https://www.googleapis.com/auth/devstorage.read_only` is required for
        # communicating with **gcr.io**
        # (the [Google Container Registry](/container-registry/)).
        # If unspecified, no scopes are added, unless Cloud Logging or Cloud
        # Monitoring are enabled, in which case their required scopes will be added.
        # Corresponds to the JSON property `oauthScopes`
        # @return [Array<String>]
        attr_accessor :oauth_scopes
      
        # Whether the nodes are created as preemptible VM instances. See:
        # https://cloud.google.com/compute/docs/instances/preemptible for more
        # information about preemptible VM instances.
        # Corresponds to the JSON property `preemptible`
        # @return [Boolean]
        attr_accessor :preemptible
        alias_method :preemptible?, :preemptible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @local_ssd_count = args[:local_ssd_count] if args.key?(:local_ssd_count)
          @metadata = args[:metadata] if args.key?(:metadata)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @tags = args[:tags] if args.key?(:tags)
          @service_account = args[:service_account] if args.key?(:service_account)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @image_type = args[:image_type] if args.key?(:image_type)
          @oauth_scopes = args[:oauth_scopes] if args.key?(:oauth_scopes)
          @preemptible = args[:preemptible] if args.key?(:preemptible)
        end
      end
      
      # AutoUpgradeOptions defines the set of options for the user to control how
      # the Auto Upgrades will proceed.
      class AutoUpgradeOptions
        include Google::Apis::Core::Hashable
      
        # [Output only] This field is set when upgrades are about to commence
        # with the description of the upgrade.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output only] This field is set when upgrades are about to commence
        # with the approximate start time for the upgrades, in
        # [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `autoUpgradeStartTime`
        # @return [String]
        attr_accessor :auto_upgrade_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @auto_upgrade_start_time = args[:auto_upgrade_start_time] if args.key?(:auto_upgrade_start_time)
        end
      end
      
      # ListClustersResponse is the result of ListClustersRequest.
      class ListClustersResponse
        include Google::Apis::Core::Hashable
      
        # If any zones are listed here, the list of clusters returned
        # may be missing those zones.
        # Corresponds to the JSON property `missingZones`
        # @return [Array<String>]
        attr_accessor :missing_zones
      
        # A list of clusters in the project in the specified zone, or
        # across all ones.
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::ContainerV1::Cluster>]
        attr_accessor :clusters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @missing_zones = args[:missing_zones] if args.key?(:missing_zones)
          @clusters = args[:clusters] if args.key?(:clusters)
        end
      end
      
      # Configuration options for the HTTP (L7) load balancing controller addon,
      # which makes it easy to set up HTTP load balancers for services in a cluster.
      class HttpLoadBalancing
        include Google::Apis::Core::Hashable
      
        # Whether the HTTP Load Balancing controller is enabled in the cluster.
        # When enabled, it runs a small pod in the cluster that manages the load
        # balancers.
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
      
      # NodePoolAutoscaling contains information required by cluster autoscaler to
      # adjust the size of the node pool to the current cluster usage.
      class NodePoolAutoscaling
        include Google::Apis::Core::Hashable
      
        # Is autoscaling enabled for this node pool.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Maximum number of nodes in the NodePool. Must be >= min_node_count. There
        # has to enough quota to scale up the cluster.
        # Corresponds to the JSON property `maxNodeCount`
        # @return [Fixnum]
        attr_accessor :max_node_count
      
        # Minimum number of nodes in the NodePool. Must be >= 1 and <=
        # max_node_count.
        # Corresponds to the JSON property `minNodeCount`
        # @return [Fixnum]
        attr_accessor :min_node_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @max_node_count = args[:max_node_count] if args.key?(:max_node_count)
          @min_node_count = args[:min_node_count] if args.key?(:min_node_count)
        end
      end
      
      # Configuration for client certificates on the cluster.
      class ClientCertificateConfig
        include Google::Apis::Core::Hashable
      
        # Issue a client certificate.
        # Corresponds to the JSON property `issueClientCertificate`
        # @return [Boolean]
        attr_accessor :issue_client_certificate
        alias_method :issue_client_certificate?, :issue_client_certificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_client_certificate = args[:issue_client_certificate] if args.key?(:issue_client_certificate)
        end
      end
      
      # SetMasterAuthRequest updates the admin password of a cluster.
      class SetMasterAuthRequest
        include Google::Apis::Core::Hashable
      
        # The authentication information for accessing the master endpoint.
        # Authentication can be done using HTTP basic auth or using client
        # certificates.
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::ContainerV1::MasterAuth]
        attr_accessor :update
      
        # The exact form of action to be taken on the master auth
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update = args[:update] if args.key?(:update)
          @action = args[:action] if args.key?(:action)
        end
      end
      
      # ClusterUpdate describes an update to the cluster. Exactly one update can
      # be applied to a cluster with each request, so at most one field can be
      # provided.
      class ClusterUpdate
        include Google::Apis::Core::Hashable
      
        # The desired image type for the node pool.
        # NOTE: Set the "desired_node_pool" field as well.
        # Corresponds to the JSON property `desiredImageType`
        # @return [String]
        attr_accessor :desired_image_type
      
        # Configuration for the addons that can be automatically spun up in the
        # cluster, enabling additional functionality.
        # Corresponds to the JSON property `desiredAddonsConfig`
        # @return [Google::Apis::ContainerV1::AddonsConfig]
        attr_accessor :desired_addons_config
      
        # The node pool to be upgraded. This field is mandatory if
        # "desired_node_version", "desired_image_family" or
        # "desired_node_pool_autoscaling" is specified and there is more than one
        # node pool on the cluster.
        # Corresponds to the JSON property `desiredNodePoolId`
        # @return [String]
        attr_accessor :desired_node_pool_id
      
        # The Kubernetes version to change the nodes to (typically an
        # upgrade). Use `-` to upgrade to the latest version supported by
        # the server.
        # Corresponds to the JSON property `desiredNodeVersion`
        # @return [String]
        attr_accessor :desired_node_version
      
        # The Kubernetes version to change the master to. The only valid value is the
        # latest supported version. Use "-" to have the server automatically select
        # the latest version.
        # Corresponds to the JSON property `desiredMasterVersion`
        # @return [String]
        attr_accessor :desired_master_version
      
        # NodePoolAutoscaling contains information required by cluster autoscaler to
        # adjust the size of the node pool to the current cluster usage.
        # Corresponds to the JSON property `desiredNodePoolAutoscaling`
        # @return [Google::Apis::ContainerV1::NodePoolAutoscaling]
        attr_accessor :desired_node_pool_autoscaling
      
        # The desired list of Google Compute Engine
        # [locations](/compute/docs/zones#available) in which the cluster's nodes
        # should be located. Changing the locations a cluster is in will result
        # in nodes being either created or removed from the cluster, depending on
        # whether locations are being added or removed.
        # This list must always include the cluster's primary zone.
        # Corresponds to the JSON property `desiredLocations`
        # @return [Array<String>]
        attr_accessor :desired_locations
      
        # The monitoring service the cluster should use to write metrics.
        # Currently available options:
        # * "monitoring.googleapis.com" - the Google Cloud Monitoring service
        # * "none" - no metrics will be exported from the cluster
        # Corresponds to the JSON property `desiredMonitoringService`
        # @return [String]
        attr_accessor :desired_monitoring_service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @desired_image_type = args[:desired_image_type] if args.key?(:desired_image_type)
          @desired_addons_config = args[:desired_addons_config] if args.key?(:desired_addons_config)
          @desired_node_pool_id = args[:desired_node_pool_id] if args.key?(:desired_node_pool_id)
          @desired_node_version = args[:desired_node_version] if args.key?(:desired_node_version)
          @desired_master_version = args[:desired_master_version] if args.key?(:desired_master_version)
          @desired_node_pool_autoscaling = args[:desired_node_pool_autoscaling] if args.key?(:desired_node_pool_autoscaling)
          @desired_locations = args[:desired_locations] if args.key?(:desired_locations)
          @desired_monitoring_service = args[:desired_monitoring_service] if args.key?(:desired_monitoring_service)
        end
      end
      
      # Configuration options for the horizontal pod autoscaling feature, which
      # increases or decreases the number of replica pods a replication controller
      # has based on the resource usage of the existing pods.
      class HorizontalPodAutoscaling
        include Google::Apis::Core::Hashable
      
        # Whether the Horizontal Pod Autoscaling feature is enabled in the cluster.
        # When enabled, it ensures that a Heapster pod is running in the cluster,
        # which is also used by the Cloud Monitoring service.
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
      
      # SetNodePoolManagementRequest sets the node management properties of a node
      # pool.
      class SetNodePoolManagementRequest
        include Google::Apis::Core::Hashable
      
        # NodeManagement defines the set of node management services turned on for the
        # node pool.
        # Corresponds to the JSON property `management`
        # @return [Google::Apis::ContainerV1::NodeManagement]
        attr_accessor :management
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @management = args[:management] if args.key?(:management)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # CompleteIPRotationRequest moves the cluster master back into single-IP mode.
      class CompleteIpRotationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # StartIPRotationRequest creates a new IP for the cluster and then performs
      # a node upgrade on each node pool to point to the new IP.
      class StartIpRotationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configuration for the legacy Attribute Based Access Control authorization
      # mode.
      class LegacyAbac
        include Google::Apis::Core::Hashable
      
        # Whether the ABAC authorizer is enabled for this cluster. When enabled,
        # identities in the system, including service accounts, nodes, and
        # controllers, will have statically granted permissions beyond those
        # provided by the RBAC configuration or IAM.
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
      
      # SetLabelsRequest sets the Google Cloud Platform labels on a Google Container
      # Engine cluster, which will in turn set them for Google Compute Engine
      # resources used by that cluster
      class SetLabelsRequest
        include Google::Apis::Core::Hashable
      
        # The labels to set for that cluster.
        # Corresponds to the JSON property `resourceLabels`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels
      
        # The fingerprint of the previous set of labels for this resource,
        # used to detect conflicts. The fingerprint is initially generated by
        # Container Engine and changes after every request to modify or update
        # labels. You must always provide an up-to-date fingerprint hash when
        # updating or changing labels. Make a <code>get()</code> request to the
        # resource to get the latest fingerprint.
        # Corresponds to the JSON property `labelFingerprint`
        # @return [String]
        attr_accessor :label_fingerprint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_labels = args[:resource_labels] if args.key?(:resource_labels)
          @label_fingerprint = args[:label_fingerprint] if args.key?(:label_fingerprint)
        end
      end
      
      # NodePool contains the name and configuration for a cluster's node pool.
      # Node pools are a set of nodes (i.e. VM's), with a common configuration and
      # specification, under the control of the cluster master. They may have a set
      # of Kubernetes labels applied to them, which may be used to reference them
      # during pod scheduling. They may also be resized up or down, to accommodate
      # the workload.
      class NodePool
        include Google::Apis::Core::Hashable
      
        # [Output only] The status of the nodes in this pool instance.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Parameters that describe the nodes in a cluster.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::ContainerV1::NodeConfig]
        attr_accessor :config
      
        # The name of the node pool.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output only] Additional information about the current status of this
        # node pool instance, if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # NodePoolAutoscaling contains information required by cluster autoscaler to
        # adjust the size of the node pool to the current cluster usage.
        # Corresponds to the JSON property `autoscaling`
        # @return [Google::Apis::ContainerV1::NodePoolAutoscaling]
        attr_accessor :autoscaling
      
        # NodeManagement defines the set of node management services turned on for the
        # node pool.
        # Corresponds to the JSON property `management`
        # @return [Google::Apis::ContainerV1::NodeManagement]
        attr_accessor :management
      
        # The initial node count for the pool. You must ensure that your
        # Compute Engine <a href="/compute/docs/resource-quotas">resource quota</a>
        # is sufficient for this number of instances. You must also have available
        # firewall and routes quota.
        # Corresponds to the JSON property `initialNodeCount`
        # @return [Fixnum]
        attr_accessor :initial_node_count
      
        # [Output only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output only] The version of the Kubernetes of this node.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # [Output only] The resource URLs of [instance
        # groups](/compute/docs/instance-groups/) associated with this
        # node pool.
        # Corresponds to the JSON property `instanceGroupUrls`
        # @return [Array<String>]
        attr_accessor :instance_group_urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @config = args[:config] if args.key?(:config)
          @name = args[:name] if args.key?(:name)
          @status_message = args[:status_message] if args.key?(:status_message)
          @autoscaling = args[:autoscaling] if args.key?(:autoscaling)
          @management = args[:management] if args.key?(:management)
          @initial_node_count = args[:initial_node_count] if args.key?(:initial_node_count)
          @self_link = args[:self_link] if args.key?(:self_link)
          @version = args[:version] if args.key?(:version)
          @instance_group_urls = args[:instance_group_urls] if args.key?(:instance_group_urls)
        end
      end
      
      # NodeManagement defines the set of node management services turned on for the
      # node pool.
      class NodeManagement
        include Google::Apis::Core::Hashable
      
        # A flag that specifies whether node auto-upgrade is enabled for the node
        # pool. If enabled, node auto-upgrade helps keep the nodes in your node pool
        # up to date with the latest release version of Kubernetes.
        # Corresponds to the JSON property `autoUpgrade`
        # @return [Boolean]
        attr_accessor :auto_upgrade
        alias_method :auto_upgrade?, :auto_upgrade
      
        # A flag that specifies whether the node auto-repair is enabled for the node
        # pool. If enabled, the nodes in this node pool will be monitored and, if
        # they fail health checks too many times, an automatic repair action will be
        # triggered.
        # Corresponds to the JSON property `autoRepair`
        # @return [Boolean]
        attr_accessor :auto_repair
        alias_method :auto_repair?, :auto_repair
      
        # AutoUpgradeOptions defines the set of options for the user to control how
        # the Auto Upgrades will proceed.
        # Corresponds to the JSON property `upgradeOptions`
        # @return [Google::Apis::ContainerV1::AutoUpgradeOptions]
        attr_accessor :upgrade_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_upgrade = args[:auto_upgrade] if args.key?(:auto_upgrade)
          @auto_repair = args[:auto_repair] if args.key?(:auto_repair)
          @upgrade_options = args[:upgrade_options] if args.key?(:upgrade_options)
        end
      end
      
      # CancelOperationRequest cancels a single operation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # SetLegacyAbacRequest enables or disables the ABAC authorization mechanism for
      # a cluster.
      class SetLegacyAbacRequest
        include Google::Apis::Core::Hashable
      
        # Whether ABAC authorization will be enabled in the cluster.
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
      
      # This operation resource represents operations that may have happened or are
      # happening on the cluster. All fields are output only.
      class Operation
        include Google::Apis::Core::Hashable
      
        # The current status of the operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The server-assigned ID for the operation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
      
        # Detailed operation progress, if available.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The operation type.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The name of the Google Compute Engine
        # [zone](/compute/docs/zones#available) in which the operation
        # is taking place.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @name = args[:name] if args.key?(:name)
          @status_message = args[:status_message] if args.key?(:status_message)
          @self_link = args[:self_link] if args.key?(:self_link)
          @target_link = args[:target_link] if args.key?(:target_link)
          @detail = args[:detail] if args.key?(:detail)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Configuration for the addons that can be automatically spun up in the
      # cluster, enabling additional functionality.
      class AddonsConfig
        include Google::Apis::Core::Hashable
      
        # Configuration options for the horizontal pod autoscaling feature, which
        # increases or decreases the number of replica pods a replication controller
        # has based on the resource usage of the existing pods.
        # Corresponds to the JSON property `horizontalPodAutoscaling`
        # @return [Google::Apis::ContainerV1::HorizontalPodAutoscaling]
        attr_accessor :horizontal_pod_autoscaling
      
        # Configuration options for the HTTP (L7) load balancing controller addon,
        # which makes it easy to set up HTTP load balancers for services in a cluster.
        # Corresponds to the JSON property `httpLoadBalancing`
        # @return [Google::Apis::ContainerV1::HttpLoadBalancing]
        attr_accessor :http_load_balancing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @horizontal_pod_autoscaling = args[:horizontal_pod_autoscaling] if args.key?(:horizontal_pod_autoscaling)
          @http_load_balancing = args[:http_load_balancing] if args.key?(:http_load_balancing)
        end
      end
      
      # RollbackNodePoolUpgradeRequest rollbacks the previously Aborted or Failed
      # NodePool upgrade. This will be an no-op if the last upgrade successfully
      # completed.
      class RollbackNodePoolUpgradeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # SetNodePoolSizeRequest sets the size a node
      # pool.
      class SetNodePoolSizeRequest
        include Google::Apis::Core::Hashable
      
        # The desired node count for the pool.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_count = args[:node_count] if args.key?(:node_count)
        end
      end
      
      # UpdateClusterRequest updates the settings of a cluster.
      class UpdateClusterRequest
        include Google::Apis::Core::Hashable
      
        # ClusterUpdate describes an update to the cluster. Exactly one update can
        # be applied to a cluster with each request, so at most one field can be
        # provided.
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
      
      # A Google Container Engine cluster.
      class Cluster
        include Google::Apis::Core::Hashable
      
        # The name of the Google Compute Engine
        # [network](/compute/docs/networks-and-firewalls#networks) to which the
        # cluster is connected. If left unspecified, the `default` network
        # will be used.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The fingerprint of the set of labels for this cluster.
        # Corresponds to the JSON property `labelFingerprint`
        # @return [String]
        attr_accessor :label_fingerprint
      
        # [Output only] The name of the Google Compute Engine
        # [zone](/compute/docs/zones#available) in which the cluster
        # resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        # [Output only] The size of the address space on each node for hosting
        # containers. This is provisioned from within the `container_ipv4_cidr`
        # range.
        # Corresponds to the JSON property `nodeIpv4CidrSize`
        # @return [Fixnum]
        attr_accessor :node_ipv4_cidr_size
      
        # [Output only] The time the cluster will be automatically
        # deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The logging service the cluster should use to write logs.
        # Currently available options:
        # * `logging.googleapis.com` - the Google Cloud Logging service.
        # * `none` - no logs will be exported from the cluster.
        # * if left as an empty string,`logging.googleapis.com` will be used.
        # Corresponds to the JSON property `loggingService`
        # @return [String]
        attr_accessor :logging_service
      
        # [Output only] Additional information about the current status of this
        # cluster, if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # The authentication information for accessing the master endpoint.
        # Authentication can be done using HTTP basic auth or using client
        # certificates.
        # Corresponds to the JSON property `masterAuth`
        # @return [Google::Apis::ContainerV1::MasterAuth]
        attr_accessor :master_auth
      
        # [Output only] The current software version of the master endpoint.
        # Corresponds to the JSON property `currentMasterVersion`
        # @return [String]
        attr_accessor :current_master_version
      
        # Parameters that describe the nodes in a cluster.
        # Corresponds to the JSON property `nodeConfig`
        # @return [Google::Apis::ContainerV1::NodeConfig]
        attr_accessor :node_config
      
        # Configuration for the addons that can be automatically spun up in the
        # cluster, enabling additional functionality.
        # Corresponds to the JSON property `addonsConfig`
        # @return [Google::Apis::ContainerV1::AddonsConfig]
        attr_accessor :addons_config
      
        # [Output only] The current status of this cluster.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output only] The current version of the node software components.
        # If they are currently at multiple versions because they're in the process
        # of being upgraded, this reflects the minimum version of all nodes.
        # Corresponds to the JSON property `currentNodeVersion`
        # @return [String]
        attr_accessor :current_node_version
      
        # The name of the Google Compute Engine
        # [subnetwork](/compute/docs/subnetworks) to which the
        # cluster is connected.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # The resource labels for the cluster to use to annotate any related
        # Google Compute Engine resources.
        # Corresponds to the JSON property `resourceLabels`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels
      
        # The name of this cluster. The name must be unique within this project
        # and zone, and can be up to 40 characters with the following restrictions:
        # * Lowercase letters, numbers, and hyphens only.
        # * Must start with a letter.
        # * Must end with a number or a letter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The initial Kubernetes version for this cluster.  Valid versions are those
        # found in validMasterVersions returned by getServerConfig.  The version can
        # be upgraded over time; such upgrades are reflected in
        # currentMasterVersion and currentNodeVersion.
        # Corresponds to the JSON property `initialClusterVersion`
        # @return [String]
        attr_accessor :initial_cluster_version
      
        # [Output only] The IP address of this cluster's master endpoint.
        # The endpoint can be accessed from the internet at
        # `https://username:password@endpoint/`.
        # See the `masterAuth` property of this resource for username and
        # password information.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # Configuration for the legacy Attribute Based Access Control authorization
        # mode.
        # Corresponds to the JSON property `legacyAbac`
        # @return [Google::Apis::ContainerV1::LegacyAbac]
        attr_accessor :legacy_abac
      
        # [Output only] The time the cluster was created, in
        # [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The IP address range of the container pods in this cluster, in
        # [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
        # notation (e.g. `10.96.0.0/14`). Leave blank to have
        # one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
        # Corresponds to the JSON property `clusterIpv4Cidr`
        # @return [String]
        attr_accessor :cluster_ipv4_cidr
      
        # The number of nodes to create in this cluster. You must ensure that your
        # Compute Engine <a href="/compute/docs/resource-quotas">resource quota</a>
        # is sufficient for this number of instances. You must also have available
        # firewall and routes quota.
        # For requests, this field should only be used in lieu of a
        # "node_pool" object, since this configuration (along with the
        # "node_config") will be used to create a "NodePool" object with an
        # auto-generated name. Do not use this and a node_pool at the same time.
        # Corresponds to the JSON property `initialNodeCount`
        # @return [Fixnum]
        attr_accessor :initial_node_count
      
        # The node pools associated with this cluster.
        # This field should not be set if "node_config" or "initial_node_count" are
        # specified.
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::ContainerV1::NodePool>]
        attr_accessor :node_pools
      
        # The list of Google Compute Engine
        # [locations](/compute/docs/zones#available) in which the cluster's nodes
        # should be located.
        # Corresponds to the JSON property `locations`
        # @return [Array<String>]
        attr_accessor :locations
      
        # [Output only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output only] The resource URLs of [instance
        # groups](/compute/docs/instance-groups/) associated with this
        # cluster.
        # Corresponds to the JSON property `instanceGroupUrls`
        # @return [Array<String>]
        attr_accessor :instance_group_urls
      
        # [Output only] The IP address range of the Kubernetes services in
        # this cluster, in
        # [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
        # notation (e.g. `1.2.3.4/29`). Service addresses are
        # typically put in the last `/16` from the container CIDR.
        # Corresponds to the JSON property `servicesIpv4Cidr`
        # @return [String]
        attr_accessor :services_ipv4_cidr
      
        # Kubernetes alpha features are enabled on this cluster. This includes alpha
        # API groups (e.g. v1alpha1) and features that may not be production ready in
        # the kubernetes version of the master and nodes.
        # The cluster has no SLA for uptime and master/node upgrades are disabled.
        # Alpha enabled clusters are automatically deleted thirty days after
        # creation.
        # Corresponds to the JSON property `enableKubernetesAlpha`
        # @return [Boolean]
        attr_accessor :enable_kubernetes_alpha
        alias_method :enable_kubernetes_alpha?, :enable_kubernetes_alpha
      
        # An optional description of this cluster.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output only] The number of nodes currently in the cluster.
        # Corresponds to the JSON property `currentNodeCount`
        # @return [Fixnum]
        attr_accessor :current_node_count
      
        # The monitoring service the cluster should use to write metrics.
        # Currently available options:
        # * `monitoring.googleapis.com` - the Google Cloud Monitoring service.
        # * `none` - no metrics will be exported from the cluster.
        # * if left as an empty string, `monitoring.googleapis.com` will be used.
        # Corresponds to the JSON property `monitoringService`
        # @return [String]
        attr_accessor :monitoring_service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @label_fingerprint = args[:label_fingerprint] if args.key?(:label_fingerprint)
          @zone = args[:zone] if args.key?(:zone)
          @node_ipv4_cidr_size = args[:node_ipv4_cidr_size] if args.key?(:node_ipv4_cidr_size)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @logging_service = args[:logging_service] if args.key?(:logging_service)
          @status_message = args[:status_message] if args.key?(:status_message)
          @master_auth = args[:master_auth] if args.key?(:master_auth)
          @current_master_version = args[:current_master_version] if args.key?(:current_master_version)
          @node_config = args[:node_config] if args.key?(:node_config)
          @addons_config = args[:addons_config] if args.key?(:addons_config)
          @status = args[:status] if args.key?(:status)
          @current_node_version = args[:current_node_version] if args.key?(:current_node_version)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @resource_labels = args[:resource_labels] if args.key?(:resource_labels)
          @name = args[:name] if args.key?(:name)
          @initial_cluster_version = args[:initial_cluster_version] if args.key?(:initial_cluster_version)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @legacy_abac = args[:legacy_abac] if args.key?(:legacy_abac)
          @create_time = args[:create_time] if args.key?(:create_time)
          @cluster_ipv4_cidr = args[:cluster_ipv4_cidr] if args.key?(:cluster_ipv4_cidr)
          @initial_node_count = args[:initial_node_count] if args.key?(:initial_node_count)
          @node_pools = args[:node_pools] if args.key?(:node_pools)
          @locations = args[:locations] if args.key?(:locations)
          @self_link = args[:self_link] if args.key?(:self_link)
          @instance_group_urls = args[:instance_group_urls] if args.key?(:instance_group_urls)
          @services_ipv4_cidr = args[:services_ipv4_cidr] if args.key?(:services_ipv4_cidr)
          @enable_kubernetes_alpha = args[:enable_kubernetes_alpha] if args.key?(:enable_kubernetes_alpha)
          @description = args[:description] if args.key?(:description)
          @current_node_count = args[:current_node_count] if args.key?(:current_node_count)
          @monitoring_service = args[:monitoring_service] if args.key?(:monitoring_service)
        end
      end
      
      # CreateNodePoolRequest creates a node pool for a cluster.
      class CreateNodePoolRequest
        include Google::Apis::Core::Hashable
      
        # NodePool contains the name and configuration for a cluster's node pool.
        # Node pools are a set of nodes (i.e. VM's), with a common configuration and
        # specification, under the control of the cluster master. They may have a set
        # of Kubernetes labels applied to them, which may be used to reference them
        # during pod scheduling. They may also be resized up or down, to accommodate
        # the workload.
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
      
      # ListOperationsResponse is the result of ListOperationsRequest.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of operations in the project in the specified zone.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ContainerV1::Operation>]
        attr_accessor :operations
      
        # If any zones are listed here, the list of operations returned
        # may be missing the operations from those zones.
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
      
        # List of valid master versions.
        # Corresponds to the JSON property `validMasterVersions`
        # @return [Array<String>]
        attr_accessor :valid_master_versions
      
        # Version of Kubernetes the service deploys by default.
        # Corresponds to the JSON property `defaultClusterVersion`
        # @return [String]
        attr_accessor :default_cluster_version
      
        # Default image type.
        # Corresponds to the JSON property `defaultImageType`
        # @return [String]
        attr_accessor :default_image_type
      
        # List of valid node upgrade target versions.
        # Corresponds to the JSON property `validNodeVersions`
        # @return [Array<String>]
        attr_accessor :valid_node_versions
      
        # List of valid image types.
        # Corresponds to the JSON property `validImageTypes`
        # @return [Array<String>]
        attr_accessor :valid_image_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @valid_master_versions = args[:valid_master_versions] if args.key?(:valid_master_versions)
          @default_cluster_version = args[:default_cluster_version] if args.key?(:default_cluster_version)
          @default_image_type = args[:default_image_type] if args.key?(:default_image_type)
          @valid_node_versions = args[:valid_node_versions] if args.key?(:valid_node_versions)
          @valid_image_types = args[:valid_image_types] if args.key?(:valid_image_types)
        end
      end
    end
  end
end
