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
      
      class Activities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Activity
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Actor
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
        
        class Event
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Parameter
            class Representation < Google::Apis::Core::JsonRepresentation; end
          end
        end
        
        class Id
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      # @private
      class Activities
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::AuditV1::Activity, decorator: Google::Apis::AuditV1::Activity::Representation
      
          property :kind, as: 'kind'
          property :next, as: 'next'
        end
      end
      
      # @private
      class Activity
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor, as: 'actor', class: Google::Apis::AuditV1::Activity::Actor, decorator: Google::Apis::AuditV1::Activity::Actor::Representation
      
          collection :events, as: 'events', class: Google::Apis::AuditV1::Activity::Event, decorator: Google::Apis::AuditV1::Activity::Event::Representation
      
          property :id, as: 'id', class: Google::Apis::AuditV1::Activity::Id, decorator: Google::Apis::AuditV1::Activity::Id::Representation
      
          property :ip_address, as: 'ipAddress'
          property :kind, as: 'kind'
          property :owner_domain, as: 'ownerDomain'
        end
        
        # @private
        class Actor
          class Representation < Google::Apis::Core::JsonRepresentation
            property :application_id, as: 'applicationId'
            property :caller_type, as: 'callerType'
            property :email, as: 'email'
            property :key, as: 'key'
          end
        end
        
        # @private
        class Event
          class Representation < Google::Apis::Core::JsonRepresentation
            property :event_type, as: 'eventType'
            property :name, as: 'name'
            collection :parameters, as: 'parameters', class: Google::Apis::AuditV1::Activity::Event::Parameter, decorator: Google::Apis::AuditV1::Activity::Event::Parameter::Representation
        
          end
          
          # @private
          class Parameter
            class Representation < Google::Apis::Core::JsonRepresentation
              property :name, as: 'name'
              property :value, as: 'value'
            end
          end
        end
        
        # @private
        class Id
          class Representation < Google::Apis::Core::JsonRepresentation
            property :application_id, as: 'applicationId'
            property :customer_id, as: 'customerId'
            property :time, as: 'time', type: DateTime
        
            property :uniq_qualifier, as: 'uniqQualifier'
          end
        end
      end
    end
  end
end
