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
    module MybusinessaccountmanagementV1
      
      class AcceptInvitationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Admin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeclineInvitationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Invitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountAdminsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInvitationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationAdminsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrganizationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferLocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceptInvitationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Account
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_name, as: 'accountName'
          property :account_number, as: 'accountNumber'
          property :name, as: 'name'
          property :organization_info, as: 'organizationInfo', class: Google::Apis::MybusinessaccountmanagementV1::OrganizationInfo, decorator: Google::Apis::MybusinessaccountmanagementV1::OrganizationInfo::Representation
      
          property :permission_level, as: 'permissionLevel'
          property :primary_owner, as: 'primaryOwner'
          property :role, as: 'role'
          property :type, as: 'type'
          property :verification_state, as: 'verificationState'
          property :vetted_state, as: 'vettedState'
        end
      end
      
      class Admin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin, as: 'admin'
          property :name, as: 'name'
          property :pending_invitation, as: 'pendingInvitation'
          property :role, as: 'role'
        end
      end
      
      class DeclineInvitationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Invitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :role, as: 'role'
          property :target_account, as: 'targetAccount', class: Google::Apis::MybusinessaccountmanagementV1::Account, decorator: Google::Apis::MybusinessaccountmanagementV1::Account::Representation
      
          property :target_location, as: 'targetLocation', class: Google::Apis::MybusinessaccountmanagementV1::TargetLocation, decorator: Google::Apis::MybusinessaccountmanagementV1::TargetLocation::Representation
      
          property :target_type, as: 'targetType'
        end
      end
      
      class ListAccountAdminsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_admins, as: 'accountAdmins', class: Google::Apis::MybusinessaccountmanagementV1::Admin, decorator: Google::Apis::MybusinessaccountmanagementV1::Admin::Representation
      
        end
      end
      
      class ListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::MybusinessaccountmanagementV1::Account, decorator: Google::Apis::MybusinessaccountmanagementV1::Account::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInvitationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :invitations, as: 'invitations', class: Google::Apis::MybusinessaccountmanagementV1::Invitation, decorator: Google::Apis::MybusinessaccountmanagementV1::Invitation::Representation
      
        end
      end
      
      class ListLocationAdminsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :admins, as: 'admins', class: Google::Apis::MybusinessaccountmanagementV1::Admin, decorator: Google::Apis::MybusinessaccountmanagementV1::Admin::Representation
      
        end
      end
      
      class OrganizationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::MybusinessaccountmanagementV1::PostalAddress, decorator: Google::Apis::MybusinessaccountmanagementV1::PostalAddress::Representation
      
          property :phone_number, as: 'phoneNumber'
          property :registered_domain, as: 'registeredDomain'
        end
      end
      
      class PostalAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_lines, as: 'addressLines'
          property :administrative_area, as: 'administrativeArea'
          property :language_code, as: 'languageCode'
          property :locality, as: 'locality'
          property :organization, as: 'organization'
          property :postal_code, as: 'postalCode'
          collection :recipients, as: 'recipients'
          property :region_code, as: 'regionCode'
          property :revision, as: 'revision'
          property :sorting_code, as: 'sortingCode'
          property :sublocality, as: 'sublocality'
        end
      end
      
      class TargetLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :location_name, as: 'locationName'
        end
      end
      
      class TransferLocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_account, as: 'destinationAccount'
          property :name, as: 'name'
        end
      end
    end
  end
end
