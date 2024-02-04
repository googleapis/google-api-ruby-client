# Copyright 2020 Google LLC
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
    module DataportabilityV1beta
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request to kick off a Takeout Archive job.
      class InitiatePortabilityArchiveRequest
        include Google::Apis::Core::Hashable
      
        # The resources from which you're exporting data. These values have a 1:1
        # correspondence with the OAuth scopes.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Response from initiating a Take Archive job.
      class InitiatePortabilityArchiveResponse
        include Google::Apis::Core::Hashable
      
        # The archive job ID that is initiated in the Takeout API. This can be used to
        # get the state of the job.
        # Corresponds to the JSON property `archiveJobId`
        # @return [String]
        attr_accessor :archive_job_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_job_id = args[:archive_job_id] if args.key?(:archive_job_id)
        end
      end
      
      # Resource that contains the state of a Takeout Archive job.
      class PortabilityArchiveState
        include Google::Apis::Core::Hashable
      
        # The resource name of ArchiveJob's PortabilityArchiveState singleton. The
        # format is: archiveJobs/`archive_job`/portabilityArchiveState. archive_job is
        # the job ID provided in the request.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource that represents the state of the Takeout Archive job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # If the state is complete, this method returns the signed URLs of the objects
        # in the Cloud Storage bucket.
        # Corresponds to the JSON property `urls`
        # @return [Array<String>]
        attr_accessor :urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @urls = args[:urls] if args.key?(:urls)
        end
      end
      
      # Request to reset exhausted OAuth scopes.
      class ResetAuthorizationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request to retry a failed Portability Archive job.
      class RetryPortabilityArchiveRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response from retrying a Portability Archive.
      class RetryPortabilityArchiveResponse
        include Google::Apis::Core::Hashable
      
        # The archive job ID that is initiated by the retry endpoint. This can be used
        # to get the state of the new job
        # Corresponds to the JSON property `archiveJobId`
        # @return [String]
        attr_accessor :archive_job_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_job_id = args[:archive_job_id] if args.key?(:archive_job_id)
        end
      end
    end
  end
end
