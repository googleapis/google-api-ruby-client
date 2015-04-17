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
    module ReplicapoolV1beta2
      class InstanceGroupManagerRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InstanceGroupManagerListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InstanceGroupManagersAbandonInstancesRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InstanceGroupManagersDeleteInstancesRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InstanceGroupManagersRecreateInstancesRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InstanceGroupManagersSetInstanceTemplateRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InstanceGroupManagersSetTargetPoolsRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class OperationListRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class InstanceGroupManagerRepresentation < Google::Apis::Core::JsonRepresentation
        property :base_instance_name, as: 'baseInstanceName'
        property :creation_timestamp, as: 'creationTimestamp'
        property :current_size, as: 'currentSize'
        property :description, as: 'description'
        property :fingerprint, as: 'fingerprint'
        property :group, as: 'group'
        property :id, as: 'id'
        property :instance_template, as: 'instanceTemplate'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :self_link, as: 'selfLink'
        collection :target_pools, as: 'targetPools'
        
        property :target_size, as: 'targetSize'
      end

      # @private
      class InstanceGroupManagerListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ReplicapoolV1beta2::InstanceGroupManager, decorator: Google::Apis::ReplicapoolV1beta2::InstanceGroupManagerRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end

      # @private
      class InstanceGroupManagersAbandonInstancesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :instances, as: 'instances'
      end

      # @private
      class InstanceGroupManagersDeleteInstancesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :instances, as: 'instances'
      end

      # @private
      class InstanceGroupManagersRecreateInstancesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :instances, as: 'instances'
      end

      # @private
      class InstanceGroupManagersSetInstanceTemplateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :instance_template, as: 'instanceTemplate'
      end

      # @private
      class InstanceGroupManagersSetTargetPoolsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :fingerprint, as: 'fingerprint'
        collection :target_pools, as: 'targetPools'
      end

      # @private
      class OperationRepresentation < Google::Apis::Core::JsonRepresentation
        property :client_operation_id, as: 'clientOperationId'
        property :creation_timestamp, as: 'creationTimestamp'
        property :end_time, as: 'endTime'
        property :error, as: 'error', class: Google::Apis::ReplicapoolV1beta2::Operation::Error do
          collection :errors, as: 'errors', class: Google::Apis::ReplicapoolV1beta2::Operation::Error::Error do
            property :code, as: 'code'
            property :location, as: 'location'
            property :message, as: 'message'
          end
        end
        
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
        collection :warnings, as: 'warnings', class: Google::Apis::ReplicapoolV1beta2::Operation::Warning do
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::ReplicapoolV1beta2::Operation::Warning::Datum do
            property :key, as: 'key'
            property :value, as: 'value'
          end
          
          
          property :message, as: 'message'
        end
        
        
        property :zone, as: 'zone'
      end

      # @private
      class OperationListRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :items, as: 'items', class: Google::Apis::ReplicapoolV1beta2::Operation, decorator: Google::Apis::ReplicapoolV1beta2::OperationRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :self_link, as: 'selfLink'
      end
    end
  end
end
