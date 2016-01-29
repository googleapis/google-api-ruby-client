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
    module DataprocV1
      
      class Media
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DiagnoseClusterOutputLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class OperationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Media
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class DiagnoseClusterOutputLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri, as: 'outputUri'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :inner_state, as: 'innerState'
          property :details, as: 'details'
          property :insert_time, as: 'insertTime'
          property :start_time, as: 'startTime'
          property :end_time, as: 'endTime'
          property :cluster_name, as: 'clusterName'
          property :cluster_uuid, as: 'clusterUuid'
          property :status, as: 'status', class: Google::Apis::DataprocV1::OperationStatus, decorator: Google::Apis::DataprocV1::OperationStatus::Representation
      
          collection :status_history, as: 'statusHistory', class: Google::Apis::DataprocV1::OperationStatus, decorator: Google::Apis::DataprocV1::OperationStatus::Representation
      
        end
      end
      
      class OperationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :inner_state, as: 'innerState'
          property :details, as: 'details'
          property :state_start_time, as: 'stateStartTime'
        end
      end
    end
  end
end
