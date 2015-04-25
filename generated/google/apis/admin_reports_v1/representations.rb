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
      
      class ActivitiesRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class EventRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ParameterRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
        
        class IdRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ChannelRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UsageReportRepresentation < Google::Apis::Core::JsonRepresentation
        
        class EntityRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
        
        class ParameterRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class UsageReportsRepresentation < Google::Apis::Core::JsonRepresentation
        
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end

      # @private
      class ActivitiesRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::AdminReportsV1::Activity, decorator: Google::Apis::AdminReportsV1::ActivityRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class EventRepresentation < Google::Apis::Core::JsonRepresentation; end
        class IdRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :actor, as: 'actor', class: Google::Apis::AdminReportsV1::Activity::Actor, decorator: Google::Apis::AdminReportsV1::ActivityRepresentation::ActorRepresentation
        
        property :etag, as: 'etag'
        collection :events, as: 'events', class: Google::Apis::AdminReportsV1::Activity::Event, decorator: Google::Apis::AdminReportsV1::ActivityRepresentation::EventRepresentation
        
        
        property :id, as: 'id', class: Google::Apis::AdminReportsV1::Activity::Id, decorator: Google::Apis::AdminReportsV1::ActivityRepresentation::IdRepresentation
        
        property :ip_address, as: 'ipAddress'
        property :kind, as: 'kind'
        property :owner_domain, as: 'ownerDomain'
        
        # @private
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation
          property :caller_type, as: 'callerType'
          property :email, as: 'email'
          property :key, as: 'key'
          property :profile_id, as: 'profileId'
        end
        
        # @private
        class EventRepresentation < Google::Apis::Core::JsonRepresentation
          class ParameterRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :name, as: 'name'
          collection :parameters, as: 'parameters', class: Google::Apis::AdminReportsV1::Activity::Event::Parameter, decorator: Google::Apis::AdminReportsV1::ActivityRepresentation::EventRepresentation::ParameterRepresentation
          
          
          property :type, as: 'type'
          
          # @private
          class ParameterRepresentation < Google::Apis::Core::JsonRepresentation
            property :bool_value, as: 'boolValue'
            property :int_value, as: 'intValue'
            collection :multi_int_value, as: 'multiIntValue'
            
            collection :multi_value, as: 'multiValue'
            
            property :name, as: 'name'
            property :value, as: 'value'
          end
        end
        
        # @private
        class IdRepresentation < Google::Apis::Core::JsonRepresentation
          property :application_name, as: 'applicationName'
          property :customer_id, as: 'customerId'
          property :time, as: 'time', type: DateTime
          property :unique_qualifier, as: 'uniqueQualifier'
        end
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
        class EntityRepresentation < Google::Apis::Core::JsonRepresentation; end
        class ParameterRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :date, as: 'date'
        property :entity, as: 'entity', class: Google::Apis::AdminReportsV1::UsageReport::Entity, decorator: Google::Apis::AdminReportsV1::UsageReportRepresentation::EntityRepresentation
        
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        collection :parameters, as: 'parameters', class: Google::Apis::AdminReportsV1::UsageReport::Parameter, decorator: Google::Apis::AdminReportsV1::UsageReportRepresentation::ParameterRepresentation
        
        
        
        # @private
        class EntityRepresentation < Google::Apis::Core::JsonRepresentation
          property :customer_id, as: 'customerId'
          property :profile_id, as: 'profileId'
          property :type, as: 'type'
          property :user_email, as: 'userEmail'
        end
        
        # @private
        class ParameterRepresentation < Google::Apis::Core::JsonRepresentation
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
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :usage_reports, as: 'usageReports', class: Google::Apis::AdminReportsV1::UsageReport, decorator: Google::Apis::AdminReportsV1::UsageReportRepresentation
        
        
        collection :warnings, as: 'warnings', class: Google::Apis::AdminReportsV1::UsageReports::Warning, decorator: Google::Apis::AdminReportsV1::UsageReportsRepresentation::WarningRepresentation
        
        
        
        # @private
        class WarningRepresentation < Google::Apis::Core::JsonRepresentation
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :code, as: 'code'
          collection :data, as: 'data', class: Google::Apis::AdminReportsV1::UsageReports::Warning::Datum, decorator: Google::Apis::AdminReportsV1::UsageReportsRepresentation::WarningRepresentation::DatumRepresentation
          
          
          property :message, as: 'message'
          
          # @private
          class DatumRepresentation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end
    end
  end
end
