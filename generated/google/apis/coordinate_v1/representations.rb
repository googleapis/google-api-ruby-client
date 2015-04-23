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
      
      class CustomFieldRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CustomFieldDefRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CustomFieldDefListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CustomFieldsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EnumItemDefRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class JobRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class JobChangeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class JobListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class JobStateRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LocationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LocationListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LocationRecordRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ScheduleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TeamRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TeamListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TokenPaginationRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WorkerRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WorkerListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class CustomFieldRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :custom_field_id, as: 'customFieldId'
        property :kind, as: 'kind'
        property :value, as: 'value'
      end

      # @private
      class CustomFieldDefRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :enabled, as: 'enabled'
        collection :enumitems, as: 'enumitems', class: Google::Apis::CoordinateV1::EnumItemDef, decorator: Google::Apis::CoordinateV1::EnumItemDefRepresentation
        
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :required_for_checkout, as: 'requiredForCheckout'
        property :type, as: 'type'
      end

      # @private
      class CustomFieldDefListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::CoordinateV1::CustomFieldDef, decorator: Google::Apis::CoordinateV1::CustomFieldDefRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class CustomFieldsRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :custom_field, as: 'customField', class: Google::Apis::CoordinateV1::CustomField, decorator: Google::Apis::CoordinateV1::CustomFieldRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class EnumItemDefRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :active, as: 'active'
        property :kind, as: 'kind'
        property :value, as: 'value'
      end

      # @private
      class JobRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :id, as: 'id'
        collection :job_change, as: 'jobChange', class: Google::Apis::CoordinateV1::JobChange, decorator: Google::Apis::CoordinateV1::JobChangeRepresentation
        
        
        property :kind, as: 'kind'
        property :state, as: 'state', class: Google::Apis::CoordinateV1::JobState, decorator: Google::Apis::CoordinateV1::JobStateRepresentation
      end

      # @private
      class JobChangeRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :kind, as: 'kind'
        property :state, as: 'state', class: Google::Apis::CoordinateV1::JobState, decorator: Google::Apis::CoordinateV1::JobStateRepresentation
        
        property :timestamp, as: 'timestamp'
      end

      # @private
      class JobListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::CoordinateV1::Job, decorator: Google::Apis::CoordinateV1::JobRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class JobStateRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :assignee, as: 'assignee'
        property :custom_fields, as: 'customFields', class: Google::Apis::CoordinateV1::CustomFields, decorator: Google::Apis::CoordinateV1::CustomFieldsRepresentation
        
        property :customer_name, as: 'customerName'
        property :customer_phone_number, as: 'customerPhoneNumber'
        property :kind, as: 'kind'
        property :location, as: 'location', class: Google::Apis::CoordinateV1::Location, decorator: Google::Apis::CoordinateV1::LocationRepresentation
        
        collection :note, as: 'note'
        
        property :progress, as: 'progress'
        property :title, as: 'title'
      end

      # @private
      class LocationRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :address_line, as: 'addressLine'
        
        property :kind, as: 'kind'
        property :lat, as: 'lat'
        property :lng, as: 'lng'
      end

      # @private
      class LocationListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::CoordinateV1::LocationRecord, decorator: Google::Apis::CoordinateV1::LocationRecordRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::CoordinateV1::TokenPagination, decorator: Google::Apis::CoordinateV1::TokenPaginationRepresentation
      end

      # @private
      class LocationRecordRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :collection_time, as: 'collectionTime'
        property :confidence_radius, as: 'confidenceRadius'
        property :kind, as: 'kind'
        property :latitude, as: 'latitude'
        property :longitude, as: 'longitude'
      end

      # @private
      class ScheduleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :all_day, as: 'allDay'
        property :duration, as: 'duration'
        property :end_time, as: 'endTime'
        property :kind, as: 'kind'
        property :start_time, as: 'startTime'
      end

      # @private
      class TeamRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class TeamListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::CoordinateV1::Team, decorator: Google::Apis::CoordinateV1::TeamRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class TokenPaginationRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :previous_page_token, as: 'previousPageToken'
      end

      # @private
      class WorkerRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
      end

      # @private
      class WorkerListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::CoordinateV1::Worker, decorator: Google::Apis::CoordinateV1::WorkerRepresentation
        
        
        property :kind, as: 'kind'
      end
    end
  end
end
