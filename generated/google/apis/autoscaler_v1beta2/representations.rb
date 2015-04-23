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
      
      class AutoscalerRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AutoscalingPolicyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AutoscalingPolicyCpuUtilizationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AutoscalingPolicyCustomMetricUtilizationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AutoscalingPolicyLoadBalancingUtilizationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DeprecationStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class OperationListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ZoneRepresentation < Google::Apis::Core::JsonRepresentation
        
        class MaintenanceWindowRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ZoneListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AutoscalerRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :autoscaling_policy, as: 'autoscalingPolicy', class: Google::Apis::AutoscalerV1beta2::AutoscalingPolicy, decorator: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyRepresentation
        
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :self_link, as: 'selfLink'
        property :target, as: 'target'
      end

      # @private
      class ListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::AutoscalerV1beta2::Autoscaler, decorator: Google::Apis::AutoscalerV1beta2::AutoscalerRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class AutoscalingPolicyRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :cool_down_period_sec, as: 'coolDownPeriodSec'
        property :cpu_utilization, as: 'cpuUtilization', class: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyCpuUtilization, decorator: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyCpuUtilizationRepresentation
        
        collection :custom_metric_utilizations, as: 'customMetricUtilizations', class: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyCustomMetricUtilization, decorator: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyCustomMetricUtilizationRepresentation
        
        
        property :load_balancing_utilization, as: 'loadBalancingUtilization', class: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyLoadBalancingUtilization, decorator: Google::Apis::AutoscalerV1beta2::AutoscalingPolicyLoadBalancingUtilizationRepresentation
        
        property :max_num_replicas, as: 'maxNumReplicas'
        property :min_num_replicas, as: 'minNumReplicas'
      end

      # @private
      class AutoscalingPolicyCpuUtilizationRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :utilization_target, as: 'utilizationTarget'
      end

      # @private
      class AutoscalingPolicyCustomMetricUtilizationRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :metric, as: 'metric'
        property :utilization_target, as: 'utilizationTarget'
        property :utilization_target_type, as: 'utilizationTargetType'
      end

      # @private
      class AutoscalingPolicyLoadBalancingUtilizationRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :utilization_target, as: 'utilizationTarget'
      end

      # @private
      class DeprecationStatusRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :deleted, as: 'deleted'
        property :deprecated, as: 'deprecated'
        property :obsolete, as: 'obsolete'
        property :replacement, as: 'replacement'
        property :state, as: 'state'
      end

      # @private
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :client_operation_id, as: 'clientOperationId'
        property :creation_timestamp, as: 'creationTimestamp'
        property :end_time, as: 'endTime'
        property :error, as: 'error', class: Google::Apis::AutoscalerV1beta2::Operation::Error, decorator: Google::Apis::AutoscalerV1beta2::OperationRepresentation::ErrorRepresentation
        
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
        collection :warnings, as: 'warnings', class: Google::Apis::AutoscalerV1beta2::Operation::Warning, decorator: Google::Apis::AutoscalerV1beta2::OperationRepresentation::WarningRepresentation
        
        
        property :zone, as: 'zone'
        
        
        # @private
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          collection :errors, as: 'errors', class: Google::Apis::AutoscalerV1beta2::Operation::Error::Error, decorator: Google::Apis::AutoscalerV1beta2::OperationRepresentation::ErrorRepresentation::ErrorRepresentation
          
          
          
          
          # @private
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :code, as: 'code'
            property :location, as: 'location'
            property :message, as: 'message'
          end
        end
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::AutoscalerV1beta2::Operation::Warning::Datum, decorator: Google::Apis::AutoscalerV1beta2::OperationRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class OperationListRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::AutoscalerV1beta2::Operation, decorator: Google::Apis::AutoscalerV1beta2::OperationRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class ZoneRepresentation < Google::Apis::Core::JsonRepresentation
        class MaintenanceWindowRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :creation_timestamp, as: 'creationTimestamp'
        property :deprecated, as: 'deprecated', class: Google::Apis::AutoscalerV1beta2::DeprecationStatus, decorator: Google::Apis::AutoscalerV1beta2::DeprecationStatusRepresentation
        
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :maintenance_windows, as: 'maintenanceWindows', class: Google::Apis::AutoscalerV1beta2::Zone::MaintenanceWindow, decorator: Google::Apis::AutoscalerV1beta2::ZoneRepresentation::MaintenanceWindowRepresentation
        
        
        property :name, as: 'name'
        property :region, as: 'region'
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        
        
        # @private
        class MaintenanceWindowRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :begin_time, as: 'beginTime'
          property :description, as: 'description'
          property :end_time, as: 'endTime'
          property :name, as: 'name'
        end
      end

      # @private
      class ZoneListRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::AutoscalerV1beta2::Zone, decorator: Google::Apis::AutoscalerV1beta2::ZoneRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end
    end
  end
end
