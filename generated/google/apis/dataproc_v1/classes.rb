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
      
      # Media resource.
      class Media
        include Google::Apis::Core::Hashable
      
        # Name of the media resource.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # The location where output from diagnostic command can be found.
      class DiagnoseClusterOutputLocation
        include Google::Apis::Core::Hashable
      
        # [Output-only] The Google Cloud Storage URI of the diagnostic output. This will
        # be a plain text file with summary of collected diagnostics.
        # Corresponds to the JSON property `outputUri`
        # @return [String]
        attr_accessor :output_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_uri = args[:output_uri] if args.key?(:output_uri)
        end
      end
      
      # Metadata describing the operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # A message containing the operation state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message containing the detailed operation state.
        # Corresponds to the JSON property `innerState`
        # @return [String]
        attr_accessor :inner_state
      
        # A message containing any operation metadata details.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # The time that the operation was requested.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # The time that the operation was started by the server.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The time that the operation completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Name of the cluster for the operation.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # Cluster UUId for the operation.
        # Corresponds to the JSON property `clusterUuid`
        # @return [String]
        attr_accessor :cluster_uuid
      
        # The status of the operation.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DataprocV1::OperationStatus]
        attr_accessor :status
      
        # [Output-only] Previous operation status.
        # Corresponds to the JSON property `statusHistory`
        # @return [Array<Google::Apis::DataprocV1::OperationStatus>]
        attr_accessor :status_history
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @inner_state = args[:inner_state] if args.key?(:inner_state)
          @details = args[:details] if args.key?(:details)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @cluster_uuid = args[:cluster_uuid] if args.key?(:cluster_uuid)
          @status = args[:status] if args.key?(:status)
          @status_history = args[:status_history] if args.key?(:status_history)
        end
      end
      
      # The status of the operation.
      class OperationStatus
        include Google::Apis::Core::Hashable
      
        # A message containing the operation state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message containing the detailed operation state.
        # Corresponds to the JSON property `innerState`
        # @return [String]
        attr_accessor :inner_state
      
        # A message containing any operation metadata details.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # The time this state was entered.
        # Corresponds to the JSON property `stateStartTime`
        # @return [String]
        attr_accessor :state_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @inner_state = args[:inner_state] if args.key?(:inner_state)
          @details = args[:details] if args.key?(:details)
          @state_start_time = args[:state_start_time] if args.key?(:state_start_time)
        end
      end
    end
  end
end
