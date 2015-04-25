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
    module ReplicapoolupdaterV1beta1
      
      class InstanceUpdateRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class InstanceUpdateListRepresentation < Google::Apis::Core::JsonRepresentation
        
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
      
      class RollingUpdateRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class PolicyRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class RollingUpdateListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class InstanceUpdateRepresentation < Google::Apis::Core::JsonRepresentation
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :error, as: 'error', class: Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdate::Error, decorator: Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdateRepresentation::ErrorRepresentation
        
        property :instance, as: 'instance'
        property :status, as: 'status'
        
        # @private
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
          collection :errors, as: 'errors', class: Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdate::Error::Error, decorator: Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdateRepresentation::ErrorRepresentation::ErrorRepresentation
          
          
          
          # @private
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            property :location, as: 'location'
            property :message, as: 'message'
          end
        end
      end

      # @private
      class InstanceUpdateListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdate, decorator: Google::Apis::ReplicapoolupdaterV1beta1::InstanceUpdateRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :client_operation_id, as: 'clientOperationId'
        property :creation_timestamp, as: 'creationTimestamp'
        property :end_time, as: 'endTime'
        property :error, as: 'error', class: Google::Apis::ReplicapoolupdaterV1beta1::Operation::Error, decorator: Google::Apis::ReplicapoolupdaterV1beta1::OperationRepresentation::ErrorRepresentation
        
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
        collection :warnings, as: 'warnings', class: Google::Apis::ReplicapoolupdaterV1beta1::Operation::Warning, decorator: Google::Apis::ReplicapoolupdaterV1beta1::OperationRepresentation::WarningRepresentation
        
        
        property :zone, as: 'zone'
        
        # @private
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
          collection :errors, as: 'errors', class: Google::Apis::ReplicapoolupdaterV1beta1::Operation::Error::Error, decorator: Google::Apis::ReplicapoolupdaterV1beta1::OperationRepresentation::ErrorRepresentation::ErrorRepresentation
          
          
          
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
          collection :data, as: 'data', class: Google::Apis::ReplicapoolupdaterV1beta1::Operation::Warning::Datum, decorator: Google::Apis::ReplicapoolupdaterV1beta1::OperationRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end

      # @private
      class RollingUpdateRepresentation < Google::Apis::Core::JsonRepresentation
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class PolicyRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :action_type, as: 'actionType'
        property :creation_timestamp, as: 'creationTimestamp'
        property :description, as: 'description'
        property :error, as: 'error', class: Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate::Error, decorator: Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdateRepresentation::ErrorRepresentation
        
        property :id, as: 'id'
        property :instance_group, as: 'instanceGroup'
        property :instance_group_manager, as: 'instanceGroupManager'
        property :instance_template, as: 'instanceTemplate'
        property :kind, as: 'kind'
        property :policy, as: 'policy', class: Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate::Policy, decorator: Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdateRepresentation::PolicyRepresentation
        
        property :progress, as: 'progress'
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        property :status_message, as: 'statusMessage'
        property :user, as: 'user'
        
        # @private
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
          collection :errors, as: 'errors', class: Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate::Error::Error, decorator: Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdateRepresentation::ErrorRepresentation::ErrorRepresentation
          
          
          
          # @private
          class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            property :location, as: 'location'
            property :message, as: 'message'
          end
        end
        
        # @private
        class PolicyRepresentation < Google::Apis::Core::JsonRepresentation
          property :auto_pause_after_instances, as: 'autoPauseAfterInstances'
          property :instance_startup_timeout_sec, as: 'instanceStartupTimeoutSec'
          property :max_num_concurrent_instances, as: 'maxNumConcurrentInstances'
          property :max_num_failed_instances, as: 'maxNumFailedInstances'
          property :min_instance_update_time_sec, as: 'minInstanceUpdateTimeSec'
        end
      end

      # @private
      class RollingUpdateListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdate, decorator: Google::Apis::ReplicapoolupdaterV1beta1::RollingUpdateRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end
    end
  end
end
