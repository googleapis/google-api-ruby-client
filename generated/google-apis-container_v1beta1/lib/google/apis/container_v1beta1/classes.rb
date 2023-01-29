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
    module ContainerV1beta1
      
      # AcceleratorConfig represents a Hardware Accelerator request.
      class AcceleratorConfig
        include Google::Apis::Core::Hashable
      
        # The number of the accelerator cards exposed to an instance.
        # Corresponds to the JSON property `acceleratorCount`
        # @return [Fixnum]
        attr_accessor :accelerator_count
      
        # The accelerator type resource name. List of supported accelerators [here](
        # https://cloud.google.com/compute/docs/gpus)
        # Corresponds to the JSON property `acceleratorType`
        # @return [String]
        attr_accessor :accelerator_type
      
        # Size of partitions to create on the GPU. Valid values are described in the
        # NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-
        # guide/#partitioning).
        # Corresponds to the JSON property `gpuPartitionSize`
        # @return [String]
        attr_accessor :gpu_partition_size
      
        # GPUSharingConfig represents the GPU sharing configuration for Hardware
        # Accelerators.
        # Corresponds to the JSON property `gpuSharingConfig`
        # @return [Google::Apis::ContainerV1beta1::GpuSharingConfig]
        attr_accessor :gpu_sharing_config
      
        # The number of time-shared GPU resources to expose for each physical GPU.
        # Corresponds to the JSON property `maxTimeSharedClientsPerGpu`
        # @return [Fixnum]
        attr_accessor :max_time_shared_clients_per_gpu
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_count = args[:accelerator_count] if args.key?(:accelerator_count)
          @accelerator_type = args[:accelerator_type] if args.key?(:accelerator_type)
          @gpu_partition_size = args[:gpu_partition_size] if args.key?(:gpu_partition_size)
          @gpu_sharing_config = args[:gpu_sharing_config] if args.key?(:gpu_sharing_config)
          @max_time_shared_clients_per_gpu = args[:max_time_shared_clients_per_gpu] if args.key?(:max_time_shared_clients_per_gpu)
        end
      end
      
      # Configuration for the addons that can be automatically spun up in the cluster,
      # enabling additional functionality.
      class AddonsConfig
        include Google::Apis::Core::Hashable
      
        # Configuration options for the Cloud Run feature.
        # Corresponds to the JSON property `cloudRunConfig`
        # @return [Google::Apis::ContainerV1beta1::CloudRunConfig]
        attr_accessor :cloud_run_config
      
        # Configuration options for the Config Connector add-on.
        # Corresponds to the JSON property `configConnectorConfig`
        # @return [Google::Apis::ContainerV1beta1::ConfigConnectorConfig]
        attr_accessor :config_connector_config
      
        # Configuration for NodeLocal DNSCache
        # Corresponds to the JSON property `dnsCacheConfig`
        # @return [Google::Apis::ContainerV1beta1::DnsCacheConfig]
        attr_accessor :dns_cache_config
      
        # Configuration for the Compute Engine PD CSI driver.
        # Corresponds to the JSON property `gcePersistentDiskCsiDriverConfig`
        # @return [Google::Apis::ContainerV1beta1::GcePersistentDiskCsiDriverConfig]
        attr_accessor :gce_persistent_disk_csi_driver_config
      
        # Configuration for the GCP Filestore CSI driver.
        # Corresponds to the JSON property `gcpFilestoreCsiDriverConfig`
        # @return [Google::Apis::ContainerV1beta1::GcpFilestoreCsiDriverConfig]
        attr_accessor :gcp_filestore_csi_driver_config
      
        # Configuration for the Backup for GKE Agent.
        # Corresponds to the JSON property `gkeBackupAgentConfig`
        # @return [Google::Apis::ContainerV1beta1::GkeBackupAgentConfig]
        attr_accessor :gke_backup_agent_config
      
        # Configuration options for the horizontal pod autoscaling feature, which
        # increases or decreases the number of replica pods a replication controller has
        # based on the resource usage of the existing pods.
        # Corresponds to the JSON property `horizontalPodAutoscaling`
        # @return [Google::Apis::ContainerV1beta1::HorizontalPodAutoscaling]
        attr_accessor :horizontal_pod_autoscaling
      
        # Configuration options for the HTTP (L7) load balancing controller addon, which
        # makes it easy to set up HTTP load balancers for services in a cluster.
        # Corresponds to the JSON property `httpLoadBalancing`
        # @return [Google::Apis::ContainerV1beta1::HttpLoadBalancing]
        attr_accessor :http_load_balancing
      
        # Configuration options for Istio addon.
        # Corresponds to the JSON property `istioConfig`
        # @return [Google::Apis::ContainerV1beta1::IstioConfig]
        attr_accessor :istio_config
      
        # Configuration options for the KALM addon.
        # Corresponds to the JSON property `kalmConfig`
        # @return [Google::Apis::ContainerV1beta1::KalmConfig]
        attr_accessor :kalm_config
      
        # Configuration for the Kubernetes Dashboard.
        # Corresponds to the JSON property `kubernetesDashboard`
        # @return [Google::Apis::ContainerV1beta1::KubernetesDashboard]
        attr_accessor :kubernetes_dashboard
      
        # Configuration for NetworkPolicy. This only tracks whether the addon is enabled
        # or not on the Master, it does not track whether network policy is enabled for
        # the nodes.
        # Corresponds to the JSON property `networkPolicyConfig`
        # @return [Google::Apis::ContainerV1beta1::NetworkPolicyConfig]
        attr_accessor :network_policy_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_run_config = args[:cloud_run_config] if args.key?(:cloud_run_config)
          @config_connector_config = args[:config_connector_config] if args.key?(:config_connector_config)
          @dns_cache_config = args[:dns_cache_config] if args.key?(:dns_cache_config)
          @gce_persistent_disk_csi_driver_config = args[:gce_persistent_disk_csi_driver_config] if args.key?(:gce_persistent_disk_csi_driver_config)
          @gcp_filestore_csi_driver_config = args[:gcp_filestore_csi_driver_config] if args.key?(:gcp_filestore_csi_driver_config)
          @gke_backup_agent_config = args[:gke_backup_agent_config] if args.key?(:gke_backup_agent_config)
          @horizontal_pod_autoscaling = args[:horizontal_pod_autoscaling] if args.key?(:horizontal_pod_autoscaling)
          @http_load_balancing = args[:http_load_balancing] if args.key?(:http_load_balancing)
          @istio_config = args[:istio_config] if args.key?(:istio_config)
          @kalm_config = args[:kalm_config] if args.key?(:kalm_config)
          @kubernetes_dashboard = args[:kubernetes_dashboard] if args.key?(:kubernetes_dashboard)
          @network_policy_config = args[:network_policy_config] if args.key?(:network_policy_config)
        end
      end
      
      # Specifies options for controlling advanced machine features.
      class AdvancedMachineFeatures
        include Google::Apis::Core::Hashable
      
        # The number of threads per physical core. To disable simultaneous
        # multithreading (SMT) set this to 1. If unset, the maximum number of threads
        # supported per core by the underlying processor is assumed.
        # Corresponds to the JSON property `threadsPerCore`
        # @return [Fixnum]
        attr_accessor :threads_per_core
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @threads_per_core = args[:threads_per_core] if args.key?(:threads_per_core)
        end
      end
      
      # Configuration for returning group information from authenticators.
      class AuthenticatorGroupsConfig
        include Google::Apis::Core::Hashable
      
        # Whether this cluster should return group membership lookups during
        # authentication using a group of security groups.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # The name of the security group-of-groups to be used. Only relevant if enabled =
        # true.
        # Corresponds to the JSON property `securityGroup`
        # @return [String]
        attr_accessor :security_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @security_group = args[:security_group] if args.key?(:security_group)
        end
      end
      
      # AutoUpgradeOptions defines the set of options for the user to control how the
      # Auto Upgrades will proceed.
      class AutoUpgradeOptions
        include Google::Apis::Core::Hashable
      
        # [Output only] This field is set when upgrades are about to commence with the
        # approximate start time for the upgrades, in [RFC3339](https://www.ietf.org/rfc/
        # rfc3339.txt) text format.
        # Corresponds to the JSON property `autoUpgradeStartTime`
        # @return [String]
        attr_accessor :auto_upgrade_start_time
      
        # [Output only] This field is set when upgrades are about to commence with the
        # description of the upgrade.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_upgrade_start_time = args[:auto_upgrade_start_time] if args.key?(:auto_upgrade_start_time)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # Autopilot is the configuration for Autopilot settings on the cluster.
      class Autopilot
        include Google::Apis::Core::Hashable
      
        # Enable Autopilot
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
      
      # AutoprovisioningNodePoolDefaults contains defaults for a node pool created by
      # NAP.
      class AutoprovisioningNodePoolDefaults
        include Google::Apis::Core::Hashable
      
        # The Customer Managed Encryption Key used to encrypt the boot disk attached to
        # each node in the node pool. This should be of the form projects/[
        # KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]
        # . For more information about protecting resources with Cloud KMS Keys please
        # see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
        # Corresponds to the JSON property `bootDiskKmsKey`
        # @return [String]
        attr_accessor :boot_disk_kms_key
      
        # Size of the disk attached to each node, specified in GB. The smallest allowed
        # disk size is 10GB. If unspecified, the default disk size is 100GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-
        # balanced') If unspecified, the default disk type is 'pd-standard'
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # The image type to use for NAP created node. Please see https://cloud.google.
        # com/kubernetes-engine/docs/concepts/node-images for available image types.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # NodeManagement defines the set of node management services turned on for the
        # node pool.
        # Corresponds to the JSON property `management`
        # @return [Google::Apis::ContainerV1beta1::NodeManagement]
        attr_accessor :management
      
        # Deprecated. Minimum CPU platform to be used for NAP created node pools. The
        # instance may be scheduled on the specified or newer CPU platform. Applicable
        # values are the friendly names of CPU platforms, such as minCpuPlatform: Intel
        # Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how
        # to specify min CPU platform](https://cloud.google.com/compute/docs/instances/
        # specify-min-cpu-platform). This field is deprecated, min_cpu_platform should
        # be specified using `cloud.google.com/requested-min-cpu-platform` label
        # selector on the pod. To unset the min cpu platform field pass "automatic" as
        # field value.
        # Corresponds to the JSON property `minCpuPlatform`
        # @return [String]
        attr_accessor :min_cpu_platform
      
        # The set of Google API scopes to be made available on all of the node VMs under
        # the "default" service account. The following scopes are recommended, but not
        # required, and by default are not included: * `https://www.googleapis.com/auth/
        # compute` is required for mounting persistent storage on your nodes. * `https://
        # www.googleapis.com/auth/devstorage.read_only` is required for communicating
        # with **gcr.io** (the [Google Container Registry](https://cloud.google.com/
        # container-registry/)). If unspecified, no scopes are added, unless Cloud
        # Logging or Cloud Monitoring are enabled, in which case their required scopes
        # will be added.
        # Corresponds to the JSON property `oauthScopes`
        # @return [Array<String>]
        attr_accessor :oauth_scopes
      
        # The Google Cloud Platform Service Account to be used by the node VMs. Specify
        # the email address of the Service Account; otherwise, if no Service Account is
        # specified, the "default" service account is used.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # A set of Shielded Instance options.
        # Corresponds to the JSON property `shieldedInstanceConfig`
        # @return [Google::Apis::ContainerV1beta1::ShieldedInstanceConfig]
        attr_accessor :shielded_instance_config
      
        # These upgrade settings configure the upgrade strategy for the node pool. Use
        # strategy to switch between the strategies applied to the node pool. If the
        # strategy is SURGE, use max_surge and max_unavailable to control the level of
        # parallelism and the level of disruption caused by upgrade. 1. maxSurge
        # controls the number of additional nodes that can be added to the node pool
        # temporarily for the time of the upgrade to increase the number of available
        # nodes. 2. maxUnavailable controls the number of nodes that can be
        # simultaneously unavailable. 3. (maxUnavailable + maxSurge) determines the
        # level of parallelism (how many nodes are being upgraded at the same time). If
        # the strategy is BLUE_GREEN, use blue_green_settings to configure the blue-
        # green upgrade related settings. 1. standard_rollout_policy is the default
        # policy. The policy is used to control the way blue pool gets drained. The
        # draining is executed in the batch mode. The batch size could be specified as
        # either percentage of the node pool size or the number of nodes.
        # batch_soak_duration is the soak time after each batch gets drained. 2.
        # node_pool_soak_duration is the soak time after all blue nodes are drained.
        # After this period, the blue pool nodes will be deleted.
        # Corresponds to the JSON property `upgradeSettings`
        # @return [Google::Apis::ContainerV1beta1::UpgradeSettings]
        attr_accessor :upgrade_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boot_disk_kms_key = args[:boot_disk_kms_key] if args.key?(:boot_disk_kms_key)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @image_type = args[:image_type] if args.key?(:image_type)
          @management = args[:management] if args.key?(:management)
          @min_cpu_platform = args[:min_cpu_platform] if args.key?(:min_cpu_platform)
          @oauth_scopes = args[:oauth_scopes] if args.key?(:oauth_scopes)
          @service_account = args[:service_account] if args.key?(:service_account)
          @shielded_instance_config = args[:shielded_instance_config] if args.key?(:shielded_instance_config)
          @upgrade_settings = args[:upgrade_settings] if args.key?(:upgrade_settings)
        end
      end
      
      # Deprecated.
      class AvailableVersion
        include Google::Apis::Core::Hashable
      
        # Reason for availability.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Kubernetes version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Parameters for using BigQuery as the destination of resource usage export.
      class BigQueryDestination
        include Google::Apis::Core::Hashable
      
        # The ID of a BigQuery Dataset.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
        end
      end
      
      # Configuration for Binary Authorization.
      class BinaryAuthorization
        include Google::Apis::Core::Hashable
      
        # This field is deprecated. Leave this unset and instead configure
        # BinaryAuthorization using evaluation_mode. If evaluation_mode is set to
        # anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Mode of operation for binauthz policy evaluation. If unspecified, defaults to
        # DISABLED.
        # Corresponds to the JSON property `evaluationMode`
        # @return [String]
        attr_accessor :evaluation_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @evaluation_mode = args[:evaluation_mode] if args.key?(:evaluation_mode)
        end
      end
      
      # Information relevant to blue-green upgrade.
      class BlueGreenInfo
        include Google::Apis::Core::Hashable
      
        # The resource URLs of the [managed instance groups] (/compute/docs/instance-
        # groups/creating-groups-of-managed-instances) associated with blue pool.
        # Corresponds to the JSON property `blueInstanceGroupUrls`
        # @return [Array<String>]
        attr_accessor :blue_instance_group_urls
      
        # Time to start deleting blue pool to complete blue-green upgrade, in [RFC3339](
        # https://www.ietf.org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `bluePoolDeletionStartTime`
        # @return [String]
        attr_accessor :blue_pool_deletion_start_time
      
        # The resource URLs of the [managed instance groups] (/compute/docs/instance-
        # groups/creating-groups-of-managed-instances) associated with green pool.
        # Corresponds to the JSON property `greenInstanceGroupUrls`
        # @return [Array<String>]
        attr_accessor :green_instance_group_urls
      
        # Version of green pool.
        # Corresponds to the JSON property `greenPoolVersion`
        # @return [String]
        attr_accessor :green_pool_version
      
        # Current blue-green upgrade phase.
        # Corresponds to the JSON property `phase`
        # @return [String]
        attr_accessor :phase
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blue_instance_group_urls = args[:blue_instance_group_urls] if args.key?(:blue_instance_group_urls)
          @blue_pool_deletion_start_time = args[:blue_pool_deletion_start_time] if args.key?(:blue_pool_deletion_start_time)
          @green_instance_group_urls = args[:green_instance_group_urls] if args.key?(:green_instance_group_urls)
          @green_pool_version = args[:green_pool_version] if args.key?(:green_pool_version)
          @phase = args[:phase] if args.key?(:phase)
        end
      end
      
      # Settings for blue-green upgrade.
      class BlueGreenSettings
        include Google::Apis::Core::Hashable
      
        # Time needed after draining entire blue pool. After this period, blue pool will
        # be cleaned up.
        # Corresponds to the JSON property `nodePoolSoakDuration`
        # @return [String]
        attr_accessor :node_pool_soak_duration
      
        # Standard rollout policy is the default policy for blue-green.
        # Corresponds to the JSON property `standardRolloutPolicy`
        # @return [Google::Apis::ContainerV1beta1::StandardRolloutPolicy]
        attr_accessor :standard_rollout_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_pool_soak_duration = args[:node_pool_soak_duration] if args.key?(:node_pool_soak_duration)
          @standard_rollout_policy = args[:standard_rollout_policy] if args.key?(:standard_rollout_policy)
        end
      end
      
      # CancelOperationRequest cancels a single operation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        # The name (project, location, operation id) of the operation to cancel.
        # Specified in the format `projects/*/locations/*/operations/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The server-assigned `name` of the operation. This field
        # has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the operation resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # CidrBlock contains an optional name and one CIDR block.
      class CidrBlock
        include Google::Apis::Core::Hashable
      
        # cidr_block must be specified in CIDR notation.
        # Corresponds to the JSON property `cidrBlock`
        # @return [String]
        attr_accessor :cidr_block
      
        # display_name is an optional field for users to identify CIDR blocks.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cidr_block = args[:cidr_block] if args.key?(:cidr_block)
          @display_name = args[:display_name] if args.key?(:display_name)
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
      
      # Configuration options for the Cloud Run feature.
      class CloudRunConfig
        include Google::Apis::Core::Hashable
      
        # Whether Cloud Run addon is enabled for this cluster.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Which load balancer type is installed for Cloud Run.
        # Corresponds to the JSON property `loadBalancerType`
        # @return [String]
        attr_accessor :load_balancer_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @load_balancer_type = args[:load_balancer_type] if args.key?(:load_balancer_type)
        end
      end
      
      # A Google Kubernetes Engine cluster.
      class Cluster
        include Google::Apis::Core::Hashable
      
        # Configuration for the addons that can be automatically spun up in the cluster,
        # enabling additional functionality.
        # Corresponds to the JSON property `addonsConfig`
        # @return [Google::Apis::ContainerV1beta1::AddonsConfig]
        attr_accessor :addons_config
      
        # Configuration for returning group information from authenticators.
        # Corresponds to the JSON property `authenticatorGroupsConfig`
        # @return [Google::Apis::ContainerV1beta1::AuthenticatorGroupsConfig]
        attr_accessor :authenticator_groups_config
      
        # Autopilot is the configuration for Autopilot settings on the cluster.
        # Corresponds to the JSON property `autopilot`
        # @return [Google::Apis::ContainerV1beta1::Autopilot]
        attr_accessor :autopilot
      
        # ClusterAutoscaling contains global, per-cluster information required by
        # Cluster Autoscaler to automatically adjust the size of the cluster and create/
        # delete node pools based on the current needs.
        # Corresponds to the JSON property `autoscaling`
        # @return [Google::Apis::ContainerV1beta1::ClusterAutoscaling]
        attr_accessor :autoscaling
      
        # Configuration for Binary Authorization.
        # Corresponds to the JSON property `binaryAuthorization`
        # @return [Google::Apis::ContainerV1beta1::BinaryAuthorization]
        attr_accessor :binary_authorization
      
        # The IP address range of the container pods in this cluster, in [CIDR](http://
        # en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.
        # 0/14`). Leave blank to have one automatically chosen or specify a `/14` block
        # in `10.0.0.0/8`.
        # Corresponds to the JSON property `clusterIpv4Cidr`
        # @return [String]
        attr_accessor :cluster_ipv4_cidr
      
        # Telemetry integration for the cluster.
        # Corresponds to the JSON property `clusterTelemetry`
        # @return [Google::Apis::ContainerV1beta1::ClusterTelemetry]
        attr_accessor :cluster_telemetry
      
        # Which conditions caused the current cluster state.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::ContainerV1beta1::StatusCondition>]
        attr_accessor :conditions
      
        # ConfidentialNodes is configuration for the confidential nodes feature, which
        # makes nodes run on confidential VMs.
        # Corresponds to the JSON property `confidentialNodes`
        # @return [Google::Apis::ContainerV1beta1::ConfidentialNodes]
        attr_accessor :confidential_nodes
      
        # Configuration for fine-grained cost management feature.
        # Corresponds to the JSON property `costManagementConfig`
        # @return [Google::Apis::ContainerV1beta1::CostManagementConfig]
        attr_accessor :cost_management_config
      
        # [Output only] The time the cluster was created, in [RFC3339](https://www.ietf.
        # org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # [Output only] The current software version of the master endpoint.
        # Corresponds to the JSON property `currentMasterVersion`
        # @return [String]
        attr_accessor :current_master_version
      
        # [Output only] The number of nodes currently in the cluster. Deprecated. Call
        # Kubernetes API directly to retrieve node information.
        # Corresponds to the JSON property `currentNodeCount`
        # @return [Fixnum]
        attr_accessor :current_node_count
      
        # [Output only] Deprecated, use [NodePool.version](https://cloud.google.com/
        # kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters.
        # nodePools) instead. The current version of the node software components. If
        # they are currently at multiple versions because they're in the process of
        # being upgraded, this reflects the minimum version of all nodes.
        # Corresponds to the JSON property `currentNodeVersion`
        # @return [String]
        attr_accessor :current_node_version
      
        # Configuration of etcd encryption.
        # Corresponds to the JSON property `databaseEncryption`
        # @return [Google::Apis::ContainerV1beta1::DatabaseEncryption]
        attr_accessor :database_encryption
      
        # Constraints applied to pods.
        # Corresponds to the JSON property `defaultMaxPodsConstraint`
        # @return [Google::Apis::ContainerV1beta1::MaxPodsConstraint]
        attr_accessor :default_max_pods_constraint
      
        # An optional description of this cluster.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Kubernetes alpha features are enabled on this cluster. This includes alpha API
        # groups (e.g. v1beta1) and features that may not be production ready in the
        # kubernetes version of the master and nodes. The cluster has no SLA for uptime
        # and master/node upgrades are disabled. Alpha enabled clusters are
        # automatically deleted thirty days after creation.
        # Corresponds to the JSON property `enableKubernetesAlpha`
        # @return [Boolean]
        attr_accessor :enable_kubernetes_alpha
        alias_method :enable_kubernetes_alpha?, :enable_kubernetes_alpha
      
        # Enable the ability to use Cloud TPUs in this cluster. This field is deprecated,
        # use tpu_config.enabled instead.
        # Corresponds to the JSON property `enableTpu`
        # @return [Boolean]
        attr_accessor :enable_tpu
        alias_method :enable_tpu?, :enable_tpu
      
        # [Output only] The IP address of this cluster's master endpoint. The endpoint
        # can be accessed from the internet at `https://username:password@endpoint/`.
        # See the `masterAuth` property of this resource for username and password
        # information.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # This checksum is computed by the server based on the value of cluster fields,
        # and may be sent on update requests to ensure the client has an up-to-date
        # value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # [Output only] The time the cluster will be automatically deleted in [RFC3339](
        # https://www.ietf.org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. Unique id for the cluster.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # IdentityServiceConfig is configuration for Identity Service which allows
        # customers to use external identity providers with the K8S API
        # Corresponds to the JSON property `identityServiceConfig`
        # @return [Google::Apis::ContainerV1beta1::IdentityServiceConfig]
        attr_accessor :identity_service_config
      
        # The initial Kubernetes version for this cluster. Valid versions are those
        # found in validMasterVersions returned by getServerConfig. The version can be
        # upgraded over time; such upgrades are reflected in currentMasterVersion and
        # currentNodeVersion. Users may specify either explicit versions offered by
        # Kubernetes Engine or version aliases, which have the following behavior: - "
        # latest": picks the highest valid Kubernetes version - "1.X": picks the highest
        # valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid
        # gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes
        # version - "","-": picks the default Kubernetes version
        # Corresponds to the JSON property `initialClusterVersion`
        # @return [String]
        attr_accessor :initial_cluster_version
      
        # The number of nodes to create in this cluster. You must ensure that your
        # Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is
        # sufficient for this number of instances. You must also have available firewall
        # and routes quota. For requests, this field should only be used in lieu of a "
        # node_pool" object, since this configuration (along with the "node_config")
        # will be used to create a "NodePool" object with an auto-generated name. Do not
        # use this and a node_pool at the same time. This field is deprecated, use
        # node_pool.initial_node_count instead.
        # Corresponds to the JSON property `initialNodeCount`
        # @return [Fixnum]
        attr_accessor :initial_node_count
      
        # Deprecated. Use node_pools.instance_group_urls.
        # Corresponds to the JSON property `instanceGroupUrls`
        # @return [Array<String>]
        attr_accessor :instance_group_urls
      
        # Configuration for controlling how IPs are allocated in the cluster.
        # Corresponds to the JSON property `ipAllocationPolicy`
        # @return [Google::Apis::ContainerV1beta1::IpAllocationPolicy]
        attr_accessor :ip_allocation_policy
      
        # The fingerprint of the set of labels for this cluster.
        # Corresponds to the JSON property `labelFingerprint`
        # @return [String]
        attr_accessor :label_fingerprint
      
        # Configuration for the legacy Attribute Based Access Control authorization mode.
        # Corresponds to the JSON property `legacyAbac`
        # @return [Google::Apis::ContainerV1beta1::LegacyAbac]
        attr_accessor :legacy_abac
      
        # [Output only] The name of the Google Compute Engine [zone](https://cloud.
        # google.com/compute/docs/regions-zones/regions-zones#available) or [region](
        # https://cloud.google.com/compute/docs/regions-zones/regions-zones#available)
        # in which the cluster resides.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The list of Google Compute Engine [zones](https://cloud.google.com/compute/
        # docs/zones#available) in which the cluster's nodes should be located. This
        # field provides a default value if [NodePool.Locations](https://cloud.google.
        # com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.
        # nodePools#NodePool.FIELDS.locations) are not specified during node pool
        # creation. Warning: changing cluster locations will update the [NodePool.
        # Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/
        # projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node
        # pools and will result in nodes being added and/or removed.
        # Corresponds to the JSON property `locations`
        # @return [Array<String>]
        attr_accessor :locations
      
        # LoggingConfig is cluster logging configuration.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::ContainerV1beta1::LoggingConfig]
        attr_accessor :logging_config
      
        # The logging service the cluster should use to write logs. Currently available
        # options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service
        # with a Kubernetes-native resource model * `logging.googleapis.com` - The
        # legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` -
        # no logs will be exported from the cluster. If left as an empty string,`logging.
        # googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.
        # com` for earlier versions.
        # Corresponds to the JSON property `loggingService`
        # @return [String]
        attr_accessor :logging_service
      
        # MaintenancePolicy defines the maintenance policy to be used for the cluster.
        # Corresponds to the JSON property `maintenancePolicy`
        # @return [Google::Apis::ContainerV1beta1::MaintenancePolicy]
        attr_accessor :maintenance_policy
      
        # Master is the configuration for components on master.
        # Corresponds to the JSON property `master`
        # @return [Google::Apis::ContainerV1beta1::Master]
        attr_accessor :master
      
        # The authentication information for accessing the master endpoint.
        # Authentication can be done using HTTP basic auth or using client certificates.
        # Corresponds to the JSON property `masterAuth`
        # @return [Google::Apis::ContainerV1beta1::MasterAuth]
        attr_accessor :master_auth
      
        # Configuration options for the master authorized networks feature. Enabled
        # master authorized networks will disallow all external traffic to access
        # Kubernetes master through HTTPS except traffic from the given CIDR blocks,
        # Google Compute Engine Public IPs and Google Prod IPs.
        # Corresponds to the JSON property `masterAuthorizedNetworksConfig`
        # @return [Google::Apis::ContainerV1beta1::MasterAuthorizedNetworksConfig]
        attr_accessor :master_authorized_networks_config
      
        # The IP prefix in CIDR notation to use for the hosted master network. This
        # prefix will be used for assigning private IP addresses to the master or set of
        # masters, as well as the ILB VIP. This field is deprecated, use
        # private_cluster_config.master_ipv4_cidr_block instead.
        # Corresponds to the JSON property `masterIpv4CidrBlock`
        # @return [String]
        attr_accessor :master_ipv4_cidr_block
      
        # Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
        # Corresponds to the JSON property `meshCertificates`
        # @return [Google::Apis::ContainerV1beta1::MeshCertificates]
        attr_accessor :mesh_certificates
      
        # MonitoringConfig is cluster monitoring configuration.
        # Corresponds to the JSON property `monitoringConfig`
        # @return [Google::Apis::ContainerV1beta1::MonitoringConfig]
        attr_accessor :monitoring_config
      
        # The monitoring service the cluster should use to write metrics. Currently
        # available options: * "monitoring.googleapis.com/kubernetes" - The Cloud
        # Monitoring service with a Kubernetes-native resource model * `monitoring.
        # googleapis.com` - The legacy Cloud Monitoring service (no longer available as
        # of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left
        # as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE
        # 1.14+ or `monitoring.googleapis.com` for earlier versions.
        # Corresponds to the JSON property `monitoringService`
        # @return [String]
        attr_accessor :monitoring_service
      
        # The name of this cluster. The name must be unique within this project and
        # location (e.g. zone or region), and can be up to 40 characters with the
        # following restrictions: * Lowercase letters, numbers, and hyphens only. * Must
        # start with a letter. * Must end with a number or a letter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the Google Compute Engine [network](https://cloud.google.com/
        # compute/docs/networks-and-firewalls#networks) to which the cluster is
        # connected. If left unspecified, the `default` network will be used. On output
        # this shows the network ID instead of the name.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # NetworkConfig reports the relative names of network & subnetwork.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::ContainerV1beta1::NetworkConfig]
        attr_accessor :network_config
      
        # Configuration options for the NetworkPolicy feature. https://kubernetes.io/
        # docs/concepts/services-networking/networkpolicies/
        # Corresponds to the JSON property `networkPolicy`
        # @return [Google::Apis::ContainerV1beta1::NetworkPolicy]
        attr_accessor :network_policy
      
        # Parameters that describe the nodes in a cluster. GKE Autopilot clusters do not
        # recognize parameters in `NodeConfig`. Use AutoprovisioningNodePoolDefaults
        # instead.
        # Corresponds to the JSON property `nodeConfig`
        # @return [Google::Apis::ContainerV1beta1::NodeConfig]
        attr_accessor :node_config
      
        # [Output only] The size of the address space on each node for hosting
        # containers. This is provisioned from within the `container_ipv4_cidr` range.
        # This field will only be set when cluster is in route-based network mode.
        # Corresponds to the JSON property `nodeIpv4CidrSize`
        # @return [Fixnum]
        attr_accessor :node_ipv4_cidr_size
      
        # node pool configs that apply to all auto-provisioned node pools in autopilot
        # clusters and node auto-provisioning enabled clusters
        # Corresponds to the JSON property `nodePoolAutoConfig`
        # @return [Google::Apis::ContainerV1beta1::NodePoolAutoConfig]
        attr_accessor :node_pool_auto_config
      
        # Subset of Nodepool message that has defaults.
        # Corresponds to the JSON property `nodePoolDefaults`
        # @return [Google::Apis::ContainerV1beta1::NodePoolDefaults]
        attr_accessor :node_pool_defaults
      
        # The node pools associated with this cluster. This field should not be set if "
        # node_config" or "initial_node_count" are specified.
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::ContainerV1beta1::NodePool>]
        attr_accessor :node_pools
      
        # NotificationConfig is the configuration of notifications.
        # Corresponds to the JSON property `notificationConfig`
        # @return [Google::Apis::ContainerV1beta1::NotificationConfig]
        attr_accessor :notification_config
      
        # Configuration for the PodSecurityPolicy feature.
        # Corresponds to the JSON property `podSecurityPolicyConfig`
        # @return [Google::Apis::ContainerV1beta1::PodSecurityPolicyConfig]
        attr_accessor :pod_security_policy_config
      
        # If this is a private cluster setup. Private clusters are clusters that, by
        # default have no external IP addresses on the nodes and where nodes and the
        # master communicate over private IP addresses. This field is deprecated, use
        # private_cluster_config.enable_private_nodes instead.
        # Corresponds to the JSON property `privateCluster`
        # @return [Boolean]
        attr_accessor :private_cluster
        alias_method :private_cluster?, :private_cluster
      
        # Configuration options for private clusters.
        # Corresponds to the JSON property `privateClusterConfig`
        # @return [Google::Apis::ContainerV1beta1::PrivateClusterConfig]
        attr_accessor :private_cluster_config
      
        # ProtectConfig defines the flags needed to enable/disable features for the
        # Protect API.
        # Corresponds to the JSON property `protectConfig`
        # @return [Google::Apis::ContainerV1beta1::ProtectConfig]
        attr_accessor :protect_config
      
        # ReleaseChannel indicates which release channel a cluster is subscribed to.
        # Release channels are arranged in order of risk. When a cluster is subscribed
        # to a release channel, Google maintains both the master version and the node
        # version. Node auto-upgrade defaults to true and cannot be disabled.
        # Corresponds to the JSON property `releaseChannel`
        # @return [Google::Apis::ContainerV1beta1::ReleaseChannel]
        attr_accessor :release_channel
      
        # The resource labels for the cluster to use to annotate any related Google
        # Compute Engine resources.
        # Corresponds to the JSON property `resourceLabels`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels
      
        # Configuration for exporting cluster resource usages.
        # Corresponds to the JSON property `resourceUsageExportConfig`
        # @return [Google::Apis::ContainerV1beta1::ResourceUsageExportConfig]
        attr_accessor :resource_usage_export_config
      
        # [Output only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output only] The IP address range of the Kubernetes services in this cluster,
        # in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
        # notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last `
        # /16` from the container CIDR.
        # Corresponds to the JSON property `servicesIpv4Cidr`
        # @return [String]
        attr_accessor :services_ipv4_cidr
      
        # Configuration of Shielded Nodes feature.
        # Corresponds to the JSON property `shieldedNodes`
        # @return [Google::Apis::ContainerV1beta1::ShieldedNodes]
        attr_accessor :shielded_nodes
      
        # [Output only] The current status of this cluster.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output only] Deprecated. Use conditions instead. Additional information about
        # the current status of this cluster, if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # The name of the Google Compute Engine [subnetwork](https://cloud.google.com/
        # compute/docs/subnetworks) to which the cluster is connected. On output this
        # shows the subnetwork ID instead of the name.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # Configuration for Cloud TPU.
        # Corresponds to the JSON property `tpuConfig`
        # @return [Google::Apis::ContainerV1beta1::TpuConfig]
        attr_accessor :tpu_config
      
        # [Output only] The IP address range of the Cloud TPUs in this cluster, in [CIDR]
        # (http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `
        # 1.2.3.4/29`).
        # Corresponds to the JSON property `tpuIpv4CidrBlock`
        # @return [String]
        attr_accessor :tpu_ipv4_cidr_block
      
        # VerticalPodAutoscaling contains global, per-cluster information required by
        # Vertical Pod Autoscaler to automatically adjust the resources of pods
        # controlled by it.
        # Corresponds to the JSON property `verticalPodAutoscaling`
        # @return [Google::Apis::ContainerV1beta1::VerticalPodAutoscaling]
        attr_accessor :vertical_pod_autoscaling
      
        # Configuration for direct-path (via ALTS) with workload identity.
        # Corresponds to the JSON property `workloadAltsConfig`
        # @return [Google::Apis::ContainerV1beta1::WorkloadAltsConfig]
        attr_accessor :workload_alts_config
      
        # Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
        # Corresponds to the JSON property `workloadCertificates`
        # @return [Google::Apis::ContainerV1beta1::WorkloadCertificates]
        attr_accessor :workload_certificates
      
        # Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
        # Corresponds to the JSON property `workloadIdentityConfig`
        # @return [Google::Apis::ContainerV1beta1::WorkloadIdentityConfig]
        attr_accessor :workload_identity_config
      
        # [Output only] The name of the Google Compute Engine [zone](https://cloud.
        # google.com/compute/docs/zones#available) in which the cluster resides. This
        # field is deprecated, use location instead.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addons_config = args[:addons_config] if args.key?(:addons_config)
          @authenticator_groups_config = args[:authenticator_groups_config] if args.key?(:authenticator_groups_config)
          @autopilot = args[:autopilot] if args.key?(:autopilot)
          @autoscaling = args[:autoscaling] if args.key?(:autoscaling)
          @binary_authorization = args[:binary_authorization] if args.key?(:binary_authorization)
          @cluster_ipv4_cidr = args[:cluster_ipv4_cidr] if args.key?(:cluster_ipv4_cidr)
          @cluster_telemetry = args[:cluster_telemetry] if args.key?(:cluster_telemetry)
          @conditions = args[:conditions] if args.key?(:conditions)
          @confidential_nodes = args[:confidential_nodes] if args.key?(:confidential_nodes)
          @cost_management_config = args[:cost_management_config] if args.key?(:cost_management_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @current_master_version = args[:current_master_version] if args.key?(:current_master_version)
          @current_node_count = args[:current_node_count] if args.key?(:current_node_count)
          @current_node_version = args[:current_node_version] if args.key?(:current_node_version)
          @database_encryption = args[:database_encryption] if args.key?(:database_encryption)
          @default_max_pods_constraint = args[:default_max_pods_constraint] if args.key?(:default_max_pods_constraint)
          @description = args[:description] if args.key?(:description)
          @enable_kubernetes_alpha = args[:enable_kubernetes_alpha] if args.key?(:enable_kubernetes_alpha)
          @enable_tpu = args[:enable_tpu] if args.key?(:enable_tpu)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @etag = args[:etag] if args.key?(:etag)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @id = args[:id] if args.key?(:id)
          @identity_service_config = args[:identity_service_config] if args.key?(:identity_service_config)
          @initial_cluster_version = args[:initial_cluster_version] if args.key?(:initial_cluster_version)
          @initial_node_count = args[:initial_node_count] if args.key?(:initial_node_count)
          @instance_group_urls = args[:instance_group_urls] if args.key?(:instance_group_urls)
          @ip_allocation_policy = args[:ip_allocation_policy] if args.key?(:ip_allocation_policy)
          @label_fingerprint = args[:label_fingerprint] if args.key?(:label_fingerprint)
          @legacy_abac = args[:legacy_abac] if args.key?(:legacy_abac)
          @location = args[:location] if args.key?(:location)
          @locations = args[:locations] if args.key?(:locations)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @logging_service = args[:logging_service] if args.key?(:logging_service)
          @maintenance_policy = args[:maintenance_policy] if args.key?(:maintenance_policy)
          @master = args[:master] if args.key?(:master)
          @master_auth = args[:master_auth] if args.key?(:master_auth)
          @master_authorized_networks_config = args[:master_authorized_networks_config] if args.key?(:master_authorized_networks_config)
          @master_ipv4_cidr_block = args[:master_ipv4_cidr_block] if args.key?(:master_ipv4_cidr_block)
          @mesh_certificates = args[:mesh_certificates] if args.key?(:mesh_certificates)
          @monitoring_config = args[:monitoring_config] if args.key?(:monitoring_config)
          @monitoring_service = args[:monitoring_service] if args.key?(:monitoring_service)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @network_config = args[:network_config] if args.key?(:network_config)
          @network_policy = args[:network_policy] if args.key?(:network_policy)
          @node_config = args[:node_config] if args.key?(:node_config)
          @node_ipv4_cidr_size = args[:node_ipv4_cidr_size] if args.key?(:node_ipv4_cidr_size)
          @node_pool_auto_config = args[:node_pool_auto_config] if args.key?(:node_pool_auto_config)
          @node_pool_defaults = args[:node_pool_defaults] if args.key?(:node_pool_defaults)
          @node_pools = args[:node_pools] if args.key?(:node_pools)
          @notification_config = args[:notification_config] if args.key?(:notification_config)
          @pod_security_policy_config = args[:pod_security_policy_config] if args.key?(:pod_security_policy_config)
          @private_cluster = args[:private_cluster] if args.key?(:private_cluster)
          @private_cluster_config = args[:private_cluster_config] if args.key?(:private_cluster_config)
          @protect_config = args[:protect_config] if args.key?(:protect_config)
          @release_channel = args[:release_channel] if args.key?(:release_channel)
          @resource_labels = args[:resource_labels] if args.key?(:resource_labels)
          @resource_usage_export_config = args[:resource_usage_export_config] if args.key?(:resource_usage_export_config)
          @self_link = args[:self_link] if args.key?(:self_link)
          @services_ipv4_cidr = args[:services_ipv4_cidr] if args.key?(:services_ipv4_cidr)
          @shielded_nodes = args[:shielded_nodes] if args.key?(:shielded_nodes)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @tpu_config = args[:tpu_config] if args.key?(:tpu_config)
          @tpu_ipv4_cidr_block = args[:tpu_ipv4_cidr_block] if args.key?(:tpu_ipv4_cidr_block)
          @vertical_pod_autoscaling = args[:vertical_pod_autoscaling] if args.key?(:vertical_pod_autoscaling)
          @workload_alts_config = args[:workload_alts_config] if args.key?(:workload_alts_config)
          @workload_certificates = args[:workload_certificates] if args.key?(:workload_certificates)
          @workload_identity_config = args[:workload_identity_config] if args.key?(:workload_identity_config)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # ClusterAutoscaling contains global, per-cluster information required by
      # Cluster Autoscaler to automatically adjust the size of the cluster and create/
      # delete node pools based on the current needs.
      class ClusterAutoscaling
        include Google::Apis::Core::Hashable
      
        # The list of Google Compute Engine [zones](https://cloud.google.com/compute/
        # docs/zones#available) in which the NodePool's nodes can be created by NAP.
        # Corresponds to the JSON property `autoprovisioningLocations`
        # @return [Array<String>]
        attr_accessor :autoprovisioning_locations
      
        # AutoprovisioningNodePoolDefaults contains defaults for a node pool created by
        # NAP.
        # Corresponds to the JSON property `autoprovisioningNodePoolDefaults`
        # @return [Google::Apis::ContainerV1beta1::AutoprovisioningNodePoolDefaults]
        attr_accessor :autoprovisioning_node_pool_defaults
      
        # Defines autoscaling behaviour.
        # Corresponds to the JSON property `autoscalingProfile`
        # @return [String]
        attr_accessor :autoscaling_profile
      
        # Enables automatic node pool creation and deletion.
        # Corresponds to the JSON property `enableNodeAutoprovisioning`
        # @return [Boolean]
        attr_accessor :enable_node_autoprovisioning
        alias_method :enable_node_autoprovisioning?, :enable_node_autoprovisioning
      
        # Contains global constraints regarding minimum and maximum amount of resources
        # in the cluster.
        # Corresponds to the JSON property `resourceLimits`
        # @return [Array<Google::Apis::ContainerV1beta1::ResourceLimit>]
        attr_accessor :resource_limits
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoprovisioning_locations = args[:autoprovisioning_locations] if args.key?(:autoprovisioning_locations)
          @autoprovisioning_node_pool_defaults = args[:autoprovisioning_node_pool_defaults] if args.key?(:autoprovisioning_node_pool_defaults)
          @autoscaling_profile = args[:autoscaling_profile] if args.key?(:autoscaling_profile)
          @enable_node_autoprovisioning = args[:enable_node_autoprovisioning] if args.key?(:enable_node_autoprovisioning)
          @resource_limits = args[:resource_limits] if args.key?(:resource_limits)
        end
      end
      
      # Telemetry integration for the cluster.
      class ClusterTelemetry
        include Google::Apis::Core::Hashable
      
        # Type of the integration.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # ClusterUpdate describes an update to the cluster. Exactly one update can be
      # applied to a cluster with each request, so at most one field can be provided.
      class ClusterUpdate
        include Google::Apis::Core::Hashable
      
        # Configuration for the addons that can be automatically spun up in the cluster,
        # enabling additional functionality.
        # Corresponds to the JSON property `desiredAddonsConfig`
        # @return [Google::Apis::ContainerV1beta1::AddonsConfig]
        attr_accessor :desired_addons_config
      
        # Configuration for returning group information from authenticators.
        # Corresponds to the JSON property `desiredAuthenticatorGroupsConfig`
        # @return [Google::Apis::ContainerV1beta1::AuthenticatorGroupsConfig]
        attr_accessor :desired_authenticator_groups_config
      
        # Configuration for Binary Authorization.
        # Corresponds to the JSON property `desiredBinaryAuthorization`
        # @return [Google::Apis::ContainerV1beta1::BinaryAuthorization]
        attr_accessor :desired_binary_authorization
      
        # ClusterAutoscaling contains global, per-cluster information required by
        # Cluster Autoscaler to automatically adjust the size of the cluster and create/
        # delete node pools based on the current needs.
        # Corresponds to the JSON property `desiredClusterAutoscaling`
        # @return [Google::Apis::ContainerV1beta1::ClusterAutoscaling]
        attr_accessor :desired_cluster_autoscaling
      
        # Telemetry integration for the cluster.
        # Corresponds to the JSON property `desiredClusterTelemetry`
        # @return [Google::Apis::ContainerV1beta1::ClusterTelemetry]
        attr_accessor :desired_cluster_telemetry
      
        # Configuration for fine-grained cost management feature.
        # Corresponds to the JSON property `desiredCostManagementConfig`
        # @return [Google::Apis::ContainerV1beta1::CostManagementConfig]
        attr_accessor :desired_cost_management_config
      
        # Configuration of etcd encryption.
        # Corresponds to the JSON property `desiredDatabaseEncryption`
        # @return [Google::Apis::ContainerV1beta1::DatabaseEncryption]
        attr_accessor :desired_database_encryption
      
        # The desired datapath provider for the cluster.
        # Corresponds to the JSON property `desiredDatapathProvider`
        # @return [String]
        attr_accessor :desired_datapath_provider
      
        # DefaultSnatStatus contains the desired state of whether default sNAT should be
        # disabled on the cluster.
        # Corresponds to the JSON property `desiredDefaultSnatStatus`
        # @return [Google::Apis::ContainerV1beta1::DefaultSnatStatus]
        attr_accessor :desired_default_snat_status
      
        # DNSConfig contains the desired set of options for configuring clusterDNS.
        # Corresponds to the JSON property `desiredDnsConfig`
        # @return [Google::Apis::ContainerV1beta1::DnsConfig]
        attr_accessor :desired_dns_config
      
        # Enable/Disable private endpoint for the cluster's master.
        # Corresponds to the JSON property `desiredEnablePrivateEndpoint`
        # @return [Boolean]
        attr_accessor :desired_enable_private_endpoint
        alias_method :desired_enable_private_endpoint?, :desired_enable_private_endpoint
      
        # GatewayAPIConfig contains the desired config of Gateway API on this cluster.
        # Corresponds to the JSON property `desiredGatewayApiConfig`
        # @return [Google::Apis::ContainerV1beta1::GatewayApiConfig]
        attr_accessor :desired_gateway_api_config
      
        # GcfsConfig contains configurations of Google Container File System.
        # Corresponds to the JSON property `desiredGcfsConfig`
        # @return [Google::Apis::ContainerV1beta1::GcfsConfig]
        attr_accessor :desired_gcfs_config
      
        # IdentityServiceConfig is configuration for Identity Service which allows
        # customers to use external identity providers with the K8S API
        # Corresponds to the JSON property `desiredIdentityServiceConfig`
        # @return [Google::Apis::ContainerV1beta1::IdentityServiceConfig]
        attr_accessor :desired_identity_service_config
      
        # The desired image type for the node pool. NOTE: Set the "desired_node_pool"
        # field as well.
        # Corresponds to the JSON property `desiredImageType`
        # @return [String]
        attr_accessor :desired_image_type
      
        # IntraNodeVisibilityConfig contains the desired config of the intra-node
        # visibility on this cluster.
        # Corresponds to the JSON property `desiredIntraNodeVisibilityConfig`
        # @return [Google::Apis::ContainerV1beta1::IntraNodeVisibilityConfig]
        attr_accessor :desired_intra_node_visibility_config
      
        # ILBSubsettingConfig contains the desired config of L4 Internal LoadBalancer
        # subsetting on this cluster.
        # Corresponds to the JSON property `desiredL4ilbSubsettingConfig`
        # @return [Google::Apis::ContainerV1beta1::IlbSubsettingConfig]
        attr_accessor :desired_l4ilb_subsetting_config
      
        # The desired list of Google Compute Engine [zones](https://cloud.google.com/
        # compute/docs/zones#available) in which the cluster's nodes should be located.
        # This list must always include the cluster's primary zone. Warning: changing
        # cluster locations will update the locations of all node pools and will result
        # in nodes being added and/or removed.
        # Corresponds to the JSON property `desiredLocations`
        # @return [Array<String>]
        attr_accessor :desired_locations
      
        # LoggingConfig is cluster logging configuration.
        # Corresponds to the JSON property `desiredLoggingConfig`
        # @return [Google::Apis::ContainerV1beta1::LoggingConfig]
        attr_accessor :desired_logging_config
      
        # The logging service the cluster should use to write logs. Currently available
        # options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service
        # with a Kubernetes-native resource model * `logging.googleapis.com` - The
        # legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` -
        # no logs will be exported from the cluster. If left as an empty string,`logging.
        # googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.
        # com` for earlier versions.
        # Corresponds to the JSON property `desiredLoggingService`
        # @return [String]
        attr_accessor :desired_logging_service
      
        # Master is the configuration for components on master.
        # Corresponds to the JSON property `desiredMaster`
        # @return [Google::Apis::ContainerV1beta1::Master]
        attr_accessor :desired_master
      
        # Configuration options for the master authorized networks feature. Enabled
        # master authorized networks will disallow all external traffic to access
        # Kubernetes master through HTTPS except traffic from the given CIDR blocks,
        # Google Compute Engine Public IPs and Google Prod IPs.
        # Corresponds to the JSON property `desiredMasterAuthorizedNetworksConfig`
        # @return [Google::Apis::ContainerV1beta1::MasterAuthorizedNetworksConfig]
        attr_accessor :desired_master_authorized_networks_config
      
        # The Kubernetes version to change the master to. The only valid value is the
        # latest supported version. Users may specify either explicit versions offered
        # by Kubernetes Engine or version aliases, which have the following behavior: - "
        # latest": picks the highest valid Kubernetes version - "1.X": picks the highest
        # valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid
        # gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes
        # version - "-": picks the default Kubernetes version
        # Corresponds to the JSON property `desiredMasterVersion`
        # @return [String]
        attr_accessor :desired_master_version
      
        # Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
        # Corresponds to the JSON property `desiredMeshCertificates`
        # @return [Google::Apis::ContainerV1beta1::MeshCertificates]
        attr_accessor :desired_mesh_certificates
      
        # MonitoringConfig is cluster monitoring configuration.
        # Corresponds to the JSON property `desiredMonitoringConfig`
        # @return [Google::Apis::ContainerV1beta1::MonitoringConfig]
        attr_accessor :desired_monitoring_config
      
        # The monitoring service the cluster should use to write metrics. Currently
        # available options: * "monitoring.googleapis.com/kubernetes" - The Cloud
        # Monitoring service with a Kubernetes-native resource model * `monitoring.
        # googleapis.com` - The legacy Cloud Monitoring service (no longer available as
        # of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left
        # as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE
        # 1.14+ or `monitoring.googleapis.com` for earlier versions.
        # Corresponds to the JSON property `desiredMonitoringService`
        # @return [String]
        attr_accessor :desired_monitoring_service
      
        # Collection of Compute Engine network tags that can be applied to a node's
        # underlying VM instance. (See `tags` field in [`NodeConfig`](/kubernetes-engine/
        # docs/reference/rest/v1/NodeConfig)).
        # Corresponds to the JSON property `desiredNodePoolAutoConfigNetworkTags`
        # @return [Google::Apis::ContainerV1beta1::NetworkTags]
        attr_accessor :desired_node_pool_auto_config_network_tags
      
        # NodePoolAutoscaling contains information required by cluster autoscaler to
        # adjust the size of the node pool to the current cluster usage.
        # Corresponds to the JSON property `desiredNodePoolAutoscaling`
        # @return [Google::Apis::ContainerV1beta1::NodePoolAutoscaling]
        attr_accessor :desired_node_pool_autoscaling
      
        # The node pool to be upgraded. This field is mandatory if "desired_node_version"
        # , "desired_image_family", "desired_node_pool_autoscaling", or "
        # desired_workload_metadata_config" is specified and there is more than one node
        # pool on the cluster.
        # Corresponds to the JSON property `desiredNodePoolId`
        # @return [String]
        attr_accessor :desired_node_pool_id
      
        # NodePoolLoggingConfig specifies logging configuration for nodepools.
        # Corresponds to the JSON property `desiredNodePoolLoggingConfig`
        # @return [Google::Apis::ContainerV1beta1::NodePoolLoggingConfig]
        attr_accessor :desired_node_pool_logging_config
      
        # The Kubernetes version to change the nodes to (typically an upgrade). Users
        # may specify either explicit versions offered by Kubernetes Engine or version
        # aliases, which have the following behavior: - "latest": picks the highest
        # valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in
        # the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y
        # version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the
        # Kubernetes master version
        # Corresponds to the JSON property `desiredNodeVersion`
        # @return [String]
        attr_accessor :desired_node_version
      
        # NotificationConfig is the configuration of notifications.
        # Corresponds to the JSON property `desiredNotificationConfig`
        # @return [Google::Apis::ContainerV1beta1::NotificationConfig]
        attr_accessor :desired_notification_config
      
        # Configuration for the PodSecurityPolicy feature.
        # Corresponds to the JSON property `desiredPodSecurityPolicyConfig`
        # @return [Google::Apis::ContainerV1beta1::PodSecurityPolicyConfig]
        attr_accessor :desired_pod_security_policy_config
      
        # Configuration options for private clusters.
        # Corresponds to the JSON property `desiredPrivateClusterConfig`
        # @return [Google::Apis::ContainerV1beta1::PrivateClusterConfig]
        attr_accessor :desired_private_cluster_config
      
        # The desired state of IPv6 connectivity to Google Services.
        # Corresponds to the JSON property `desiredPrivateIpv6GoogleAccess`
        # @return [String]
        attr_accessor :desired_private_ipv6_google_access
      
        # ProtectConfig defines the flags needed to enable/disable features for the
        # Protect API.
        # Corresponds to the JSON property `desiredProtectConfig`
        # @return [Google::Apis::ContainerV1beta1::ProtectConfig]
        attr_accessor :desired_protect_config
      
        # ReleaseChannel indicates which release channel a cluster is subscribed to.
        # Release channels are arranged in order of risk. When a cluster is subscribed
        # to a release channel, Google maintains both the master version and the node
        # version. Node auto-upgrade defaults to true and cannot be disabled.
        # Corresponds to the JSON property `desiredReleaseChannel`
        # @return [Google::Apis::ContainerV1beta1::ReleaseChannel]
        attr_accessor :desired_release_channel
      
        # Configuration for exporting cluster resource usages.
        # Corresponds to the JSON property `desiredResourceUsageExportConfig`
        # @return [Google::Apis::ContainerV1beta1::ResourceUsageExportConfig]
        attr_accessor :desired_resource_usage_export_config
      
        # Config to block services with externalIPs field.
        # Corresponds to the JSON property `desiredServiceExternalIpsConfig`
        # @return [Google::Apis::ContainerV1beta1::ServiceExternalIPsConfig]
        attr_accessor :desired_service_external_ips_config
      
        # Configuration of Shielded Nodes feature.
        # Corresponds to the JSON property `desiredShieldedNodes`
        # @return [Google::Apis::ContainerV1beta1::ShieldedNodes]
        attr_accessor :desired_shielded_nodes
      
        # The desired stack type of the cluster. If a stack type is provided and does
        # not match the current stack type of the cluster, update will attempt to change
        # the stack type to the new type.
        # Corresponds to the JSON property `desiredStackType`
        # @return [String]
        attr_accessor :desired_stack_type
      
        # Configuration for Cloud TPU.
        # Corresponds to the JSON property `desiredTpuConfig`
        # @return [Google::Apis::ContainerV1beta1::TpuConfig]
        attr_accessor :desired_tpu_config
      
        # VerticalPodAutoscaling contains global, per-cluster information required by
        # Vertical Pod Autoscaler to automatically adjust the resources of pods
        # controlled by it.
        # Corresponds to the JSON property `desiredVerticalPodAutoscaling`
        # @return [Google::Apis::ContainerV1beta1::VerticalPodAutoscaling]
        attr_accessor :desired_vertical_pod_autoscaling
      
        # Configuration for direct-path (via ALTS) with workload identity.
        # Corresponds to the JSON property `desiredWorkloadAltsConfig`
        # @return [Google::Apis::ContainerV1beta1::WorkloadAltsConfig]
        attr_accessor :desired_workload_alts_config
      
        # Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
        # Corresponds to the JSON property `desiredWorkloadCertificates`
        # @return [Google::Apis::ContainerV1beta1::WorkloadCertificates]
        attr_accessor :desired_workload_certificates
      
        # Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
        # Corresponds to the JSON property `desiredWorkloadIdentityConfig`
        # @return [Google::Apis::ContainerV1beta1::WorkloadIdentityConfig]
        attr_accessor :desired_workload_identity_config
      
        # The current etag of the cluster. If an etag is provided and does not match the
        # current etag of the cluster, update will be blocked and an ABORTED error will
        # be returned.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @desired_addons_config = args[:desired_addons_config] if args.key?(:desired_addons_config)
          @desired_authenticator_groups_config = args[:desired_authenticator_groups_config] if args.key?(:desired_authenticator_groups_config)
          @desired_binary_authorization = args[:desired_binary_authorization] if args.key?(:desired_binary_authorization)
          @desired_cluster_autoscaling = args[:desired_cluster_autoscaling] if args.key?(:desired_cluster_autoscaling)
          @desired_cluster_telemetry = args[:desired_cluster_telemetry] if args.key?(:desired_cluster_telemetry)
          @desired_cost_management_config = args[:desired_cost_management_config] if args.key?(:desired_cost_management_config)
          @desired_database_encryption = args[:desired_database_encryption] if args.key?(:desired_database_encryption)
          @desired_datapath_provider = args[:desired_datapath_provider] if args.key?(:desired_datapath_provider)
          @desired_default_snat_status = args[:desired_default_snat_status] if args.key?(:desired_default_snat_status)
          @desired_dns_config = args[:desired_dns_config] if args.key?(:desired_dns_config)
          @desired_enable_private_endpoint = args[:desired_enable_private_endpoint] if args.key?(:desired_enable_private_endpoint)
          @desired_gateway_api_config = args[:desired_gateway_api_config] if args.key?(:desired_gateway_api_config)
          @desired_gcfs_config = args[:desired_gcfs_config] if args.key?(:desired_gcfs_config)
          @desired_identity_service_config = args[:desired_identity_service_config] if args.key?(:desired_identity_service_config)
          @desired_image_type = args[:desired_image_type] if args.key?(:desired_image_type)
          @desired_intra_node_visibility_config = args[:desired_intra_node_visibility_config] if args.key?(:desired_intra_node_visibility_config)
          @desired_l4ilb_subsetting_config = args[:desired_l4ilb_subsetting_config] if args.key?(:desired_l4ilb_subsetting_config)
          @desired_locations = args[:desired_locations] if args.key?(:desired_locations)
          @desired_logging_config = args[:desired_logging_config] if args.key?(:desired_logging_config)
          @desired_logging_service = args[:desired_logging_service] if args.key?(:desired_logging_service)
          @desired_master = args[:desired_master] if args.key?(:desired_master)
          @desired_master_authorized_networks_config = args[:desired_master_authorized_networks_config] if args.key?(:desired_master_authorized_networks_config)
          @desired_master_version = args[:desired_master_version] if args.key?(:desired_master_version)
          @desired_mesh_certificates = args[:desired_mesh_certificates] if args.key?(:desired_mesh_certificates)
          @desired_monitoring_config = args[:desired_monitoring_config] if args.key?(:desired_monitoring_config)
          @desired_monitoring_service = args[:desired_monitoring_service] if args.key?(:desired_monitoring_service)
          @desired_node_pool_auto_config_network_tags = args[:desired_node_pool_auto_config_network_tags] if args.key?(:desired_node_pool_auto_config_network_tags)
          @desired_node_pool_autoscaling = args[:desired_node_pool_autoscaling] if args.key?(:desired_node_pool_autoscaling)
          @desired_node_pool_id = args[:desired_node_pool_id] if args.key?(:desired_node_pool_id)
          @desired_node_pool_logging_config = args[:desired_node_pool_logging_config] if args.key?(:desired_node_pool_logging_config)
          @desired_node_version = args[:desired_node_version] if args.key?(:desired_node_version)
          @desired_notification_config = args[:desired_notification_config] if args.key?(:desired_notification_config)
          @desired_pod_security_policy_config = args[:desired_pod_security_policy_config] if args.key?(:desired_pod_security_policy_config)
          @desired_private_cluster_config = args[:desired_private_cluster_config] if args.key?(:desired_private_cluster_config)
          @desired_private_ipv6_google_access = args[:desired_private_ipv6_google_access] if args.key?(:desired_private_ipv6_google_access)
          @desired_protect_config = args[:desired_protect_config] if args.key?(:desired_protect_config)
          @desired_release_channel = args[:desired_release_channel] if args.key?(:desired_release_channel)
          @desired_resource_usage_export_config = args[:desired_resource_usage_export_config] if args.key?(:desired_resource_usage_export_config)
          @desired_service_external_ips_config = args[:desired_service_external_ips_config] if args.key?(:desired_service_external_ips_config)
          @desired_shielded_nodes = args[:desired_shielded_nodes] if args.key?(:desired_shielded_nodes)
          @desired_stack_type = args[:desired_stack_type] if args.key?(:desired_stack_type)
          @desired_tpu_config = args[:desired_tpu_config] if args.key?(:desired_tpu_config)
          @desired_vertical_pod_autoscaling = args[:desired_vertical_pod_autoscaling] if args.key?(:desired_vertical_pod_autoscaling)
          @desired_workload_alts_config = args[:desired_workload_alts_config] if args.key?(:desired_workload_alts_config)
          @desired_workload_certificates = args[:desired_workload_certificates] if args.key?(:desired_workload_certificates)
          @desired_workload_identity_config = args[:desired_workload_identity_config] if args.key?(:desired_workload_identity_config)
          @etag = args[:etag] if args.key?(:etag)
        end
      end
      
      # CompleteIPRotationRequest moves the cluster master back into single-IP mode.
      class CompleteIpRotationRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster. This field has been deprecated
        # and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # The name (project, location, cluster name) of the cluster to complete IP
        # rotation. Specified in the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # CompleteNodePoolUpgradeRequest sets the name of target node pool to complete
      # upgrade.
      class CompleteNodePoolUpgradeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # ConfidentialNodes is configuration for the confidential nodes feature, which
      # makes nodes run on confidential VMs.
      class ConfidentialNodes
        include Google::Apis::Core::Hashable
      
        # Whether Confidential Nodes feature is enabled.
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
      
      # Configuration options for the Config Connector add-on.
      class ConfigConnectorConfig
        include Google::Apis::Core::Hashable
      
        # Whether Cloud Connector is enabled for this cluster.
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
      
      # Parameters for controlling consumption metering.
      class ConsumptionMeteringConfig
        include Google::Apis::Core::Hashable
      
        # Whether to enable consumption metering for this cluster. If enabled, a second
        # BigQuery table will be created to hold resource consumption records.
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
      
      # Configuration for fine-grained cost management feature.
      class CostManagementConfig
        include Google::Apis::Core::Hashable
      
        # Whether the feature is enabled or not.
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
      
      # CreateClusterRequest creates a cluster.
      class CreateClusterRequest
        include Google::Apis::Core::Hashable
      
        # A Google Kubernetes Engine cluster.
        # Corresponds to the JSON property `cluster`
        # @return [Google::Apis::ContainerV1beta1::Cluster]
        attr_accessor :cluster
      
        # The parent (project and location) where the cluster will be created. Specified
        # in the format `projects/*/locations/*`.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the parent field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the parent field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @parent = args[:parent] if args.key?(:parent)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # CreateNodePoolRequest creates a node pool for a cluster.
      class CreateNodePoolRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster. This field has been deprecated
        # and replaced by the parent field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # NodePool contains the name and configuration for a cluster's node pool. Node
        # pools are a set of nodes (i.e. VM's), with a common configuration and
        # specification, under the control of the cluster master. They may have a set of
        # Kubernetes labels applied to them, which may be used to reference them during
        # pod scheduling. They may also be resized up or down, to accommodate the
        # workload. These upgrade settings control the level of parallelism and the
        # level of disruption caused by an upgrade. maxUnavailable controls the number
        # of nodes that can be simultaneously unavailable. maxSurge controls the number
        # of additional nodes that can be added to the node pool temporarily for the
        # time of the upgrade to increase the number of available nodes. (maxUnavailable
        # + maxSurge) determines the level of parallelism (how many nodes are being
        # upgraded at the same time). Note: upgrades inevitably introduce some
        # disruption since workloads need to be moved from old nodes to new, upgraded
        # ones. Even if maxUnavailable=0, this holds true. (Disruption stays within the
        # limits of PodDisruptionBudget, if it is configured.) Consider a hypothetical
        # node pool with 5 nodes having maxSurge=2, maxUnavailable=1. This means the
        # upgrade process upgrades 3 nodes simultaneously. It creates 2 additional (
        # upgraded) nodes, then it brings down 3 old (not yet upgraded) nodes at the
        # same time. This ensures that there are always at least 4 nodes available.
        # Corresponds to the JSON property `nodePool`
        # @return [Google::Apis::ContainerV1beta1::NodePool]
        attr_accessor :node_pool
      
        # The parent (project, location, cluster name) where the node pool will be
        # created. Specified in the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the parent field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the parent field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @node_pool = args[:node_pool] if args.key?(:node_pool)
          @parent = args[:parent] if args.key?(:parent)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # DNSConfig contains the desired set of options for configuring clusterDNS.
      class DnsConfig
        include Google::Apis::Core::Hashable
      
        # cluster_dns indicates which in-cluster DNS provider should be used.
        # Corresponds to the JSON property `clusterDns`
        # @return [String]
        attr_accessor :cluster_dns
      
        # cluster_dns_domain is the suffix used for all cluster service records.
        # Corresponds to the JSON property `clusterDnsDomain`
        # @return [String]
        attr_accessor :cluster_dns_domain
      
        # cluster_dns_scope indicates the scope of access to cluster DNS records.
        # Corresponds to the JSON property `clusterDnsScope`
        # @return [String]
        attr_accessor :cluster_dns_scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_dns = args[:cluster_dns] if args.key?(:cluster_dns)
          @cluster_dns_domain = args[:cluster_dns_domain] if args.key?(:cluster_dns_domain)
          @cluster_dns_scope = args[:cluster_dns_scope] if args.key?(:cluster_dns_scope)
        end
      end
      
      # Time window specified for daily maintenance operations.
      class DailyMaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # [Output only] Duration of the time window, automatically chosen to be smallest
        # possible in the given scenario.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Time within the maintenance window to start the maintenance operations. It
        # must be in format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Configuration of etcd encryption.
      class DatabaseEncryption
        include Google::Apis::Core::Hashable
      
        # Name of CloudKMS key to use for the encryption of secrets in etcd. Ex.
        # projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
        # Corresponds to the JSON property `keyName`
        # @return [String]
        attr_accessor :key_name
      
        # Denotes the state of etcd encryption.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_name = args[:key_name] if args.key?(:key_name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # DefaultSnatStatus contains the desired state of whether default sNAT should be
      # disabled on the cluster.
      class DefaultSnatStatus
        include Google::Apis::Core::Hashable
      
        # Disables cluster default sNAT rules.
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
      
      # Configuration for NodeLocal DNSCache
      class DnsCacheConfig
        include Google::Apis::Core::Hashable
      
        # Whether NodeLocal DNSCache is enabled for this cluster.
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
      
      # EphemeralStorageConfig contains configuration for the ephemeral storage
      # filesystem.
      class EphemeralStorageConfig
        include Google::Apis::Core::Hashable
      
        # Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces.
        # Each local SSD is 375 GB in size. If zero, it means to disable using local
        # SSDs as ephemeral storage.
        # Corresponds to the JSON property `localSsdCount`
        # @return [Fixnum]
        attr_accessor :local_ssd_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_ssd_count = args[:local_ssd_count] if args.key?(:local_ssd_count)
        end
      end
      
      # EphemeralStorageLocalSsdConfig contains configuration for the node ephemeral
      # storage using Local SSDs.
      class EphemeralStorageLocalSsdConfig
        include Google::Apis::Core::Hashable
      
        # Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces.
        # Each local SSD is 375 GB in size. If zero, it means to disable using local
        # SSDs as ephemeral storage. The limit for this value is dependent upon the
        # maximum number of disks available on a machine per zone. See: https://cloud.
        # google.com/compute/docs/disks/local-ssd for more information.
        # Corresponds to the JSON property `localSsdCount`
        # @return [Fixnum]
        attr_accessor :local_ssd_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_ssd_count = args[:local_ssd_count] if args.key?(:local_ssd_count)
        end
      end
      
      # Configuration of Fast Socket feature.
      class FastSocket
        include Google::Apis::Core::Hashable
      
        # Whether Fast Socket features are enabled in the node pool.
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
      
      # Allows filtering to one or more specific event types. If event types are
      # present, those and only those event types will be transmitted to the cluster.
      # Other types will be skipped. If no filter is specified, or no event types are
      # present, all event types will be sent
      class Filter
        include Google::Apis::Core::Hashable
      
        # Event types to allowlist.
        # Corresponds to the JSON property `eventType`
        # @return [Array<String>]
        attr_accessor :event_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_type = args[:event_type] if args.key?(:event_type)
        end
      end
      
      # GPUSharingConfig represents the GPU sharing configuration for Hardware
      # Accelerators.
      class GpuSharingConfig
        include Google::Apis::Core::Hashable
      
        # The type of GPU sharing strategy to enable on the GPU node.
        # Corresponds to the JSON property `gpuSharingStrategy`
        # @return [String]
        attr_accessor :gpu_sharing_strategy
      
        # The max number of containers that can share a physical GPU.
        # Corresponds to the JSON property `maxSharedClientsPerGpu`
        # @return [Fixnum]
        attr_accessor :max_shared_clients_per_gpu
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gpu_sharing_strategy = args[:gpu_sharing_strategy] if args.key?(:gpu_sharing_strategy)
          @max_shared_clients_per_gpu = args[:max_shared_clients_per_gpu] if args.key?(:max_shared_clients_per_gpu)
        end
      end
      
      # GatewayAPIConfig contains the desired config of Gateway API on this cluster.
      class GatewayApiConfig
        include Google::Apis::Core::Hashable
      
        # The Gateway API release channel to use for Gateway API.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
        end
      end
      
      # Configuration for the Compute Engine PD CSI driver.
      class GcePersistentDiskCsiDriverConfig
        include Google::Apis::Core::Hashable
      
        # Whether the Compute Engine PD CSI driver is enabled for this cluster.
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
      
      # GcfsConfig contains configurations of Google Container File System.
      class GcfsConfig
        include Google::Apis::Core::Hashable
      
        # Whether to use GCFS.
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
      
      # Configuration for the GCP Filestore CSI driver.
      class GcpFilestoreCsiDriverConfig
        include Google::Apis::Core::Hashable
      
        # Whether the GCP Filestore CSI driver is enabled for this cluster.
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
      
      # GetJSONWebKeysResponse is a valid JSON Web Key Set as specififed in rfc 7517
      class GetJsonWebKeysResponse
        include Google::Apis::Core::Hashable
      
        # RFC-2616: cache control support
        # Corresponds to the JSON property `cacheHeader`
        # @return [Google::Apis::ContainerV1beta1::HttpCacheControlResponseHeader]
        attr_accessor :cache_header
      
        # The public component of the keys used by the cluster to sign token requests.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::ContainerV1beta1::Jwk>]
        attr_accessor :keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_header = args[:cache_header] if args.key?(:cache_header)
          @keys = args[:keys] if args.key?(:keys)
        end
      end
      
      # GetOpenIDConfigResponse is an OIDC discovery document for the cluster. See the
      # OpenID Connect Discovery 1.0 specification for details.
      class GetOpenIdConfigResponse
        include Google::Apis::Core::Hashable
      
        # RFC-2616: cache control support
        # Corresponds to the JSON property `cacheHeader`
        # @return [Google::Apis::ContainerV1beta1::HttpCacheControlResponseHeader]
        attr_accessor :cache_header
      
        # Supported claims.
        # Corresponds to the JSON property `claims_supported`
        # @return [Array<String>]
        attr_accessor :claims_supported
      
        # Supported grant types.
        # Corresponds to the JSON property `grant_types`
        # @return [Array<String>]
        attr_accessor :grant_types
      
        # supported ID Token signing Algorithms.
        # Corresponds to the JSON property `id_token_signing_alg_values_supported`
        # @return [Array<String>]
        attr_accessor :id_token_signing_alg_values_supported
      
        # OIDC Issuer.
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # JSON Web Key uri.
        # Corresponds to the JSON property `jwks_uri`
        # @return [String]
        attr_accessor :jwks_uri
      
        # Supported response types.
        # Corresponds to the JSON property `response_types_supported`
        # @return [Array<String>]
        attr_accessor :response_types_supported
      
        # Supported subject types.
        # Corresponds to the JSON property `subject_types_supported`
        # @return [Array<String>]
        attr_accessor :subject_types_supported
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_header = args[:cache_header] if args.key?(:cache_header)
          @claims_supported = args[:claims_supported] if args.key?(:claims_supported)
          @grant_types = args[:grant_types] if args.key?(:grant_types)
          @id_token_signing_alg_values_supported = args[:id_token_signing_alg_values_supported] if args.key?(:id_token_signing_alg_values_supported)
          @issuer = args[:issuer] if args.key?(:issuer)
          @jwks_uri = args[:jwks_uri] if args.key?(:jwks_uri)
          @response_types_supported = args[:response_types_supported] if args.key?(:response_types_supported)
          @subject_types_supported = args[:subject_types_supported] if args.key?(:subject_types_supported)
        end
      end
      
      # Configuration for the Backup for GKE Agent.
      class GkeBackupAgentConfig
        include Google::Apis::Core::Hashable
      
        # Whether the Backup for GKE agent is enabled for this cluster.
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
      
      # Configuration options for the horizontal pod autoscaling feature, which
      # increases or decreases the number of replica pods a replication controller has
      # based on the resource usage of the existing pods.
      class HorizontalPodAutoscaling
        include Google::Apis::Core::Hashable
      
        # Whether the Horizontal Pod Autoscaling feature is enabled in the cluster. When
        # enabled, it ensures that metrics are collected into Stackdriver Monitoring.
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
      
      # RFC-2616: cache control support
      class HttpCacheControlResponseHeader
        include Google::Apis::Core::Hashable
      
        # 14.6 response cache age, in seconds since the response is generated
        # Corresponds to the JSON property `age`
        # @return [Fixnum]
        attr_accessor :age
      
        # 14.9 request and response directives
        # Corresponds to the JSON property `directive`
        # @return [String]
        attr_accessor :directive
      
        # 14.21 response cache expires, in RFC 1123 date format
        # Corresponds to the JSON property `expires`
        # @return [String]
        attr_accessor :expires
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age = args[:age] if args.key?(:age)
          @directive = args[:directive] if args.key?(:directive)
          @expires = args[:expires] if args.key?(:expires)
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
      
      # ILBSubsettingConfig contains the desired config of L4 Internal LoadBalancer
      # subsetting on this cluster.
      class IlbSubsettingConfig
        include Google::Apis::Core::Hashable
      
        # Enables l4 ILB subsetting for this cluster
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
      
      # Configuration for controlling how IPs are allocated in the cluster.
      class IpAllocationPolicy
        include Google::Apis::Core::Hashable
      
        # If true, allow allocation of cluster CIDR ranges that overlap with certain
        # kinds of network routes. By default we do not allow cluster CIDR ranges to
        # intersect with any user declared routes. With allow_route_overlap == true, we
        # allow overlapping with CIDR ranges that are larger than the cluster CIDR range.
        # If this field is set to true, then cluster and services CIDRs must be fully-
        # specified (e.g. `10.96.0.0/14`, but not `/14`), which means: 1) When `
        # use_ip_aliases` is true, `cluster_ipv4_cidr_block` and `
        # services_ipv4_cidr_block` must be fully-specified. 2) When `use_ip_aliases` is
        # false, `cluster.cluster_ipv4_cidr` muse be fully-specified.
        # Corresponds to the JSON property `allowRouteOverlap`
        # @return [Boolean]
        attr_accessor :allow_route_overlap
        alias_method :allow_route_overlap?, :allow_route_overlap
      
        # This field is deprecated, use cluster_ipv4_cidr_block.
        # Corresponds to the JSON property `clusterIpv4Cidr`
        # @return [String]
        attr_accessor :cluster_ipv4_cidr
      
        # The IP address range for the cluster pod IPs. If this field is set, then `
        # cluster.cluster_ipv4_cidr` must be left blank. This field is only applicable
        # when `use_ip_aliases` is true. Set to blank to have a range chosen with the
        # default size. Set to /netmask (e.g. `/14`) to have a range chosen with a
        # specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-
        # Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private
        # networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a
        # specific range to use.
        # Corresponds to the JSON property `clusterIpv4CidrBlock`
        # @return [String]
        attr_accessor :cluster_ipv4_cidr_block
      
        # The name of the secondary range to be used for the cluster CIDR block. The
        # secondary range will be used for pod IP addresses. This must be an existing
        # secondary range associated with the cluster subnetwork. This field is only
        # applicable with use_ip_aliases and create_subnetwork is false.
        # Corresponds to the JSON property `clusterSecondaryRangeName`
        # @return [String]
        attr_accessor :cluster_secondary_range_name
      
        # Whether a new subnetwork will be created automatically for the cluster. This
        # field is only applicable when `use_ip_aliases` is true.
        # Corresponds to the JSON property `createSubnetwork`
        # @return [Boolean]
        attr_accessor :create_subnetwork
        alias_method :create_subnetwork?, :create_subnetwork
      
        # The ipv6 access type (internal or external) when create_subnetwork is true
        # Corresponds to the JSON property `ipv6AccessType`
        # @return [String]
        attr_accessor :ipv6_access_type
      
        # This field is deprecated, use node_ipv4_cidr_block.
        # Corresponds to the JSON property `nodeIpv4Cidr`
        # @return [String]
        attr_accessor :node_ipv4_cidr
      
        # The IP address range of the instance IPs in this cluster. This is applicable
        # only if `create_subnetwork` is true. Set to blank to have a range chosen with
        # the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a
        # specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-
        # Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private
        # networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a
        # specific range to use.
        # Corresponds to the JSON property `nodeIpv4CidrBlock`
        # @return [String]
        attr_accessor :node_ipv4_cidr_block
      
        # This field is deprecated, use services_ipv4_cidr_block.
        # Corresponds to the JSON property `servicesIpv4Cidr`
        # @return [String]
        attr_accessor :services_ipv4_cidr
      
        # The IP address range of the services IPs in this cluster. If blank, a range
        # will be automatically chosen with the default size. This field is only
        # applicable when `use_ip_aliases` is true. Set to blank to have a range chosen
        # with the default size. Set to /netmask (e.g. `/14`) to have a range chosen
        # with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/
        # Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-
        # 1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`)
        # to pick a specific range to use.
        # Corresponds to the JSON property `servicesIpv4CidrBlock`
        # @return [String]
        attr_accessor :services_ipv4_cidr_block
      
        # Output only. [Output only] The services IPv6 CIDR block for the cluster.
        # Corresponds to the JSON property `servicesIpv6CidrBlock`
        # @return [String]
        attr_accessor :services_ipv6_cidr_block
      
        # The name of the secondary range to be used as for the services CIDR block. The
        # secondary range will be used for service ClusterIPs. This must be an existing
        # secondary range associated with the cluster subnetwork. This field is only
        # applicable with use_ip_aliases and create_subnetwork is false.
        # Corresponds to the JSON property `servicesSecondaryRangeName`
        # @return [String]
        attr_accessor :services_secondary_range_name
      
        # IP stack type
        # Corresponds to the JSON property `stackType`
        # @return [String]
        attr_accessor :stack_type
      
        # Output only. [Output only] The subnet's IPv6 CIDR block used by nodes and pods.
        # Corresponds to the JSON property `subnetIpv6CidrBlock`
        # @return [String]
        attr_accessor :subnet_ipv6_cidr_block
      
        # A custom subnetwork name to be used if `create_subnetwork` is true. If this
        # field is empty, then an automatic name will be chosen for the new subnetwork.
        # Corresponds to the JSON property `subnetworkName`
        # @return [String]
        attr_accessor :subnetwork_name
      
        # The IP address range of the Cloud TPUs in this cluster. If unspecified, a
        # range will be automatically chosen with the default size. This field is only
        # applicable when `use_ip_aliases` is true. If unspecified, the range will use
        # the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a
        # specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-
        # Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private
        # networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a
        # specific range to use. This field is deprecated, use cluster.tpu_config.
        # ipv4_cidr_block instead.
        # Corresponds to the JSON property `tpuIpv4CidrBlock`
        # @return [String]
        attr_accessor :tpu_ipv4_cidr_block
      
        # Whether alias IPs will be used for pod IPs in the cluster. This is used in
        # conjunction with use_routes. It cannot be true if use_routes is true. If both
        # use_ip_aliases and use_routes are false, then the server picks the default IP
        # allocation mode
        # Corresponds to the JSON property `useIpAliases`
        # @return [Boolean]
        attr_accessor :use_ip_aliases
        alias_method :use_ip_aliases?, :use_ip_aliases
      
        # Whether routes will be used for pod IPs in the cluster. This is used in
        # conjunction with use_ip_aliases. It cannot be true if use_ip_aliases is true.
        # If both use_ip_aliases and use_routes are false, then the server picks the
        # default IP allocation mode
        # Corresponds to the JSON property `useRoutes`
        # @return [Boolean]
        attr_accessor :use_routes
        alias_method :use_routes?, :use_routes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_route_overlap = args[:allow_route_overlap] if args.key?(:allow_route_overlap)
          @cluster_ipv4_cidr = args[:cluster_ipv4_cidr] if args.key?(:cluster_ipv4_cidr)
          @cluster_ipv4_cidr_block = args[:cluster_ipv4_cidr_block] if args.key?(:cluster_ipv4_cidr_block)
          @cluster_secondary_range_name = args[:cluster_secondary_range_name] if args.key?(:cluster_secondary_range_name)
          @create_subnetwork = args[:create_subnetwork] if args.key?(:create_subnetwork)
          @ipv6_access_type = args[:ipv6_access_type] if args.key?(:ipv6_access_type)
          @node_ipv4_cidr = args[:node_ipv4_cidr] if args.key?(:node_ipv4_cidr)
          @node_ipv4_cidr_block = args[:node_ipv4_cidr_block] if args.key?(:node_ipv4_cidr_block)
          @services_ipv4_cidr = args[:services_ipv4_cidr] if args.key?(:services_ipv4_cidr)
          @services_ipv4_cidr_block = args[:services_ipv4_cidr_block] if args.key?(:services_ipv4_cidr_block)
          @services_ipv6_cidr_block = args[:services_ipv6_cidr_block] if args.key?(:services_ipv6_cidr_block)
          @services_secondary_range_name = args[:services_secondary_range_name] if args.key?(:services_secondary_range_name)
          @stack_type = args[:stack_type] if args.key?(:stack_type)
          @subnet_ipv6_cidr_block = args[:subnet_ipv6_cidr_block] if args.key?(:subnet_ipv6_cidr_block)
          @subnetwork_name = args[:subnetwork_name] if args.key?(:subnetwork_name)
          @tpu_ipv4_cidr_block = args[:tpu_ipv4_cidr_block] if args.key?(:tpu_ipv4_cidr_block)
          @use_ip_aliases = args[:use_ip_aliases] if args.key?(:use_ip_aliases)
          @use_routes = args[:use_routes] if args.key?(:use_routes)
        end
      end
      
      # IdentityServiceConfig is configuration for Identity Service which allows
      # customers to use external identity providers with the K8S API
      class IdentityServiceConfig
        include Google::Apis::Core::Hashable
      
        # Whether to enable the Identity Service component
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
      
      # IntraNodeVisibilityConfig contains the desired config of the intra-node
      # visibility on this cluster.
      class IntraNodeVisibilityConfig
        include Google::Apis::Core::Hashable
      
        # Enables intra node visibility for this cluster.
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
      
      # Configuration options for Istio addon.
      class IstioConfig
        include Google::Apis::Core::Hashable
      
        # The specified Istio auth mode, either none, or mutual TLS.
        # Corresponds to the JSON property `auth`
        # @return [String]
        attr_accessor :auth
      
        # Whether Istio is enabled for this cluster.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth = args[:auth] if args.key?(:auth)
          @disabled = args[:disabled] if args.key?(:disabled)
        end
      end
      
      # Jwk is a JSON Web Key as specified in RFC 7517
      class Jwk
        include Google::Apis::Core::Hashable
      
        # Algorithm.
        # Corresponds to the JSON property `alg`
        # @return [String]
        attr_accessor :alg
      
        # Used for ECDSA keys.
        # Corresponds to the JSON property `crv`
        # @return [String]
        attr_accessor :crv
      
        # Used for RSA keys.
        # Corresponds to the JSON property `e`
        # @return [String]
        attr_accessor :e
      
        # Key ID.
        # Corresponds to the JSON property `kid`
        # @return [String]
        attr_accessor :kid
      
        # Key Type.
        # Corresponds to the JSON property `kty`
        # @return [String]
        attr_accessor :kty
      
        # Used for RSA keys.
        # Corresponds to the JSON property `n`
        # @return [String]
        attr_accessor :n
      
        # Permitted uses for the public keys.
        # Corresponds to the JSON property `use`
        # @return [String]
        attr_accessor :use
      
        # Used for ECDSA keys.
        # Corresponds to the JSON property `x`
        # @return [String]
        attr_accessor :x
      
        # Used for ECDSA keys.
        # Corresponds to the JSON property `y`
        # @return [String]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alg = args[:alg] if args.key?(:alg)
          @crv = args[:crv] if args.key?(:crv)
          @e = args[:e] if args.key?(:e)
          @kid = args[:kid] if args.key?(:kid)
          @kty = args[:kty] if args.key?(:kty)
          @n = args[:n] if args.key?(:n)
          @use = args[:use] if args.key?(:use)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # Configuration options for the KALM addon.
      class KalmConfig
        include Google::Apis::Core::Hashable
      
        # Whether KALM is enabled for this cluster.
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
      
      # Configuration for the Kubernetes Dashboard.
      class KubernetesDashboard
        include Google::Apis::Core::Hashable
      
        # Whether the Kubernetes Dashboard is enabled for this cluster.
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
      
      # Configuration for the legacy Attribute Based Access Control authorization mode.
      class LegacyAbac
        include Google::Apis::Core::Hashable
      
        # Whether the ABAC authorizer is enabled for this cluster. When enabled,
        # identities in the system, including service accounts, nodes, and controllers,
        # will have statically granted permissions beyond those provided by the RBAC
        # configuration or IAM.
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
      
      # Parameters that can be configured on Linux nodes.
      class LinuxNodeConfig
        include Google::Apis::Core::Hashable
      
        # cgroup_mode specifies the cgroup mode to be used on the node.
        # Corresponds to the JSON property `cgroupMode`
        # @return [String]
        attr_accessor :cgroup_mode
      
        # The Linux kernel parameters to be applied to the nodes and all pods running on
        # the nodes. The following parameters are supported. net.core.busy_poll net.core.
        # busy_read net.core.netdev_max_backlog net.core.rmem_max net.core.wmem_default
        # net.core.wmem_max net.core.optmem_max net.core.somaxconn net.ipv4.tcp_rmem net.
        # ipv4.tcp_wmem net.ipv4.tcp_tw_reuse
        # Corresponds to the JSON property `sysctls`
        # @return [Hash<String,String>]
        attr_accessor :sysctls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cgroup_mode = args[:cgroup_mode] if args.key?(:cgroup_mode)
          @sysctls = args[:sysctls] if args.key?(:sysctls)
        end
      end
      
      # ListClustersResponse is the result of ListClustersRequest.
      class ListClustersResponse
        include Google::Apis::Core::Hashable
      
        # A list of clusters in the project in the specified zone, or across all ones.
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::ContainerV1beta1::Cluster>]
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
      
      # ListLocationsResponse returns the list of all GKE locations and their
      # recommendation state.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A full list of GKE locations.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ContainerV1beta1::Location>]
        attr_accessor :locations
      
        # Only return ListLocationsResponse that occur after the page_token. This value
        # should be populated from the ListLocationsResponse.next_page_token if that
        # response token was set (which happens when listing more Locations than fit in
        # a single ListLocationsResponse).
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
      
      # ListNodePoolsResponse is the result of ListNodePoolsRequest.
      class ListNodePoolsResponse
        include Google::Apis::Core::Hashable
      
        # A list of node pools for a cluster.
        # Corresponds to the JSON property `nodePools`
        # @return [Array<Google::Apis::ContainerV1beta1::NodePool>]
        attr_accessor :node_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_pools = args[:node_pools] if args.key?(:node_pools)
        end
      end
      
      # ListOperationsResponse is the result of ListOperationsRequest.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # If any zones are listed here, the list of operations returned may be missing
        # the operations from those zones.
        # Corresponds to the JSON property `missingZones`
        # @return [Array<String>]
        attr_accessor :missing_zones
      
        # A list of operations in the project in the specified zone.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ContainerV1beta1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @missing_zones = args[:missing_zones] if args.key?(:missing_zones)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # ListUsableSubnetworksResponse is the response of ListUsableSubnetworksRequest.
      class ListUsableSubnetworksResponse
        include Google::Apis::Core::Hashable
      
        # This token allows you to get the next page of results for list requests. If
        # the number of results is larger than `page_size`, use the `next_page_token` as
        # a value for the query parameter `page_token` in the next request. The value
        # will become empty when there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of usable subnetworks in the specified network project.
        # Corresponds to the JSON property `subnetworks`
        # @return [Array<Google::Apis::ContainerV1beta1::UsableSubnetwork>]
        attr_accessor :subnetworks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subnetworks = args[:subnetworks] if args.key?(:subnetworks)
        end
      end
      
      # LocalNvmeSsdBlockConfig contains configuration for using raw-block local NVMe
      # SSDs
      class LocalNvmeSsdBlockConfig
        include Google::Apis::Core::Hashable
      
        # The number of raw-block local NVMe SSD disks to be attached to the node. Each
        # local SSD is 375 GB in size. If zero, it means no raw-block local NVMe SSD
        # disks to be attached to the node. The limit for this value is dependent upon
        # the maximum number of disks available on a machine per zone. See: https://
        # cloud.google.com/compute/docs/disks/local-ssd for more information.
        # Corresponds to the JSON property `localSsdCount`
        # @return [Fixnum]
        attr_accessor :local_ssd_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_ssd_count = args[:local_ssd_count] if args.key?(:local_ssd_count)
        end
      end
      
      # Location returns the location name, and if the location is recommended for GKE
      # cluster scheduling.
      class Location
        include Google::Apis::Core::Hashable
      
        # Contains the name of the resource requested. Specified in the format `projects/
        # */locations/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether the location is recommended for GKE cluster scheduling.
        # Corresponds to the JSON property `recommended`
        # @return [Boolean]
        attr_accessor :recommended
        alias_method :recommended?, :recommended
      
        # Contains the type of location this Location is for. Regional or Zonal.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @recommended = args[:recommended] if args.key?(:recommended)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # LoggingComponentConfig is cluster logging component configuration.
      class LoggingComponentConfig
        include Google::Apis::Core::Hashable
      
        # Select components to collect logs. An empty set would disable all logging.
        # Corresponds to the JSON property `enableComponents`
        # @return [Array<String>]
        attr_accessor :enable_components
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_components = args[:enable_components] if args.key?(:enable_components)
        end
      end
      
      # LoggingConfig is cluster logging configuration.
      class LoggingConfig
        include Google::Apis::Core::Hashable
      
        # LoggingComponentConfig is cluster logging component configuration.
        # Corresponds to the JSON property `componentConfig`
        # @return [Google::Apis::ContainerV1beta1::LoggingComponentConfig]
        attr_accessor :component_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @component_config = args[:component_config] if args.key?(:component_config)
        end
      end
      
      # LoggingVariantConfig specifies the behaviour of the logging component.
      class LoggingVariantConfig
        include Google::Apis::Core::Hashable
      
        # Logging variant deployed on nodes.
        # Corresponds to the JSON property `variant`
        # @return [String]
        attr_accessor :variant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variant = args[:variant] if args.key?(:variant)
        end
      end
      
      # Represents the Maintenance exclusion option.
      class MaintenanceExclusionOptions
        include Google::Apis::Core::Hashable
      
        # Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # MaintenancePolicy defines the maintenance policy to be used for the cluster.
      class MaintenancePolicy
        include Google::Apis::Core::Hashable
      
        # A hash identifying the version of this policy, so that updates to fields of
        # the policy won't accidentally undo intermediate changes (and so that users of
        # the API unaware of some fields won't accidentally remove other fields). Make a
        # `get()` request to the cluster to get the current resource version and include
        # it with requests to set the policy.
        # Corresponds to the JSON property `resourceVersion`
        # @return [String]
        attr_accessor :resource_version
      
        # MaintenanceWindow defines the maintenance window to be used for the cluster.
        # Corresponds to the JSON property `window`
        # @return [Google::Apis::ContainerV1beta1::MaintenanceWindow]
        attr_accessor :window
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_version = args[:resource_version] if args.key?(:resource_version)
          @window = args[:window] if args.key?(:window)
        end
      end
      
      # MaintenanceWindow defines the maintenance window to be used for the cluster.
      class MaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # Time window specified for daily maintenance operations.
        # Corresponds to the JSON property `dailyMaintenanceWindow`
        # @return [Google::Apis::ContainerV1beta1::DailyMaintenanceWindow]
        attr_accessor :daily_maintenance_window
      
        # Exceptions to maintenance window. Non-emergency maintenance should not occur
        # in these windows.
        # Corresponds to the JSON property `maintenanceExclusions`
        # @return [Hash<String,Google::Apis::ContainerV1beta1::TimeWindow>]
        attr_accessor :maintenance_exclusions
      
        # Represents an arbitrary window of time that recurs.
        # Corresponds to the JSON property `recurringWindow`
        # @return [Google::Apis::ContainerV1beta1::RecurringTimeWindow]
        attr_accessor :recurring_window
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daily_maintenance_window = args[:daily_maintenance_window] if args.key?(:daily_maintenance_window)
          @maintenance_exclusions = args[:maintenance_exclusions] if args.key?(:maintenance_exclusions)
          @recurring_window = args[:recurring_window] if args.key?(:recurring_window)
        end
      end
      
      # ManagedPrometheusConfig defines the configuration for Google Cloud Managed
      # Service for Prometheus.
      class ManagedPrometheusConfig
        include Google::Apis::Core::Hashable
      
        # Enable Managed Collection.
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
      
      # Master is the configuration for components on master.
      class Master
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The authentication information for accessing the master endpoint.
      # Authentication can be done using HTTP basic auth or using client certificates.
      class MasterAuth
        include Google::Apis::Core::Hashable
      
        # [Output only] Base64-encoded public certificate used by clients to
        # authenticate to the cluster endpoint.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # Configuration for client certificates on the cluster.
        # Corresponds to the JSON property `clientCertificateConfig`
        # @return [Google::Apis::ContainerV1beta1::ClientCertificateConfig]
        attr_accessor :client_certificate_config
      
        # [Output only] Base64-encoded private key used by clients to authenticate to
        # the cluster endpoint.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        # 
        # Corresponds to the JSON property `clusterCaCertificate`
        # @return [String]
        attr_accessor :cluster_ca_certificate
      
        # The password to use for HTTP basic authentication to the master endpoint.
        # Because the master endpoint is open to the Internet, you should create a
        # strong password. If a password is provided for cluster creation, username must
        # be non-empty. Warning: basic authentication is deprecated, and will be removed
        # in GKE control plane versions 1.19 and newer. For a list of recommended
        # authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/
        # how-to/api-server-authentication
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The username to use for HTTP basic authentication to the master endpoint. For
        # clusters v1.6.0 and later, basic authentication can be disabled by leaving
        # username unspecified (or setting it to the empty string). Warning: basic
        # authentication is deprecated, and will be removed in GKE control plane
        # versions 1.19 and newer. For a list of recommended authentication methods, see:
        # https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-
        # authentication
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @client_certificate_config = args[:client_certificate_config] if args.key?(:client_certificate_config)
          @client_key = args[:client_key] if args.key?(:client_key)
          @cluster_ca_certificate = args[:cluster_ca_certificate] if args.key?(:cluster_ca_certificate)
          @password = args[:password] if args.key?(:password)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Configuration options for the master authorized networks feature. Enabled
      # master authorized networks will disallow all external traffic to access
      # Kubernetes master through HTTPS except traffic from the given CIDR blocks,
      # Google Compute Engine Public IPs and Google Prod IPs.
      class MasterAuthorizedNetworksConfig
        include Google::Apis::Core::Hashable
      
        # cidr_blocks define up to 10 external networks that could access Kubernetes
        # master through HTTPS.
        # Corresponds to the JSON property `cidrBlocks`
        # @return [Array<Google::Apis::ContainerV1beta1::CidrBlock>]
        attr_accessor :cidr_blocks
      
        # Whether or not master authorized networks is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Whether master is accessbile via Google Compute Engine Public IP addresses.
        # Corresponds to the JSON property `gcpPublicCidrsAccessEnabled`
        # @return [Boolean]
        attr_accessor :gcp_public_cidrs_access_enabled
        alias_method :gcp_public_cidrs_access_enabled?, :gcp_public_cidrs_access_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cidr_blocks = args[:cidr_blocks] if args.key?(:cidr_blocks)
          @enabled = args[:enabled] if args.key?(:enabled)
          @gcp_public_cidrs_access_enabled = args[:gcp_public_cidrs_access_enabled] if args.key?(:gcp_public_cidrs_access_enabled)
        end
      end
      
      # Constraints applied to pods.
      class MaxPodsConstraint
        include Google::Apis::Core::Hashable
      
        # Constraint enforced on the max num of pods per node.
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
      
      # Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
      class MeshCertificates
        include Google::Apis::Core::Hashable
      
        # enable_certificates controls issuance of workload mTLS certificates. If set,
        # the GKE Workload Identity Certificates controller and node agent will be
        # deployed in the cluster, which can then be configured by creating a
        # WorkloadCertificateConfig Custom Resource. Requires Workload Identity (
        # workload_pool must be non-empty).
        # Corresponds to the JSON property `enableCertificates`
        # @return [Boolean]
        attr_accessor :enable_certificates
        alias_method :enable_certificates?, :enable_certificates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_certificates = args[:enable_certificates] if args.key?(:enable_certificates)
        end
      end
      
      # Progress metric is (string, int|float|string) pair.
      class Metric
        include Google::Apis::Core::Hashable
      
        # For metrics with floating point value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # For metrics with integer value.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # Required. Metric name, e.g., "nodes total", "percent done".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # For metrics with custom values (ratios, visual progress, etc.).
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @name = args[:name] if args.key?(:name)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # MonitoringComponentConfig is cluster monitoring component configuration.
      class MonitoringComponentConfig
        include Google::Apis::Core::Hashable
      
        # Select components to collect metrics. An empty set would disable all
        # monitoring.
        # Corresponds to the JSON property `enableComponents`
        # @return [Array<String>]
        attr_accessor :enable_components
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_components = args[:enable_components] if args.key?(:enable_components)
        end
      end
      
      # MonitoringConfig is cluster monitoring configuration.
      class MonitoringConfig
        include Google::Apis::Core::Hashable
      
        # MonitoringComponentConfig is cluster monitoring component configuration.
        # Corresponds to the JSON property `componentConfig`
        # @return [Google::Apis::ContainerV1beta1::MonitoringComponentConfig]
        attr_accessor :component_config
      
        # ManagedPrometheusConfig defines the configuration for Google Cloud Managed
        # Service for Prometheus.
        # Corresponds to the JSON property `managedPrometheusConfig`
        # @return [Google::Apis::ContainerV1beta1::ManagedPrometheusConfig]
        attr_accessor :managed_prometheus_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @component_config = args[:component_config] if args.key?(:component_config)
          @managed_prometheus_config = args[:managed_prometheus_config] if args.key?(:managed_prometheus_config)
        end
      end
      
      # NetworkConfig reports the relative names of network & subnetwork.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # The desired datapath provider for this cluster. By default, uses the IPTables-
        # based kube-proxy implementation.
        # Corresponds to the JSON property `datapathProvider`
        # @return [String]
        attr_accessor :datapath_provider
      
        # DefaultSnatStatus contains the desired state of whether default sNAT should be
        # disabled on the cluster.
        # Corresponds to the JSON property `defaultSnatStatus`
        # @return [Google::Apis::ContainerV1beta1::DefaultSnatStatus]
        attr_accessor :default_snat_status
      
        # DNSConfig contains the desired set of options for configuring clusterDNS.
        # Corresponds to the JSON property `dnsConfig`
        # @return [Google::Apis::ContainerV1beta1::DnsConfig]
        attr_accessor :dns_config
      
        # Whether Intra-node visibility is enabled for this cluster. This makes same
        # node pod to pod traffic visible for VPC network.
        # Corresponds to the JSON property `enableIntraNodeVisibility`
        # @return [Boolean]
        attr_accessor :enable_intra_node_visibility
        alias_method :enable_intra_node_visibility?, :enable_intra_node_visibility
      
        # Whether L4ILB Subsetting is enabled for this cluster.
        # Corresponds to the JSON property `enableL4ilbSubsetting`
        # @return [Boolean]
        attr_accessor :enable_l4ilb_subsetting
        alias_method :enable_l4ilb_subsetting?, :enable_l4ilb_subsetting
      
        # GatewayAPIConfig contains the desired config of Gateway API on this cluster.
        # Corresponds to the JSON property `gatewayApiConfig`
        # @return [Google::Apis::ContainerV1beta1::GatewayApiConfig]
        attr_accessor :gateway_api_config
      
        # Output only. The relative name of the Google Compute Engine network(https://
        # cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the
        # cluster is connected. Example: projects/my-project/global/networks/my-network
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The desired state of IPv6 connectivity to Google Services. By default, no
        # private IPv6 access to or from Google Services (all access will be via IPv4)
        # Corresponds to the JSON property `privateIpv6GoogleAccess`
        # @return [String]
        attr_accessor :private_ipv6_google_access
      
        # Config to block services with externalIPs field.
        # Corresponds to the JSON property `serviceExternalIpsConfig`
        # @return [Google::Apis::ContainerV1beta1::ServiceExternalIPsConfig]
        attr_accessor :service_external_ips_config
      
        # Output only. The relative name of the Google Compute Engine [subnetwork](https:
        # //cloud.google.com/compute/docs/vpc) to which the cluster is connected.
        # Example: projects/my-project/regions/us-central1/subnetworks/my-subnet
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datapath_provider = args[:datapath_provider] if args.key?(:datapath_provider)
          @default_snat_status = args[:default_snat_status] if args.key?(:default_snat_status)
          @dns_config = args[:dns_config] if args.key?(:dns_config)
          @enable_intra_node_visibility = args[:enable_intra_node_visibility] if args.key?(:enable_intra_node_visibility)
          @enable_l4ilb_subsetting = args[:enable_l4ilb_subsetting] if args.key?(:enable_l4ilb_subsetting)
          @gateway_api_config = args[:gateway_api_config] if args.key?(:gateway_api_config)
          @network = args[:network] if args.key?(:network)
          @private_ipv6_google_access = args[:private_ipv6_google_access] if args.key?(:private_ipv6_google_access)
          @service_external_ips_config = args[:service_external_ips_config] if args.key?(:service_external_ips_config)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # Configuration of all network bandwidth tiers
      class NetworkPerformanceConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the network bandwidth tier for the NodePool for traffic to external/
        # public IP addresses.
        # Corresponds to the JSON property `externalIpEgressBandwidthTier`
        # @return [String]
        attr_accessor :external_ip_egress_bandwidth_tier
      
        # Specifies the total network bandwidth tier for the NodePool.
        # Corresponds to the JSON property `totalEgressBandwidthTier`
        # @return [String]
        attr_accessor :total_egress_bandwidth_tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_ip_egress_bandwidth_tier = args[:external_ip_egress_bandwidth_tier] if args.key?(:external_ip_egress_bandwidth_tier)
          @total_egress_bandwidth_tier = args[:total_egress_bandwidth_tier] if args.key?(:total_egress_bandwidth_tier)
        end
      end
      
      # Configuration options for the NetworkPolicy feature. https://kubernetes.io/
      # docs/concepts/services-networking/networkpolicies/
      class NetworkPolicy
        include Google::Apis::Core::Hashable
      
        # Whether network policy is enabled on the cluster.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # The selected network policy provider.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @provider = args[:provider] if args.key?(:provider)
        end
      end
      
      # Configuration for NetworkPolicy. This only tracks whether the addon is enabled
      # or not on the Master, it does not track whether network policy is enabled for
      # the nodes.
      class NetworkPolicyConfig
        include Google::Apis::Core::Hashable
      
        # Whether NetworkPolicy is enabled for this cluster.
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
      
      # Collection of Compute Engine network tags that can be applied to a node's
      # underlying VM instance. (See `tags` field in [`NodeConfig`](/kubernetes-engine/
      # docs/reference/rest/v1/NodeConfig)).
      class NetworkTags
        include Google::Apis::Core::Hashable
      
        # List of network tags.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Parameters that describe the nodes in a cluster. GKE Autopilot clusters do not
      # recognize parameters in `NodeConfig`. Use AutoprovisioningNodePoolDefaults
      # instead.
      class NodeConfig
        include Google::Apis::Core::Hashable
      
        # A list of hardware accelerators to be attached to each node. See https://cloud.
        # google.com/compute/docs/gpus for more information about support for GPUs.
        # Corresponds to the JSON property `accelerators`
        # @return [Array<Google::Apis::ContainerV1beta1::AcceleratorConfig>]
        attr_accessor :accelerators
      
        # Specifies options for controlling advanced machine features.
        # Corresponds to the JSON property `advancedMachineFeatures`
        # @return [Google::Apis::ContainerV1beta1::AdvancedMachineFeatures]
        attr_accessor :advanced_machine_features
      
        # The Customer Managed Encryption Key used to encrypt the boot disk attached to
        # each node in the node pool. This should be of the form projects/[
        # KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]
        # . For more information about protecting resources with Cloud KMS Keys please
        # see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
        # Corresponds to the JSON property `bootDiskKmsKey`
        # @return [String]
        attr_accessor :boot_disk_kms_key
      
        # ConfidentialNodes is configuration for the confidential nodes feature, which
        # makes nodes run on confidential VMs.
        # Corresponds to the JSON property `confidentialNodes`
        # @return [Google::Apis::ContainerV1beta1::ConfidentialNodes]
        attr_accessor :confidential_nodes
      
        # Size of the disk attached to each node, specified in GB. The smallest allowed
        # disk size is 10GB. If unspecified, the default disk size is 100GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-
        # balanced') If unspecified, the default disk type is 'pd-standard'
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # EphemeralStorageConfig contains configuration for the ephemeral storage
        # filesystem.
        # Corresponds to the JSON property `ephemeralStorageConfig`
        # @return [Google::Apis::ContainerV1beta1::EphemeralStorageConfig]
        attr_accessor :ephemeral_storage_config
      
        # EphemeralStorageLocalSsdConfig contains configuration for the node ephemeral
        # storage using Local SSDs.
        # Corresponds to the JSON property `ephemeralStorageLocalSsdConfig`
        # @return [Google::Apis::ContainerV1beta1::EphemeralStorageLocalSsdConfig]
        attr_accessor :ephemeral_storage_local_ssd_config
      
        # Configuration of Fast Socket feature.
        # Corresponds to the JSON property `fastSocket`
        # @return [Google::Apis::ContainerV1beta1::FastSocket]
        attr_accessor :fast_socket
      
        # GcfsConfig contains configurations of Google Container File System.
        # Corresponds to the JSON property `gcfsConfig`
        # @return [Google::Apis::ContainerV1beta1::GcfsConfig]
        attr_accessor :gcfs_config
      
        # Configuration of gVNIC feature.
        # Corresponds to the JSON property `gvnic`
        # @return [Google::Apis::ContainerV1beta1::VirtualNic]
        attr_accessor :gvnic
      
        # The image type to use for this node. Note that for a given image type, the
        # latest version of it will be used. Please see https://cloud.google.com/
        # kubernetes-engine/docs/concepts/node-images for available image types.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # Node kubelet configs.
        # Corresponds to the JSON property `kubeletConfig`
        # @return [Google::Apis::ContainerV1beta1::NodeKubeletConfig]
        attr_accessor :kubelet_config
      
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
      
        # Parameters that can be configured on Linux nodes.
        # Corresponds to the JSON property `linuxNodeConfig`
        # @return [Google::Apis::ContainerV1beta1::LinuxNodeConfig]
        attr_accessor :linux_node_config
      
        # LocalNvmeSsdBlockConfig contains configuration for using raw-block local NVMe
        # SSDs
        # Corresponds to the JSON property `localNvmeSsdBlockConfig`
        # @return [Google::Apis::ContainerV1beta1::LocalNvmeSsdBlockConfig]
        attr_accessor :local_nvme_ssd_block_config
      
        # The number of local SSD disks to be attached to the node. The limit for this
        # value is dependent upon the maximum number of disks available on a machine per
        # zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more
        # information.
        # Corresponds to the JSON property `localSsdCount`
        # @return [Fixnum]
        attr_accessor :local_ssd_count
      
        # NodePoolLoggingConfig specifies logging configuration for nodepools.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::ContainerV1beta1::NodePoolLoggingConfig]
        attr_accessor :logging_config
      
        # The name of a Google Compute Engine [machine type](https://cloud.google.com/
        # compute/docs/machine-types). If unspecified, the default machine type is `e2-
        # medium`.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # The metadata key/value pairs assigned to instances in the cluster. Keys must
        # conform to the regexp `[a-zA-Z0-9-_]+` and be less than 128 bytes in length.
        # These are reflected as part of a URL in the metadata server. Additionally, to
        # avoid ambiguity, keys must not conflict with any other metadata keys for the
        # project or be one of the reserved keys: - "cluster-location" - "cluster-name" -
        # "cluster-uid" - "configure-sh" - "containerd-configure-sh" - "enable-oslogin"
        # - "gci-ensure-gke-docker" - "gci-metrics-enabled" - "gci-update-strategy" - "
        # instance-template" - "kube-env" - "startup-script" - "user-data" - "disable-
        # address-manager" - "windows-startup-script-ps1" - "common-psm1" - "k8s-node-
        # setup-psm1" - "install-ssh-psm1" - "user-profile-psm1" Values are free-form
        # strings, and only have meaning as interpreted by the image running in the
        # instance. The only restriction placed on them is that each value's size must
        # be less than or equal to 32 KB. The total size of all keys and values must be
        # less than 512 KB.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Minimum CPU platform to be used by this instance. The instance may be
        # scheduled on the specified or newer CPU platform. Applicable values are the
        # friendly names of CPU platforms, such as `minCpuPlatform: "Intel Haswell"` or `
        # minCpuPlatform: "Intel Sandy Bridge"`. For more information, read [how to
        # specify min CPU platform](https://cloud.google.com/compute/docs/instances/
        # specify-min-cpu-platform).
        # Corresponds to the JSON property `minCpuPlatform`
        # @return [String]
        attr_accessor :min_cpu_platform
      
        # Setting this field will assign instances of this pool to run on the specified
        # node group. This is useful for running workloads on [sole tenant nodes](https:/
        # /cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
        # Corresponds to the JSON property `nodeGroup`
        # @return [String]
        attr_accessor :node_group
      
        # The set of Google API scopes to be made available on all of the node VMs under
        # the "default" service account. The following scopes are recommended, but not
        # required, and by default are not included: * `https://www.googleapis.com/auth/
        # compute` is required for mounting persistent storage on your nodes. * `https://
        # www.googleapis.com/auth/devstorage.read_only` is required for communicating
        # with **gcr.io** (the [Google Container Registry](https://cloud.google.com/
        # container-registry/)). If unspecified, no scopes are added, unless Cloud
        # Logging or Cloud Monitoring are enabled, in which case their required scopes
        # will be added.
        # Corresponds to the JSON property `oauthScopes`
        # @return [Array<String>]
        attr_accessor :oauth_scopes
      
        # Whether the nodes are created as preemptible VM instances. See: https://cloud.
        # google.com/compute/docs/instances/preemptible for more inforamtion about
        # preemptible VM instances.
        # Corresponds to the JSON property `preemptible`
        # @return [Boolean]
        attr_accessor :preemptible
        alias_method :preemptible?, :preemptible
      
        # [ReservationAffinity](https://cloud.google.com/compute/docs/instances/
        # reserving-zonal-resources) is the configuration of desired reservation which
        # instances could take capacity from.
        # Corresponds to the JSON property `reservationAffinity`
        # @return [Google::Apis::ContainerV1beta1::ReservationAffinity]
        attr_accessor :reservation_affinity
      
        # The resource labels for the node pool to use to annotate any related Google
        # Compute Engine resources.
        # Corresponds to the JSON property `resourceLabels`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels
      
        # SandboxConfig contains configurations of the sandbox to use for the node.
        # Corresponds to the JSON property `sandboxConfig`
        # @return [Google::Apis::ContainerV1beta1::SandboxConfig]
        attr_accessor :sandbox_config
      
        # The Google Cloud Platform Service Account to be used by the node VMs. Specify
        # the email address of the Service Account; otherwise, if no Service Account is
        # specified, the "default" service account is used.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # A set of Shielded Instance options.
        # Corresponds to the JSON property `shieldedInstanceConfig`
        # @return [Google::Apis::ContainerV1beta1::ShieldedInstanceConfig]
        attr_accessor :shielded_instance_config
      
        # Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible
        # flag.
        # Corresponds to the JSON property `spot`
        # @return [Boolean]
        attr_accessor :spot
        alias_method :spot?, :spot
      
        # The list of instance tags applied to all nodes. Tags are used to identify
        # valid sources or targets for network firewalls and are specified by the client
        # during cluster or node pool creation. Each tag within the list must comply
        # with RFC1035.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # List of kubernetes taints to be applied to each node. For more information,
        # including usage and the valid values, see: https://kubernetes.io/docs/concepts/
        # configuration/taint-and-toleration/
        # Corresponds to the JSON property `taints`
        # @return [Array<Google::Apis::ContainerV1beta1::NodeTaint>]
        attr_accessor :taints
      
        # Parameters that can be configured on Windows nodes. Windows Node Config that
        # define the parameters that will be used to configure the Windows node pool
        # settings
        # Corresponds to the JSON property `windowsNodeConfig`
        # @return [Google::Apis::ContainerV1beta1::WindowsNodeConfig]
        attr_accessor :windows_node_config
      
        # WorkloadMetadataConfig defines the metadata configuration to expose to
        # workloads on the node pool.
        # Corresponds to the JSON property `workloadMetadataConfig`
        # @return [Google::Apis::ContainerV1beta1::WorkloadMetadataConfig]
        attr_accessor :workload_metadata_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerators = args[:accelerators] if args.key?(:accelerators)
          @advanced_machine_features = args[:advanced_machine_features] if args.key?(:advanced_machine_features)
          @boot_disk_kms_key = args[:boot_disk_kms_key] if args.key?(:boot_disk_kms_key)
          @confidential_nodes = args[:confidential_nodes] if args.key?(:confidential_nodes)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @ephemeral_storage_config = args[:ephemeral_storage_config] if args.key?(:ephemeral_storage_config)
          @ephemeral_storage_local_ssd_config = args[:ephemeral_storage_local_ssd_config] if args.key?(:ephemeral_storage_local_ssd_config)
          @fast_socket = args[:fast_socket] if args.key?(:fast_socket)
          @gcfs_config = args[:gcfs_config] if args.key?(:gcfs_config)
          @gvnic = args[:gvnic] if args.key?(:gvnic)
          @image_type = args[:image_type] if args.key?(:image_type)
          @kubelet_config = args[:kubelet_config] if args.key?(:kubelet_config)
          @labels = args[:labels] if args.key?(:labels)
          @linux_node_config = args[:linux_node_config] if args.key?(:linux_node_config)
          @local_nvme_ssd_block_config = args[:local_nvme_ssd_block_config] if args.key?(:local_nvme_ssd_block_config)
          @local_ssd_count = args[:local_ssd_count] if args.key?(:local_ssd_count)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @min_cpu_platform = args[:min_cpu_platform] if args.key?(:min_cpu_platform)
          @node_group = args[:node_group] if args.key?(:node_group)
          @oauth_scopes = args[:oauth_scopes] if args.key?(:oauth_scopes)
          @preemptible = args[:preemptible] if args.key?(:preemptible)
          @reservation_affinity = args[:reservation_affinity] if args.key?(:reservation_affinity)
          @resource_labels = args[:resource_labels] if args.key?(:resource_labels)
          @sandbox_config = args[:sandbox_config] if args.key?(:sandbox_config)
          @service_account = args[:service_account] if args.key?(:service_account)
          @shielded_instance_config = args[:shielded_instance_config] if args.key?(:shielded_instance_config)
          @spot = args[:spot] if args.key?(:spot)
          @tags = args[:tags] if args.key?(:tags)
          @taints = args[:taints] if args.key?(:taints)
          @windows_node_config = args[:windows_node_config] if args.key?(:windows_node_config)
          @workload_metadata_config = args[:workload_metadata_config] if args.key?(:workload_metadata_config)
        end
      end
      
      # Subset of NodeConfig message that has defaults.
      class NodeConfigDefaults
        include Google::Apis::Core::Hashable
      
        # GcfsConfig contains configurations of Google Container File System.
        # Corresponds to the JSON property `gcfsConfig`
        # @return [Google::Apis::ContainerV1beta1::GcfsConfig]
        attr_accessor :gcfs_config
      
        # NodePoolLoggingConfig specifies logging configuration for nodepools.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::ContainerV1beta1::NodePoolLoggingConfig]
        attr_accessor :logging_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcfs_config = args[:gcfs_config] if args.key?(:gcfs_config)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
        end
      end
      
      # Node kubelet configs.
      class NodeKubeletConfig
        include Google::Apis::Core::Hashable
      
        # Enable CPU CFS quota enforcement for containers that specify CPU limits. This
        # option is enabled by default which makes kubelet use CFS quota (https://www.
        # kernel.org/doc/Documentation/scheduler/sched-bwc.txt) to enforce container CPU
        # limits. Otherwise, CPU limits will not be enforced at all. Disable this option
        # to mitigate CPU throttling problems while still having your pods to be in
        # Guaranteed QoS class by specifying the CPU limits. The default value is 'true'
        # if unspecified.
        # Corresponds to the JSON property `cpuCfsQuota`
        # @return [Boolean]
        attr_accessor :cpu_cfs_quota
        alias_method :cpu_cfs_quota?, :cpu_cfs_quota
      
        # Set the CPU CFS quota period value 'cpu.cfs_period_us'. The string must be a
        # sequence of decimal numbers, each with optional fraction and a unit suffix,
        # such as "300ms". Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h"
        # . The value must be a positive duration.
        # Corresponds to the JSON property `cpuCfsQuotaPeriod`
        # @return [String]
        attr_accessor :cpu_cfs_quota_period
      
        # Control the CPU management policy on the node. See https://kubernetes.io/docs/
        # tasks/administer-cluster/cpu-management-policies/ The following values are
        # allowed. * "none": the default, which represents the existing scheduling
        # behavior. * "static": allows pods with certain resource characteristics to be
        # granted increased CPU affinity and exclusivity on the node. The default value
        # is 'none' if unspecified.
        # Corresponds to the JSON property `cpuManagerPolicy`
        # @return [String]
        attr_accessor :cpu_manager_policy
      
        # Set the Pod PID limits. See https://kubernetes.io/docs/concepts/policy/pid-
        # limiting/#pod-pid-limits Controls the maximum number of processes allowed to
        # run in a pod. The value must be greater than or equal to 1024 and less than
        # 4194304.
        # Corresponds to the JSON property `podPidsLimit`
        # @return [Fixnum]
        attr_accessor :pod_pids_limit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_cfs_quota = args[:cpu_cfs_quota] if args.key?(:cpu_cfs_quota)
          @cpu_cfs_quota_period = args[:cpu_cfs_quota_period] if args.key?(:cpu_cfs_quota_period)
          @cpu_manager_policy = args[:cpu_manager_policy] if args.key?(:cpu_manager_policy)
          @pod_pids_limit = args[:pod_pids_limit] if args.key?(:pod_pids_limit)
        end
      end
      
      # Collection of node-level [Kubernetes labels](https://kubernetes.io/docs/
      # concepts/overview/working-with-objects/labels).
      class NodeLabels
        include Google::Apis::Core::Hashable
      
        # Map of node label keys and node label values.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # NodeManagement defines the set of node management services turned on for the
      # node pool.
      class NodeManagement
        include Google::Apis::Core::Hashable
      
        # Whether the nodes will be automatically repaired.
        # Corresponds to the JSON property `autoRepair`
        # @return [Boolean]
        attr_accessor :auto_repair
        alias_method :auto_repair?, :auto_repair
      
        # Whether the nodes will be automatically upgraded.
        # Corresponds to the JSON property `autoUpgrade`
        # @return [Boolean]
        attr_accessor :auto_upgrade
        alias_method :auto_upgrade?, :auto_upgrade
      
        # AutoUpgradeOptions defines the set of options for the user to control how the
        # Auto Upgrades will proceed.
        # Corresponds to the JSON property `upgradeOptions`
        # @return [Google::Apis::ContainerV1beta1::AutoUpgradeOptions]
        attr_accessor :upgrade_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_repair = args[:auto_repair] if args.key?(:auto_repair)
          @auto_upgrade = args[:auto_upgrade] if args.key?(:auto_upgrade)
          @upgrade_options = args[:upgrade_options] if args.key?(:upgrade_options)
        end
      end
      
      # Parameters for node pool-level network config.
      class NodeNetworkConfig
        include Google::Apis::Core::Hashable
      
        # Input only. Whether to create a new range for pod IPs in this node pool.
        # Defaults are provided for `pod_range` and `pod_ipv4_cidr_block` if they are
        # not specified. If neither `create_pod_range` or `pod_range` are specified, the
        # cluster-level default (`ip_allocation_policy.cluster_ipv4_cidr_block`) is used.
        # Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field
        # cannot be changed after the node pool has been created.
        # Corresponds to the JSON property `createPodRange`
        # @return [Boolean]
        attr_accessor :create_pod_range
        alias_method :create_pod_range?, :create_pod_range
      
        # Whether nodes have internal IP addresses only. If enable_private_nodes is not
        # specified, then the value is derived from cluster.privateClusterConfig.
        # enablePrivateNodes
        # Corresponds to the JSON property `enablePrivateNodes`
        # @return [Boolean]
        attr_accessor :enable_private_nodes
        alias_method :enable_private_nodes?, :enable_private_nodes
      
        # Configuration of all network bandwidth tiers
        # Corresponds to the JSON property `networkPerformanceConfig`
        # @return [Google::Apis::ContainerV1beta1::NetworkPerformanceConfig]
        attr_accessor :network_performance_config
      
        # The IP address range for pod IPs in this node pool. Only applicable if `
        # create_pod_range` is true. Set to blank to have a range chosen with the
        # default size. Set to /netmask (e.g. `/14`) to have a range chosen with a
        # specific netmask. Set to a [CIDR](https://en.wikipedia.org/wiki/
        # Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) to pick a
        # specific range to use. Only applicable if `ip_allocation_policy.use_ip_aliases`
        # is true. This field cannot be changed after the node pool has been created.
        # Corresponds to the JSON property `podIpv4CidrBlock`
        # @return [String]
        attr_accessor :pod_ipv4_cidr_block
      
        # The ID of the secondary range for pod IPs. If `create_pod_range` is true, this
        # ID is used for the new range. If `create_pod_range` is false, uses an existing
        # secondary range with this ID. Only applicable if `ip_allocation_policy.
        # use_ip_aliases` is true. This field cannot be changed after the node pool has
        # been created.
        # Corresponds to the JSON property `podRange`
        # @return [String]
        attr_accessor :pod_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_pod_range = args[:create_pod_range] if args.key?(:create_pod_range)
          @enable_private_nodes = args[:enable_private_nodes] if args.key?(:enable_private_nodes)
          @network_performance_config = args[:network_performance_config] if args.key?(:network_performance_config)
          @pod_ipv4_cidr_block = args[:pod_ipv4_cidr_block] if args.key?(:pod_ipv4_cidr_block)
          @pod_range = args[:pod_range] if args.key?(:pod_range)
        end
      end
      
      # NodePool contains the name and configuration for a cluster's node pool. Node
      # pools are a set of nodes (i.e. VM's), with a common configuration and
      # specification, under the control of the cluster master. They may have a set of
      # Kubernetes labels applied to them, which may be used to reference them during
      # pod scheduling. They may also be resized up or down, to accommodate the
      # workload. These upgrade settings control the level of parallelism and the
      # level of disruption caused by an upgrade. maxUnavailable controls the number
      # of nodes that can be simultaneously unavailable. maxSurge controls the number
      # of additional nodes that can be added to the node pool temporarily for the
      # time of the upgrade to increase the number of available nodes. (maxUnavailable
      # + maxSurge) determines the level of parallelism (how many nodes are being
      # upgraded at the same time). Note: upgrades inevitably introduce some
      # disruption since workloads need to be moved from old nodes to new, upgraded
      # ones. Even if maxUnavailable=0, this holds true. (Disruption stays within the
      # limits of PodDisruptionBudget, if it is configured.) Consider a hypothetical
      # node pool with 5 nodes having maxSurge=2, maxUnavailable=1. This means the
      # upgrade process upgrades 3 nodes simultaneously. It creates 2 additional (
      # upgraded) nodes, then it brings down 3 old (not yet upgraded) nodes at the
      # same time. This ensures that there are always at least 4 nodes available.
      class NodePool
        include Google::Apis::Core::Hashable
      
        # NodePoolAutoscaling contains information required by cluster autoscaler to
        # adjust the size of the node pool to the current cluster usage.
        # Corresponds to the JSON property `autoscaling`
        # @return [Google::Apis::ContainerV1beta1::NodePoolAutoscaling]
        attr_accessor :autoscaling
      
        # Which conditions caused the current node pool state.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::ContainerV1beta1::StatusCondition>]
        attr_accessor :conditions
      
        # Parameters that describe the nodes in a cluster. GKE Autopilot clusters do not
        # recognize parameters in `NodeConfig`. Use AutoprovisioningNodePoolDefaults
        # instead.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::ContainerV1beta1::NodeConfig]
        attr_accessor :config
      
        # This checksum is computed by the server based on the value of node pool fields,
        # and may be sent on update requests to ensure the client has an up-to-date
        # value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The initial node count for the pool. You must ensure that your Compute Engine [
        # resource quota](https://cloud.google.com/compute/quotas) is sufficient for
        # this number of instances. You must also have available firewall and routes
        # quota.
        # Corresponds to the JSON property `initialNodeCount`
        # @return [Fixnum]
        attr_accessor :initial_node_count
      
        # [Output only] The resource URLs of the [managed instance groups](https://cloud.
        # google.com/compute/docs/instance-groups/creating-groups-of-managed-instances)
        # associated with this node pool. During the node pool blue-green upgrade
        # operation, the URLs contain both blue and green resources.
        # Corresponds to the JSON property `instanceGroupUrls`
        # @return [Array<String>]
        attr_accessor :instance_group_urls
      
        # The list of Google Compute Engine [zones](https://cloud.google.com/compute/
        # docs/zones#available) in which the NodePool's nodes should be located. If this
        # value is unspecified during node pool creation, the [Cluster.Locations](https:/
        # /cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.
        # clusters#Cluster.FIELDS.locations) value will be used, instead. Warning:
        # changing node pool locations will result in nodes being added and/or removed.
        # Corresponds to the JSON property `locations`
        # @return [Array<String>]
        attr_accessor :locations
      
        # NodeManagement defines the set of node management services turned on for the
        # node pool.
        # Corresponds to the JSON property `management`
        # @return [Google::Apis::ContainerV1beta1::NodeManagement]
        attr_accessor :management
      
        # Constraints applied to pods.
        # Corresponds to the JSON property `maxPodsConstraint`
        # @return [Google::Apis::ContainerV1beta1::MaxPodsConstraint]
        attr_accessor :max_pods_constraint
      
        # The name of the node pool.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parameters for node pool-level network config.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::ContainerV1beta1::NodeNetworkConfig]
        attr_accessor :network_config
      
        # PlacementPolicy defines the placement policy used by the node pool.
        # Corresponds to the JSON property `placementPolicy`
        # @return [Google::Apis::ContainerV1beta1::PlacementPolicy]
        attr_accessor :placement_policy
      
        # [Output only] The pod CIDR block size per node in this node pool.
        # Corresponds to the JSON property `podIpv4CidrSize`
        # @return [Fixnum]
        attr_accessor :pod_ipv4_cidr_size
      
        # [Output only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output only] The status of the nodes in this pool instance.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output only] Deprecated. Use conditions instead. Additional information about
        # the current status of this node pool instance, if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # UpdateInfo contains resource (instance groups, etc), status and other
        # intermediate information relevant to a node pool upgrade.
        # Corresponds to the JSON property `updateInfo`
        # @return [Google::Apis::ContainerV1beta1::UpdateInfo]
        attr_accessor :update_info
      
        # These upgrade settings configure the upgrade strategy for the node pool. Use
        # strategy to switch between the strategies applied to the node pool. If the
        # strategy is SURGE, use max_surge and max_unavailable to control the level of
        # parallelism and the level of disruption caused by upgrade. 1. maxSurge
        # controls the number of additional nodes that can be added to the node pool
        # temporarily for the time of the upgrade to increase the number of available
        # nodes. 2. maxUnavailable controls the number of nodes that can be
        # simultaneously unavailable. 3. (maxUnavailable + maxSurge) determines the
        # level of parallelism (how many nodes are being upgraded at the same time). If
        # the strategy is BLUE_GREEN, use blue_green_settings to configure the blue-
        # green upgrade related settings. 1. standard_rollout_policy is the default
        # policy. The policy is used to control the way blue pool gets drained. The
        # draining is executed in the batch mode. The batch size could be specified as
        # either percentage of the node pool size or the number of nodes.
        # batch_soak_duration is the soak time after each batch gets drained. 2.
        # node_pool_soak_duration is the soak time after all blue nodes are drained.
        # After this period, the blue pool nodes will be deleted.
        # Corresponds to the JSON property `upgradeSettings`
        # @return [Google::Apis::ContainerV1beta1::UpgradeSettings]
        attr_accessor :upgrade_settings
      
        # The version of Kubernetes running on this NodePool's nodes. If unspecified, it
        # defaults as described [here](https://cloud.google.com/kubernetes-engine/
        # versioning#specifying_node_version).
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling = args[:autoscaling] if args.key?(:autoscaling)
          @conditions = args[:conditions] if args.key?(:conditions)
          @config = args[:config] if args.key?(:config)
          @etag = args[:etag] if args.key?(:etag)
          @initial_node_count = args[:initial_node_count] if args.key?(:initial_node_count)
          @instance_group_urls = args[:instance_group_urls] if args.key?(:instance_group_urls)
          @locations = args[:locations] if args.key?(:locations)
          @management = args[:management] if args.key?(:management)
          @max_pods_constraint = args[:max_pods_constraint] if args.key?(:max_pods_constraint)
          @name = args[:name] if args.key?(:name)
          @network_config = args[:network_config] if args.key?(:network_config)
          @placement_policy = args[:placement_policy] if args.key?(:placement_policy)
          @pod_ipv4_cidr_size = args[:pod_ipv4_cidr_size] if args.key?(:pod_ipv4_cidr_size)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @update_info = args[:update_info] if args.key?(:update_info)
          @upgrade_settings = args[:upgrade_settings] if args.key?(:upgrade_settings)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # node pool configs that apply to all auto-provisioned node pools in autopilot
      # clusters and node auto-provisioning enabled clusters
      class NodePoolAutoConfig
        include Google::Apis::Core::Hashable
      
        # Collection of Compute Engine network tags that can be applied to a node's
        # underlying VM instance. (See `tags` field in [`NodeConfig`](/kubernetes-engine/
        # docs/reference/rest/v1/NodeConfig)).
        # Corresponds to the JSON property `networkTags`
        # @return [Google::Apis::ContainerV1beta1::NetworkTags]
        attr_accessor :network_tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_tags = args[:network_tags] if args.key?(:network_tags)
        end
      end
      
      # NodePoolAutoscaling contains information required by cluster autoscaler to
      # adjust the size of the node pool to the current cluster usage.
      class NodePoolAutoscaling
        include Google::Apis::Core::Hashable
      
        # Can this node pool be deleted automatically.
        # Corresponds to the JSON property `autoprovisioned`
        # @return [Boolean]
        attr_accessor :autoprovisioned
        alias_method :autoprovisioned?, :autoprovisioned
      
        # Is autoscaling enabled for this node pool.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Location policy used when scaling up a nodepool.
        # Corresponds to the JSON property `locationPolicy`
        # @return [String]
        attr_accessor :location_policy
      
        # Maximum number of nodes for one location in the NodePool. Must be >=
        # min_node_count. There has to be enough quota to scale up the cluster.
        # Corresponds to the JSON property `maxNodeCount`
        # @return [Fixnum]
        attr_accessor :max_node_count
      
        # Minimum number of nodes for one location in the NodePool. Must be >= 1 and <=
        # max_node_count.
        # Corresponds to the JSON property `minNodeCount`
        # @return [Fixnum]
        attr_accessor :min_node_count
      
        # Maximum number of nodes in the node pool. Must be greater than
        # total_min_node_count. There has to be enough quota to scale up the cluster.
        # The total_*_node_count fields are mutually exclusive with the *_node_count
        # fields.
        # Corresponds to the JSON property `totalMaxNodeCount`
        # @return [Fixnum]
        attr_accessor :total_max_node_count
      
        # Minimum number of nodes in the node pool. Must be greater than 1 less than
        # total_max_node_count. The total_*_node_count fields are mutually exclusive
        # with the *_node_count fields.
        # Corresponds to the JSON property `totalMinNodeCount`
        # @return [Fixnum]
        attr_accessor :total_min_node_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoprovisioned = args[:autoprovisioned] if args.key?(:autoprovisioned)
          @enabled = args[:enabled] if args.key?(:enabled)
          @location_policy = args[:location_policy] if args.key?(:location_policy)
          @max_node_count = args[:max_node_count] if args.key?(:max_node_count)
          @min_node_count = args[:min_node_count] if args.key?(:min_node_count)
          @total_max_node_count = args[:total_max_node_count] if args.key?(:total_max_node_count)
          @total_min_node_count = args[:total_min_node_count] if args.key?(:total_min_node_count)
        end
      end
      
      # Subset of Nodepool message that has defaults.
      class NodePoolDefaults
        include Google::Apis::Core::Hashable
      
        # Subset of NodeConfig message that has defaults.
        # Corresponds to the JSON property `nodeConfigDefaults`
        # @return [Google::Apis::ContainerV1beta1::NodeConfigDefaults]
        attr_accessor :node_config_defaults
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_config_defaults = args[:node_config_defaults] if args.key?(:node_config_defaults)
        end
      end
      
      # NodePoolLoggingConfig specifies logging configuration for nodepools.
      class NodePoolLoggingConfig
        include Google::Apis::Core::Hashable
      
        # LoggingVariantConfig specifies the behaviour of the logging component.
        # Corresponds to the JSON property `variantConfig`
        # @return [Google::Apis::ContainerV1beta1::LoggingVariantConfig]
        attr_accessor :variant_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variant_config = args[:variant_config] if args.key?(:variant_config)
        end
      end
      
      # Kubernetes taint is comprised of three fields: key, value, and effect. Effect
      # can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See
      # [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration)
      # for more information, including usage and the valid values.
      class NodeTaint
        include Google::Apis::Core::Hashable
      
        # Effect for taint.
        # Corresponds to the JSON property `effect`
        # @return [String]
        attr_accessor :effect
      
        # Key for taint.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Value for taint.
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
      
      # Collection of Kubernetes [node taints](https://kubernetes.io/docs/concepts/
      # configuration/taint-and-toleration).
      class NodeTaints
        include Google::Apis::Core::Hashable
      
        # List of node taints.
        # Corresponds to the JSON property `taints`
        # @return [Array<Google::Apis::ContainerV1beta1::NodeTaint>]
        attr_accessor :taints
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @taints = args[:taints] if args.key?(:taints)
        end
      end
      
      # NotificationConfig is the configuration of notifications.
      class NotificationConfig
        include Google::Apis::Core::Hashable
      
        # Pub/Sub specific notification config.
        # Corresponds to the JSON property `pubsub`
        # @return [Google::Apis::ContainerV1beta1::PubSub]
        attr_accessor :pubsub
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pubsub = args[:pubsub] if args.key?(:pubsub)
        end
      end
      
      # This operation resource represents operations that may have happened or are
      # happening on the cluster. All fields are output only.
      class Operation
        include Google::Apis::Core::Hashable
      
        # Which conditions caused the current cluster state. Deprecated. Use field error
        # instead.
        # Corresponds to the JSON property `clusterConditions`
        # @return [Array<Google::Apis::ContainerV1beta1::StatusCondition>]
        attr_accessor :cluster_conditions
      
        # Detailed operation progress, if available.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # [Output only] The time the operation completed, in [RFC3339](https://www.ietf.
        # org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ContainerV1beta1::Status]
        attr_accessor :error
      
        # [Output only] The name of the Google Compute Engine [zone](https://cloud.
        # google.com/compute/docs/regions-zones/regions-zones#available) or [region](
        # https://cloud.google.com/compute/docs/regions-zones/regions-zones#available)
        # in which the cluster resides.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The server-assigned ID for the operation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Which conditions caused the current node pool state. Deprecated. Use field
        # error instead.
        # Corresponds to the JSON property `nodepoolConditions`
        # @return [Array<Google::Apis::ContainerV1beta1::StatusCondition>]
        attr_accessor :nodepool_conditions
      
        # The operation type.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # Information about operation (or operation stage) progress.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::ContainerV1beta1::OperationProgress]
        attr_accessor :progress
      
        # Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output only] The time the operation started, in [RFC3339](https://www.ietf.
        # org/rfc/rfc3339.txt) text format.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The current status of the operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Output only. If an error has occurred, a textual description of the error.
        # Deprecated. Use field error instead.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Server-defined URL for the target of the operation.
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        # The name of the Google Compute Engine [zone](https://cloud.google.com/compute/
        # docs/zones#available) in which the operation is taking place. This field is
        # deprecated, use location instead.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_conditions = args[:cluster_conditions] if args.key?(:cluster_conditions)
          @detail = args[:detail] if args.key?(:detail)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @nodepool_conditions = args[:nodepool_conditions] if args.key?(:nodepool_conditions)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @progress = args[:progress] if args.key?(:progress)
          @self_link = args[:self_link] if args.key?(:self_link)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target_link = args[:target_link] if args.key?(:target_link)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Information about operation (or operation stage) progress.
      class OperationProgress
        include Google::Apis::Core::Hashable
      
        # Progress metric bundle, for example: metrics: [`name: "nodes done", int_value:
        # 15`, `name: "nodes total", int_value: 32`] or metrics: [`name: "progress",
        # double_value: 0.56`, `name: "progress scale", double_value: 1.0`]
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ContainerV1beta1::Metric>]
        attr_accessor :metrics
      
        # A non-parameterized string describing an operation stage. Unset for single-
        # stage operations.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Substages of an operation or a stage.
        # Corresponds to the JSON property `stages`
        # @return [Array<Google::Apis::ContainerV1beta1::OperationProgress>]
        attr_accessor :stages
      
        # Status of an operation stage. Unset for single-stage operations.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @stages = args[:stages] if args.key?(:stages)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # PlacementPolicy defines the placement policy used by the node pool.
      class PlacementPolicy
        include Google::Apis::Core::Hashable
      
        # The type of placement.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Configuration for the PodSecurityPolicy feature.
      class PodSecurityPolicyConfig
        include Google::Apis::Core::Hashable
      
        # Enable the PodSecurityPolicy controller for this cluster. If enabled, pods
        # must be valid under a PodSecurityPolicy to be created.
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
      
      # Configuration options for private clusters.
      class PrivateClusterConfig
        include Google::Apis::Core::Hashable
      
        # Whether the master's internal IP address is used as the cluster endpoint.
        # Corresponds to the JSON property `enablePrivateEndpoint`
        # @return [Boolean]
        attr_accessor :enable_private_endpoint
        alias_method :enable_private_endpoint?, :enable_private_endpoint
      
        # Whether nodes have internal IP addresses only. If enabled, all nodes are given
        # only RFC 1918 private addresses and communicate with the master via private
        # networking.
        # Corresponds to the JSON property `enablePrivateNodes`
        # @return [Boolean]
        attr_accessor :enable_private_nodes
        alias_method :enable_private_nodes?, :enable_private_nodes
      
        # Configuration for controlling master global access settings.
        # Corresponds to the JSON property `masterGlobalAccessConfig`
        # @return [Google::Apis::ContainerV1beta1::PrivateClusterMasterGlobalAccessConfig]
        attr_accessor :master_global_access_config
      
        # The IP range in CIDR notation to use for the hosted master network. This range
        # will be used for assigning internal IP addresses to the master or set of
        # masters, as well as the ILB VIP. This range must not overlap with any other
        # ranges in use within the cluster's network.
        # Corresponds to the JSON property `masterIpv4CidrBlock`
        # @return [String]
        attr_accessor :master_ipv4_cidr_block
      
        # Output only. The peering name in the customer VPC used by this cluster.
        # Corresponds to the JSON property `peeringName`
        # @return [String]
        attr_accessor :peering_name
      
        # Output only. The internal IP address of this cluster's master endpoint.
        # Corresponds to the JSON property `privateEndpoint`
        # @return [String]
        attr_accessor :private_endpoint
      
        # Subnet to provision the master's private endpoint during cluster creation.
        # Specified in projects/*/regions/*/subnetworks/* format.
        # Corresponds to the JSON property `privateEndpointSubnetwork`
        # @return [String]
        attr_accessor :private_endpoint_subnetwork
      
        # Output only. The external IP address of this cluster's master endpoint.
        # Corresponds to the JSON property `publicEndpoint`
        # @return [String]
        attr_accessor :public_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_private_endpoint = args[:enable_private_endpoint] if args.key?(:enable_private_endpoint)
          @enable_private_nodes = args[:enable_private_nodes] if args.key?(:enable_private_nodes)
          @master_global_access_config = args[:master_global_access_config] if args.key?(:master_global_access_config)
          @master_ipv4_cidr_block = args[:master_ipv4_cidr_block] if args.key?(:master_ipv4_cidr_block)
          @peering_name = args[:peering_name] if args.key?(:peering_name)
          @private_endpoint = args[:private_endpoint] if args.key?(:private_endpoint)
          @private_endpoint_subnetwork = args[:private_endpoint_subnetwork] if args.key?(:private_endpoint_subnetwork)
          @public_endpoint = args[:public_endpoint] if args.key?(:public_endpoint)
        end
      end
      
      # Configuration for controlling master global access settings.
      class PrivateClusterMasterGlobalAccessConfig
        include Google::Apis::Core::Hashable
      
        # Whenever master is accessible globally or not.
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
      
      # ProtectConfig defines the flags needed to enable/disable features for the
      # Protect API.
      class ProtectConfig
        include Google::Apis::Core::Hashable
      
        # WorkloadConfig defines the flags to enable or disable the workload
        # configurations for the cluster.
        # Corresponds to the JSON property `workloadConfig`
        # @return [Google::Apis::ContainerV1beta1::WorkloadConfig]
        attr_accessor :workload_config
      
        # Sets which mode to use for Protect workload vulnerability scanning feature.
        # Corresponds to the JSON property `workloadVulnerabilityMode`
        # @return [String]
        attr_accessor :workload_vulnerability_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @workload_config = args[:workload_config] if args.key?(:workload_config)
          @workload_vulnerability_mode = args[:workload_vulnerability_mode] if args.key?(:workload_vulnerability_mode)
        end
      end
      
      # Pub/Sub specific notification config.
      class PubSub
        include Google::Apis::Core::Hashable
      
        # Enable notifications for Pub/Sub.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Allows filtering to one or more specific event types. If event types are
        # present, those and only those event types will be transmitted to the cluster.
        # Other types will be skipped. If no filter is specified, or no event types are
        # present, all event types will be sent
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::ContainerV1beta1::Filter]
        attr_accessor :filter
      
        # The desired Pub/Sub topic to which notifications will be sent by GKE. Format
        # is `projects/`project`/topics/`topic``.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @filter = args[:filter] if args.key?(:filter)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Represents an arbitrary window of time that recurs.
      class RecurringTimeWindow
        include Google::Apis::Core::Hashable
      
        # An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how this
        # window reccurs. They go on for the span of time between the start and end time.
        # For example, to have something repeat every weekday, you'd use: `FREQ=WEEKLY;
        # BYDAY=MO,TU,WE,TH,FR` To repeat some window daily (equivalent to the
        # DailyMaintenanceWindow): `FREQ=DAILY` For the first weekend of every month: `
        # FREQ=MONTHLY;BYSETPOS=1;BYDAY=SA,SU` This specifies how frequently the window
        # starts. Eg, if you wanted to have a 9-5 UTC-4 window every weekday, you'd use
        # something like: ``` start time = 2019-01-01T09:00:00-0400 end time = 2019-01-
        # 01T17:00:00-0400 recurrence = FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR ``` Windows can
        # span multiple days. Eg, to make the window encompass every weekend from
        # midnight Saturday till the last minute of Sunday UTC: ``` start time = 2019-01-
        # 05T00:00:00Z end time = 2019-01-07T23:59:00Z recurrence = FREQ=WEEKLY;BYDAY=SA
        # ``` Note the start and end time's specific dates are largely arbitrary except
        # to specify duration of the window and when it first starts. The FREQ values of
        # HOURLY, MINUTELY, and SECONDLY are not supported.
        # Corresponds to the JSON property `recurrence`
        # @return [String]
        attr_accessor :recurrence
      
        # Represents an arbitrary window of time.
        # Corresponds to the JSON property `window`
        # @return [Google::Apis::ContainerV1beta1::TimeWindow]
        attr_accessor :window
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recurrence = args[:recurrence] if args.key?(:recurrence)
          @window = args[:window] if args.key?(:window)
        end
      end
      
      # ReleaseChannel indicates which release channel a cluster is subscribed to.
      # Release channels are arranged in order of risk. When a cluster is subscribed
      # to a release channel, Google maintains both the master version and the node
      # version. Node auto-upgrade defaults to true and cannot be disabled.
      class ReleaseChannel
        include Google::Apis::Core::Hashable
      
        # channel specifies which release channel the cluster is subscribed to.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
        end
      end
      
      # ReleaseChannelConfig exposes configuration for a release channel.
      class ReleaseChannelConfig
        include Google::Apis::Core::Hashable
      
        # Deprecated. This field has been deprecated and replaced with the
        # valid_versions field.
        # Corresponds to the JSON property `availableVersions`
        # @return [Array<Google::Apis::ContainerV1beta1::AvailableVersion>]
        attr_accessor :available_versions
      
        # The release channel this configuration applies to.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # The default version for newly created clusters on the channel.
        # Corresponds to the JSON property `defaultVersion`
        # @return [String]
        attr_accessor :default_version
      
        # List of valid versions for the channel.
        # Corresponds to the JSON property `validVersions`
        # @return [Array<String>]
        attr_accessor :valid_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_versions = args[:available_versions] if args.key?(:available_versions)
          @channel = args[:channel] if args.key?(:channel)
          @default_version = args[:default_version] if args.key?(:default_version)
          @valid_versions = args[:valid_versions] if args.key?(:valid_versions)
        end
      end
      
      # [ReservationAffinity](https://cloud.google.com/compute/docs/instances/
      # reserving-zonal-resources) is the configuration of desired reservation which
      # instances could take capacity from.
      class ReservationAffinity
        include Google::Apis::Core::Hashable
      
        # Corresponds to the type of reservation consumption.
        # Corresponds to the JSON property `consumeReservationType`
        # @return [String]
        attr_accessor :consume_reservation_type
      
        # Corresponds to the label key of a reservation resource. To target a
        # SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name"
        # as the key and specify the name of your reservation as its value.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Corresponds to the label value(s) of reservation resource(s).
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consume_reservation_type = args[:consume_reservation_type] if args.key?(:consume_reservation_type)
          @key = args[:key] if args.key?(:key)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Collection of [GCP labels](https://cloud.google.com/resource-manager/docs/
      # creating-managing-labels).
      class ResourceLabels
        include Google::Apis::Core::Hashable
      
        # Map of node label keys and node label values.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Contains information about amount of some resource in the cluster. For memory,
      # value should be in GB.
      class ResourceLimit
        include Google::Apis::Core::Hashable
      
        # Maximum amount of the resource in the cluster.
        # Corresponds to the JSON property `maximum`
        # @return [Fixnum]
        attr_accessor :maximum
      
        # Minimum amount of the resource in the cluster.
        # Corresponds to the JSON property `minimum`
        # @return [Fixnum]
        attr_accessor :minimum
      
        # Resource name "cpu", "memory" or gpu-specific string.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maximum = args[:maximum] if args.key?(:maximum)
          @minimum = args[:minimum] if args.key?(:minimum)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Configuration for exporting cluster resource usages.
      class ResourceUsageExportConfig
        include Google::Apis::Core::Hashable
      
        # Parameters for using BigQuery as the destination of resource usage export.
        # Corresponds to the JSON property `bigqueryDestination`
        # @return [Google::Apis::ContainerV1beta1::BigQueryDestination]
        attr_accessor :bigquery_destination
      
        # Parameters for controlling consumption metering.
        # Corresponds to the JSON property `consumptionMeteringConfig`
        # @return [Google::Apis::ContainerV1beta1::ConsumptionMeteringConfig]
        attr_accessor :consumption_metering_config
      
        # Whether to enable network egress metering for this cluster. If enabled, a
        # daemonset will be created in the cluster to meter network egress traffic.
        # Corresponds to the JSON property `enableNetworkEgressMetering`
        # @return [Boolean]
        attr_accessor :enable_network_egress_metering
        alias_method :enable_network_egress_metering?, :enable_network_egress_metering
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_destination = args[:bigquery_destination] if args.key?(:bigquery_destination)
          @consumption_metering_config = args[:consumption_metering_config] if args.key?(:consumption_metering_config)
          @enable_network_egress_metering = args[:enable_network_egress_metering] if args.key?(:enable_network_egress_metering)
        end
      end
      
      # RollbackNodePoolUpgradeRequest rollbacks the previously Aborted or Failed
      # NodePool upgrade. This will be an no-op if the last upgrade successfully
      # completed.
      class RollbackNodePoolUpgradeRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster to rollback. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # The name (project, location, cluster, node pool id) of the node poll to
        # rollback upgrade. Specified in the format `projects/*/locations/*/clusters/*/
        # nodePools/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The name of the node pool to rollback. This field has
        # been deprecated and replaced by the name field.
        # Corresponds to the JSON property `nodePoolId`
        # @return [String]
        attr_accessor :node_pool_id
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Option for rollback to ignore the PodDisruptionBudget. Default value is false.
        # Corresponds to the JSON property `respectPdb`
        # @return [Boolean]
        attr_accessor :respect_pdb
        alias_method :respect_pdb?, :respect_pdb
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @name = args[:name] if args.key?(:name)
          @node_pool_id = args[:node_pool_id] if args.key?(:node_pool_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @respect_pdb = args[:respect_pdb] if args.key?(:respect_pdb)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SandboxConfig contains configurations of the sandbox to use for the node.
      class SandboxConfig
        include Google::Apis::Core::Hashable
      
        # Type of the sandbox to use for the node (e.g. 'gvisor')
        # Corresponds to the JSON property `sandboxType`
        # @return [String]
        attr_accessor :sandbox_type
      
        # Type of the sandbox to use for the node.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sandbox_type = args[:sandbox_type] if args.key?(:sandbox_type)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # SecurityBulletinEvent is a notification sent to customers when a security
      # bulletin has been posted that they are vulnerable to.
      class SecurityBulletinEvent
        include Google::Apis::Core::Hashable
      
        # The GKE minor versions affected by this vulnerability.
        # Corresponds to the JSON property `affectedSupportedMinors`
        # @return [Array<String>]
        attr_accessor :affected_supported_minors
      
        # A brief description of the bulletin. See the bulletin pointed to by the
        # bulletin_uri field for an expanded description.
        # Corresponds to the JSON property `briefDescription`
        # @return [String]
        attr_accessor :brief_description
      
        # The ID of the bulletin corresponding to the vulnerability.
        # Corresponds to the JSON property `bulletinId`
        # @return [String]
        attr_accessor :bulletin_id
      
        # The URI link to the bulletin on the website for more information.
        # Corresponds to the JSON property `bulletinUri`
        # @return [String]
        attr_accessor :bulletin_uri
      
        # The CVEs associated with this bulletin.
        # Corresponds to the JSON property `cveIds`
        # @return [Array<String>]
        attr_accessor :cve_ids
      
        # If this field is specified, it means there are manual steps that the user must
        # take to make their clusters safe.
        # Corresponds to the JSON property `manualStepsRequired`
        # @return [Boolean]
        attr_accessor :manual_steps_required
        alias_method :manual_steps_required?, :manual_steps_required
      
        # The GKE versions where this vulnerability is patched.
        # Corresponds to the JSON property `patchedVersions`
        # @return [Array<String>]
        attr_accessor :patched_versions
      
        # The resource type (node/control plane) that has the vulnerability. Multiple
        # notifications (1 notification per resource type) will be sent for a
        # vulnerability that affects > 1 resource type.
        # Corresponds to the JSON property `resourceTypeAffected`
        # @return [String]
        attr_accessor :resource_type_affected
      
        # The severity of this bulletin as it relates to GKE.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # This represents a version selected from the patched_versions field that the
        # cluster receiving this notification should most likely want to upgrade to
        # based on its current version. Note that if this notification is being received
        # by a given cluster, it means that this version is currently available as an
        # upgrade target in that cluster's location.
        # Corresponds to the JSON property `suggestedUpgradeTarget`
        # @return [String]
        attr_accessor :suggested_upgrade_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affected_supported_minors = args[:affected_supported_minors] if args.key?(:affected_supported_minors)
          @brief_description = args[:brief_description] if args.key?(:brief_description)
          @bulletin_id = args[:bulletin_id] if args.key?(:bulletin_id)
          @bulletin_uri = args[:bulletin_uri] if args.key?(:bulletin_uri)
          @cve_ids = args[:cve_ids] if args.key?(:cve_ids)
          @manual_steps_required = args[:manual_steps_required] if args.key?(:manual_steps_required)
          @patched_versions = args[:patched_versions] if args.key?(:patched_versions)
          @resource_type_affected = args[:resource_type_affected] if args.key?(:resource_type_affected)
          @severity = args[:severity] if args.key?(:severity)
          @suggested_upgrade_target = args[:suggested_upgrade_target] if args.key?(:suggested_upgrade_target)
        end
      end
      
      # Kubernetes Engine service configuration.
      class ServerConfig
        include Google::Apis::Core::Hashable
      
        # List of release channel configurations.
        # Corresponds to the JSON property `channels`
        # @return [Array<Google::Apis::ContainerV1beta1::ReleaseChannelConfig>]
        attr_accessor :channels
      
        # Version of Kubernetes the service deploys by default.
        # Corresponds to the JSON property `defaultClusterVersion`
        # @return [String]
        attr_accessor :default_cluster_version
      
        # Default image type.
        # Corresponds to the JSON property `defaultImageType`
        # @return [String]
        attr_accessor :default_image_type
      
        # List of valid image types.
        # Corresponds to the JSON property `validImageTypes`
        # @return [Array<String>]
        attr_accessor :valid_image_types
      
        # List of valid master versions, in descending order.
        # Corresponds to the JSON property `validMasterVersions`
        # @return [Array<String>]
        attr_accessor :valid_master_versions
      
        # List of valid node upgrade target versions, in descending order.
        # Corresponds to the JSON property `validNodeVersions`
        # @return [Array<String>]
        attr_accessor :valid_node_versions
      
        # Maps of Kubernetes version and supported Windows server versions.
        # Corresponds to the JSON property `windowsVersionMaps`
        # @return [Hash<String,Google::Apis::ContainerV1beta1::WindowsVersions>]
        attr_accessor :windows_version_maps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channels = args[:channels] if args.key?(:channels)
          @default_cluster_version = args[:default_cluster_version] if args.key?(:default_cluster_version)
          @default_image_type = args[:default_image_type] if args.key?(:default_image_type)
          @valid_image_types = args[:valid_image_types] if args.key?(:valid_image_types)
          @valid_master_versions = args[:valid_master_versions] if args.key?(:valid_master_versions)
          @valid_node_versions = args[:valid_node_versions] if args.key?(:valid_node_versions)
          @windows_version_maps = args[:windows_version_maps] if args.key?(:windows_version_maps)
        end
      end
      
      # Config to block services with externalIPs field.
      class ServiceExternalIPsConfig
        include Google::Apis::Core::Hashable
      
        # Whether Services with ExternalIPs field are allowed or not.
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
      
      # SetAddonsRequest sets the addons associated with the cluster.
      class SetAddonsConfigRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for the addons that can be automatically spun up in the cluster,
        # enabling additional functionality.
        # Corresponds to the JSON property `addonsConfig`
        # @return [Google::Apis::ContainerV1beta1::AddonsConfig]
        attr_accessor :addons_config
      
        # Required. Deprecated. The name of the cluster to upgrade. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # The name (project, location, cluster) of the cluster to set addons. Specified
        # in the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addons_config = args[:addons_config] if args.key?(:addons_config)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SetLabelsRequest sets the Google Cloud Platform labels on a Google Container
      # Engine cluster, which will in turn set them for Google Compute Engine
      # resources used by that cluster
      class SetLabelsRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster. This field has been deprecated
        # and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # Required. The fingerprint of the previous set of labels for this resource,
        # used to detect conflicts. The fingerprint is initially generated by Kubernetes
        # Engine and changes after every request to modify or update labels. You must
        # always provide an up-to-date fingerprint hash when updating or changing labels.
        # Make a `get()` request to the resource to get the latest fingerprint.
        # Corresponds to the JSON property `labelFingerprint`
        # @return [String]
        attr_accessor :label_fingerprint
      
        # The name (project, location, cluster name) of the cluster to set labels.
        # Specified in the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. The labels to set for that cluster.
        # Corresponds to the JSON property `resourceLabels`
        # @return [Hash<String,String>]
        attr_accessor :resource_labels
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @label_fingerprint = args[:label_fingerprint] if args.key?(:label_fingerprint)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @resource_labels = args[:resource_labels] if args.key?(:resource_labels)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SetLegacyAbacRequest enables or disables the ABAC authorization mechanism for
      # a cluster.
      class SetLegacyAbacRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster to update. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # Required. Whether ABAC authorization will be enabled in the cluster.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # The name (project, location, cluster name) of the cluster to set legacy abac.
        # Specified in the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @enabled = args[:enabled] if args.key?(:enabled)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SetLocationsRequest sets the locations of the cluster.
      class SetLocationsRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster to upgrade. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # Required. The desired list of Google Compute Engine [zones](https://cloud.
        # google.com/compute/docs/zones#available) in which the cluster's nodes should
        # be located. Changing the locations a cluster is in will result in nodes being
        # either created or removed from the cluster, depending on whether locations are
        # being added or removed. This list must always include the cluster's primary
        # zone.
        # Corresponds to the JSON property `locations`
        # @return [Array<String>]
        attr_accessor :locations
      
        # The name (project, location, cluster) of the cluster to set locations.
        # Specified in the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @locations = args[:locations] if args.key?(:locations)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SetLoggingServiceRequest sets the logging service of a cluster.
      class SetLoggingServiceRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster to upgrade. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # Required. The logging service the cluster should use to write logs. Currently
        # available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging
        # service with a Kubernetes-native resource model * `logging.googleapis.com` -
        # The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none`
        # - no logs will be exported from the cluster. If left as an empty string,`
        # logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.
        # googleapis.com` for earlier versions.
        # Corresponds to the JSON property `loggingService`
        # @return [String]
        attr_accessor :logging_service
      
        # The name (project, location, cluster) of the cluster to set logging. Specified
        # in the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @logging_service = args[:logging_service] if args.key?(:logging_service)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SetMaintenancePolicyRequest sets the maintenance policy for a cluster.
      class SetMaintenancePolicyRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the cluster to update.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # MaintenancePolicy defines the maintenance policy to be used for the cluster.
        # Corresponds to the JSON property `maintenancePolicy`
        # @return [Google::Apis::ContainerV1beta1::MaintenancePolicy]
        attr_accessor :maintenance_policy
      
        # The name (project, location, cluster name) of the cluster to set maintenance
        # policy. Specified in the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The Google Developers Console [project ID or project number](https://
        # cloud.google.com/resource-manager/docs/creating-managing-projects).
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. The name of the Google Compute Engine [zone](https://cloud.google.
        # com/compute/docs/zones#available) in which the cluster resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @maintenance_policy = args[:maintenance_policy] if args.key?(:maintenance_policy)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SetMasterAuthRequest updates the admin password of a cluster.
      class SetMasterAuthRequest
        include Google::Apis::Core::Hashable
      
        # Required. The exact form of action to be taken on the master auth.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Required. Deprecated. The name of the cluster to upgrade. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # The name (project, location, cluster) of the cluster to set auth. Specified in
        # the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The authentication information for accessing the master endpoint.
        # Authentication can be done using HTTP basic auth or using client certificates.
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::ContainerV1beta1::MasterAuth]
        attr_accessor :update
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @update = args[:update] if args.key?(:update)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SetMonitoringServiceRequest sets the monitoring service of a cluster.
      class SetMonitoringServiceRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster to upgrade. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # Required. The monitoring service the cluster should use to write metrics.
        # Currently available options: * "monitoring.googleapis.com/kubernetes" - The
        # Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.
        # googleapis.com` - The legacy Cloud Monitoring service (no longer available as
        # of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left
        # as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE
        # 1.14+ or `monitoring.googleapis.com` for earlier versions.
        # Corresponds to the JSON property `monitoringService`
        # @return [String]
        attr_accessor :monitoring_service
      
        # The name (project, location, cluster) of the cluster to set monitoring.
        # Specified in the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @monitoring_service = args[:monitoring_service] if args.key?(:monitoring_service)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SetNetworkPolicyRequest enables/disables network policy for a cluster.
      class SetNetworkPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster. This field has been deprecated
        # and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # The name (project, location, cluster name) of the cluster to set networking
        # policy. Specified in the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration options for the NetworkPolicy feature. https://kubernetes.io/
        # docs/concepts/services-networking/networkpolicies/
        # Corresponds to the JSON property `networkPolicy`
        # @return [Google::Apis::ContainerV1beta1::NetworkPolicy]
        attr_accessor :network_policy
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @name = args[:name] if args.key?(:name)
          @network_policy = args[:network_policy] if args.key?(:network_policy)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SetNodePoolAutoscalingRequest sets the autoscaler settings of a node pool.
      class SetNodePoolAutoscalingRequest
        include Google::Apis::Core::Hashable
      
        # NodePoolAutoscaling contains information required by cluster autoscaler to
        # adjust the size of the node pool to the current cluster usage.
        # Corresponds to the JSON property `autoscaling`
        # @return [Google::Apis::ContainerV1beta1::NodePoolAutoscaling]
        attr_accessor :autoscaling
      
        # Required. Deprecated. The name of the cluster to upgrade. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # The name (project, location, cluster, node pool) of the node pool to set
        # autoscaler settings. Specified in the format `projects/*/locations/*/clusters/*
        # /nodePools/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The name of the node pool to upgrade. This field has
        # been deprecated and replaced by the name field.
        # Corresponds to the JSON property `nodePoolId`
        # @return [String]
        attr_accessor :node_pool_id
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling = args[:autoscaling] if args.key?(:autoscaling)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @name = args[:name] if args.key?(:name)
          @node_pool_id = args[:node_pool_id] if args.key?(:node_pool_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SetNodePoolManagementRequest sets the node management properties of a node
      # pool.
      class SetNodePoolManagementRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster to update. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # NodeManagement defines the set of node management services turned on for the
        # node pool.
        # Corresponds to the JSON property `management`
        # @return [Google::Apis::ContainerV1beta1::NodeManagement]
        attr_accessor :management
      
        # The name (project, location, cluster, node pool id) of the node pool to set
        # management properties. Specified in the format `projects/*/locations/*/
        # clusters/*/nodePools/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The name of the node pool to update. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `nodePoolId`
        # @return [String]
        attr_accessor :node_pool_id
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @management = args[:management] if args.key?(:management)
          @name = args[:name] if args.key?(:name)
          @node_pool_id = args[:node_pool_id] if args.key?(:node_pool_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SetNodePoolSizeRequest sets the size of a node pool.
      class SetNodePoolSizeRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster to update. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # The name (project, location, cluster, node pool id) of the node pool to set
        # size. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The desired node count for the pool.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        # Required. Deprecated. The name of the node pool to update. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `nodePoolId`
        # @return [String]
        attr_accessor :node_pool_id
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @name = args[:name] if args.key?(:name)
          @node_count = args[:node_count] if args.key?(:node_count)
          @node_pool_id = args[:node_pool_id] if args.key?(:node_pool_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # A set of Shielded Instance options.
      class ShieldedInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Defines whether the instance has integrity monitoring enabled. Enables
        # monitoring and attestation of the boot integrity of the instance. The
        # attestation is performed against the integrity policy baseline. This baseline
        # is initially derived from the implicitly trusted boot image when the instance
        # is created.
        # Corresponds to the JSON property `enableIntegrityMonitoring`
        # @return [Boolean]
        attr_accessor :enable_integrity_monitoring
        alias_method :enable_integrity_monitoring?, :enable_integrity_monitoring
      
        # Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure
        # that the system only runs authentic software by verifying the digital
        # signature of all boot components, and halting the boot process if signature
        # verification fails.
        # Corresponds to the JSON property `enableSecureBoot`
        # @return [Boolean]
        attr_accessor :enable_secure_boot
        alias_method :enable_secure_boot?, :enable_secure_boot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_integrity_monitoring = args[:enable_integrity_monitoring] if args.key?(:enable_integrity_monitoring)
          @enable_secure_boot = args[:enable_secure_boot] if args.key?(:enable_secure_boot)
        end
      end
      
      # Configuration of Shielded Nodes feature.
      class ShieldedNodes
        include Google::Apis::Core::Hashable
      
        # Whether Shielded Nodes features are enabled on all nodes in this cluster.
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
      
      # Standard rollout policy is the default policy for blue-green.
      class StandardRolloutPolicy
        include Google::Apis::Core::Hashable
      
        # Number of blue nodes to drain in a batch.
        # Corresponds to the JSON property `batchNodeCount`
        # @return [Fixnum]
        attr_accessor :batch_node_count
      
        # Percentage of the blue pool nodes to drain in a batch. The range of this field
        # should be (0.0, 1.0].
        # Corresponds to the JSON property `batchPercentage`
        # @return [Float]
        attr_accessor :batch_percentage
      
        # Soak time after each batch gets drained. Default to zero.
        # Corresponds to the JSON property `batchSoakDuration`
        # @return [String]
        attr_accessor :batch_soak_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_node_count = args[:batch_node_count] if args.key?(:batch_node_count)
          @batch_percentage = args[:batch_percentage] if args.key?(:batch_percentage)
          @batch_soak_duration = args[:batch_soak_duration] if args.key?(:batch_soak_duration)
        end
      end
      
      # StartIPRotationRequest creates a new IP for the cluster and then performs a
      # node upgrade on each node pool to point to the new IP.
      class StartIpRotationRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster. This field has been deprecated
        # and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # The name (project, location, cluster name) of the cluster to start IP rotation.
        # Specified in the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Whether to rotate credentials during IP rotation.
        # Corresponds to the JSON property `rotateCredentials`
        # @return [Boolean]
        attr_accessor :rotate_credentials
        alias_method :rotate_credentials?, :rotate_credentials
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @rotate_credentials = args[:rotate_credentials] if args.key?(:rotate_credentials)
          @zone = args[:zone] if args.key?(:zone)
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
      
      # StatusCondition describes why a cluster or a node pool has a certain status (e.
      # g., ERROR or DEGRADED).
      class StatusCondition
        include Google::Apis::Core::Hashable
      
        # Canonical code of the condition.
        # Corresponds to the JSON property `canonicalCode`
        # @return [String]
        attr_accessor :canonical_code
      
        # Machine-friendly representation of the condition Deprecated. Use
        # canonical_code instead.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Human-friendly representation of the condition
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_code = args[:canonical_code] if args.key?(:canonical_code)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Represents an arbitrary window of time.
      class TimeWindow
        include Google::Apis::Core::Hashable
      
        # The time that the window ends. The end time should take place after the start
        # time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Represents the Maintenance exclusion option.
        # Corresponds to the JSON property `maintenanceExclusionOptions`
        # @return [Google::Apis::ContainerV1beta1::MaintenanceExclusionOptions]
        attr_accessor :maintenance_exclusion_options
      
        # The time that the window first starts.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @maintenance_exclusion_options = args[:maintenance_exclusion_options] if args.key?(:maintenance_exclusion_options)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Configuration for Cloud TPU.
      class TpuConfig
        include Google::Apis::Core::Hashable
      
        # Whether Cloud TPU integration is enabled or not.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # IPv4 CIDR block reserved for Cloud TPU in the VPC.
        # Corresponds to the JSON property `ipv4CidrBlock`
        # @return [String]
        attr_accessor :ipv4_cidr_block
      
        # Whether to use service networking for Cloud TPU or not.
        # Corresponds to the JSON property `useServiceNetworking`
        # @return [Boolean]
        attr_accessor :use_service_networking
        alias_method :use_service_networking?, :use_service_networking
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @ipv4_cidr_block = args[:ipv4_cidr_block] if args.key?(:ipv4_cidr_block)
          @use_service_networking = args[:use_service_networking] if args.key?(:use_service_networking)
        end
      end
      
      # UpdateClusterRequest updates the settings of a cluster.
      class UpdateClusterRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster to upgrade. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # The name (project, location, cluster) of the cluster to update. Specified in
        # the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # ClusterUpdate describes an update to the cluster. Exactly one update can be
        # applied to a cluster with each request, so at most one field can be provided.
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::ContainerV1beta1::ClusterUpdate]
        attr_accessor :update
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @update = args[:update] if args.key?(:update)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # UpdateInfo contains resource (instance groups, etc), status and other
      # intermediate information relevant to a node pool upgrade.
      class UpdateInfo
        include Google::Apis::Core::Hashable
      
        # Information relevant to blue-green upgrade.
        # Corresponds to the JSON property `blueGreenInfo`
        # @return [Google::Apis::ContainerV1beta1::BlueGreenInfo]
        attr_accessor :blue_green_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blue_green_info = args[:blue_green_info] if args.key?(:blue_green_info)
        end
      end
      
      # UpdateMasterRequest updates the master of the cluster.
      class UpdateMasterRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster to upgrade. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # Required. The Kubernetes version to change the master to. Users may specify
        # either explicit versions offered by Kubernetes Engine or version aliases,
        # which have the following behavior: - "latest": picks the highest valid
        # Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.
        # X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version -
        # "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default
        # Kubernetes version
        # Corresponds to the JSON property `masterVersion`
        # @return [String]
        attr_accessor :master_version
      
        # The name (project, location, cluster) of the cluster to update. Specified in
        # the format `projects/*/locations/*/clusters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @master_version = args[:master_version] if args.key?(:master_version)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # SetNodePoolVersionRequest updates the version of a node pool.
      class UpdateNodePoolRequest
        include Google::Apis::Core::Hashable
      
        # Required. Deprecated. The name of the cluster to upgrade. This field has been
        # deprecated and replaced by the name field.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # ConfidentialNodes is configuration for the confidential nodes feature, which
        # makes nodes run on confidential VMs.
        # Corresponds to the JSON property `confidentialNodes`
        # @return [Google::Apis::ContainerV1beta1::ConfidentialNodes]
        attr_accessor :confidential_nodes
      
        # The current etag of the node pool. If an etag is provided and does not match
        # the current etag of the node pool, update will be blocked and an ABORTED error
        # will be returned.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Configuration of Fast Socket feature.
        # Corresponds to the JSON property `fastSocket`
        # @return [Google::Apis::ContainerV1beta1::FastSocket]
        attr_accessor :fast_socket
      
        # GcfsConfig contains configurations of Google Container File System.
        # Corresponds to the JSON property `gcfsConfig`
        # @return [Google::Apis::ContainerV1beta1::GcfsConfig]
        attr_accessor :gcfs_config
      
        # Configuration of gVNIC feature.
        # Corresponds to the JSON property `gvnic`
        # @return [Google::Apis::ContainerV1beta1::VirtualNic]
        attr_accessor :gvnic
      
        # Required. The desired image type for the node pool. Please see https://cloud.
        # google.com/kubernetes-engine/docs/concepts/node-images for available image
        # types.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # Node kubelet configs.
        # Corresponds to the JSON property `kubeletConfig`
        # @return [Google::Apis::ContainerV1beta1::NodeKubeletConfig]
        attr_accessor :kubelet_config
      
        # Collection of node-level [Kubernetes labels](https://kubernetes.io/docs/
        # concepts/overview/working-with-objects/labels).
        # Corresponds to the JSON property `labels`
        # @return [Google::Apis::ContainerV1beta1::NodeLabels]
        attr_accessor :labels
      
        # Parameters that can be configured on Linux nodes.
        # Corresponds to the JSON property `linuxNodeConfig`
        # @return [Google::Apis::ContainerV1beta1::LinuxNodeConfig]
        attr_accessor :linux_node_config
      
        # The desired list of Google Compute Engine [zones](https://cloud.google.com/
        # compute/docs/zones#available) in which the node pool's nodes should be located.
        # Changing the locations for a node pool will result in nodes being either
        # created or removed from the node pool, depending on whether locations are
        # being added or removed.
        # Corresponds to the JSON property `locations`
        # @return [Array<String>]
        attr_accessor :locations
      
        # NodePoolLoggingConfig specifies logging configuration for nodepools.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::ContainerV1beta1::NodePoolLoggingConfig]
        attr_accessor :logging_config
      
        # The name (project, location, cluster, node pool) of the node pool to update.
        # Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parameters for node pool-level network config.
        # Corresponds to the JSON property `nodeNetworkConfig`
        # @return [Google::Apis::ContainerV1beta1::NodeNetworkConfig]
        attr_accessor :node_network_config
      
        # Required. Deprecated. The name of the node pool to upgrade. This field has
        # been deprecated and replaced by the name field.
        # Corresponds to the JSON property `nodePoolId`
        # @return [String]
        attr_accessor :node_pool_id
      
        # Required. The Kubernetes version to change the nodes to (typically an upgrade).
        # Users may specify either explicit versions offered by Kubernetes Engine or
        # version aliases, which have the following behavior: - "latest": picks the
        # highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N
        # patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the
        # 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-":
        # picks the Kubernetes master version
        # Corresponds to the JSON property `nodeVersion`
        # @return [String]
        attr_accessor :node_version
      
        # Required. Deprecated. The Google Developers Console [project ID or project
        # number](https://cloud.google.com/resource-manager/docs/creating-managing-
        # projects). This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Collection of [GCP labels](https://cloud.google.com/resource-manager/docs/
        # creating-managing-labels).
        # Corresponds to the JSON property `resourceLabels`
        # @return [Google::Apis::ContainerV1beta1::ResourceLabels]
        attr_accessor :resource_labels
      
        # Collection of Compute Engine network tags that can be applied to a node's
        # underlying VM instance. (See `tags` field in [`NodeConfig`](/kubernetes-engine/
        # docs/reference/rest/v1/NodeConfig)).
        # Corresponds to the JSON property `tags`
        # @return [Google::Apis::ContainerV1beta1::NetworkTags]
        attr_accessor :tags
      
        # Collection of Kubernetes [node taints](https://kubernetes.io/docs/concepts/
        # configuration/taint-and-toleration).
        # Corresponds to the JSON property `taints`
        # @return [Google::Apis::ContainerV1beta1::NodeTaints]
        attr_accessor :taints
      
        # These upgrade settings configure the upgrade strategy for the node pool. Use
        # strategy to switch between the strategies applied to the node pool. If the
        # strategy is SURGE, use max_surge and max_unavailable to control the level of
        # parallelism and the level of disruption caused by upgrade. 1. maxSurge
        # controls the number of additional nodes that can be added to the node pool
        # temporarily for the time of the upgrade to increase the number of available
        # nodes. 2. maxUnavailable controls the number of nodes that can be
        # simultaneously unavailable. 3. (maxUnavailable + maxSurge) determines the
        # level of parallelism (how many nodes are being upgraded at the same time). If
        # the strategy is BLUE_GREEN, use blue_green_settings to configure the blue-
        # green upgrade related settings. 1. standard_rollout_policy is the default
        # policy. The policy is used to control the way blue pool gets drained. The
        # draining is executed in the batch mode. The batch size could be specified as
        # either percentage of the node pool size or the number of nodes.
        # batch_soak_duration is the soak time after each batch gets drained. 2.
        # node_pool_soak_duration is the soak time after all blue nodes are drained.
        # After this period, the blue pool nodes will be deleted.
        # Corresponds to the JSON property `upgradeSettings`
        # @return [Google::Apis::ContainerV1beta1::UpgradeSettings]
        attr_accessor :upgrade_settings
      
        # Parameters that can be configured on Windows nodes. Windows Node Config that
        # define the parameters that will be used to configure the Windows node pool
        # settings
        # Corresponds to the JSON property `windowsNodeConfig`
        # @return [Google::Apis::ContainerV1beta1::WindowsNodeConfig]
        attr_accessor :windows_node_config
      
        # WorkloadMetadataConfig defines the metadata configuration to expose to
        # workloads on the node pool.
        # Corresponds to the JSON property `workloadMetadataConfig`
        # @return [Google::Apis::ContainerV1beta1::WorkloadMetadataConfig]
        attr_accessor :workload_metadata_config
      
        # Required. Deprecated. The name of the Google Compute Engine [zone](https://
        # cloud.google.com/compute/docs/zones#available) in which the cluster resides.
        # This field has been deprecated and replaced by the name field.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @confidential_nodes = args[:confidential_nodes] if args.key?(:confidential_nodes)
          @etag = args[:etag] if args.key?(:etag)
          @fast_socket = args[:fast_socket] if args.key?(:fast_socket)
          @gcfs_config = args[:gcfs_config] if args.key?(:gcfs_config)
          @gvnic = args[:gvnic] if args.key?(:gvnic)
          @image_type = args[:image_type] if args.key?(:image_type)
          @kubelet_config = args[:kubelet_config] if args.key?(:kubelet_config)
          @labels = args[:labels] if args.key?(:labels)
          @linux_node_config = args[:linux_node_config] if args.key?(:linux_node_config)
          @locations = args[:locations] if args.key?(:locations)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @name = args[:name] if args.key?(:name)
          @node_network_config = args[:node_network_config] if args.key?(:node_network_config)
          @node_pool_id = args[:node_pool_id] if args.key?(:node_pool_id)
          @node_version = args[:node_version] if args.key?(:node_version)
          @project_id = args[:project_id] if args.key?(:project_id)
          @resource_labels = args[:resource_labels] if args.key?(:resource_labels)
          @tags = args[:tags] if args.key?(:tags)
          @taints = args[:taints] if args.key?(:taints)
          @upgrade_settings = args[:upgrade_settings] if args.key?(:upgrade_settings)
          @windows_node_config = args[:windows_node_config] if args.key?(:windows_node_config)
          @workload_metadata_config = args[:workload_metadata_config] if args.key?(:workload_metadata_config)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # UpgradeAvailableEvent is a notification sent to customers when a new available
      # version is released.
      class UpgradeAvailableEvent
        include Google::Apis::Core::Hashable
      
        # ReleaseChannel indicates which release channel a cluster is subscribed to.
        # Release channels are arranged in order of risk. When a cluster is subscribed
        # to a release channel, Google maintains both the master version and the node
        # version. Node auto-upgrade defaults to true and cannot be disabled.
        # Corresponds to the JSON property `releaseChannel`
        # @return [Google::Apis::ContainerV1beta1::ReleaseChannel]
        attr_accessor :release_channel
      
        # Optional relative path to the resource. For example, the relative path of the
        # node pool.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The resource type of the release version.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # The release version available for upgrade.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        # Windows server versions.
        # Corresponds to the JSON property `windowsVersions`
        # @return [Google::Apis::ContainerV1beta1::WindowsVersions]
        attr_accessor :windows_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @release_channel = args[:release_channel] if args.key?(:release_channel)
          @resource = args[:resource] if args.key?(:resource)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @version = args[:version] if args.key?(:version)
          @windows_versions = args[:windows_versions] if args.key?(:windows_versions)
        end
      end
      
      # UpgradeEvent is a notification sent to customers by the cluster server when a
      # resource is upgrading.
      class UpgradeEvent
        include Google::Apis::Core::Hashable
      
        # The current version before the upgrade.
        # Corresponds to the JSON property `currentVersion`
        # @return [String]
        attr_accessor :current_version
      
        # The operation associated with this upgrade.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # The time when the operation was started.
        # Corresponds to the JSON property `operationStartTime`
        # @return [String]
        attr_accessor :operation_start_time
      
        # Optional relative path to the resource. For example in node pool upgrades, the
        # relative path of the node pool.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The resource type that is upgrading.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # The target version for the upgrade.
        # Corresponds to the JSON property `targetVersion`
        # @return [String]
        attr_accessor :target_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_version = args[:current_version] if args.key?(:current_version)
          @operation = args[:operation] if args.key?(:operation)
          @operation_start_time = args[:operation_start_time] if args.key?(:operation_start_time)
          @resource = args[:resource] if args.key?(:resource)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @target_version = args[:target_version] if args.key?(:target_version)
        end
      end
      
      # These upgrade settings configure the upgrade strategy for the node pool. Use
      # strategy to switch between the strategies applied to the node pool. If the
      # strategy is SURGE, use max_surge and max_unavailable to control the level of
      # parallelism and the level of disruption caused by upgrade. 1. maxSurge
      # controls the number of additional nodes that can be added to the node pool
      # temporarily for the time of the upgrade to increase the number of available
      # nodes. 2. maxUnavailable controls the number of nodes that can be
      # simultaneously unavailable. 3. (maxUnavailable + maxSurge) determines the
      # level of parallelism (how many nodes are being upgraded at the same time). If
      # the strategy is BLUE_GREEN, use blue_green_settings to configure the blue-
      # green upgrade related settings. 1. standard_rollout_policy is the default
      # policy. The policy is used to control the way blue pool gets drained. The
      # draining is executed in the batch mode. The batch size could be specified as
      # either percentage of the node pool size or the number of nodes.
      # batch_soak_duration is the soak time after each batch gets drained. 2.
      # node_pool_soak_duration is the soak time after all blue nodes are drained.
      # After this period, the blue pool nodes will be deleted.
      class UpgradeSettings
        include Google::Apis::Core::Hashable
      
        # Settings for blue-green upgrade.
        # Corresponds to the JSON property `blueGreenSettings`
        # @return [Google::Apis::ContainerV1beta1::BlueGreenSettings]
        attr_accessor :blue_green_settings
      
        # The maximum number of nodes that can be created beyond the current size of the
        # node pool during the upgrade process.
        # Corresponds to the JSON property `maxSurge`
        # @return [Fixnum]
        attr_accessor :max_surge
      
        # The maximum number of nodes that can be simultaneously unavailable during the
        # upgrade process. A node is considered available if its status is Ready.
        # Corresponds to the JSON property `maxUnavailable`
        # @return [Fixnum]
        attr_accessor :max_unavailable
      
        # Update strategy of the node pool.
        # Corresponds to the JSON property `strategy`
        # @return [String]
        attr_accessor :strategy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blue_green_settings = args[:blue_green_settings] if args.key?(:blue_green_settings)
          @max_surge = args[:max_surge] if args.key?(:max_surge)
          @max_unavailable = args[:max_unavailable] if args.key?(:max_unavailable)
          @strategy = args[:strategy] if args.key?(:strategy)
        end
      end
      
      # UsableSubnetwork resource returns the subnetwork name, its associated network
      # and the primary CIDR range.
      class UsableSubnetwork
        include Google::Apis::Core::Hashable
      
        # The range of internal addresses that are owned by this subnetwork.
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        # Network Name. Example: projects/my-project/global/networks/my-network
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Secondary IP ranges.
        # Corresponds to the JSON property `secondaryIpRanges`
        # @return [Array<Google::Apis::ContainerV1beta1::UsableSubnetworkSecondaryRange>]
        attr_accessor :secondary_ip_ranges
      
        # A human readable status message representing the reasons for cases where the
        # caller cannot use the secondary ranges under the subnet. For example if the
        # secondary_ip_ranges is empty due to a permission issue, an insufficient
        # permission message will be given by status_message.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Subnetwork Name. Example: projects/my-project/regions/us-central1/subnetworks/
        # my-subnet
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
          @network = args[:network] if args.key?(:network)
          @secondary_ip_ranges = args[:secondary_ip_ranges] if args.key?(:secondary_ip_ranges)
          @status_message = args[:status_message] if args.key?(:status_message)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # Secondary IP range of a usable subnetwork.
      class UsableSubnetworkSecondaryRange
        include Google::Apis::Core::Hashable
      
        # The range of IP addresses belonging to this subnetwork secondary range.
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        # The name associated with this subnetwork secondary range, used when adding an
        # alias IP range to a VM instance.
        # Corresponds to the JSON property `rangeName`
        # @return [String]
        attr_accessor :range_name
      
        # This field is to determine the status of the secondary range programmably.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
          @range_name = args[:range_name] if args.key?(:range_name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # VerticalPodAutoscaling contains global, per-cluster information required by
      # Vertical Pod Autoscaler to automatically adjust the resources of pods
      # controlled by it.
      class VerticalPodAutoscaling
        include Google::Apis::Core::Hashable
      
        # Enables vertical pod autoscaling.
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
      
      # Configuration of gVNIC feature.
      class VirtualNic
        include Google::Apis::Core::Hashable
      
        # Whether gVNIC features are enabled in the node pool.
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
      
      # Parameters that can be configured on Windows nodes. Windows Node Config that
      # define the parameters that will be used to configure the Windows node pool
      # settings
      class WindowsNodeConfig
        include Google::Apis::Core::Hashable
      
        # OSVersion specifies the Windows node config to be used on the node
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @os_version = args[:os_version] if args.key?(:os_version)
        end
      end
      
      # Windows server version.
      class WindowsVersion
        include Google::Apis::Core::Hashable
      
        # Windows server image type
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # Windows server build number
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `supportEndDate`
        # @return [Google::Apis::ContainerV1beta1::Date]
        attr_accessor :support_end_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_type = args[:image_type] if args.key?(:image_type)
          @os_version = args[:os_version] if args.key?(:os_version)
          @support_end_date = args[:support_end_date] if args.key?(:support_end_date)
        end
      end
      
      # Windows server versions.
      class WindowsVersions
        include Google::Apis::Core::Hashable
      
        # List of Windows server versions.
        # Corresponds to the JSON property `windowsVersions`
        # @return [Array<Google::Apis::ContainerV1beta1::WindowsVersion>]
        attr_accessor :windows_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @windows_versions = args[:windows_versions] if args.key?(:windows_versions)
        end
      end
      
      # Configuration for direct-path (via ALTS) with workload identity.
      class WorkloadAltsConfig
        include Google::Apis::Core::Hashable
      
        # enable_alts controls whether the alts handshaker should be enabled or not for
        # direct-path. Requires Workload Identity (workload_pool must be non-empty).
        # Corresponds to the JSON property `enableAlts`
        # @return [Boolean]
        attr_accessor :enable_alts
        alias_method :enable_alts?, :enable_alts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_alts = args[:enable_alts] if args.key?(:enable_alts)
        end
      end
      
      # Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
      class WorkloadCertificates
        include Google::Apis::Core::Hashable
      
        # enable_certificates controls issuance of workload mTLS certificates. If set,
        # the GKE Workload Identity Certificates controller and node agent will be
        # deployed in the cluster, which can then be configured by creating a
        # WorkloadCertificateConfig Custom Resource. Requires Workload Identity (
        # workload_pool must be non-empty).
        # Corresponds to the JSON property `enableCertificates`
        # @return [Boolean]
        attr_accessor :enable_certificates
        alias_method :enable_certificates?, :enable_certificates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_certificates = args[:enable_certificates] if args.key?(:enable_certificates)
        end
      end
      
      # WorkloadConfig defines the flags to enable or disable the workload
      # configurations for the cluster.
      class WorkloadConfig
        include Google::Apis::Core::Hashable
      
        # Sets which mode of auditing should be used for the cluster's workloads.
        # Corresponds to the JSON property `auditMode`
        # @return [String]
        attr_accessor :audit_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_mode = args[:audit_mode] if args.key?(:audit_mode)
        end
      end
      
      # Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
      class WorkloadIdentityConfig
        include Google::Apis::Core::Hashable
      
        # IAM Identity Namespace to attach all Kubernetes Service Accounts to.
        # Corresponds to the JSON property `identityNamespace`
        # @return [String]
        attr_accessor :identity_namespace
      
        # identity provider is the third party identity provider.
        # Corresponds to the JSON property `identityProvider`
        # @return [String]
        attr_accessor :identity_provider
      
        # The workload pool to attach all Kubernetes service accounts to.
        # Corresponds to the JSON property `workloadPool`
        # @return [String]
        attr_accessor :workload_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identity_namespace = args[:identity_namespace] if args.key?(:identity_namespace)
          @identity_provider = args[:identity_provider] if args.key?(:identity_provider)
          @workload_pool = args[:workload_pool] if args.key?(:workload_pool)
        end
      end
      
      # WorkloadMetadataConfig defines the metadata configuration to expose to
      # workloads on the node pool.
      class WorkloadMetadataConfig
        include Google::Apis::Core::Hashable
      
        # Mode is the configuration for how to expose metadata to workloads running on
        # the node pool.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # NodeMetadata is the configuration for how to expose metadata to the workloads
        # running on the node.
        # Corresponds to the JSON property `nodeMetadata`
        # @return [String]
        attr_accessor :node_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
          @node_metadata = args[:node_metadata] if args.key?(:node_metadata)
        end
      end
    end
  end
end
