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
    module AdminReportsV1
      
      class Activities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Activity
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Actor
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class ApplicationInfo
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class Event
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Parameter
            class Representation < Google::Apis::Core::JsonRepresentation; end
            
            class MessageValue
              class Representation < Google::Apis::Core::JsonRepresentation; end
            
              include Google::Apis::Core::JsonObjectSupport
            end
            
            class MultiMessageValue
              class Representation < Google::Apis::Core::JsonRepresentation; end
            
              include Google::Apis::Core::JsonObjectSupport
            end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class Id
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivityEventsStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivityNetworkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppliedLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Channel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldValueSelectionListValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldValueSelectionValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldValueTextListValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldValueUserListValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldValueUserValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NestedParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsageReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Entity
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class Parameter
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsageReports
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Activities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :items, as: 'items', class: Google::Apis::AdminReportsV1::Activity, decorator: Google::Apis::AdminReportsV1::Activity::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Activity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor, as: 'actor', class: Google::Apis::AdminReportsV1::Activity::Actor, decorator: Google::Apis::AdminReportsV1::Activity::Actor::Representation
      
          property :etag, as: 'etag'
          collection :events, as: 'events', class: Google::Apis::AdminReportsV1::Activity::Event, decorator: Google::Apis::AdminReportsV1::Activity::Event::Representation
      
          property :id, as: 'id', class: Google::Apis::AdminReportsV1::Activity::Id, decorator: Google::Apis::AdminReportsV1::Activity::Id::Representation
      
          property :ip_address, as: 'ipAddress'
          property :kind, as: 'kind'
          property :network_info, as: 'networkInfo', class: Google::Apis::AdminReportsV1::ActivityNetworkInfo, decorator: Google::Apis::AdminReportsV1::ActivityNetworkInfo::Representation
      
          property :owner_domain, as: 'ownerDomain'
          collection :resource_details, as: 'resourceDetails', class: Google::Apis::AdminReportsV1::ResourceDetails, decorator: Google::Apis::AdminReportsV1::ResourceDetails::Representation
      
        end
        
        class Actor
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :application_info, as: 'applicationInfo', class: Google::Apis::AdminReportsV1::Activity::Actor::ApplicationInfo, decorator: Google::Apis::AdminReportsV1::Activity::Actor::ApplicationInfo::Representation
        
            property :caller_type, as: 'callerType'
            property :email, as: 'email'
            property :key, as: 'key'
            property :profile_id, as: 'profileId'
          end
          
          class ApplicationInfo
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :application_name, as: 'applicationName'
              property :impersonation, as: 'impersonation'
              property :oauth_client_id, as: 'oauthClientId'
            end
          end
        end
        
        class Event
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :name, as: 'name'
            collection :parameters, as: 'parameters', class: Google::Apis::AdminReportsV1::Activity::Event::Parameter, decorator: Google::Apis::AdminReportsV1::Activity::Event::Parameter::Representation
        
            collection :resource_ids, as: 'resourceIds'
            property :status, as: 'status', class: Google::Apis::AdminReportsV1::ActivityEventsStatus, decorator: Google::Apis::AdminReportsV1::ActivityEventsStatus::Representation
        
            property :type, as: 'type'
          end
          
          class Parameter
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :bool_value, as: 'boolValue'
              property :int_value, :numeric_string => true, as: 'intValue'
              property :message_value, as: 'messageValue', class: Google::Apis::AdminReportsV1::Activity::Event::Parameter::MessageValue, decorator: Google::Apis::AdminReportsV1::Activity::Event::Parameter::MessageValue::Representation
          
              collection :multi_int_value, as: 'multiIntValue'
              collection :multi_message_value, as: 'multiMessageValue', class: Google::Apis::AdminReportsV1::Activity::Event::Parameter::MultiMessageValue, decorator: Google::Apis::AdminReportsV1::Activity::Event::Parameter::MultiMessageValue::Representation
          
              collection :multi_value, as: 'multiValue'
              property :name, as: 'name'
              property :value, as: 'value'
            end
            
            class MessageValue
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                collection :parameter, as: 'parameter', class: Google::Apis::AdminReportsV1::NestedParameter, decorator: Google::Apis::AdminReportsV1::NestedParameter::Representation
            
              end
            end
            
            class MultiMessageValue
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                collection :parameter, as: 'parameter', class: Google::Apis::AdminReportsV1::NestedParameter, decorator: Google::Apis::AdminReportsV1::NestedParameter::Representation
            
              end
            end
          end
        end
        
        class Id
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :application_name, as: 'applicationName'
            property :customer_id, as: 'customerId'
            property :time, as: 'time', type: DateTime
        
            property :unique_qualifier, :numeric_string => true, as: 'uniqueQualifier'
          end
        end
      end
      
      class ActivityEventsStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
          property :error_message, as: 'errorMessage'
          property :event_status, as: 'eventStatus'
          property :http_status_code, as: 'httpStatusCode'
        end
      end
      
      class ActivityNetworkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_asn, as: 'ipAsn'
          property :region_code, as: 'regionCode'
          property :subdivision_code, as: 'subdivisionCode'
        end
      end
      
      class AppliedLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_values, as: 'fieldValues', class: Google::Apis::AdminReportsV1::FieldValue, decorator: Google::Apis::AdminReportsV1::FieldValue::Representation
      
          property :id, as: 'id'
          property :reason, as: 'reason', class: Google::Apis::AdminReportsV1::Reason, decorator: Google::Apis::AdminReportsV1::Reason::Representation
      
          property :title, as: 'title'
        end
      end
      
      class Channel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :expiration, :numeric_string => true, as: 'expiration'
          property :id, as: 'id'
          property :kind, as: 'kind'
          hash :params, as: 'params'
          property :payload, as: 'payload'
          property :resource_id, as: 'resourceId'
          property :resource_uri, as: 'resourceUri'
          property :token, as: 'token'
          property :type, as: 'type'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class FieldValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_value, as: 'dateValue', class: Google::Apis::AdminReportsV1::Date, decorator: Google::Apis::AdminReportsV1::Date::Representation
      
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :integer_value, :numeric_string => true, as: 'integerValue'
          property :long_text_value, as: 'longTextValue'
          property :reason, as: 'reason', class: Google::Apis::AdminReportsV1::Reason, decorator: Google::Apis::AdminReportsV1::Reason::Representation
      
          property :selection_list_value, as: 'selectionListValue', class: Google::Apis::AdminReportsV1::FieldValueSelectionListValue, decorator: Google::Apis::AdminReportsV1::FieldValueSelectionListValue::Representation
      
          property :selection_value, as: 'selectionValue', class: Google::Apis::AdminReportsV1::FieldValueSelectionValue, decorator: Google::Apis::AdminReportsV1::FieldValueSelectionValue::Representation
      
          property :text_list_value, as: 'textListValue', class: Google::Apis::AdminReportsV1::FieldValueTextListValue, decorator: Google::Apis::AdminReportsV1::FieldValueTextListValue::Representation
      
          property :text_value, as: 'textValue'
          property :type, as: 'type'
          property :unset_value, as: 'unsetValue'
          property :user_list_value, as: 'userListValue', class: Google::Apis::AdminReportsV1::FieldValueUserListValue, decorator: Google::Apis::AdminReportsV1::FieldValueUserListValue::Representation
      
          property :user_value, as: 'userValue', class: Google::Apis::AdminReportsV1::FieldValueUserValue, decorator: Google::Apis::AdminReportsV1::FieldValueUserValue::Representation
      
        end
      end
      
      class FieldValueSelectionListValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::AdminReportsV1::FieldValueSelectionValue, decorator: Google::Apis::AdminReportsV1::FieldValueSelectionValue::Representation
      
        end
      end
      
      class FieldValueSelectionValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :badged, as: 'badged'
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class FieldValueTextListValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class FieldValueUserListValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::AdminReportsV1::FieldValueUserValue, decorator: Google::Apis::AdminReportsV1::FieldValueUserValue::Representation
      
        end
      end
      
      class FieldValueUserValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class NestedParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :int_value, :numeric_string => true, as: 'intValue'
          collection :multi_bool_value, as: 'multiBoolValue'
          collection :multi_int_value, as: 'multiIntValue'
          collection :multi_value, as: 'multiValue'
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class Reason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason_type, as: 'reasonType'
        end
      end
      
      class ResourceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applied_labels, as: 'appliedLabels', class: Google::Apis::AdminReportsV1::AppliedLabel, decorator: Google::Apis::AdminReportsV1::AppliedLabel::Representation
      
          property :id, as: 'id'
          property :relation, as: 'relation'
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      class UsageReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date'
          property :entity, as: 'entity', class: Google::Apis::AdminReportsV1::UsageReport::Entity, decorator: Google::Apis::AdminReportsV1::UsageReport::Entity::Representation
      
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          collection :parameters, as: 'parameters', class: Google::Apis::AdminReportsV1::UsageReport::Parameter, decorator: Google::Apis::AdminReportsV1::UsageReport::Parameter::Representation
      
        end
        
        class Entity
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :customer_id, as: 'customerId'
            property :entity_id, as: 'entityId'
            property :profile_id, as: 'profileId'
            property :type, as: 'type'
            property :user_email, as: 'userEmail'
          end
        end
        
        class Parameter
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :bool_value, as: 'boolValue'
            property :datetime_value, as: 'datetimeValue', type: DateTime
        
            property :int_value, :numeric_string => true, as: 'intValue'
            collection :msg_value, as: 'msgValue'
            property :name, as: 'name'
            property :string_value, as: 'stringValue'
          end
        end
      end
      
      class UsageReports
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :usage_reports, as: 'usageReports', class: Google::Apis::AdminReportsV1::UsageReport, decorator: Google::Apis::AdminReportsV1::UsageReport::Representation
      
          collection :warnings, as: 'warnings', class: Google::Apis::AdminReportsV1::UsageReports::Warning, decorator: Google::Apis::AdminReportsV1::UsageReports::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::AdminReportsV1::UsageReports::Warning::Datum, decorator: Google::Apis::AdminReportsV1::UsageReports::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
    end
  end
end
