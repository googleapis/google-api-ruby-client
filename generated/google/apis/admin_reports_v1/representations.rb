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
    module AdminReportsV1
      class ActivitiesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UsageReportRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UsageReportsRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class ActivitiesRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdminReportsV1::Activity, decorator: Google::Apis::AdminReportsV1::ActivityRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        property :actor, as: 'actor', class: Google::Apis::AdminReportsV1::Activity::Actor do
          property :caller_type, as: 'callerType'
          property :email, as: 'email'
          property :key, as: 'key'
          property :profile_id, as: 'profileId'
        end
        
        property :etag, as: 'etag'
        collection :events, as: 'events', class: Google::Apis::AdminReportsV1::Activity::Event do
          property :name, as: 'name'
          collection :parameters, as: 'parameters', class: Google::Apis::AdminReportsV1::Activity::Event::Parameter do
            property :bool_value, as: 'boolValue'
            property :int_value, as: 'intValue'
            collection :multi_int_value, as: 'multiIntValue'
            
            collection :multi_value, as: 'multiValue'
            
            property :name, as: 'name'
            property :value, as: 'value'
          end
          
          
          property :type, as: 'type'
        end
        
        
        property :id, as: 'id', class: Google::Apis::AdminReportsV1::Activity::Id do
          property :application_name, as: 'applicationName'
          property :customer_id, as: 'customerId'
          property :time, as: 'time', type: DateTime
          property :unique_qualifier, as: 'uniqueQualifier'
        end
        
        property :ip_address, as: 'ipAddress'
        property :kind, as: 'kind'
        property :owner_domain, as: 'ownerDomain'
      end

      # @private
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation
        property :address, as: 'address'
        property :expiration, as: 'expiration'
        property :id, as: 'id'
        property :kind, as: 'kind'
        hash :params, as: 'params'
        
        property :payload, as: 'payload'
        property :resource_id, as: 'resourceId'
        property :resource_uri, as: 'resourceUri'
        property :token, as: 'token'
        property :type, as: 'type'
      end

      # @private
      class UsageReportRepresentation < Google::Apis::Core::JsonRepresentation
        property :date, as: 'date'
        property :entity, as: 'entity', class: Google::Apis::AdminReportsV1::UsageReport::Entity do
          property :customer_id, as: 'customerId'
          property :profile_id, as: 'profileId'
          property :type, as: 'type'
          property :user_email, as: 'userEmail'
        end
        
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        collection :parameters, as: 'parameters', class: Google::Apis::AdminReportsV1::UsageReport::Parameter do
          property :bool_value, as: 'boolValue'
          property :datetime_value, as: 'datetimeValue', type: DateTime
          property :int_value, as: 'intValue'
          collection :msg_value, as: 'msgValue'
          
          property :name, as: 'name'
          property :string_value, as: 'stringValue'
        end
      end

      # @private
      class UsageReportsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :usage_reports, as: 'usageReports', class: Google::Apis::AdminReportsV1::UsageReport, decorator: Google::Apis::AdminReportsV1::UsageReportRepresentation
        
        
        collection :warnings, as: 'warnings', class: Google::Apis::AdminReportsV1::UsageReports::Warning do
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::AdminReportsV1::UsageReports::Warning::Datum do
            property :key, as: 'key'
            property :value, as: 'value'
          end
          
          
          property :message, as: 'message'
        end
      end
    end
  end
end
