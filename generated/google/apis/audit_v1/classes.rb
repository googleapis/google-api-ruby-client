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

      # 
      class Activities
        include Google::Apis::Core::Hashable
      
        # Each record in read response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AuditV1::Activity>]
        attr_accessor :items
      
        # Kind of list response this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Next page URL.
        # Corresponds to the JSON property `next`
        # @return [String]
        attr_accessor :next
      
        def initialize(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next = args[:next] unless args[:next].nil?
        end
      end

      # 
      class Activity
        include Google::Apis::Core::Hashable
      
        # User doing the action.
        # Corresponds to the JSON property `actor`
        # @return [Google::Apis::AuditV1::Activity::Actor]
        attr_accessor :actor
      
        # Activity events.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::AuditV1::Activity::Event>]
        attr_accessor :events
      
        # Unique identifier for each activity record.
        # Corresponds to the JSON property `id`
        # @return [Google::Apis::AuditV1::Activity::Id]
        attr_accessor :id
      
        # IP Address of the user doing the action.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Kind of resource this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Domain of source customer.
        # Corresponds to the JSON property `ownerDomain`
        # @return [String]
        attr_accessor :owner_domain
      
        def initialize(**args)
          @actor = args[:actor] unless args[:actor].nil?
          @events = args[:events] unless args[:events].nil?
          @id = args[:id] unless args[:id].nil?
          @ip_address = args[:ip_address] unless args[:ip_address].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @owner_domain = args[:owner_domain] unless args[:owner_domain].nil?
        end
        # User doing the action.
        class Actor
          include Google::Apis::Core::Hashable
        
          # ID of application which interacted on behalf of the user.
          # Corresponds to the JSON property `applicationId`
          # @return [String]
          attr_accessor :application_id
        
          # User or OAuth 2LO request.
          # Corresponds to the JSON property `callerType`
          # @return [String]
          attr_accessor :caller_type
        
          # Email address of the user.
          # Corresponds to the JSON property `email`
          # @return [String]
          attr_accessor :email
        
          # For OAuth 2LO API requests, consumer_key of the requestor.
          # Corresponds to the JSON property `key`
          # @return [String]
          attr_accessor :key
        
          def initialize(**args)
            @application_id = args[:application_id] unless args[:application_id].nil?
            @caller_type = args[:caller_type] unless args[:caller_type].nil?
            @email = args[:email] unless args[:email].nil?
            @key = args[:key] unless args[:key].nil?
          end
        end
        # 
        class Event
          include Google::Apis::Core::Hashable
        
          # Type of event.
          # Corresponds to the JSON property `eventType`
          # @return [String]
          attr_accessor :event_type
        
          # Name of event.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # Event parameters.
          # Corresponds to the JSON property `parameters`
          # @return [Array<Google::Apis::AuditV1::Activity::Event::Parameter>]
          attr_accessor :parameters
        
          def initialize(**args)
            @event_type = args[:event_type] unless args[:event_type].nil?
            @name = args[:name] unless args[:name].nil?
            @parameters = args[:parameters] unless args[:parameters].nil?
          end
          # 
          class Parameter
            include Google::Apis::Core::Hashable
          
            # Name of the parameter.
            # Corresponds to the JSON property `name`
            # @return [String]
            attr_accessor :name
          
            # Value of the parameter.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
              @name = args[:name] unless args[:name].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
        # Unique identifier for each activity record.
        class Id
          include Google::Apis::Core::Hashable
        
          # Application ID of the source application.
          # Corresponds to the JSON property `applicationId`
          # @return [String]
          attr_accessor :application_id
        
          # Obfuscated customer ID of the source customer.
          # Corresponds to the JSON property `customerId`
          # @return [String]
          attr_accessor :customer_id
        
          # Time of occurrence of the activity.
          # Corresponds to the JSON property `time`
          # @return [DateTime]
          attr_accessor :time
        
          # Unique qualifier if multiple events have the same time.
          # Corresponds to the JSON property `uniqQualifier`
          # @return [String]
          attr_accessor :uniq_qualifier
        
          def initialize(**args)
            @application_id = args[:application_id] unless args[:application_id].nil?
            @customer_id = args[:customer_id] unless args[:customer_id].nil?
            @time = args[:time] unless args[:time].nil?
            @uniq_qualifier = args[:uniq_qualifier] unless args[:uniq_qualifier].nil?
          end
        end
      end
    end
  end
end
