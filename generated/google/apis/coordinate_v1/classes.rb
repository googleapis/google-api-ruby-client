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
    module CoordinateV1
      
      # Custom field.
      class CustomField
        include Google::Apis::Core::Hashable
      
        # Custom field id.
        # Corresponds to the JSON property `customFieldId`
        # @return [String]
        attr_accessor :custom_field_id
      
        # Identifies this object as a custom field.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Custom field value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_field_id = args[:custom_field_id] unless args[:custom_field_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # Custom field definition.
      class CustomFieldDef
        include Google::Apis::Core::Hashable
      
        # Whether the field is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # List of enum items for this custom field. Populated only if the field type is
        # enum. Enum fields appear as 'lists' in the Coordinate web and mobile UI.
        # Corresponds to the JSON property `enumitems`
        # @return [Array<Google::Apis::CoordinateV1::EnumItemDef>]
        attr_accessor :enumitems
      
        # Custom field id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this object as a custom field definition.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Custom field name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether the field is required for checkout.
        # Corresponds to the JSON property `requiredForCheckout`
        # @return [Boolean]
        attr_accessor :required_for_checkout
        alias_method :required_for_checkout?, :required_for_checkout
      
        # Custom field type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] unless args[:enabled].nil?
          @enumitems = args[:enumitems] unless args[:enumitems].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @required_for_checkout = args[:required_for_checkout] unless args[:required_for_checkout].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # Collection of custom field definitions for a team.
      class ListCustomFieldDefResponse
        include Google::Apis::Core::Hashable
      
        # Collection of custom field definitions in a team.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CoordinateV1::CustomFieldDef>]
        attr_accessor :items
      
        # Identifies this object as a collection of custom field definitions in a team.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Collection of custom fields.
      class CustomFields
        include Google::Apis::Core::Hashable
      
        # Collection of custom fields.
        # Corresponds to the JSON property `customField`
        # @return [Array<Google::Apis::CoordinateV1::CustomField>]
        attr_accessor :custom_field
      
        # Identifies this object as a collection of custom fields.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_field = args[:custom_field] unless args[:custom_field].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Enum Item definition.
      class EnumItemDef
        include Google::Apis::Core::Hashable
      
        # Whether the enum item is active. Jobs may contain inactive enum values;
        # however, setting an enum to an inactive value when creating or updating a job
        # will result in a 500 error.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Identifies this object as an enum item definition.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Custom field value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] unless args[:active].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # A job.
      class Job
        include Google::Apis::Core::Hashable
      
        # Job id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # List of job changes since it was created. The first change corresponds to the
        # state of the job when it was created.
        # Corresponds to the JSON property `jobChange`
        # @return [Array<Google::Apis::CoordinateV1::JobChange>]
        attr_accessor :job_change
      
        # Identifies this object as a job.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Current state of a job.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::CoordinateV1::JobState]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @job_change = args[:job_change] unless args[:job_change].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @state = args[:state] unless args[:state].nil?
        end
      end
      
      # Change to a job. For example assigning the job to a different worker.
      class JobChange
        include Google::Apis::Core::Hashable
      
        # Identifies this object as a job change.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Current state of a job.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::CoordinateV1::JobState]
        attr_accessor :state
      
        # Time at which this change was applied.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @state = args[:state] unless args[:state].nil?
          @timestamp = args[:timestamp] unless args[:timestamp].nil?
        end
      end
      
      # Response from a List Jobs request.
      class ListJobResponse
        include Google::Apis::Core::Hashable
      
        # Jobs in the collection.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CoordinateV1::Job>]
        attr_accessor :items
      
        # Identifies this object as a list of jobs.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token to provide to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Current state of a job.
      class JobState
        include Google::Apis::Core::Hashable
      
        # Email address of the assignee, or the string "DELETED_USER" if the account is
        # no longer available.
        # Corresponds to the JSON property `assignee`
        # @return [String]
        attr_accessor :assignee
      
        # Collection of custom fields.
        # Corresponds to the JSON property `customFields`
        # @return [Google::Apis::CoordinateV1::CustomFields]
        attr_accessor :custom_fields
      
        # Customer name.
        # Corresponds to the JSON property `customerName`
        # @return [String]
        attr_accessor :customer_name
      
        # Customer phone number.
        # Corresponds to the JSON property `customerPhoneNumber`
        # @return [String]
        attr_accessor :customer_phone_number
      
        # Identifies this object as a job state.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Location of a job.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::CoordinateV1::Location]
        attr_accessor :location
      
        # Note added to the job.
        # Corresponds to the JSON property `note`
        # @return [Array<String>]
        attr_accessor :note
      
        # Job progress.
        # Corresponds to the JSON property `progress`
        # @return [String]
        attr_accessor :progress
      
        # Job title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignee = args[:assignee] unless args[:assignee].nil?
          @custom_fields = args[:custom_fields] unless args[:custom_fields].nil?
          @customer_name = args[:customer_name] unless args[:customer_name].nil?
          @customer_phone_number = args[:customer_phone_number] unless args[:customer_phone_number].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @location = args[:location] unless args[:location].nil?
          @note = args[:note] unless args[:note].nil?
          @progress = args[:progress] unless args[:progress].nil?
          @title = args[:title] unless args[:title].nil?
        end
      end
      
      # Location of a job.
      class Location
        include Google::Apis::Core::Hashable
      
        # Address.
        # Corresponds to the JSON property `addressLine`
        # @return [Array<String>]
        attr_accessor :address_line
      
        # Identifies this object as a location.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Latitude.
        # Corresponds to the JSON property `lat`
        # @return [Float]
        attr_accessor :lat
      
        # Longitude.
        # Corresponds to the JSON property `lng`
        # @return [Float]
        attr_accessor :lng
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_line = args[:address_line] unless args[:address_line].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @lat = args[:lat] unless args[:lat].nil?
          @lng = args[:lng] unless args[:lng].nil?
        end
      end
      
      # Response from a List Locations request.
      class ListLocationResponse
        include Google::Apis::Core::Hashable
      
        # Locations in the collection.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CoordinateV1::LocationRecord>]
        attr_accessor :items
      
        # Identifies this object as a list of locations.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token to provide to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Pagination information.
        # Corresponds to the JSON property `tokenPagination`
        # @return [Google::Apis::CoordinateV1::TokenPagination]
        attr_accessor :token_pagination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @token_pagination = args[:token_pagination] unless args[:token_pagination].nil?
        end
      end
      
      # Recorded location of a worker.
      class LocationRecord
        include Google::Apis::Core::Hashable
      
        # The collection time in milliseconds since the epoch.
        # Corresponds to the JSON property `collectionTime`
        # @return [String]
        attr_accessor :collection_time
      
        # The location accuracy in meters. This is the radius of a 95% confidence
        # interval around the location measurement.
        # Corresponds to the JSON property `confidenceRadius`
        # @return [Float]
        attr_accessor :confidence_radius
      
        # Identifies this object as a location.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Latitude.
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # Longitude.
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_time = args[:collection_time] unless args[:collection_time].nil?
          @confidence_radius = args[:confidence_radius] unless args[:confidence_radius].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @latitude = args[:latitude] unless args[:latitude].nil?
          @longitude = args[:longitude] unless args[:longitude].nil?
        end
      end
      
      # Job schedule.
      class Schedule
        include Google::Apis::Core::Hashable
      
        # Whether the job is scheduled for the whole day. Time of day in start/end times
        # is ignored if this is true.
        # Corresponds to the JSON property `allDay`
        # @return [Boolean]
        attr_accessor :all_day
        alias_method :all_day?, :all_day
      
        # Job duration in milliseconds.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Scheduled end time in milliseconds since epoch.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Identifies this object as a job schedule.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Scheduled start time in milliseconds since epoch.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_day = args[:all_day] unless args[:all_day].nil?
          @duration = args[:duration] unless args[:duration].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
        end
      end
      
      # A Coordinate team.
      class Team
        include Google::Apis::Core::Hashable
      
        # Team id, as found in a coordinate team url e.g. https://coordinate.google.com/
        # f/xyz where "xyz" is the team id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this object as a team.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Team name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Response from a List Teams request.
      class ListTeamResponse
        include Google::Apis::Core::Hashable
      
        # Teams in the collection.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CoordinateV1::Team>]
        attr_accessor :items
      
        # Identifies this object as a list of teams.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Pagination information.
      class TokenPagination
        include Google::Apis::Core::Hashable
      
        # Identifies this object as pagination information.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token to provide to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A token to provide to get the previous page of results.
        # Corresponds to the JSON property `previousPageToken`
        # @return [String]
        attr_accessor :previous_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @previous_page_token = args[:previous_page_token] unless args[:previous_page_token].nil?
        end
      end
      
      # A worker in a Coordinate team.
      class Worker
        include Google::Apis::Core::Hashable
      
        # Worker email address. If a worker has been deleted from your team, the email
        # address will appear as DELETED_USER.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this object as a worker.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Response from a List Workers request.
      class ListWorkerResponse
        include Google::Apis::Core::Hashable
      
        # Workers in the collection.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CoordinateV1::Worker>]
        attr_accessor :items
      
        # Identifies this object as a list of workers.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
    end
  end
end
