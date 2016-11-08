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
    module ComputeBeta
      
      class AccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Address
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddressAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddressList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddressesScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttachedDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttachedDiskInitializeParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Autoscaler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalerAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalerList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalerStatusDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalersScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingPolicyCpuUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingPolicyCustomMetricUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingPolicyLoadBalancingUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backend
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendBucketList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceGroupHealth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServicesScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CacheInvalidationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionDraining
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerEncryptionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerEncryptionKeyProtectedDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeprecationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Disk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskMoveRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskTypeAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskTypeList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskTypesScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisksResizeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisksScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Firewall
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Allowed
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardingRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardingRuleAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardingRuleList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardingRulesScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlobalSetLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestOsFeature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Http2HealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpsHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthCheckList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthCheckReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HostRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHealthCheckList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpsHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpsHealthCheckList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class RawDisk
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManager
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerActionsSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerAutoHealingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersAbandonInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersDeleteInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersListManagedInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersRecreateInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersResizeAdvancedRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersSetAutoHealingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersSetInstanceTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersSetTargetPoolsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupsAddInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupsListInstances
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupsListInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupsRemoveInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupsScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupsSetNamedPortsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceTemplateList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceWithNamedPorts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesSetLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesSetMachineTypeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesStartWithEncryptionKeyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class License
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogConfigCounterOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineTypeAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineTypeList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineTypesScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedInstanceLastAttempt
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Errors
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Error
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Item
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NamedPort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Network
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Error
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Error
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationsScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PathMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PathRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Project
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Quota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Region
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionAutoscalerList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagerList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersAbandonInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersDeleteInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersRecreateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersSetAutoHealingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersSetTargetPoolsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersSetTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupsListInstances
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupsListInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupsSetNamedPortsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceGroupReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Route
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouteList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Router
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterBgp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterBgpPeer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterStatusBgpPeerStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoutersPreviewResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoutersScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Scheduling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SerialPortOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Snapshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertificateList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subnetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubnetworkAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubnetworkList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubnetworksExpandIpCidrRangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubnetworksScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TcpHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetHttpProxy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetHttpProxyList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetHttpsProxiesSetSslCertificatesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetHttpsProxy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetHttpsProxyList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetInstanceAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetInstanceList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetInstancesScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetPoolAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetPoolInstanceHealth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetPoolList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddTargetPoolsHealthCheckRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddTargetPoolsInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveTargetPoolsHealthCheckRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveTargetPoolsInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetPoolsScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetSslProxiesSetBackendServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetSslProxiesSetProxyHeaderRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetSslProxiesSetSslCertificatesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetSslProxy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetSslProxyList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetVpnGateway
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetVpnGatewayAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetVpnGatewayList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetVpnGatewaysScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestFailure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMapList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMapReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMapTest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMapValidationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateUrlMapsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateUrlMapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsageExportLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnTunnel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnTunnelAggregatedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnTunnelList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnTunnelsScopedList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Zone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZoneList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZoneSetLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :nat_ip, as: 'natIP'
          property :type, as: 'type'
        end
      end
      
      class Address
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          collection :users, as: 'users'
        end
      end
      
      class AddressAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::AddressesScopedList, decorator: Google::Apis::ComputeBeta::AddressesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class AddressList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Address, decorator: Google::Apis::ComputeBeta::Address::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class AddressesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :addresses, as: 'addresses', class: Google::Apis::ComputeBeta::Address, decorator: Google::Apis::ComputeBeta::Address::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::AddressesScopedList::Warning, decorator: Google::Apis::ComputeBeta::AddressesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::AddressesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::AddressesScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class AttachedDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_delete, as: 'autoDelete'
          property :boot, as: 'boot'
          property :device_name, as: 'deviceName'
          property :disk_encryption_key, as: 'diskEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :index, as: 'index'
          property :initialize_params, as: 'initializeParams', class: Google::Apis::ComputeBeta::AttachedDiskInitializeParams, decorator: Google::Apis::ComputeBeta::AttachedDiskInitializeParams::Representation
      
          property :interface, as: 'interface'
          property :kind, as: 'kind'
          collection :licenses, as: 'licenses'
          property :mode, as: 'mode'
          property :source, as: 'source'
          property :type, as: 'type'
        end
      end
      
      class AttachedDiskInitializeParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_name, as: 'diskName'
          property :disk_size_gb, as: 'diskSizeGb'
          property :disk_storage_type, as: 'diskStorageType'
          property :disk_type, as: 'diskType'
          property :source_image, as: 'sourceImage'
          property :source_image_encryption_key, as: 'sourceImageEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :service, as: 'service'
        end
      end
      
      class Autoscaler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling_policy, as: 'autoscalingPolicy', class: Google::Apis::ComputeBeta::AutoscalingPolicy, decorator: Google::Apis::ComputeBeta::AutoscalingPolicy::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          collection :status_details, as: 'statusDetails', class: Google::Apis::ComputeBeta::AutoscalerStatusDetails, decorator: Google::Apis::ComputeBeta::AutoscalerStatusDetails::Representation
      
          property :target, as: 'target'
          property :zone, as: 'zone'
        end
      end
      
      class AutoscalerAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::AutoscalersScopedList, decorator: Google::Apis::ComputeBeta::AutoscalersScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class AutoscalerList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Autoscaler, decorator: Google::Apis::ComputeBeta::Autoscaler::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class AutoscalerStatusDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :type, as: 'type'
        end
      end
      
      class AutoscalersScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autoscalers, as: 'autoscalers', class: Google::Apis::ComputeBeta::Autoscaler, decorator: Google::Apis::ComputeBeta::Autoscaler::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::AutoscalersScopedList::Warning, decorator: Google::Apis::ComputeBeta::AutoscalersScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::AutoscalersScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::AutoscalersScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class AutoscalingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cool_down_period_sec, as: 'coolDownPeriodSec'
          property :cpu_utilization, as: 'cpuUtilization', class: Google::Apis::ComputeBeta::AutoscalingPolicyCpuUtilization, decorator: Google::Apis::ComputeBeta::AutoscalingPolicyCpuUtilization::Representation
      
          collection :custom_metric_utilizations, as: 'customMetricUtilizations', class: Google::Apis::ComputeBeta::AutoscalingPolicyCustomMetricUtilization, decorator: Google::Apis::ComputeBeta::AutoscalingPolicyCustomMetricUtilization::Representation
      
          property :load_balancing_utilization, as: 'loadBalancingUtilization', class: Google::Apis::ComputeBeta::AutoscalingPolicyLoadBalancingUtilization, decorator: Google::Apis::ComputeBeta::AutoscalingPolicyLoadBalancingUtilization::Representation
      
          property :max_num_replicas, as: 'maxNumReplicas'
          property :min_num_replicas, as: 'minNumReplicas'
        end
      end
      
      class AutoscalingPolicyCpuUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utilization_target, as: 'utilizationTarget'
        end
      end
      
      class AutoscalingPolicyCustomMetricUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric, as: 'metric'
          property :utilization_target, as: 'utilizationTarget'
          property :utilization_target_type, as: 'utilizationTargetType'
        end
      end
      
      class AutoscalingPolicyLoadBalancingUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utilization_target, as: 'utilizationTarget'
        end
      end
      
      class Backend
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :balancing_mode, as: 'balancingMode'
          property :capacity_scaler, as: 'capacityScaler'
          property :description, as: 'description'
          property :group, as: 'group'
          property :max_connections, as: 'maxConnections'
          property :max_connections_per_instance, as: 'maxConnectionsPerInstance'
          property :max_rate, as: 'maxRate'
          property :max_rate_per_instance, as: 'maxRatePerInstance'
          property :max_utilization, as: 'maxUtilization'
        end
      end
      
      class BackendBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :enable_cdn, as: 'enableCdn'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
        end
      end
      
      class BackendBucketList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::BackendBucket, decorator: Google::Apis::ComputeBeta::BackendBucket::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class BackendService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affinity_cookie_ttl_sec, as: 'affinityCookieTtlSec'
          collection :backends, as: 'backends', class: Google::Apis::ComputeBeta::Backend, decorator: Google::Apis::ComputeBeta::Backend::Representation
      
          property :connection_draining, as: 'connectionDraining', class: Google::Apis::ComputeBeta::ConnectionDraining, decorator: Google::Apis::ComputeBeta::ConnectionDraining::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :enable_cdn, as: 'enableCDN'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :health_checks, as: 'healthChecks'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :load_balancing_scheme, as: 'loadBalancingScheme'
          property :name, as: 'name'
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :protocol, as: 'protocol'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :session_affinity, as: 'sessionAffinity'
          property :timeout_sec, as: 'timeoutSec'
        end
      end
      
      class BackendServiceAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::BackendServicesScopedList, decorator: Google::Apis::ComputeBeta::BackendServicesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class BackendServiceGroupHealth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :health_status, as: 'healthStatus', class: Google::Apis::ComputeBeta::HealthStatus, decorator: Google::Apis::ComputeBeta::HealthStatus::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class BackendServiceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::BackendService, decorator: Google::Apis::ComputeBeta::BackendService::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class BackendServicesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backend_services, as: 'backendServices', class: Google::Apis::ComputeBeta::BackendService, decorator: Google::Apis::ComputeBeta::BackendService::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::BackendServicesScopedList::Warning, decorator: Google::Apis::ComputeBeta::BackendServicesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::BackendServicesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::BackendServicesScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CacheInvalidationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :path, as: 'path'
        end
      end
      
      class Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iam, as: 'iam'
          property :op, as: 'op'
          property :svc, as: 'svc'
          property :sys, as: 'sys'
          property :value, as: 'value'
          collection :values, as: 'values'
        end
      end
      
      class ConnectionDraining
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :draining_timeout_sec, as: 'drainingTimeoutSec'
        end
      end
      
      class CustomerEncryptionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :raw_key, as: 'rawKey'
          property :rsa_encrypted_key, as: 'rsaEncryptedKey'
          property :sha256, as: 'sha256'
        end
      end
      
      class CustomerEncryptionKeyProtectedDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_encryption_key, as: 'diskEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source, as: 'source'
        end
      end
      
      class DeprecationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deleted, as: 'deleted'
          property :deprecated, as: 'deprecated'
          property :obsolete, as: 'obsolete'
          property :replacement, as: 'replacement'
          property :state, as: 'state'
        end
      end
      
      class Disk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :disk_encryption_key, as: 'diskEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :last_attach_timestamp, as: 'lastAttachTimestamp'
          property :last_detach_timestamp, as: 'lastDetachTimestamp'
          collection :licenses, as: 'licenses'
          property :name, as: 'name'
          property :options, as: 'options'
          property :self_link, as: 'selfLink'
          property :size_gb, as: 'sizeGb'
          property :source_image, as: 'sourceImage'
          property :source_image_encryption_key, as: 'sourceImageEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_image_id, as: 'sourceImageId'
          property :source_snapshot, as: 'sourceSnapshot'
          property :source_snapshot_encryption_key, as: 'sourceSnapshotEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_snapshot_id, as: 'sourceSnapshotId'
          property :status, as: 'status'
          property :storage_type, as: 'storageType'
          property :type, as: 'type'
          collection :users, as: 'users'
          property :zone, as: 'zone'
        end
      end
      
      class DiskAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::DisksScopedList, decorator: Google::Apis::ComputeBeta::DisksScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class DiskList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Disk, decorator: Google::Apis::ComputeBeta::Disk::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class DiskMoveRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_zone, as: 'destinationZone'
          property :target_disk, as: 'targetDisk'
        end
      end
      
      class DiskType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :default_disk_size_gb, as: 'defaultDiskSizeGb'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :valid_disk_size, as: 'validDiskSize'
          property :zone, as: 'zone'
        end
      end
      
      class DiskTypeAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::DiskTypesScopedList, decorator: Google::Apis::ComputeBeta::DiskTypesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class DiskTypeList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::DiskType, decorator: Google::Apis::ComputeBeta::DiskType::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class DiskTypesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disk_types, as: 'diskTypes', class: Google::Apis::ComputeBeta::DiskType, decorator: Google::Apis::ComputeBeta::DiskType::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::DiskTypesScopedList::Warning, decorator: Google::Apis::ComputeBeta::DiskTypesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::DiskTypesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::DiskTypesScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class DisksResizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size_gb, as: 'sizeGb'
        end
      end
      
      class DisksScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disks, as: 'disks', class: Google::Apis::ComputeBeta::Disk, decorator: Google::Apis::ComputeBeta::Disk::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::DisksScopedList::Warning, decorator: Google::Apis::ComputeBeta::DisksScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::DisksScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::DisksScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class Firewall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed, as: 'allowed', class: Google::Apis::ComputeBeta::Firewall::Allowed, decorator: Google::Apis::ComputeBeta::Firewall::Allowed::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :network, as: 'network'
          property :self_link, as: 'selfLink'
          collection :source_ranges, as: 'sourceRanges'
          collection :source_tags, as: 'sourceTags'
          collection :target_tags, as: 'targetTags'
        end
        
        class Allowed
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :ip_protocol, as: 'IPProtocol'
            collection :ports, as: 'ports'
          end
        end
      end
      
      class FirewallList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Firewall, decorator: Google::Apis::ComputeBeta::Firewall::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class ForwardingRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'IPAddress'
          property :ip_protocol, as: 'IPProtocol'
          property :backend_service, as: 'backendService'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :load_balancing_scheme, as: 'loadBalancingScheme'
          property :name, as: 'name'
          property :network, as: 'network'
          property :port_range, as: 'portRange'
          collection :ports, as: 'ports'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :subnetwork, as: 'subnetwork'
          property :target, as: 'target'
        end
      end
      
      class ForwardingRuleAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::ForwardingRulesScopedList, decorator: Google::Apis::ComputeBeta::ForwardingRulesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class ForwardingRuleList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::ForwardingRule, decorator: Google::Apis::ComputeBeta::ForwardingRule::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class ForwardingRulesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :forwarding_rules, as: 'forwardingRules', class: Google::Apis::ComputeBeta::ForwardingRule, decorator: Google::Apis::ComputeBeta::ForwardingRule::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ForwardingRulesScopedList::Warning, decorator: Google::Apis::ComputeBeta::ForwardingRulesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ForwardingRulesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ForwardingRulesScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class GlobalSetLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
        end
      end
      
      class GuestOsFeature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class Http2HealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :proxy_header, as: 'proxyHeader'
          property :request_path, as: 'requestPath'
        end
      end
      
      class HttpHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :proxy_header, as: 'proxyHeader'
          property :request_path, as: 'requestPath'
        end
      end
      
      class HttpsHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :proxy_header, as: 'proxyHeader'
          property :request_path, as: 'requestPath'
        end
      end
      
      class HealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_interval_sec, as: 'checkIntervalSec'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :healthy_threshold, as: 'healthyThreshold'
          property :http2_health_check, as: 'http2HealthCheck', class: Google::Apis::ComputeBeta::Http2HealthCheck, decorator: Google::Apis::ComputeBeta::Http2HealthCheck::Representation
      
          property :http_health_check, as: 'httpHealthCheck', class: Google::Apis::ComputeBeta::HttpHealthCheck, decorator: Google::Apis::ComputeBeta::HttpHealthCheck::Representation
      
          property :https_health_check, as: 'httpsHealthCheck', class: Google::Apis::ComputeBeta::HttpsHealthCheck, decorator: Google::Apis::ComputeBeta::HttpsHealthCheck::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :ssl_health_check, as: 'sslHealthCheck', class: Google::Apis::ComputeBeta::SslHealthCheck, decorator: Google::Apis::ComputeBeta::SslHealthCheck::Representation
      
          property :tcp_health_check, as: 'tcpHealthCheck', class: Google::Apis::ComputeBeta::TcpHealthCheck, decorator: Google::Apis::ComputeBeta::TcpHealthCheck::Representation
      
          property :timeout_sec, as: 'timeoutSec'
          property :type, as: 'type'
          property :unhealthy_threshold, as: 'unhealthyThreshold'
        end
      end
      
      class HealthCheckList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::HealthCheck, decorator: Google::Apis::ComputeBeta::HealthCheck::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class HealthCheckReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :health_check, as: 'healthCheck'
        end
      end
      
      class HealthStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :health_state, as: 'healthState'
          property :instance, as: 'instance'
          property :ip_address, as: 'ipAddress'
          property :port, as: 'port'
        end
      end
      
      class HostRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :hosts, as: 'hosts'
          property :path_matcher, as: 'pathMatcher'
        end
      end
      
      class HttpHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_interval_sec, as: 'checkIntervalSec'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :healthy_threshold, as: 'healthyThreshold'
          property :host, as: 'host'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :port, as: 'port'
          property :request_path, as: 'requestPath'
          property :self_link, as: 'selfLink'
          property :timeout_sec, as: 'timeoutSec'
          property :unhealthy_threshold, as: 'unhealthyThreshold'
        end
      end
      
      class HttpHealthCheckList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::HttpHealthCheck, decorator: Google::Apis::ComputeBeta::HttpHealthCheck::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class HttpsHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_interval_sec, as: 'checkIntervalSec'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :healthy_threshold, as: 'healthyThreshold'
          property :host, as: 'host'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :port, as: 'port'
          property :request_path, as: 'requestPath'
          property :self_link, as: 'selfLink'
          property :timeout_sec, as: 'timeoutSec'
          property :unhealthy_threshold, as: 'unhealthyThreshold'
        end
      end
      
      class HttpsHealthCheckList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::HttpsHealthCheck, decorator: Google::Apis::ComputeBeta::HttpsHealthCheck::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive_size_bytes, as: 'archiveSizeBytes'
          property :creation_timestamp, as: 'creationTimestamp'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :disk_size_gb, as: 'diskSizeGb'
          property :family, as: 'family'
          collection :guest_os_features, as: 'guestOsFeatures', class: Google::Apis::ComputeBeta::GuestOsFeature, decorator: Google::Apis::ComputeBeta::GuestOsFeature::Representation
      
          property :id, as: 'id'
          property :image_encryption_key, as: 'imageEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          collection :licenses, as: 'licenses'
          property :name, as: 'name'
          property :raw_disk, as: 'rawDisk', class: Google::Apis::ComputeBeta::Image::RawDisk, decorator: Google::Apis::ComputeBeta::Image::RawDisk::Representation
      
          property :self_link, as: 'selfLink'
          property :source_disk, as: 'sourceDisk'
          property :source_disk_encryption_key, as: 'sourceDiskEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_disk_id, as: 'sourceDiskId'
          property :source_type, as: 'sourceType'
          property :status, as: 'status'
        end
        
        class RawDisk
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :container_type, as: 'containerType'
            property :sha1_checksum, as: 'sha1Checksum'
            property :source, as: 'source'
          end
        end
      end
      
      class ImageList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Image, decorator: Google::Apis::ComputeBeta::Image::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_ip_forward, as: 'canIpForward'
          property :cpu_platform, as: 'cpuPlatform'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          collection :disks, as: 'disks', class: Google::Apis::ComputeBeta::AttachedDisk, decorator: Google::Apis::ComputeBeta::AttachedDisk::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :machine_type, as: 'machineType'
          property :metadata, as: 'metadata', class: Google::Apis::ComputeBeta::Metadata, decorator: Google::Apis::ComputeBeta::Metadata::Representation
      
          property :name, as: 'name'
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::ComputeBeta::NetworkInterface, decorator: Google::Apis::ComputeBeta::NetworkInterface::Representation
      
          property :scheduling, as: 'scheduling', class: Google::Apis::ComputeBeta::Scheduling, decorator: Google::Apis::ComputeBeta::Scheduling::Representation
      
          property :self_link, as: 'selfLink'
          collection :service_accounts, as: 'serviceAccounts', class: Google::Apis::ComputeBeta::ServiceAccount, decorator: Google::Apis::ComputeBeta::ServiceAccount::Representation
      
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :tags, as: 'tags', class: Google::Apis::ComputeBeta::Tags, decorator: Google::Apis::ComputeBeta::Tags::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class InstanceAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::InstancesScopedList, decorator: Google::Apis::ComputeBeta::InstancesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class InstanceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :named_ports, as: 'namedPorts', class: Google::Apis::ComputeBeta::NamedPort, decorator: Google::Apis::ComputeBeta::NamedPort::Representation
      
          property :network, as: 'network'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :size, as: 'size'
          property :subnetwork, as: 'subnetwork'
          property :zone, as: 'zone'
        end
      end
      
      class InstanceGroupAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroupsScopedList, decorator: Google::Apis::ComputeBeta::InstanceGroupsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class InstanceGroupList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroup, decorator: Google::Apis::ComputeBeta::InstanceGroup::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class InstanceGroupManager
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_healing_policies, as: 'autoHealingPolicies', class: Google::Apis::ComputeBeta::InstanceGroupManagerAutoHealingPolicy, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerAutoHealingPolicy::Representation
      
          property :base_instance_name, as: 'baseInstanceName'
          property :creation_timestamp, as: 'creationTimestamp'
          property :current_actions, as: 'currentActions', class: Google::Apis::ComputeBeta::InstanceGroupManagerActionsSummary, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerActionsSummary::Representation
      
          property :description, as: 'description'
          property :failover_action, as: 'failoverAction'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, as: 'id'
          property :instance_group, as: 'instanceGroup'
          property :instance_template, as: 'instanceTemplate'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :named_ports, as: 'namedPorts', class: Google::Apis::ComputeBeta::NamedPort, decorator: Google::Apis::ComputeBeta::NamedPort::Representation
      
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          collection :target_pools, as: 'targetPools'
          property :target_size, as: 'targetSize'
          property :zone, as: 'zone'
        end
      end
      
      class InstanceGroupManagerActionsSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abandoning, as: 'abandoning'
          property :creating, as: 'creating'
          property :creating_without_retries, as: 'creatingWithoutRetries'
          property :deleting, as: 'deleting'
          property :none, as: 'none'
          property :recreating, as: 'recreating'
          property :refreshing, as: 'refreshing'
          property :restarting, as: 'restarting'
        end
      end
      
      class InstanceGroupManagerAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroupManagersScopedList, decorator: Google::Apis::ComputeBeta::InstanceGroupManagersScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class InstanceGroupManagerAutoHealingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :health_check, as: 'healthCheck'
          property :initial_delay_sec, as: 'initialDelaySec'
        end
      end
      
      class InstanceGroupManagerList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroupManager, decorator: Google::Apis::ComputeBeta::InstanceGroupManager::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class InstanceGroupManagersAbandonInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class InstanceGroupManagersDeleteInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class InstanceGroupManagersListManagedInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :managed_instances, as: 'managedInstances', class: Google::Apis::ComputeBeta::ManagedInstance, decorator: Google::Apis::ComputeBeta::ManagedInstance::Representation
      
        end
      end
      
      class InstanceGroupManagersRecreateInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class InstanceGroupManagersResizeAdvancedRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :no_creation_retries, as: 'noCreationRetries'
          property :target_size, as: 'targetSize'
        end
      end
      
      class InstanceGroupManagersScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instance_group_managers, as: 'instanceGroupManagers', class: Google::Apis::ComputeBeta::InstanceGroupManager, decorator: Google::Apis::ComputeBeta::InstanceGroupManager::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceGroupManagersScopedList::Warning, decorator: Google::Apis::ComputeBeta::InstanceGroupManagersScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceGroupManagersScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceGroupManagersScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class InstanceGroupManagersSetAutoHealingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_healing_policies, as: 'autoHealingPolicies', class: Google::Apis::ComputeBeta::InstanceGroupManagerAutoHealingPolicy, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerAutoHealingPolicy::Representation
      
        end
      end
      
      class InstanceGroupManagersSetInstanceTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_template, as: 'instanceTemplate'
        end
      end
      
      class InstanceGroupManagersSetTargetPoolsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :target_pools, as: 'targetPools'
        end
      end
      
      class InstanceGroupsAddInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::InstanceReference, decorator: Google::Apis::ComputeBeta::InstanceReference::Representation
      
        end
      end
      
      class InstanceGroupsListInstances
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceWithNamedPorts, decorator: Google::Apis::ComputeBeta::InstanceWithNamedPorts::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class InstanceGroupsListInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_state, as: 'instanceState'
        end
      end
      
      class InstanceGroupsRemoveInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::InstanceReference, decorator: Google::Apis::ComputeBeta::InstanceReference::Representation
      
        end
      end
      
      class InstanceGroupsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instance_groups, as: 'instanceGroups', class: Google::Apis::ComputeBeta::InstanceGroup, decorator: Google::Apis::ComputeBeta::InstanceGroup::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceGroupsScopedList::Warning, decorator: Google::Apis::ComputeBeta::InstanceGroupsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceGroupsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceGroupsScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class InstanceGroupsSetNamedPortsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :named_ports, as: 'namedPorts', class: Google::Apis::ComputeBeta::NamedPort, decorator: Google::Apis::ComputeBeta::NamedPort::Representation
      
        end
      end
      
      class InstanceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Instance, decorator: Google::Apis::ComputeBeta::Instance::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class MoveInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_zone, as: 'destinationZone'
          property :target_instance, as: 'targetInstance'
        end
      end
      
      class InstanceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_ip_forward, as: 'canIpForward'
          property :description, as: 'description'
          collection :disks, as: 'disks', class: Google::Apis::ComputeBeta::AttachedDisk, decorator: Google::Apis::ComputeBeta::AttachedDisk::Representation
      
          hash :labels, as: 'labels'
          property :machine_type, as: 'machineType'
          property :metadata, as: 'metadata', class: Google::Apis::ComputeBeta::Metadata, decorator: Google::Apis::ComputeBeta::Metadata::Representation
      
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::ComputeBeta::NetworkInterface, decorator: Google::Apis::ComputeBeta::NetworkInterface::Representation
      
          property :scheduling, as: 'scheduling', class: Google::Apis::ComputeBeta::Scheduling, decorator: Google::Apis::ComputeBeta::Scheduling::Representation
      
          collection :service_accounts, as: 'serviceAccounts', class: Google::Apis::ComputeBeta::ServiceAccount, decorator: Google::Apis::ComputeBeta::ServiceAccount::Representation
      
          property :tags, as: 'tags', class: Google::Apis::ComputeBeta::Tags, decorator: Google::Apis::ComputeBeta::Tags::Representation
      
        end
      end
      
      class InstanceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance'
        end
      end
      
      class InstanceTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::ComputeBeta::InstanceProperties, decorator: Google::Apis::ComputeBeta::InstanceProperties::Representation
      
          property :self_link, as: 'selfLink'
        end
      end
      
      class InstanceTemplateList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceTemplate, decorator: Google::Apis::ComputeBeta::InstanceTemplate::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class InstanceWithNamedPorts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance'
          collection :named_ports, as: 'namedPorts', class: Google::Apis::ComputeBeta::NamedPort, decorator: Google::Apis::ComputeBeta::NamedPort::Representation
      
          property :status, as: 'status'
        end
      end
      
      class InstancesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::Instance, decorator: Google::Apis::ComputeBeta::Instance::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstancesScopedList::Warning, decorator: Google::Apis::ComputeBeta::InstancesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstancesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstancesScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class InstancesSetLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
        end
      end
      
      class InstancesSetMachineTypeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
        end
      end
      
      class InstancesStartWithEncryptionKeyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disks, as: 'disks', class: Google::Apis::ComputeBeta::CustomerEncryptionKeyProtectedDisk, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKeyProtectedDisk::Representation
      
        end
      end
      
      class License
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :charges_use_fee, as: 'chargesUseFee'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
        end
      end
      
      class LogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :counter, as: 'counter', class: Google::Apis::ComputeBeta::LogConfigCounterOptions, decorator: Google::Apis::ComputeBeta::LogConfigCounterOptions::Representation
      
        end
      end
      
      class LogConfigCounterOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
          property :metric, as: 'metric'
        end
      end
      
      class MachineType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :guest_cpus, as: 'guestCpus'
          property :id, as: 'id'
          property :is_shared_cpu, as: 'isSharedCpu'
          property :kind, as: 'kind'
          property :maximum_persistent_disks, as: 'maximumPersistentDisks'
          property :maximum_persistent_disks_size_gb, as: 'maximumPersistentDisksSizeGb'
          property :memory_mb, as: 'memoryMb'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :zone, as: 'zone'
        end
      end
      
      class MachineTypeAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::MachineTypesScopedList, decorator: Google::Apis::ComputeBeta::MachineTypesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class MachineTypeList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::MachineType, decorator: Google::Apis::ComputeBeta::MachineType::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class MachineTypesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :machine_types, as: 'machineTypes', class: Google::Apis::ComputeBeta::MachineType, decorator: Google::Apis::ComputeBeta::MachineType::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::MachineTypesScopedList::Warning, decorator: Google::Apis::ComputeBeta::MachineTypesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::MachineTypesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::MachineTypesScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class ManagedInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_action, as: 'currentAction'
          property :id, as: 'id'
          property :instance, as: 'instance'
          property :instance_status, as: 'instanceStatus'
          property :last_attempt, as: 'lastAttempt', class: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt, decorator: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt::Representation
      
        end
      end
      
      class ManagedInstanceLastAttempt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors, as: 'errors', class: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt::Errors, decorator: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt::Errors::Representation
      
        end
        
        class Errors
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt::Errors::Error, decorator: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt::Errors::Error::Representation
        
          end
          
          class Error
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :code, as: 'code'
              property :location, as: 'location'
              property :message, as: 'message'
            end
          end
        end
      end
      
      class Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Metadata::Item, decorator: Google::Apis::ComputeBeta::Metadata::Item::Representation
      
          property :kind, as: 'kind'
        end
        
        class Item
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end
      
      class NamedPort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :port, as: 'port'
        end
      end
      
      class Network
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :i_pv4_range, as: 'IPv4Range'
          property :auto_create_subnetworks, as: 'autoCreateSubnetworks'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :gateway_i_pv4, as: 'gatewayIPv4'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          collection :subnetworks, as: 'subnetworks'
        end
      end
      
      class NetworkInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_configs, as: 'accessConfigs', class: Google::Apis::ComputeBeta::AccessConfig, decorator: Google::Apis::ComputeBeta::AccessConfig::Representation
      
          property :name, as: 'name'
          property :network, as: 'network'
          property :network_ip, as: 'networkIP'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class NetworkList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Network, decorator: Google::Apis::ComputeBeta::Network::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_operation_id, as: 'clientOperationId'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::ComputeBeta::Operation::Error, decorator: Google::Apis::ComputeBeta::Operation::Error::Representation
      
          property :http_error_message, as: 'httpErrorMessage'
          property :http_error_status_code, as: 'httpErrorStatusCode'
          property :id, as: 'id'
          property :insert_time, as: 'insertTime'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :operation_type, as: 'operationType'
          property :progress, as: 'progress'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :target_id, as: 'targetId'
          property :target_link, as: 'targetLink'
          property :user, as: 'user'
          collection :warnings, as: 'warnings', class: Google::Apis::ComputeBeta::Operation::Warning, decorator: Google::Apis::ComputeBeta::Operation::Warning::Representation
      
          property :zone, as: 'zone'
        end
        
        class Error
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::ComputeBeta::Operation::Error::Error, decorator: Google::Apis::ComputeBeta::Operation::Error::Error::Representation
        
          end
          
          class Error
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :code, as: 'code'
              property :location, as: 'location'
              property :message, as: 'message'
            end
          end
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::Operation::Warning::Datum, decorator: Google::Apis::ComputeBeta::Operation::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class OperationAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::OperationsScopedList, decorator: Google::Apis::ComputeBeta::OperationsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class OperationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Operation, decorator: Google::Apis::ComputeBeta::Operation::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class OperationsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::ComputeBeta::Operation, decorator: Google::Apis::ComputeBeta::Operation::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::OperationsScopedList::Warning, decorator: Google::Apis::ComputeBeta::OperationsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::OperationsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::OperationsScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class PathMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_service, as: 'defaultService'
          property :description, as: 'description'
          property :name, as: 'name'
          collection :path_rules, as: 'pathRules', class: Google::Apis::ComputeBeta::PathRule, decorator: Google::Apis::ComputeBeta::PathRule::Representation
      
        end
      end
      
      class PathRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :paths, as: 'paths'
          property :service, as: 'service'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::ComputeBeta::AuditConfig, decorator: Google::Apis::ComputeBeta::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::ComputeBeta::Binding, decorator: Google::Apis::ComputeBeta::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :iam_owned, as: 'iamOwned'
          collection :rules, as: 'rules', class: Google::Apis::ComputeBeta::Rule, decorator: Google::Apis::ComputeBeta::Rule::Representation
      
          property :version, as: 'version'
        end
      end
      
      class Project
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_instance_metadata, as: 'commonInstanceMetadata', class: Google::Apis::ComputeBeta::Metadata, decorator: Google::Apis::ComputeBeta::Metadata::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :default_service_account, as: 'defaultServiceAccount'
          property :description, as: 'description'
          collection :enabled_features, as: 'enabledFeatures'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :quotas, as: 'quotas', class: Google::Apis::ComputeBeta::Quota, decorator: Google::Apis::ComputeBeta::Quota::Representation
      
          property :self_link, as: 'selfLink'
          property :usage_export_location, as: 'usageExportLocation', class: Google::Apis::ComputeBeta::UsageExportLocation, decorator: Google::Apis::ComputeBeta::UsageExportLocation::Representation
      
          property :xpn_project_status, as: 'xpnProjectStatus'
        end
      end
      
      class Quota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :limit, as: 'limit'
          property :metric, as: 'metric'
          property :usage, as: 'usage'
        end
      end
      
      class Region
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :quotas, as: 'quotas', class: Google::Apis::ComputeBeta::Quota, decorator: Google::Apis::ComputeBeta::Quota::Representation
      
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          collection :zones, as: 'zones'
        end
      end
      
      class RegionAutoscalerList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Autoscaler, decorator: Google::Apis::ComputeBeta::Autoscaler::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class RegionInstanceGroupList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroup, decorator: Google::Apis::ComputeBeta::InstanceGroup::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class RegionInstanceGroupManagerList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroupManager, decorator: Google::Apis::ComputeBeta::InstanceGroupManager::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class RegionInstanceGroupManagersAbandonInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class RegionInstanceGroupManagersDeleteInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class RegionInstanceGroupManagersListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :managed_instances, as: 'managedInstances', class: Google::Apis::ComputeBeta::ManagedInstance, decorator: Google::Apis::ComputeBeta::ManagedInstance::Representation
      
        end
      end
      
      class RegionInstanceGroupManagersRecreateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class RegionInstanceGroupManagersSetAutoHealingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_healing_policies, as: 'autoHealingPolicies', class: Google::Apis::ComputeBeta::InstanceGroupManagerAutoHealingPolicy, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerAutoHealingPolicy::Representation
      
        end
      end
      
      class RegionInstanceGroupManagersSetTargetPoolsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :target_pools, as: 'targetPools'
        end
      end
      
      class RegionInstanceGroupManagersSetTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_template, as: 'instanceTemplate'
        end
      end
      
      class RegionInstanceGroupsListInstances
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceWithNamedPorts, decorator: Google::Apis::ComputeBeta::InstanceWithNamedPorts::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class RegionInstanceGroupsListInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_state, as: 'instanceState'
          property :port_name, as: 'portName'
        end
      end
      
      class RegionInstanceGroupsSetNamedPortsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :named_ports, as: 'namedPorts', class: Google::Apis::ComputeBeta::NamedPort, decorator: Google::Apis::ComputeBeta::NamedPort::Representation
      
        end
      end
      
      class RegionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Region, decorator: Google::Apis::ComputeBeta::Region::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class ResourceGroupReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group, as: 'group'
        end
      end
      
      class Route
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :dest_range, as: 'destRange'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :network, as: 'network'
          property :next_hop_gateway, as: 'nextHopGateway'
          property :next_hop_instance, as: 'nextHopInstance'
          property :next_hop_ip, as: 'nextHopIp'
          property :next_hop_network, as: 'nextHopNetwork'
          property :next_hop_vpn_tunnel, as: 'nextHopVpnTunnel'
          property :priority, as: 'priority'
          property :self_link, as: 'selfLink'
          collection :tags, as: 'tags'
          collection :warnings, as: 'warnings', class: Google::Apis::ComputeBeta::Route::Warning, decorator: Google::Apis::ComputeBeta::Route::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::Route::Warning::Datum, decorator: Google::Apis::ComputeBeta::Route::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class RouteList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Route, decorator: Google::Apis::ComputeBeta::Route::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class Router
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bgp, as: 'bgp', class: Google::Apis::ComputeBeta::RouterBgp, decorator: Google::Apis::ComputeBeta::RouterBgp::Representation
      
          collection :bgp_peers, as: 'bgpPeers', class: Google::Apis::ComputeBeta::RouterBgpPeer, decorator: Google::Apis::ComputeBeta::RouterBgpPeer::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, as: 'id'
          collection :interfaces, as: 'interfaces', class: Google::Apis::ComputeBeta::RouterInterface, decorator: Google::Apis::ComputeBeta::RouterInterface::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :network, as: 'network'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
        end
      end
      
      class RouterAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::RoutersScopedList, decorator: Google::Apis::ComputeBeta::RoutersScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class RouterBgp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asn, as: 'asn'
        end
      end
      
      class RouterBgpPeer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertised_route_priority, as: 'advertisedRoutePriority'
          property :interface_name, as: 'interfaceName'
          property :ip_address, as: 'ipAddress'
          property :name, as: 'name'
          property :peer_asn, as: 'peerAsn'
          property :peer_ip_address, as: 'peerIpAddress'
        end
      end
      
      class RouterInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_range, as: 'ipRange'
          property :linked_vpn_tunnel, as: 'linkedVpnTunnel'
          property :name, as: 'name'
        end
      end
      
      class RouterList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Router, decorator: Google::Apis::ComputeBeta::Router::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class RouterStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :best_routes, as: 'bestRoutes', class: Google::Apis::ComputeBeta::Route, decorator: Google::Apis::ComputeBeta::Route::Representation
      
          collection :bgp_peer_status, as: 'bgpPeerStatus', class: Google::Apis::ComputeBeta::RouterStatusBgpPeerStatus, decorator: Google::Apis::ComputeBeta::RouterStatusBgpPeerStatus::Representation
      
          property :network, as: 'network'
        end
      end
      
      class RouterStatusBgpPeerStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :advertised_routes, as: 'advertisedRoutes', class: Google::Apis::ComputeBeta::Route, decorator: Google::Apis::ComputeBeta::Route::Representation
      
          property :ip_address, as: 'ipAddress'
          property :linked_vpn_tunnel, as: 'linkedVpnTunnel'
          property :name, as: 'name'
          property :num_learned_routes, as: 'numLearnedRoutes'
          property :peer_ip_address, as: 'peerIpAddress'
          property :state, as: 'state'
          property :status, as: 'status'
          property :uptime, as: 'uptime'
          property :uptime_seconds, as: 'uptimeSeconds'
        end
      end
      
      class RouterStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :result, as: 'result', class: Google::Apis::ComputeBeta::RouterStatus, decorator: Google::Apis::ComputeBeta::RouterStatus::Representation
      
        end
      end
      
      class RoutersPreviewResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::ComputeBeta::Router, decorator: Google::Apis::ComputeBeta::Router::Representation
      
        end
      end
      
      class RoutersScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :routers, as: 'routers', class: Google::Apis::ComputeBeta::Router, decorator: Google::Apis::ComputeBeta::Router::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RoutersScopedList::Warning, decorator: Google::Apis::ComputeBeta::RoutersScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RoutersScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::RoutersScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class Rule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          collection :conditions, as: 'conditions', class: Google::Apis::ComputeBeta::Condition, decorator: Google::Apis::ComputeBeta::Condition::Representation
      
          property :description, as: 'description'
          collection :ins, as: 'ins'
          collection :log_configs, as: 'logConfigs', class: Google::Apis::ComputeBeta::LogConfig, decorator: Google::Apis::ComputeBeta::LogConfig::Representation
      
          collection :not_ins, as: 'notIns'
          collection :permissions, as: 'permissions'
        end
      end
      
      class SslHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :proxy_header, as: 'proxyHeader'
          property :request, as: 'request'
          property :response, as: 'response'
        end
      end
      
      class Scheduling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automatic_restart, as: 'automaticRestart'
          property :on_host_maintenance, as: 'onHostMaintenance'
          property :preemptible, as: 'preemptible'
        end
      end
      
      class SerialPortOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, as: 'contents'
          property :kind, as: 'kind'
          property :next, as: 'next'
          property :self_link, as: 'selfLink'
          property :start, as: 'start'
        end
      end
      
      class ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          collection :scopes, as: 'scopes'
        end
      end
      
      class Snapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :disk_size_gb, as: 'diskSizeGb'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          collection :licenses, as: 'licenses'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :snapshot_encryption_key, as: 'snapshotEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_disk, as: 'sourceDisk'
          property :source_disk_encryption_key, as: 'sourceDiskEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_disk_id, as: 'sourceDiskId'
          property :status, as: 'status'
          property :storage_bytes, as: 'storageBytes'
          property :storage_bytes_status, as: 'storageBytesStatus'
        end
      end
      
      class SnapshotList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Snapshot, decorator: Google::Apis::ComputeBeta::Snapshot::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class SslCertificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate, as: 'certificate'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :private_key, as: 'privateKey'
          property :self_link, as: 'selfLink'
        end
      end
      
      class SslCertificateList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::SslCertificate, decorator: Google::Apis::ComputeBeta::SslCertificate::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class Subnetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :gateway_address, as: 'gatewayAddress'
          property :id, as: 'id'
          property :ip_cidr_range, as: 'ipCidrRange'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :network, as: 'network'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
        end
      end
      
      class SubnetworkAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::SubnetworksScopedList, decorator: Google::Apis::ComputeBeta::SubnetworksScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class SubnetworkList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Subnetwork, decorator: Google::Apis::ComputeBeta::Subnetwork::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class SubnetworksExpandIpCidrRangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_cidr_range, as: 'ipCidrRange'
        end
      end
      
      class SubnetworksScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :subnetworks, as: 'subnetworks', class: Google::Apis::ComputeBeta::Subnetwork, decorator: Google::Apis::ComputeBeta::Subnetwork::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SubnetworksScopedList::Warning, decorator: Google::Apis::ComputeBeta::SubnetworksScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SubnetworksScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SubnetworksScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class TcpHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :proxy_header, as: 'proxyHeader'
          property :request, as: 'request'
          property :response, as: 'response'
        end
      end
      
      class Tags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :items, as: 'items'
        end
      end
      
      class TargetHttpProxy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :url_map, as: 'urlMap'
        end
      end
      
      class TargetHttpProxyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetHttpProxy, decorator: Google::Apis::ComputeBeta::TargetHttpProxy::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class TargetHttpsProxiesSetSslCertificatesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ssl_certificates, as: 'sslCertificates'
        end
      end
      
      class TargetHttpsProxy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          collection :ssl_certificates, as: 'sslCertificates'
          property :url_map, as: 'urlMap'
        end
      end
      
      class TargetHttpsProxyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetHttpsProxy, decorator: Google::Apis::ComputeBeta::TargetHttpsProxy::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class TargetInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, as: 'id'
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :nat_policy, as: 'natPolicy'
          property :self_link, as: 'selfLink'
          property :zone, as: 'zone'
        end
      end
      
      class TargetInstanceAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::TargetInstancesScopedList, decorator: Google::Apis::ComputeBeta::TargetInstancesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class TargetInstanceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetInstance, decorator: Google::Apis::ComputeBeta::TargetInstance::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class TargetInstancesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_instances, as: 'targetInstances', class: Google::Apis::ComputeBeta::TargetInstance, decorator: Google::Apis::ComputeBeta::TargetInstance::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetInstancesScopedList::Warning, decorator: Google::Apis::ComputeBeta::TargetInstancesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetInstancesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetInstancesScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class TargetPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_pool, as: 'backupPool'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :failover_ratio, as: 'failoverRatio'
          collection :health_checks, as: 'healthChecks'
          property :id, as: 'id'
          collection :instances, as: 'instances'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :session_affinity, as: 'sessionAffinity'
        end
      end
      
      class TargetPoolAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::TargetPoolsScopedList, decorator: Google::Apis::ComputeBeta::TargetPoolsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class TargetPoolInstanceHealth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :health_status, as: 'healthStatus', class: Google::Apis::ComputeBeta::HealthStatus, decorator: Google::Apis::ComputeBeta::HealthStatus::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class TargetPoolList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetPool, decorator: Google::Apis::ComputeBeta::TargetPool::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class AddTargetPoolsHealthCheckRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :health_checks, as: 'healthChecks', class: Google::Apis::ComputeBeta::HealthCheckReference, decorator: Google::Apis::ComputeBeta::HealthCheckReference::Representation
      
        end
      end
      
      class AddTargetPoolsInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::InstanceReference, decorator: Google::Apis::ComputeBeta::InstanceReference::Representation
      
        end
      end
      
      class RemoveTargetPoolsHealthCheckRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :health_checks, as: 'healthChecks', class: Google::Apis::ComputeBeta::HealthCheckReference, decorator: Google::Apis::ComputeBeta::HealthCheckReference::Representation
      
        end
      end
      
      class RemoveTargetPoolsInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::InstanceReference, decorator: Google::Apis::ComputeBeta::InstanceReference::Representation
      
        end
      end
      
      class TargetPoolsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_pools, as: 'targetPools', class: Google::Apis::ComputeBeta::TargetPool, decorator: Google::Apis::ComputeBeta::TargetPool::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetPoolsScopedList::Warning, decorator: Google::Apis::ComputeBeta::TargetPoolsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetPoolsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetPoolsScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class TargetReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target, as: 'target'
        end
      end
      
      class TargetSslProxiesSetBackendServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class TargetSslProxiesSetProxyHeaderRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :proxy_header, as: 'proxyHeader'
        end
      end
      
      class TargetSslProxiesSetSslCertificatesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ssl_certificates, as: 'sslCertificates'
        end
      end
      
      class TargetSslProxy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :proxy_header, as: 'proxyHeader'
          property :self_link, as: 'selfLink'
          property :service, as: 'service'
          collection :ssl_certificates, as: 'sslCertificates'
        end
      end
      
      class TargetSslProxyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetSslProxy, decorator: Google::Apis::ComputeBeta::TargetSslProxy::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class TargetVpnGateway
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          collection :forwarding_rules, as: 'forwardingRules'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :network, as: 'network'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          collection :tunnels, as: 'tunnels'
        end
      end
      
      class TargetVpnGatewayAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::TargetVpnGatewaysScopedList, decorator: Google::Apis::ComputeBeta::TargetVpnGatewaysScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class TargetVpnGatewayList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetVpnGateway, decorator: Google::Apis::ComputeBeta::TargetVpnGateway::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class TargetVpnGatewaysScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_vpn_gateways, as: 'targetVpnGateways', class: Google::Apis::ComputeBeta::TargetVpnGateway, decorator: Google::Apis::ComputeBeta::TargetVpnGateway::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetVpnGatewaysScopedList::Warning, decorator: Google::Apis::ComputeBeta::TargetVpnGatewaysScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetVpnGatewaysScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetVpnGatewaysScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class TestFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actual_service, as: 'actualService'
          property :expected_service, as: 'expectedService'
          property :host, as: 'host'
          property :path, as: 'path'
        end
      end
      
      class TestPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class UrlMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :default_service, as: 'defaultService'
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :host_rules, as: 'hostRules', class: Google::Apis::ComputeBeta::HostRule, decorator: Google::Apis::ComputeBeta::HostRule::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :path_matchers, as: 'pathMatchers', class: Google::Apis::ComputeBeta::PathMatcher, decorator: Google::Apis::ComputeBeta::PathMatcher::Representation
      
          property :self_link, as: 'selfLink'
          collection :tests, as: 'tests', class: Google::Apis::ComputeBeta::UrlMapTest, decorator: Google::Apis::ComputeBeta::UrlMapTest::Representation
      
        end
      end
      
      class UrlMapList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::UrlMap, decorator: Google::Apis::ComputeBeta::UrlMap::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class UrlMapReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url_map, as: 'urlMap'
        end
      end
      
      class UrlMapTest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :host, as: 'host'
          property :path, as: 'path'
          property :service, as: 'service'
        end
      end
      
      class UrlMapValidationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :load_errors, as: 'loadErrors'
          property :load_succeeded, as: 'loadSucceeded'
          collection :test_failures, as: 'testFailures', class: Google::Apis::ComputeBeta::TestFailure, decorator: Google::Apis::ComputeBeta::TestFailure::Representation
      
          property :test_passed, as: 'testPassed'
        end
      end
      
      class ValidateUrlMapsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::ComputeBeta::UrlMap, decorator: Google::Apis::ComputeBeta::UrlMap::Representation
      
        end
      end
      
      class ValidateUrlMapsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result', class: Google::Apis::ComputeBeta::UrlMapValidationResult, decorator: Google::Apis::ComputeBeta::UrlMapValidationResult::Representation
      
        end
      end
      
      class UsageExportLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :report_name_prefix, as: 'reportNamePrefix'
        end
      end
      
      class VpnTunnel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :detailed_status, as: 'detailedStatus'
          property :id, as: 'id'
          property :ike_version, as: 'ikeVersion'
          property :kind, as: 'kind'
          collection :local_traffic_selector, as: 'localTrafficSelector'
          property :name, as: 'name'
          property :peer_ip, as: 'peerIp'
          property :region, as: 'region'
          collection :remote_traffic_selector, as: 'remoteTrafficSelector'
          property :router, as: 'router'
          property :self_link, as: 'selfLink'
          property :shared_secret, as: 'sharedSecret'
          property :shared_secret_hash, as: 'sharedSecretHash'
          property :status, as: 'status'
          property :target_vpn_gateway, as: 'targetVpnGateway'
        end
      end
      
      class VpnTunnelAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::VpnTunnelsScopedList, decorator: Google::Apis::ComputeBeta::VpnTunnelsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class VpnTunnelList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::VpnTunnel, decorator: Google::Apis::ComputeBeta::VpnTunnel::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class VpnTunnelsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :vpn_tunnels, as: 'vpnTunnels', class: Google::Apis::ComputeBeta::VpnTunnel, decorator: Google::Apis::ComputeBeta::VpnTunnel::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::VpnTunnelsScopedList::Warning, decorator: Google::Apis::ComputeBeta::VpnTunnelsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::VpnTunnelsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::VpnTunnelsScopedList::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class Zone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
        end
      end
      
      class ZoneList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Zone, decorator: Google::Apis::ComputeBeta::Zone::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class ZoneSetLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
        end
      end
    end
  end
end
