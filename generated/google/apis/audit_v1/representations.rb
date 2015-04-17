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
      class ActivitiesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class ActivitiesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::AuditV1::Activity, decorator: Google::Apis::AuditV1::ActivityRepresentation
        
        
        property :kind, as: 'kind'
        property :next, as: 'next'
      end

      # @private
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        property :actor, as: 'actor', class: Google::Apis::AuditV1::Activity::Actor do
          property :application_id, as: 'applicationId'
          property :caller_type, as: 'callerType'
          property :email, as: 'email'
          property :key, as: 'key'
        end
        
        collection :events, as: 'events', class: Google::Apis::AuditV1::Activity::Event do
          property :event_type, as: 'eventType'
          property :name, as: 'name'
          collection :parameters, as: 'parameters', class: Google::Apis::AuditV1::Activity::Event::Parameter do
            property :name, as: 'name'
            property :value, as: 'value'
          end
        end
        
        
        property :id, as: 'id', class: Google::Apis::AuditV1::Activity::Id do
          property :application_id, as: 'applicationId'
          property :customer_id, as: 'customerId'
          property :time, as: 'time', type: DateTime
          property :uniq_qualifier, as: 'uniqQualifier'
        end
        
        property :ip_address, as: 'ipAddress'
        property :kind, as: 'kind'
        property :owner_domain, as: 'ownerDomain'
      end
    end
  end
end
