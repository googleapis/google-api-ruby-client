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
      
      class Autoscaler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAutoscalerResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
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
      
      class DeprecationStatus
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
      
      class OperationList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
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
      
      class Autoscaler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling_policy, as: 'autoscalingPolicy', class: Google::Apis::AutoscalerV1beta2::AutoscalingPolicy, decorator: Google::Apis::AutoscalerV1beta2::AutoscalingPolicy::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :target, as: 'target'
        end
      end
      
      class ListAutoscalerResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::AutoscalerV1beta2::Autoscaler, decorator: Google::Apis::AutoscalerV1beta2::Autoscaler::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class AutoscalingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cool_down_period_sec, as: 'coolDownPeriodSec'
          property :cpu_utilization, as: 'cpuUtilization', class: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyCpuUtilization, decorator: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyCpuUtilization::Representation
      
          collection :custom_metric_utilizations, as: 'customMetricUtilizations', class: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyCustomMetricUtilization, decorator: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyCustomMetricUtilization::Representation
      
          property :load_balancing_utilization, as: 'loadBalancingUtilization', class: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyLoadBalancingUtilization, decorator: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyLoadBalancingUtilization::Representation
      
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
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_operation_id, as: 'clientOperationId'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::AutoscalerV1beta2::Operation::Error, decorator: Google::Apis::AutoscalerV1beta2::Operation::Error::Representation
      
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
          collection :warnings, as: 'warnings', class: Google::Apis::AutoscalerV1beta2::Operation::Warning, decorator: Google::Apis::AutoscalerV1beta2::Operation::Warning::Representation
      
          property :zone, as: 'zone'
        end
        
        class Error
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::AutoscalerV1beta2::Operation::Error::Error, decorator: Google::Apis::AutoscalerV1beta2::Operation::Error::Error::Representation
        
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
            collection :data, as: 'data', class: Google::Apis::AutoscalerV1beta2::Operation::Warning::Datum, decorator: Google::Apis::AutoscalerV1beta2::Operation::Warning::Datum::Representation
        
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
      
      class OperationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::AutoscalerV1beta2::Operation, decorator: Google::Apis::AutoscalerV1beta2::Operation::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class Zone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :deprecated, as: 'deprecated', class: Google::Apis::AutoscalerV1beta2::DeprecationStatus, decorator: Google::Apis::AutoscalerV1beta2::DeprecationStatus::Representation
      
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
          collection :items, as: 'items', class: Google::Apis::AutoscalerV1beta2::Zone, decorator: Google::Apis::AutoscalerV1beta2::Zone::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
    end
  end
end
