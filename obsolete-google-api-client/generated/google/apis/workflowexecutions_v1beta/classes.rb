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
    module WorkflowexecutionsV1beta
      
      # Request for the CancelExecution method.
      class CancelExecutionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Error describes why the execution was abnormally terminated.
      class Error
        include Google::Apis::Core::Hashable
      
        # Human readable error context, helpful for debugging purposes.
        # Corresponds to the JSON property `context`
        # @return [String]
        attr_accessor :context
      
        # Error payload returned by the execution, represented as a JSON string.
        # Corresponds to the JSON property `payload`
        # @return [String]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @payload = args[:payload] if args.key?(:payload)
        end
      end
      
      # A running instance of a [Workflow](/workflows/docs/reference/rest/v1beta/
      # projects.locations.workflows).
      class Execution
        include Google::Apis::Core::Hashable
      
        # Input parameters of the execution represented as a JSON string. The size limit
        # is 32KB.
        # Corresponds to the JSON property `argument`
        # @return [String]
        attr_accessor :argument
      
        # Output only. Marks the end of execution, successful or not.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Error describes why the execution was abnormally terminated.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::WorkflowexecutionsV1beta::Error]
        attr_accessor :error
      
        # Output only. The resource name of the execution. Format: projects/`project`/
        # locations/`location`/workflows/`workflow`/executions/`execution`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Output of the execution represented as a JSON string. The value
        # can only be present if the execution's state is `SUCCEEDED`.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        # Output only. Marks the beginning of execution.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. Current state of the execution.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Revision of the workflow this execution is using.
        # Corresponds to the JSON property `workflowRevisionId`
        # @return [String]
        attr_accessor :workflow_revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @argument = args[:argument] if args.key?(:argument)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @name = args[:name] if args.key?(:name)
          @result = args[:result] if args.key?(:result)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @workflow_revision_id = args[:workflow_revision_id] if args.key?(:workflow_revision_id)
        end
      end
      
      # Response for the ListExecutions method.
      class ListExecutionsResponse
        include Google::Apis::Core::Hashable
      
        # The executions which match the request.
        # Corresponds to the JSON property `executions`
        # @return [Array<Google::Apis::WorkflowexecutionsV1beta::Execution>]
        attr_accessor :executions
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @executions = args[:executions] if args.key?(:executions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
    end
  end
end
