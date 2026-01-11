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
    module AppsmarketV2
      
      # 
      class CustomerLicense
        include Google::Apis::Core::Hashable
      
        # The ID of the application corresponding to this license query.
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # The domain name of the customer.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # (Deprecated)
        # Corresponds to the JSON property `editions`
        # @return [Array<Google::Apis::AppsmarketV2::Editions>]
        attr_accessor :editions
      
        # The ID of the customer license.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of API resource. This is always appsmarket#customerLicense.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The customer's license status. One of: - `ACTIVE`: The customer has a valid
        # license. - `UNLICENSED`: There is no license: either this customer has never
        # installed your application, or else has deleted it.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_id = args[:application_id] if args.key?(:application_id)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @editions = args[:editions] if args.key?(:editions)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class Editions
        include Google::Apis::Core::Hashable
      
        # (Deprecated)
        # Corresponds to the JSON property `assignedSeats`
        # @return [Fixnum]
        attr_accessor :assigned_seats
      
        # (Deprecated)
        # Corresponds to the JSON property `editionId`
        # @return [String]
        attr_accessor :edition_id
      
        # (Deprecated)
        # Corresponds to the JSON property `seatCount`
        # @return [Fixnum]
        attr_accessor :seat_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_seats = args[:assigned_seats] if args.key?(:assigned_seats)
          @edition_id = args[:edition_id] if args.key?(:edition_id)
          @seat_count = args[:seat_count] if args.key?(:seat_count)
        end
      end
      
      # 
      class UserLicense
        include Google::Apis::Core::Hashable
      
        # The ID of the application corresponding to the license query.
        # Corresponds to the JSON property `applicationId`
        # @return [String]
        attr_accessor :application_id
      
        # The domain name of the user.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # (Deprecated)
        # Corresponds to the JSON property `editionId`
        # @return [String]
        attr_accessor :edition_id
      
        # The domain administrator has activated the application for this domain.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # The ID of user license.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of API resource. This is always appsmarket#userLicense.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The user's licensing status. One of: - `ACTIVE`: The user has a valid license
        # and should be permitted to use the application. - `UNLICENSED`: The
        # administrator of this user's domain never assigned a seat for the application
        # to this user. - `EXPIRED`: The administrator assigned a seat to this user, but
        # the license is expired.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The email address of the user.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_id = args[:application_id] if args.key?(:application_id)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @edition_id = args[:edition_id] if args.key?(:edition_id)
          @enabled = args[:enabled] if args.key?(:enabled)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @state = args[:state] if args.key?(:state)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
    end
  end
end
