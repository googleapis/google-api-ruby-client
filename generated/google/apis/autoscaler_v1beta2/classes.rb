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
    module AutoscalerV1beta2
      
      # Cloud Autoscaler resource.
      class Autoscaler
        include Google::Apis::Core::Hashable
      
        # Cloud Autoscaler policy.
        # Corresponds to the JSON property `autoscalingPolicy`
        # @return [Google::Apis::AutoscalerV1beta2::AutoscalingPolicy]
        attr_accessor :autoscaling_policy
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource provided by the client.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the Autoscaler resource. Must be unique per project and zone.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] A self-link to the Autoscaler configuration resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # URL to the entity which will be autoscaled. Currently the only supported value
        # is ReplicaPool?s URL. Note: it is illegal to specify multiple Autoscalers for
        # the same target.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_policy = args[:autoscaling_policy] if args.key?(:autoscaling_policy)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # 
      class ListAutoscalerResponse
        include Google::Apis::Core::Hashable
      
        # Autoscaler resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AutoscalerV1beta2::Autoscaler>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Cloud Autoscaler policy.
      class AutoscalingPolicy
        include Google::Apis::Core::Hashable
      
        # The number of seconds that the Autoscaler should wait between two succeeding
        # changes to the number of virtual machines. You should define an interval that
        # is at least as long as the initialization time of a virtual machine and the
        # time it may take for replica pool to create the virtual machine. The default
        # is 60 seconds.
        # Corresponds to the JSON property `coolDownPeriodSec`
        # @return [Fixnum]
        attr_accessor :cool_down_period_sec
      
        # CPU utilization policy.
        # Corresponds to the JSON property `cpuUtilization`
        # @return [Google::Apis::AutoscalerV1beta2::AutoscalingPolicyCpuUtilization]
        attr_accessor :cpu_utilization
      
        # Configuration parameters of autoscaling based on custom metric.
        # Corresponds to the JSON property `customMetricUtilizations`
        # @return [Array<Google::Apis::AutoscalerV1beta2::AutoscalingPolicyCustomMetricUtilization>]
        attr_accessor :custom_metric_utilizations
      
        # Load balancing utilization policy.
        # Corresponds to the JSON property `loadBalancingUtilization`
        # @return [Google::Apis::AutoscalerV1beta2::AutoscalingPolicyLoadBalancingUtilization]
        attr_accessor :load_balancing_utilization
      
        # The maximum number of replicas that the Autoscaler can scale up to.
        # Corresponds to the JSON property `maxNumReplicas`
        # @return [Fixnum]
        attr_accessor :max_num_replicas
      
        # The minimum number of replicas that the Autoscaler can scale down to.
        # Corresponds to the JSON property `minNumReplicas`
        # @return [Fixnum]
        attr_accessor :min_num_replicas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cool_down_period_sec = args[:cool_down_period_sec] if args.key?(:cool_down_period_sec)
          @cpu_utilization = args[:cpu_utilization] if args.key?(:cpu_utilization)
          @custom_metric_utilizations = args[:custom_metric_utilizations] if args.key?(:custom_metric_utilizations)
          @load_balancing_utilization = args[:load_balancing_utilization] if args.key?(:load_balancing_utilization)
          @max_num_replicas = args[:max_num_replicas] if args.key?(:max_num_replicas)
          @min_num_replicas = args[:min_num_replicas] if args.key?(:min_num_replicas)
        end
      end
      
      # CPU utilization policy.
      class AutoscalingPolicyCpuUtilization
        include Google::Apis::Core::Hashable
      
        # The target utilization that the Autoscaler should maintain. It is represented
        # as a fraction of used cores. For example: 6 cores used in 8-core VM are
        # represented here as 0.75. Must be a float value between (0, 1]. If not defined,
        # the default is 0.8.
        # Corresponds to the JSON property `utilizationTarget`
        # @return [Float]
        attr_accessor :utilization_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utilization_target = args[:utilization_target] if args.key?(:utilization_target)
        end
      end
      
      # Custom utilization metric policy.
      class AutoscalingPolicyCustomMetricUtilization
        include Google::Apis::Core::Hashable
      
        # Identifier of the metric. It should be a Cloud Monitoring metric. The metric
        # can not have negative values. The metric should be an utilization metric (
        # increasing number of VMs handling requests x times should reduce average value
        # of the metric roughly x times). For example you could use: compute.googleapis.
        # com/instance/network/received_bytes_count.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # Target value of the metric which Autoscaler should maintain. Must be a
        # positive value.
        # Corresponds to the JSON property `utilizationTarget`
        # @return [Float]
        attr_accessor :utilization_target
      
        # Defines type in which utilization_target is expressed.
        # Corresponds to the JSON property `utilizationTargetType`
        # @return [String]
        attr_accessor :utilization_target_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] if args.key?(:metric)
          @utilization_target = args[:utilization_target] if args.key?(:utilization_target)
          @utilization_target_type = args[:utilization_target_type] if args.key?(:utilization_target_type)
        end
      end
      
      # Load balancing utilization policy.
      class AutoscalingPolicyLoadBalancingUtilization
        include Google::Apis::Core::Hashable
      
        # Fraction of backend capacity utilization (set in HTTP load balancing
        # configuration) that Autoscaler should maintain. Must be a positive float value.
        # If not defined, the default is 0.8. For example if your maxRatePerInstance
        # capacity (in HTTP Load Balancing configuration) is set at 10 and you would
        # like to keep number of instances such that each instance receives 7 QPS on
        # average, set this to 0.7.
        # Corresponds to the JSON property `utilizationTarget`
        # @return [Float]
        attr_accessor :utilization_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utilization_target = args[:utilization_target] if args.key?(:utilization_target)
        end
      end
      
      # 
      class DeprecationStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `deleted`
        # @return [String]
        attr_accessor :deleted
      
        # 
        # Corresponds to the JSON property `deprecated`
        # @return [String]
        attr_accessor :deprecated
      
        # 
        # Corresponds to the JSON property `obsolete`
        # @return [String]
        attr_accessor :obsolete
      
        # 
        # Corresponds to the JSON property `replacement`
        # @return [String]
        attr_accessor :replacement
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted = args[:deleted] if args.key?(:deleted)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @obsolete = args[:obsolete] if args.key?(:obsolete)
          @replacement = args[:replacement] if args.key?(:replacement)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class Operation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `clientOperationId`
        # @return [String]
        attr_accessor :client_operation_id
      
        # 
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # 
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::AutoscalerV1beta2::Operation::Error]
        attr_accessor :error
      
        # 
        # Corresponds to the JSON property `httpErrorMessage`
        # @return [String]
        attr_accessor :http_error_message
      
        # 
        # Corresponds to the JSON property `httpErrorStatusCode`
        # @return [Fixnum]
        attr_accessor :http_error_status_code
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # [Output Only] Type of the resource. Always compute#operation for Operation
        # resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # 
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # 
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # 
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # 
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # 
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        # 
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # 
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::AutoscalerV1beta2::Operation::Warning>]
        attr_accessor :warnings
      
        # 
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_operation_id = args[:client_operation_id] if args.key?(:client_operation_id)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @http_error_message = args[:http_error_message] if args.key?(:http_error_message)
          @http_error_status_code = args[:http_error_status_code] if args.key?(:http_error_status_code)
          @id = args[:id] if args.key?(:id)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @progress = args[:progress] if args.key?(:progress)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target_id = args[:target_id] if args.key?(:target_id)
          @target_link = args[:target_link] if args.key?(:target_link)
          @user = args[:user] if args.key?(:user)
          @warnings = args[:warnings] if args.key?(:warnings)
          @zone = args[:zone] if args.key?(:zone)
        end
        
        # 
        class Error
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::AutoscalerV1beta2::Operation::Error::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] if args.key?(:errors)
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # 
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # 
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # 
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] if args.key?(:code)
              @location = args[:location] if args.key?(:location)
              @message = args[:message] if args.key?(:message)
            end
          end
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # 
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::AutoscalerV1beta2::Operation::Warning::Datum>]
          attr_accessor :data
        
          # 
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # 
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # 
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class OperationList
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AutoscalerV1beta2::Operation>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#operations for Operations
        # resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class Zone
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # 
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::AutoscalerV1beta2::DeprecationStatus]
        attr_accessor :deprecated
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#zone for zones.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # 
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class ZoneList
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AutoscalerV1beta2::Zone>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
    end
  end
end
