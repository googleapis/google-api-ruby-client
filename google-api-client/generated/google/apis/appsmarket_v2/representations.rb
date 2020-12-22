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
    module AppsmarketV2
      
      class CustomerLicense
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deletes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Editions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expiries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LicenseNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LicenseNotificationList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Provisions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reassignments
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserLicense
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerLicense
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_id, as: 'applicationId'
          property :customer_id, as: 'customerId'
          collection :editions, as: 'editions', class: Google::Apis::AppsmarketV2::Editions, decorator: Google::Apis::AppsmarketV2::Editions::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :state, as: 'state'
        end
      end
      
      class Deletes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :edition_id, as: 'editionId'
          property :kind, as: 'kind'
        end
      end
      
      class Editions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assigned_seats, as: 'assignedSeats'
          property :edition_id, as: 'editionId'
          property :seat_count, as: 'seatCount'
        end
      end
      
      class Expiries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :edition_id, as: 'editionId'
          property :kind, as: 'kind'
        end
      end
      
      class LicenseNotification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_id, as: 'applicationId'
          property :customer_id, as: 'customerId'
          collection :deletes, as: 'deletes', class: Google::Apis::AppsmarketV2::Deletes, decorator: Google::Apis::AppsmarketV2::Deletes::Representation
      
          collection :expiries, as: 'expiries', class: Google::Apis::AppsmarketV2::Expiries, decorator: Google::Apis::AppsmarketV2::Expiries::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          collection :provisions, as: 'provisions', class: Google::Apis::AppsmarketV2::Provisions, decorator: Google::Apis::AppsmarketV2::Provisions::Representation
      
          collection :reassignments, as: 'reassignments', class: Google::Apis::AppsmarketV2::Reassignments, decorator: Google::Apis::AppsmarketV2::Reassignments::Representation
      
          property :timestamp, :numeric_string => true, as: 'timestamp'
        end
      end
      
      class LicenseNotificationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :notifications, as: 'notifications', class: Google::Apis::AppsmarketV2::LicenseNotification, decorator: Google::Apis::AppsmarketV2::LicenseNotification::Representation
      
        end
      end
      
      class Provisions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :edition_id, as: 'editionId'
          property :kind, as: 'kind'
          property :seat_count, :numeric_string => true, as: 'seatCount'
        end
      end
      
      class Reassignments
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :edition_id, as: 'editionId'
          property :kind, as: 'kind'
          property :type, as: 'type'
          property :user_id, as: 'userId'
        end
      end
      
      class UserLicense
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_id, as: 'applicationId'
          property :customer_id, as: 'customerId'
          property :edition_id, as: 'editionId'
          property :enabled, as: 'enabled'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :state, as: 'state'
          property :user_id, as: 'userId'
        end
      end
    end
  end
end
