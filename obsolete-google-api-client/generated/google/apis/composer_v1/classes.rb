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
    module ComposerV1
      
      # Allowed IP range with user-provided description.
      class AllowedIpRange
        include Google::Apis::Core::Hashable
      
        # Optional. User-provided description. It must contain at most 300 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # IP address or range, defined using CIDR notation, of requests that this rule
        # applies to. Examples: `192.168.1.1` or `192.168.0.0/16` or `2001:db8::/32` or `
        # 2001:0db8:0000:0042:0000:8a2e:0370:7334`. IP range prefixes should be properly
        # truncated. For example, `1.2.3.4/24` should be truncated to `1.2.3.0/24`.
        # Similarly, for IPv6, `2001:db8::1/32` should be truncated to `2001:db8::/32`.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values * A month
      # and day value, with a zero year, such as an anniversary * A year on its own,
      # with zero month and day values * A year and month value, with a zero day, such
      # as a credit card expiration date Related types are google.type.TimeOfDay and `
      # google.protobuf.Timestamp`.
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An environment for running orchestration tasks.
      class Environment
        include Google::Apis::Core::Hashable
      
        # Configuration information for an environment.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::ComposerV1::EnvironmentConfig]
        attr_accessor :config
      
        # Output only. The time at which this environment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-defined labels for this environment. The labels map can contain
        # no more than 64 entries. Entries of the labels map are UTF8 strings that
        # comply with the following restrictions: * Keys must conform to regexp: \p`Ll`\
        # p`Lo``0,62` * Values must conform to regexp: [\p`Ll`\p`Lo`\p`N`_-]`0,63` *
        # Both keys and values are additionally constrained to be <= 128 bytes in size.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource name of the environment, in the form: "projects/`projectId`/
        # locations/`locationId`/environments/`environmentId`" EnvironmentId must start
        # with a lowercase letter followed by up to 63 lowercase letters, numbers, or
        # hyphens, and cannot end with a hyphen.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The current state of the environment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time at which this environment was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The UUID (Universally Unique IDentifier) associated with this
        # environment. This value is generated when the environment is created.
        # Corresponds to the JSON property `uuid`
        # @return [String]
        attr_accessor :uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uuid = args[:uuid] if args.key?(:uuid)
        end
      end
      
      # Configuration information for an environment.
      class EnvironmentConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The URI of the Apache Airflow Web UI hosted within this
        # environment (see [Airflow web interface](/composer/docs/how-to/accessing/
        # airflow-web-interface)).
        # Corresponds to the JSON property `airflowUri`
        # @return [String]
        attr_accessor :airflow_uri
      
        # Output only. The Cloud Storage prefix of the DAGs for this environment.
        # Although Cloud Storage objects reside in a flat namespace, a hierarchical file
        # tree can be simulated using "/"-delimited object name prefixes. DAG objects
        # for this environment reside in a simulated directory with the given prefix.
        # Corresponds to the JSON property `dagGcsPrefix`
        # @return [String]
        attr_accessor :dag_gcs_prefix
      
        # Output only. The Kubernetes Engine cluster used to run this environment.
        # Corresponds to the JSON property `gkeCluster`
        # @return [String]
        attr_accessor :gke_cluster
      
        # The configuration information for the Kubernetes Engine nodes running the
        # Apache Airflow software.
        # Corresponds to the JSON property `nodeConfig`
        # @return [Google::Apis::ComposerV1::NodeConfig]
        attr_accessor :node_config
      
        # The number of nodes in the Kubernetes Engine cluster that will be used to run
        # this environment.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        # The configuration information for configuring a Private IP Cloud Composer
        # environment.
        # Corresponds to the JSON property `privateEnvironmentConfig`
        # @return [Google::Apis::ComposerV1::PrivateEnvironmentConfig]
        attr_accessor :private_environment_config
      
        # Specifies the selection and configuration of software inside the environment.
        # Corresponds to the JSON property `softwareConfig`
        # @return [Google::Apis::ComposerV1::SoftwareConfig]
        attr_accessor :software_config
      
        # Network-level access control policy for the Airflow web server.
        # Corresponds to the JSON property `webServerNetworkAccessControl`
        # @return [Google::Apis::ComposerV1::WebServerNetworkAccessControl]
        attr_accessor :web_server_network_access_control
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @airflow_uri = args[:airflow_uri] if args.key?(:airflow_uri)
          @dag_gcs_prefix = args[:dag_gcs_prefix] if args.key?(:dag_gcs_prefix)
          @gke_cluster = args[:gke_cluster] if args.key?(:gke_cluster)
          @node_config = args[:node_config] if args.key?(:node_config)
          @node_count = args[:node_count] if args.key?(:node_count)
          @private_environment_config = args[:private_environment_config] if args.key?(:private_environment_config)
          @software_config = args[:software_config] if args.key?(:software_config)
          @web_server_network_access_control = args[:web_server_network_access_control] if args.key?(:web_server_network_access_control)
        end
      end
      
      # Configuration for controlling how IPs are allocated in the GKE cluster running
      # the Apache Airflow software.
      class IpAllocationPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The IP address range used to allocate IP addresses to pods in the
        # GKE cluster. This field is applicable only when `use_ip_aliases` is true. Set
        # to blank to have GKE choose a range with the default size. Set to /netmask (e.
        # g. `/14`) to have GKE choose a range with a specific netmask. Set to a [CIDR](
        # http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `
        # 10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.
        # 0.0/12`, `192.168.0.0/16`) to pick a specific range to use.
        # Corresponds to the JSON property `clusterIpv4CidrBlock`
        # @return [String]
        attr_accessor :cluster_ipv4_cidr_block
      
        # Optional. The name of the GKE cluster's secondary range used to allocate IP
        # addresses to pods. This field is applicable only when `use_ip_aliases` is true.
        # Corresponds to the JSON property `clusterSecondaryRangeName`
        # @return [String]
        attr_accessor :cluster_secondary_range_name
      
        # Optional. The IP address range of the services IP addresses in this GKE
        # cluster. This field is applicable only when `use_ip_aliases` is true. Set to
        # blank to have GKE choose a range with the default size. Set to /netmask (e.g. `
        # /14`) to have GKE choose a range with a specific netmask. Set to a [CIDR](http:
        # //en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.
        # 0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`
        # , `192.168.0.0/16`) to pick a specific range to use.
        # Corresponds to the JSON property `servicesIpv4CidrBlock`
        # @return [String]
        attr_accessor :services_ipv4_cidr_block
      
        # Optional. The name of the services' secondary range used to allocate IP
        # addresses to the GKE cluster. This field is applicable only when `
        # use_ip_aliases` is true.
        # Corresponds to the JSON property `servicesSecondaryRangeName`
        # @return [String]
        attr_accessor :services_secondary_range_name
      
        # Optional. Whether or not to enable Alias IPs in the GKE cluster. If `true`, a
        # VPC-native cluster is created.
        # Corresponds to the JSON property `useIpAliases`
        # @return [Boolean]
        attr_accessor :use_ip_aliases
        alias_method :use_ip_aliases?, :use_ip_aliases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_ipv4_cidr_block = args[:cluster_ipv4_cidr_block] if args.key?(:cluster_ipv4_cidr_block)
          @cluster_secondary_range_name = args[:cluster_secondary_range_name] if args.key?(:cluster_secondary_range_name)
          @services_ipv4_cidr_block = args[:services_ipv4_cidr_block] if args.key?(:services_ipv4_cidr_block)
          @services_secondary_range_name = args[:services_secondary_range_name] if args.key?(:services_secondary_range_name)
          @use_ip_aliases = args[:use_ip_aliases] if args.key?(:use_ip_aliases)
        end
      end
      
      # ImageVersion information
      class ImageVersion
        include Google::Apis::Core::Hashable
      
        # Whether it is impossible to create an environment with the image version.
        # Corresponds to the JSON property `creationDisabled`
        # @return [Boolean]
        attr_accessor :creation_disabled
        alias_method :creation_disabled?, :creation_disabled
      
        # The string identifier of the ImageVersion, in the form: "composer-x.y.z-
        # airflow-a.b(.c)"
        # Corresponds to the JSON property `imageVersionId`
        # @return [String]
        attr_accessor :image_version_id
      
        # Whether this is the default ImageVersion used by Composer during environment
        # creation if no input ImageVersion is specified.
        # Corresponds to the JSON property `isDefault`
        # @return [Boolean]
        attr_accessor :is_default
        alias_method :is_default?, :is_default
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `releaseDate`
        # @return [Google::Apis::ComposerV1::Date]
        attr_accessor :release_date
      
        # supported python versions
        # Corresponds to the JSON property `supportedPythonVersions`
        # @return [Array<String>]
        attr_accessor :supported_python_versions
      
        # Whether it is impossible to upgrade an environment running with the image
        # version.
        # Corresponds to the JSON property `upgradeDisabled`
        # @return [Boolean]
        attr_accessor :upgrade_disabled
        alias_method :upgrade_disabled?, :upgrade_disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_disabled = args[:creation_disabled] if args.key?(:creation_disabled)
          @image_version_id = args[:image_version_id] if args.key?(:image_version_id)
          @is_default = args[:is_default] if args.key?(:is_default)
          @release_date = args[:release_date] if args.key?(:release_date)
          @supported_python_versions = args[:supported_python_versions] if args.key?(:supported_python_versions)
          @upgrade_disabled = args[:upgrade_disabled] if args.key?(:upgrade_disabled)
        end
      end
      
      # The environments in a project and location.
      class ListEnvironmentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of environments returned by a ListEnvironmentsRequest.
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::ComposerV1::Environment>]
        attr_accessor :environments
      
        # The page token used to query for the next page if one exists.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environments = args[:environments] if args.key?(:environments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ImageVersions in a project and location.
      class ListImageVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of supported ImageVersions in a location.
        # Corresponds to the JSON property `imageVersions`
        # @return [Array<Google::Apis::ComposerV1::ImageVersion>]
        attr_accessor :image_versions
      
        # The page token used to query for the next page if one exists.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_versions = args[:image_versions] if args.key?(:image_versions)
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
        # @return [Array<Google::Apis::ComposerV1::Operation>]
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
      
      # The configuration information for the Kubernetes Engine nodes running the
      # Apache Airflow software.
      class NodeConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The disk size in GB used for node VMs. Minimum size is 20GB. If
        # unspecified, defaults to 100GB. Cannot be updated.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Configuration for controlling how IPs are allocated in the GKE cluster running
        # the Apache Airflow software.
        # Corresponds to the JSON property `ipAllocationPolicy`
        # @return [Google::Apis::ComposerV1::IpAllocationPolicy]
        attr_accessor :ip_allocation_policy
      
        # Optional. The Compute Engine [zone](/compute/docs/regions-zones) in which to
        # deploy the VMs used to run the Apache Airflow software, specified as a [
        # relative resource name](/apis/design/resource_names#relative_resource_name).
        # For example: "projects/`projectId`/zones/`zoneId`". This `location` must
        # belong to the enclosing environment's project and location. If both this field
        # and `nodeConfig.machineType` are specified, `nodeConfig.machineType` must
        # belong to this `location`; if both are unspecified, the service will pick a
        # zone in the Compute Engine region corresponding to the Cloud Composer location,
        # and propagate that choice to both fields. If only one field (`location` or `
        # nodeConfig.machineType`) is specified, the location information from the
        # specified field will be propagated to the unspecified field.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. The Compute Engine [machine type](/compute/docs/machine-types) used
        # for cluster instances, specified as a [relative resource name](/apis/design/
        # resource_names#relative_resource_name). For example: "projects/`projectId`/
        # zones/`zoneId`/machineTypes/`machineTypeId`". The `machineType` must belong to
        # the enclosing environment's project and location. If both this field and `
        # nodeConfig.location` are specified, this `machineType` must belong to the `
        # nodeConfig.location`; if both are unspecified, the service will pick a zone in
        # the Compute Engine region corresponding to the Cloud Composer location, and
        # propagate that choice to both fields. If exactly one of this field and `
        # nodeConfig.location` is specified, the location information from the specified
        # field will be propagated to the unspecified field. The `machineTypeId` must
        # not be a [shared-core machine type](/compute/docs/machine-types#sharedcore).
        # If this field is unspecified, the `machineTypeId` defaults to "n1-standard-1".
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Optional. The Compute Engine network to be used for machine communications,
        # specified as a [relative resource name](/apis/design/resource_names#
        # relative_resource_name). For example: "projects/`projectId`/global/networks/`
        # networkId`". [Shared VPC](/vpc/docs/shared-vpc) is not currently supported.
        # The network must belong to the environment's project. If unspecified, the "
        # default" network ID in the environment's project is used. If a [Custom Subnet
        # Network](/vpc/docs/vpc#vpc_networks_and_subnets) is provided, `nodeConfig.
        # subnetwork` must also be provided.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. The set of Google API scopes to be made available on all node VMs.
        # If `oauth_scopes` is empty, defaults to ["https://www.googleapis.com/auth/
        # cloud-platform"]. Cannot be updated.
        # Corresponds to the JSON property `oauthScopes`
        # @return [Array<String>]
        attr_accessor :oauth_scopes
      
        # Optional. The Google Cloud Platform Service Account to be used by the node VMs.
        # If a service account is not specified, the "default" Compute Engine service
        # account is used. Cannot be updated.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Optional. The Compute Engine subnetwork to be used for machine communications,
        # specified as a [relative resource name](/apis/design/resource_names#
        # relative_resource_name). For example: "projects/`projectId`/regions/`regionId`/
        # subnetworks/`subnetworkId`" If a subnetwork is provided, `nodeConfig.network`
        # must also be provided, and the subnetwork must belong to the enclosing
        # environment's project and location.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # Optional. The list of instance tags applied to all node VMs. Tags are used to
        # identify valid sources or targets for network firewalls. Each tag within the
        # list must comply with [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Cannot
        # be updated.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @ip_allocation_policy = args[:ip_allocation_policy] if args.key?(:ip_allocation_policy)
          @location = args[:location] if args.key?(:location)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @network = args[:network] if args.key?(:network)
          @oauth_scopes = args[:oauth_scopes] if args.key?(:oauth_scopes)
          @service_account = args[:service_account] if args.key?(:service_account)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @tags = args[:tags] if args.key?(:tags)
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
        # @return [Google::Apis::ComposerV1::Status]
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
      
      # Metadata describing an operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was submitted to the server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time when the operation terminated, regardless of its success.
        # This field is unset if the operation is still ongoing.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The type of operation being performed.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # Output only. The resource being operated on, as a [relative resource name]( /
        # apis/design/resource_names#relative_resource_name).
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Output only. The UUID of the resource being operated on.
        # Corresponds to the JSON property `resourceUuid`
        # @return [String]
        attr_accessor :resource_uuid
      
        # Output only. The current operation state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @resource = args[:resource] if args.key?(:resource)
          @resource_uuid = args[:resource_uuid] if args.key?(:resource_uuid)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Configuration options for the private GKE cluster in a Cloud Composer
      # environment.
      class PrivateClusterConfig
        include Google::Apis::Core::Hashable
      
        # Optional. If `true`, access to the public endpoint of the GKE cluster is
        # denied.
        # Corresponds to the JSON property `enablePrivateEndpoint`
        # @return [Boolean]
        attr_accessor :enable_private_endpoint
        alias_method :enable_private_endpoint?, :enable_private_endpoint
      
        # Optional. The CIDR block from which IPv4 range for GKE master will be reserved.
        # If left blank, the default value of '172.16.0.0/23' is used.
        # Corresponds to the JSON property `masterIpv4CidrBlock`
        # @return [String]
        attr_accessor :master_ipv4_cidr_block
      
        # Output only. The IP range in CIDR notation to use for the hosted master
        # network. This range is used for assigning internal IP addresses to the GKE
        # cluster master or set of masters and to the internal load balancer virtual IP.
        # This range must not overlap with any other ranges in use within the cluster's
        # network.
        # Corresponds to the JSON property `masterIpv4ReservedRange`
        # @return [String]
        attr_accessor :master_ipv4_reserved_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_private_endpoint = args[:enable_private_endpoint] if args.key?(:enable_private_endpoint)
          @master_ipv4_cidr_block = args[:master_ipv4_cidr_block] if args.key?(:master_ipv4_cidr_block)
          @master_ipv4_reserved_range = args[:master_ipv4_reserved_range] if args.key?(:master_ipv4_reserved_range)
        end
      end
      
      # The configuration information for configuring a Private IP Cloud Composer
      # environment.
      class PrivateEnvironmentConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The CIDR block from which IP range in tenant project will be
        # reserved for Cloud SQL. Needs to be disjoint from `web_server_ipv4_cidr_block`.
        # Corresponds to the JSON property `cloudSqlIpv4CidrBlock`
        # @return [String]
        attr_accessor :cloud_sql_ipv4_cidr_block
      
        # Optional. If `true`, a Private IP Cloud Composer environment is created. If
        # this field is set to true, `IPAllocationPolicy.use_ip_aliases` must be set to
        # true.
        # Corresponds to the JSON property `enablePrivateEnvironment`
        # @return [Boolean]
        attr_accessor :enable_private_environment
        alias_method :enable_private_environment?, :enable_private_environment
      
        # Configuration options for the private GKE cluster in a Cloud Composer
        # environment.
        # Corresponds to the JSON property `privateClusterConfig`
        # @return [Google::Apis::ComposerV1::PrivateClusterConfig]
        attr_accessor :private_cluster_config
      
        # Optional. The CIDR block from which IP range for web server will be reserved.
        # Needs to be disjoint from `private_cluster_config.master_ipv4_cidr_block` and `
        # cloud_sql_ipv4_cidr_block`.
        # Corresponds to the JSON property `webServerIpv4CidrBlock`
        # @return [String]
        attr_accessor :web_server_ipv4_cidr_block
      
        # Output only. The IP range reserved for the tenant project's App Engine VMs.
        # Corresponds to the JSON property `webServerIpv4ReservedRange`
        # @return [String]
        attr_accessor :web_server_ipv4_reserved_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_sql_ipv4_cidr_block = args[:cloud_sql_ipv4_cidr_block] if args.key?(:cloud_sql_ipv4_cidr_block)
          @enable_private_environment = args[:enable_private_environment] if args.key?(:enable_private_environment)
          @private_cluster_config = args[:private_cluster_config] if args.key?(:private_cluster_config)
          @web_server_ipv4_cidr_block = args[:web_server_ipv4_cidr_block] if args.key?(:web_server_ipv4_cidr_block)
          @web_server_ipv4_reserved_range = args[:web_server_ipv4_reserved_range] if args.key?(:web_server_ipv4_reserved_range)
        end
      end
      
      # Specifies the selection and configuration of software inside the environment.
      class SoftwareConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Apache Airflow configuration properties to override. Property keys
        # contain the section and property names, separated by a hyphen, for example "
        # core-dags_are_paused_at_creation". Section names must not contain hyphens ("-")
        # , opening square brackets ("["), or closing square brackets ("]"). The
        # property name must not be empty and must not contain an equals sign ("=") or
        # semicolon (";"). Section and property names must not contain a period (".").
        # Apache Airflow configuration property names must be written in [snake_case](
        # https://en.wikipedia.org/wiki/Snake_case). Property values can contain any
        # character, and can be written in any lower/upper case format. Certain Apache
        # Airflow configuration property values are [blocked](/composer/docs/concepts/
        # airflow-configurations), and cannot be overridden.
        # Corresponds to the JSON property `airflowConfigOverrides`
        # @return [Hash<String,String>]
        attr_accessor :airflow_config_overrides
      
        # Optional. Additional environment variables to provide to the Apache Airflow
        # scheduler, worker, and webserver processes. Environment variable names must
        # match the regular expression `a-zA-Z_*`. They cannot specify Apache Airflow
        # software configuration overrides (they cannot match the regular expression `
        # AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+`), and they cannot match any of the following
        # reserved names: * `AIRFLOW_HOME` * `C_FORCE_ROOT` * `CONTAINER_NAME` * `
        # DAGS_FOLDER` * `GCP_PROJECT` * `GCS_BUCKET` * `GKE_CLUSTER_NAME` * `
        # SQL_DATABASE` * `SQL_INSTANCE` * `SQL_PASSWORD` * `SQL_PROJECT` * `SQL_REGION`
        # * `SQL_USER`
        # Corresponds to the JSON property `envVariables`
        # @return [Hash<String,String>]
        attr_accessor :env_variables
      
        # The version of the software running in the environment. This encapsulates both
        # the version of Cloud Composer functionality and the version of Apache Airflow.
        # It must match the regular expression `composer-([0-9]+\.[0-9]+\.[0-9]+|latest)-
        # airflow-[0-9]+\.[0-9]+(\.[0-9]+.*)?`. When used as input, the server also
        # checks if the provided version is supported and denies the request for an
        # unsupported version. The Cloud Composer portion of the version is a [semantic
        # version](https://semver.org) or `latest`. When the patch version is omitted,
        # the current Cloud Composer patch version is selected. When `latest` is
        # provided instead of an explicit version number, the server replaces `latest`
        # with the current Cloud Composer version and stores that version number in the
        # same field. The portion of the image version that follows *airflow-* is an
        # official Apache Airflow repository [release name](https://github.com/apache/
        # incubator-airflow/releases). See also [Version List](/composer/docs/concepts/
        # versioning/composer-versions).
        # Corresponds to the JSON property `imageVersion`
        # @return [String]
        attr_accessor :image_version
      
        # Optional. Custom Python Package Index (PyPI) packages to be installed in the
        # environment. Keys refer to the lowercase package name such as "numpy" and
        # values are the lowercase extras and version specifier such as "==1.12.0", "[
        # devel,gcp_api]", or "[devel]>=1.8.2, <1.9.2". To specify a package without
        # pinning it to a version specifier, use the empty string as the value.
        # Corresponds to the JSON property `pypiPackages`
        # @return [Hash<String,String>]
        attr_accessor :pypi_packages
      
        # Optional. The major version of Python used to run the Apache Airflow scheduler,
        # worker, and webserver processes. Can be set to '2' or '3'. If not specified,
        # the default is '2'. Cannot be updated.
        # Corresponds to the JSON property `pythonVersion`
        # @return [String]
        attr_accessor :python_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @airflow_config_overrides = args[:airflow_config_overrides] if args.key?(:airflow_config_overrides)
          @env_variables = args[:env_variables] if args.key?(:env_variables)
          @image_version = args[:image_version] if args.key?(:image_version)
          @pypi_packages = args[:pypi_packages] if args.key?(:pypi_packages)
          @python_version = args[:python_version] if args.key?(:python_version)
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
      
      # Network-level access control policy for the Airflow web server.
      class WebServerNetworkAccessControl
        include Google::Apis::Core::Hashable
      
        # A collection of allowed IP ranges with descriptions.
        # Corresponds to the JSON property `allowedIpRanges`
        # @return [Array<Google::Apis::ComposerV1::AllowedIpRange>]
        attr_accessor :allowed_ip_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_ip_ranges = args[:allowed_ip_ranges] if args.key?(:allowed_ip_ranges)
        end
      end
    end
  end
end
