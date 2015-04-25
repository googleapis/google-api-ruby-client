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
    module AuditV1
      
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

      # @private
      class ActivitiesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AuditV1::Activity, decorator: Google::Apis::AuditV1::ActivityRepresentation
        
        
        property :kind, as: 'kind'
        property :next, as: 'next'
      end

      # @private
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation; end
        class EventRepresentation < Google::Apis::Core::JsonRepresentation; end
        class IdRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :actor, as: 'actor', class: Google::Apis::AuditV1::Activity::Actor, decorator: Google::Apis::AuditV1::ActivityRepresentation::ActorRepresentation
        
        collection :events, as: 'events', class: Google::Apis::AuditV1::Activity::Event, decorator: Google::Apis::AuditV1::ActivityRepresentation::EventRepresentation
        
        
        property :id, as: 'id', class: Google::Apis::AuditV1::Activity::Id, decorator: Google::Apis::AuditV1::ActivityRepresentation::IdRepresentation
        
        property :ip_address, as: 'ipAddress'
        property :kind, as: 'kind'
        property :owner_domain, as: 'ownerDomain'
        
        # @private
        class ActorRepresentation < Google::Apis::Core::JsonRepresentation
          property :application_id, as: 'applicationId'
          property :caller_type, as: 'callerType'
          property :email, as: 'email'
          property :key, as: 'key'
        end
        
        # @private
        class EventRepresentation < Google::Apis::Core::JsonRepresentation
          class ParameterRepresentation < Google::Apis::Core::JsonRepresentation; end
          property :event_type, as: 'eventType'
          property :name, as: 'name'
          collection :parameters, as: 'parameters', class: Google::Apis::AuditV1::Activity::Event::Parameter, decorator: Google::Apis::AuditV1::ActivityRepresentation::EventRepresentation::ParameterRepresentation
          
          
          
          # @private
          class ParameterRepresentation < Google::Apis::Core::JsonRepresentation
            property :name, as: 'name'
            property :value, as: 'value'
          end
        end
        
        # @private
        class IdRepresentation < Google::Apis::Core::JsonRepresentation
          property :application_id, as: 'applicationId'
          property :customer_id, as: 'customerId'
          property :time, as: 'time', type: DateTime
          property :uniq_qualifier, as: 'uniqQualifier'
        end
      end
    end
  end
end
