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
      
      # JSON template for a collection of activites.
      class Activities
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Each record in read response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdminReportsV1::Activity>]
        attr_accessor :items
      
        # Kind of list response this is.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token for retrieving the next page
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # JSON template for the activity resource.
      class Activity
        include Google::Apis::Core::Hashable
      
        # User doing the action.
        # Corresponds to the JSON property `actor`
        # @return [Google::Apis::AdminReportsV1::Activity::Actor]
        attr_accessor :actor
      
        # ETag of the entry.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Activity events.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::AdminReportsV1::Activity::Event>]
        attr_accessor :events
      
        # Unique identifier for each activity record.
        # Corresponds to the JSON property `id`
        # @return [Google::Apis::AdminReportsV1::Activity::Id]
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
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor = args[:actor] if args.key?(:actor)
          @etag = args[:etag] if args.key?(:etag)
          @events = args[:events] if args.key?(:events)
          @id = args[:id] if args.key?(:id)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @kind = args[:kind] if args.key?(:kind)
          @owner_domain = args[:owner_domain] if args.key?(:owner_domain)
        end
        
        # User doing the action.
        class Actor
          include Google::Apis::Core::Hashable
        
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
        
          # Obfuscated user id of the user.
          # Corresponds to the JSON property `profileId`
          # @return [String]
          attr_accessor :profile_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @caller_type = args[:caller_type] if args.key?(:caller_type)
            @email = args[:email] if args.key?(:email)
            @key = args[:key] if args.key?(:key)
            @profile_id = args[:profile_id] if args.key?(:profile_id)
          end
        end
        
        # 
        class Event
          include Google::Apis::Core::Hashable
        
          # Name of event.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # Parameter value pairs for various applications.
          # Corresponds to the JSON property `parameters`
          # @return [Array<Google::Apis::AdminReportsV1::Activity::Event::Parameter>]
          attr_accessor :parameters
        
          # Type of event.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @name = args[:name] if args.key?(:name)
            @parameters = args[:parameters] if args.key?(:parameters)
            @type = args[:type] if args.key?(:type)
          end
          
          # 
          class Parameter
            include Google::Apis::Core::Hashable
          
            # Boolean value of the parameter.
            # Corresponds to the JSON property `boolValue`
            # @return [Boolean]
            attr_accessor :bool_value
            alias_method :bool_value?, :bool_value
          
            # Integral value of the parameter.
            # Corresponds to the JSON property `intValue`
            # @return [Fixnum]
            attr_accessor :int_value
          
            # Multi-int value of the parameter.
            # Corresponds to the JSON property `multiIntValue`
            # @return [Array<Fixnum>]
            attr_accessor :multi_int_value
          
            # Multi-string value of the parameter.
            # Corresponds to the JSON property `multiValue`
            # @return [Array<String>]
            attr_accessor :multi_value
          
            # The name of the parameter.
            # Corresponds to the JSON property `name`
            # @return [String]
            attr_accessor :name
          
            # String value of the parameter.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @bool_value = args[:bool_value] if args.key?(:bool_value)
              @int_value = args[:int_value] if args.key?(:int_value)
              @multi_int_value = args[:multi_int_value] if args.key?(:multi_int_value)
              @multi_value = args[:multi_value] if args.key?(:multi_value)
              @name = args[:name] if args.key?(:name)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
        
        # Unique identifier for each activity record.
        class Id
          include Google::Apis::Core::Hashable
        
          # Application name to which the event belongs.
          # Corresponds to the JSON property `applicationName`
          # @return [String]
          attr_accessor :application_name
        
          # Obfuscated customer ID of the source customer.
          # Corresponds to the JSON property `customerId`
          # @return [String]
          attr_accessor :customer_id
        
          # Time of occurrence of the activity.
          # Corresponds to the JSON property `time`
          # @return [DateTime]
          attr_accessor :time
        
          # Unique qualifier if multiple events have the same time.
          # Corresponds to the JSON property `uniqueQualifier`
          # @return [Fixnum]
          attr_accessor :unique_qualifier
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @application_name = args[:application_name] if args.key?(:application_name)
            @customer_id = args[:customer_id] if args.key?(:customer_id)
            @time = args[:time] if args.key?(:time)
            @unique_qualifier = args[:unique_qualifier] if args.key?(:unique_qualifier)
          end
        end
      end
      
      # An notification channel used to watch for resource changes.
      class Channel
        include Google::Apis::Core::Hashable
      
        # The address where notifications are delivered for this channel.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Date and time of notification channel expiration, expressed as a Unix
        # timestamp, in milliseconds. Optional.
        # Corresponds to the JSON property `expiration`
        # @return [Fixnum]
        attr_accessor :expiration
      
        # A UUID or similar unique string that identifies this channel.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a notification channel used to watch for changes to a
        # resource. Value: the fixed string "api#channel".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Additional parameters controlling delivery channel behavior. Optional.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,String>]
        attr_accessor :params
      
        # A Boolean value to indicate whether payload is wanted. Optional.
        # Corresponds to the JSON property `payload`
        # @return [Boolean]
        attr_accessor :payload
        alias_method :payload?, :payload
      
        # An opaque ID that identifies the resource being watched on this channel.
        # Stable across different API versions.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # A version-specific identifier for the watched resource.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # An arbitrary string delivered to the target address with each notification
        # delivered over this channel. Optional.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The type of delivery mechanism used for this channel.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @expiration = args[:expiration] if args.key?(:expiration)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @params = args[:params] if args.key?(:params)
          @payload = args[:payload] if args.key?(:payload)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @token = args[:token] if args.key?(:token)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # JSON template for a usage report.
      class UsageReport
        include Google::Apis::Core::Hashable
      
        # The date to which the record belongs.
        # Corresponds to the JSON property `date`
        # @return [String]
        attr_accessor :date
      
        # Information about the type of the item.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::AdminReportsV1::UsageReport::Entity]
        attr_accessor :entity
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The kind of object.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Parameter value pairs for various applications.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::AdminReportsV1::UsageReport::Parameter>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @entity = args[:entity] if args.key?(:entity)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
        
        # Information about the type of the item.
        class Entity
          include Google::Apis::Core::Hashable
        
          # Obfuscated customer id for the record.
          # Corresponds to the JSON property `customerId`
          # @return [String]
          attr_accessor :customer_id
        
          # Object key. Only relevant if entity.type = "OBJECT" Note: external-facing name
          # of report is "Entities" rather than "Objects".
          # Corresponds to the JSON property `entityId`
          # @return [String]
          attr_accessor :entity_id
        
          # Obfuscated user id for the record.
          # Corresponds to the JSON property `profileId`
          # @return [String]
          attr_accessor :profile_id
        
          # The type of item, can be customer, user, or entity (aka. object).
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          # user's email. Only relevant if entity.type = "USER"
          # Corresponds to the JSON property `userEmail`
          # @return [String]
          attr_accessor :user_email
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @customer_id = args[:customer_id] if args.key?(:customer_id)
            @entity_id = args[:entity_id] if args.key?(:entity_id)
            @profile_id = args[:profile_id] if args.key?(:profile_id)
            @type = args[:type] if args.key?(:type)
            @user_email = args[:user_email] if args.key?(:user_email)
          end
        end
        
        # 
        class Parameter
          include Google::Apis::Core::Hashable
        
          # Boolean value of the parameter.
          # Corresponds to the JSON property `boolValue`
          # @return [Boolean]
          attr_accessor :bool_value
          alias_method :bool_value?, :bool_value
        
          # RFC 3339 formatted value of the parameter.
          # Corresponds to the JSON property `datetimeValue`
          # @return [DateTime]
          attr_accessor :datetime_value
        
          # Integral value of the parameter.
          # Corresponds to the JSON property `intValue`
          # @return [Fixnum]
          attr_accessor :int_value
        
          # Nested message value of the parameter.
          # Corresponds to the JSON property `msgValue`
          # @return [Array<Hash<String,Object>>]
          attr_accessor :msg_value
        
          # The name of the parameter.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # String value of the parameter.
          # Corresponds to the JSON property `stringValue`
          # @return [String]
          attr_accessor :string_value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @bool_value = args[:bool_value] if args.key?(:bool_value)
            @datetime_value = args[:datetime_value] if args.key?(:datetime_value)
            @int_value = args[:int_value] if args.key?(:int_value)
            @msg_value = args[:msg_value] if args.key?(:msg_value)
            @name = args[:name] if args.key?(:name)
            @string_value = args[:string_value] if args.key?(:string_value)
          end
        end
      end
      
      # JSON template for a collection of usage reports.
      class UsageReports
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The kind of object.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token for retrieving the next page
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Various application parameter records.
        # Corresponds to the JSON property `usageReports`
        # @return [Array<Google::Apis::AdminReportsV1::UsageReport>]
        attr_accessor :usage_reports
      
        # Warnings if any.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::AdminReportsV1::UsageReports::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @usage_reports = args[:usage_reports] if args.key?(:usage_reports)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # Machine readable code / warning type.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # Key-Value pairs to give detailed information on the warning.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::AdminReportsV1::UsageReports::Warning::Datum>]
          attr_accessor :data
        
          # Human readable message for the warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # Key associated with a key-value pair to give detailed information on the
            # warning.
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # Value associated with a key-value pair to give detailed information on the
            # warning.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
    end
  end
end
