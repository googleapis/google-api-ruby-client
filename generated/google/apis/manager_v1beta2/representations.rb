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
      
      class AccessConfigRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AllowedRuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AutoscalingModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AutoscalingModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DeployStateRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DeploymentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DeploymentsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DiskAttachmentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EnvVariableRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ExistingDiskRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FirewallModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FirewallModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class HealthCheckModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class HealthCheckModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LbModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LbModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MetadataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MetadataItemRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NetworkInterfaceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NetworkModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NetworkModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NewDiskRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class NewDiskInitializeParamsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ParamOverrideRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReplicaPoolModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReplicaPoolModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReplicaPoolParamsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ReplicaPoolParamsV1Beta1Representation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ServiceAccountRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TagRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TemplateRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TemplatesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AccessConfigRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :name, as: 'name'
        property :nat_ip, as: 'natIp'
        property :type, as: 'type'
      end

      # @private
      class ActionRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :commands, as: 'commands'
        
        property :timeout_ms, as: 'timeoutMs'
      end

      # @private
      class AllowedRuleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :ip_protocol, as: 'IPProtocol'
        collection :ports, as: 'ports'
      end

      # @private
      class AutoscalingModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :cool_down_period_sec, as: 'coolDownPeriodSec'
        property :description, as: 'description'
        property :max_num_replicas, as: 'maxNumReplicas'
        property :min_num_replicas, as: 'minNumReplicas'
        property :signal_type, as: 'signalType'
        property :target_module, as: 'targetModule'
        property :target_utilization, as: 'targetUtilization'
      end

      # @private
      class AutoscalingModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :autoscaling_config_url, as: 'autoscalingConfigUrl'
      end

      # @private
      class DeployStateRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :details, as: 'details'
        property :status, as: 'status'
      end

      # @private
      class DeploymentRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :creation_date, as: 'creationDate'
        property :description, as: 'description'
        hash :modules, as: 'modules', class: Google::Apis::ManagerV1beta2::ModuleStatus, decorator: Google::Apis::ManagerV1beta2::ModuleStatusRepresentation
        
        
        property :name, as: 'name'
        collection :overrides, as: 'overrides', class: Google::Apis::ManagerV1beta2::ParamOverride, decorator: Google::Apis::ManagerV1beta2::ParamOverrideRepresentation
        
        
        property :state, as: 'state', class: Google::Apis::ManagerV1beta2::DeployState, decorator: Google::Apis::ManagerV1beta2::DeployStateRepresentation
        
        property :template_name, as: 'templateName'
      end

      # @private
      class DeploymentsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :next_page_token, as: 'nextPageToken'
        collection :resources, as: 'resources', class: Google::Apis::ManagerV1beta2::Deployment, decorator: Google::Apis::ManagerV1beta2::DeploymentRepresentation
      end

      # @private
      class DiskAttachmentRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :device_name, as: 'deviceName'
        property :index, as: 'index'
      end

      # @private
      class EnvVariableRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :hidden, as: 'hidden'
        property :value, as: 'value'
      end

      # @private
      class ExistingDiskRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :attachment, as: 'attachment', class: Google::Apis::ManagerV1beta2::DiskAttachment, decorator: Google::Apis::ManagerV1beta2::DiskAttachmentRepresentation
        
        property :source, as: 'source'
      end

      # @private
      class FirewallModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :allowed, as: 'allowed', class: Google::Apis::ManagerV1beta2::AllowedRule, decorator: Google::Apis::ManagerV1beta2::AllowedRuleRepresentation
        
        
        property :description, as: 'description'
        property :network, as: 'network'
        collection :source_ranges, as: 'sourceRanges'
        
        collection :source_tags, as: 'sourceTags'
        
        collection :target_tags, as: 'targetTags'
      end

      # @private
      class FirewallModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :firewall_url, as: 'firewallUrl'
      end

      # @private
      class HealthCheckModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :check_interval_sec, as: 'checkIntervalSec'
        property :description, as: 'description'
        property :healthy_threshold, as: 'healthyThreshold'
        property :host, as: 'host'
        property :path, as: 'path'
        property :port, as: 'port'
        property :timeout_sec, as: 'timeoutSec'
        property :unhealthy_threshold, as: 'unhealthyThreshold'
      end

      # @private
      class HealthCheckModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :health_check_url, as: 'healthCheckUrl'
      end

      # @private
      class LbModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :description, as: 'description'
        collection :health_checks, as: 'healthChecks'
        
        property :ip_address, as: 'ipAddress'
        property :ip_protocol, as: 'ipProtocol'
        property :port_range, as: 'portRange'
        property :session_affinity, as: 'sessionAffinity'
        collection :target_modules, as: 'targetModules'
      end

      # @private
      class LbModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :forwarding_rule_url, as: 'forwardingRuleUrl'
        property :target_pool_url, as: 'targetPoolUrl'
      end

      # @private
      class MetadataRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :finger_print, as: 'fingerPrint'
        collection :items, as: 'items', class: Google::Apis::ManagerV1beta2::MetadataItem, decorator: Google::Apis::ManagerV1beta2::MetadataItemRepresentation
      end

      # @private
      class MetadataItemRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :key, as: 'key'
        property :value, as: 'value'
      end

      # @private
      class ModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :autoscaling_module, as: 'autoscalingModule', class: Google::Apis::ManagerV1beta2::AutoscalingModule, decorator: Google::Apis::ManagerV1beta2::AutoscalingModuleRepresentation
        
        property :firewall_module, as: 'firewallModule', class: Google::Apis::ManagerV1beta2::FirewallModule, decorator: Google::Apis::ManagerV1beta2::FirewallModuleRepresentation
        
        property :health_check_module, as: 'healthCheckModule', class: Google::Apis::ManagerV1beta2::HealthCheckModule, decorator: Google::Apis::ManagerV1beta2::HealthCheckModuleRepresentation
        
        property :lb_module, as: 'lbModule', class: Google::Apis::ManagerV1beta2::LbModule, decorator: Google::Apis::ManagerV1beta2::LbModuleRepresentation
        
        property :network_module, as: 'networkModule', class: Google::Apis::ManagerV1beta2::NetworkModule, decorator: Google::Apis::ManagerV1beta2::NetworkModuleRepresentation
        
        property :replica_pool_module, as: 'replicaPoolModule', class: Google::Apis::ManagerV1beta2::ReplicaPoolModule, decorator: Google::Apis::ManagerV1beta2::ReplicaPoolModuleRepresentation
        
        property :type, as: 'type'
      end

      # @private
      class ModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :autoscaling_module_status, as: 'autoscalingModuleStatus', class: Google::Apis::ManagerV1beta2::AutoscalingModuleStatus, decorator: Google::Apis::ManagerV1beta2::AutoscalingModuleStatusRepresentation
        
        property :firewall_module_status, as: 'firewallModuleStatus', class: Google::Apis::ManagerV1beta2::FirewallModuleStatus, decorator: Google::Apis::ManagerV1beta2::FirewallModuleStatusRepresentation
        
        property :health_check_module_status, as: 'healthCheckModuleStatus', class: Google::Apis::ManagerV1beta2::HealthCheckModuleStatus, decorator: Google::Apis::ManagerV1beta2::HealthCheckModuleStatusRepresentation
        
        property :lb_module_status, as: 'lbModuleStatus', class: Google::Apis::ManagerV1beta2::LbModuleStatus, decorator: Google::Apis::ManagerV1beta2::LbModuleStatusRepresentation
        
        property :network_module_status, as: 'networkModuleStatus', class: Google::Apis::ManagerV1beta2::NetworkModuleStatus, decorator: Google::Apis::ManagerV1beta2::NetworkModuleStatusRepresentation
        
        property :replica_pool_module_status, as: 'replicaPoolModuleStatus', class: Google::Apis::ManagerV1beta2::ReplicaPoolModuleStatus, decorator: Google::Apis::ManagerV1beta2::ReplicaPoolModuleStatusRepresentation
        
        property :state, as: 'state', class: Google::Apis::ManagerV1beta2::DeployState, decorator: Google::Apis::ManagerV1beta2::DeployStateRepresentation
        
        property :type, as: 'type'
      end

      # @private
      class NetworkInterfaceRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :access_configs, as: 'accessConfigs', class: Google::Apis::ManagerV1beta2::AccessConfig, decorator: Google::Apis::ManagerV1beta2::AccessConfigRepresentation
        
        
        property :name, as: 'name'
        property :network, as: 'network'
        property :network_ip, as: 'networkIp'
      end

      # @private
      class NetworkModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :i_pv4_range, as: 'IPv4Range'
        property :description, as: 'description'
        property :gateway_i_pv4, as: 'gatewayIPv4'
      end

      # @private
      class NetworkModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :network_url, as: 'networkUrl'
      end

      # @private
      class NewDiskRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :attachment, as: 'attachment', class: Google::Apis::ManagerV1beta2::DiskAttachment, decorator: Google::Apis::ManagerV1beta2::DiskAttachmentRepresentation
        
        property :auto_delete, as: 'autoDelete'
        property :boot, as: 'boot'
        property :initialize_params, as: 'initializeParams', class: Google::Apis::ManagerV1beta2::NewDiskInitializeParams, decorator: Google::Apis::ManagerV1beta2::NewDiskInitializeParamsRepresentation
      end

      # @private
      class NewDiskInitializeParamsRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :disk_size_gb, as: 'diskSizeGb'
        property :disk_type, as: 'diskType'
        property :source_image, as: 'sourceImage'
      end

      # @private
      class ParamOverrideRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :path, as: 'path'
        property :value, as: 'value'
      end

      # @private
      class ReplicaPoolModuleRepresentation < Google::Apis::Core::JsonRepresentation
        
        hash :env_variables, as: 'envVariables', class: Google::Apis::ManagerV1beta2::EnvVariable, decorator: Google::Apis::ManagerV1beta2::EnvVariableRepresentation
        
        
        collection :health_checks, as: 'healthChecks'
        
        property :num_replicas, as: 'numReplicas'
        property :replica_pool_params, as: 'replicaPoolParams', class: Google::Apis::ManagerV1beta2::ReplicaPoolParams, decorator: Google::Apis::ManagerV1beta2::ReplicaPoolParamsRepresentation
        
        property :resource_view, as: 'resourceView'
      end

      # @private
      class ReplicaPoolModuleStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :replica_pool_url, as: 'replicaPoolUrl'
        property :resource_view_url, as: 'resourceViewUrl'
      end

      # @private
      class ReplicaPoolParamsRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :v1beta1, as: 'v1beta1', class: Google::Apis::ManagerV1beta2::ReplicaPoolParamsV1Beta1, decorator: Google::Apis::ManagerV1beta2::ReplicaPoolParamsV1Beta1Representation
      end

      # @private
      class ReplicaPoolParamsV1Beta1Representation < Google::Apis::Core::JsonRepresentation
        
        property :auto_restart, as: 'autoRestart'
        property :base_instance_name, as: 'baseInstanceName'
        property :can_ip_forward, as: 'canIpForward'
        property :description, as: 'description'
        collection :disks_to_attach, as: 'disksToAttach', class: Google::Apis::ManagerV1beta2::ExistingDisk, decorator: Google::Apis::ManagerV1beta2::ExistingDiskRepresentation
        
        
        collection :disks_to_create, as: 'disksToCreate', class: Google::Apis::ManagerV1beta2::NewDisk, decorator: Google::Apis::ManagerV1beta2::NewDiskRepresentation
        
        
        property :init_action, as: 'initAction'
        property :machine_type, as: 'machineType'
        property :metadata, as: 'metadata', class: Google::Apis::ManagerV1beta2::Metadata, decorator: Google::Apis::ManagerV1beta2::MetadataRepresentation
        
        collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::ManagerV1beta2::NetworkInterface, decorator: Google::Apis::ManagerV1beta2::NetworkInterfaceRepresentation
        
        
        property :on_host_maintenance, as: 'onHostMaintenance'
        collection :service_accounts, as: 'serviceAccounts', class: Google::Apis::ManagerV1beta2::ServiceAccount, decorator: Google::Apis::ManagerV1beta2::ServiceAccountRepresentation
        
        
        property :tags, as: 'tags', class: Google::Apis::ManagerV1beta2::Tag, decorator: Google::Apis::ManagerV1beta2::TagRepresentation
        
        property :zone, as: 'zone'
      end

      # @private
      class ServiceAccountRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :email, as: 'email'
        collection :scopes, as: 'scopes'
      end

      # @private
      class TagRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :finger_print, as: 'fingerPrint'
        collection :items, as: 'items'
      end

      # @private
      class TemplateRepresentation < Google::Apis::Core::JsonRepresentation
        
        hash :actions, as: 'actions', class: Google::Apis::ManagerV1beta2::Action, decorator: Google::Apis::ManagerV1beta2::ActionRepresentation
        
        
        property :description, as: 'description'
        hash :modules, as: 'modules', class: Google::Apis::ManagerV1beta2::Module, decorator: Google::Apis::ManagerV1beta2::ModuleRepresentation
        
        
        property :name, as: 'name'
      end

      # @private
      class TemplatesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :next_page_token, as: 'nextPageToken'
        collection :resources, as: 'resources', class: Google::Apis::ManagerV1beta2::Template, decorator: Google::Apis::ManagerV1beta2::TemplateRepresentation
      end
    end
  end
end
