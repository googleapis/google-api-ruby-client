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
      
      class AllowedIpRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvironmentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpAllocationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEnvironmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListImageVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateClusterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateEnvironmentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebServerNetworkAccessControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllowedIpRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :value, as: 'value'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::ComposerV1::EnvironmentConfig, decorator: Google::Apis::ComposerV1::EnvironmentConfig::Representation
      
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :uuid, as: 'uuid'
        end
      end
      
      class EnvironmentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :airflow_uri, as: 'airflowUri'
          property :dag_gcs_prefix, as: 'dagGcsPrefix'
          property :gke_cluster, as: 'gkeCluster'
          property :node_config, as: 'nodeConfig', class: Google::Apis::ComposerV1::NodeConfig, decorator: Google::Apis::ComposerV1::NodeConfig::Representation
      
          property :node_count, as: 'nodeCount'
          property :private_environment_config, as: 'privateEnvironmentConfig', class: Google::Apis::ComposerV1::PrivateEnvironmentConfig, decorator: Google::Apis::ComposerV1::PrivateEnvironmentConfig::Representation
      
          property :software_config, as: 'softwareConfig', class: Google::Apis::ComposerV1::SoftwareConfig, decorator: Google::Apis::ComposerV1::SoftwareConfig::Representation
      
          property :web_server_network_access_control, as: 'webServerNetworkAccessControl', class: Google::Apis::ComposerV1::WebServerNetworkAccessControl, decorator: Google::Apis::ComposerV1::WebServerNetworkAccessControl::Representation
      
        end
      end
      
      class IpAllocationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_ipv4_cidr_block, as: 'clusterIpv4CidrBlock'
          property :cluster_secondary_range_name, as: 'clusterSecondaryRangeName'
          property :services_ipv4_cidr_block, as: 'servicesIpv4CidrBlock'
          property :services_secondary_range_name, as: 'servicesSecondaryRangeName'
          property :use_ip_aliases, as: 'useIpAliases'
        end
      end
      
      class ImageVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_disabled, as: 'creationDisabled'
          property :image_version_id, as: 'imageVersionId'
          property :is_default, as: 'isDefault'
          property :release_date, as: 'releaseDate', class: Google::Apis::ComposerV1::Date, decorator: Google::Apis::ComposerV1::Date::Representation
      
          collection :supported_python_versions, as: 'supportedPythonVersions'
          property :upgrade_disabled, as: 'upgradeDisabled'
        end
      end
      
      class ListEnvironmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments', class: Google::Apis::ComposerV1::Environment, decorator: Google::Apis::ComposerV1::Environment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListImageVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :image_versions, as: 'imageVersions', class: Google::Apis::ComposerV1::ImageVersion, decorator: Google::Apis::ComposerV1::ImageVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ComposerV1::Operation, decorator: Google::Apis::ComposerV1::Operation::Representation
      
        end
      end
      
      class NodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_size_gb, as: 'diskSizeGb'
          property :ip_allocation_policy, as: 'ipAllocationPolicy', class: Google::Apis::ComposerV1::IpAllocationPolicy, decorator: Google::Apis::ComposerV1::IpAllocationPolicy::Representation
      
          property :location, as: 'location'
          property :machine_type, as: 'machineType'
          property :network, as: 'network'
          collection :oauth_scopes, as: 'oauthScopes'
          property :service_account, as: 'serviceAccount'
          property :subnetwork, as: 'subnetwork'
          collection :tags, as: 'tags'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ComposerV1::Status, decorator: Google::Apis::ComposerV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :operation_type, as: 'operationType'
          property :resource, as: 'resource'
          property :resource_uuid, as: 'resourceUuid'
          property :state, as: 'state'
        end
      end
      
      class PrivateClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_private_endpoint, as: 'enablePrivateEndpoint'
          property :master_ipv4_cidr_block, as: 'masterIpv4CidrBlock'
          property :master_ipv4_reserved_range, as: 'masterIpv4ReservedRange'
        end
      end
      
      class PrivateEnvironmentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql_ipv4_cidr_block, as: 'cloudSqlIpv4CidrBlock'
          property :enable_private_environment, as: 'enablePrivateEnvironment'
          property :private_cluster_config, as: 'privateClusterConfig', class: Google::Apis::ComposerV1::PrivateClusterConfig, decorator: Google::Apis::ComposerV1::PrivateClusterConfig::Representation
      
          property :web_server_ipv4_cidr_block, as: 'webServerIpv4CidrBlock'
          property :web_server_ipv4_reserved_range, as: 'webServerIpv4ReservedRange'
        end
      end
      
      class SoftwareConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :airflow_config_overrides, as: 'airflowConfigOverrides'
          hash :env_variables, as: 'envVariables'
          property :image_version, as: 'imageVersion'
          hash :pypi_packages, as: 'pypiPackages'
          property :python_version, as: 'pythonVersion'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class WebServerNetworkAccessControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_ip_ranges, as: 'allowedIpRanges', class: Google::Apis::ComposerV1::AllowedIpRange, decorator: Google::Apis::ComposerV1::AllowedIpRange::Representation
      
        end
      end
    end
  end
end
