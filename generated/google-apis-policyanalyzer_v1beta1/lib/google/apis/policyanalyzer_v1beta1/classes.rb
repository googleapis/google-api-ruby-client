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
    module PolicyanalyzerV1beta1
      
      # Represents Activity on a GCP resource over specific observation period.
      class GoogleCloudPolicyanalyzerV1beta1Activity
        include Google::Apis::Core::Hashable
      
        # A struct of custom fields to explain the activity.
        # Corresponds to the JSON property `activity`
        # @return [Hash<String,Object>]
        attr_accessor :activity
      
        # The type of the activity.
        # Corresponds to the JSON property `activityType`
        # @return [String]
        attr_accessor :activity_type
      
        # The full resource name that identifies the resource. For examples of full
        # resource names for Google Cloud services, see https://cloud.google.com/iam/
        # help/troubleshooter/full-resource-names.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Represents data observation period.
        # Corresponds to the JSON property `observationPeriod`
        # @return [Google::Apis::PolicyanalyzerV1beta1::GoogleCloudPolicyanalyzerV1beta1ObservationPeriod]
        attr_accessor :observation_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity = args[:activity] if args.key?(:activity)
          @activity_type = args[:activity_type] if args.key?(:activity_type)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @observation_period = args[:observation_period] if args.key?(:observation_period)
        end
      end
      
      # Represents data observation period.
      class GoogleCloudPolicyanalyzerV1beta1ObservationPeriod
        include Google::Apis::Core::Hashable
      
        # The observation end time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The observation start time.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Response to the `QueryActivity` method.
      class GoogleCloudPolicyanalyzerV1beta1QueryActivityResponse
        include Google::Apis::Core::Hashable
      
        # The set of activities that match the filter included in the request.
        # Corresponds to the JSON property `activities`
        # @return [Array<Google::Apis::PolicyanalyzerV1beta1::GoogleCloudPolicyanalyzerV1beta1Activity>]
        attr_accessor :activities
      
        # If there might be more results than those appearing in this response, then `
        # nextPageToken` is included. To get the next set of results, call this method
        # again using the value of `nextPageToken` as `pageToken`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activities = args[:activities] if args.key?(:activities)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
    end
  end
end
