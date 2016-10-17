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
    module Adexchangebuyer2V2beta1
      
      # A client user is created under a client buyer and has restricted access to
      # the Ad Exchange Marketplace and certain other sections
      # of the Ad Exchange Buyer UI based on the role
      # granted to the associated client buyer.
      # The only way a new client user can be created is via accepting an
      # email invitation
      # (see the
      # accounts.clients.invitations.create
      # method).
      # All fields are required unless otherwise specified.
      class ClientUser
        include Google::Apis::Core::Hashable
      
        # User's email address. The value of this field
        # is ignored in an update operation.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Numerical account ID of the client buyer
        # with which the user is associated; the
        # buyer must be a client of the current sponsor buyer.
        # The value of this field is ignored in an update operation.
        # Corresponds to the JSON property `clientAccountId`
        # @return [String]
        attr_accessor :client_account_id
      
        # The status of the client user.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The unique numerical ID of the client user
        # that has accepted an invitation.
        # The value of this field is ignored in an update operation.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @status = args[:status] if args.key?(:status)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # An invitation for a new client user to get access to the Ad Exchange
      # Buyer UI.
      # All fields are required unless otherwise specified.
      class ClientUserInvitation
        include Google::Apis::Core::Hashable
      
        # The email address to which the invitation is sent. Email
        # addresses should be unique among all client users under each sponsor
        # buyer.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Numerical account ID of the client buyer
        # that the invited user is associated with.
        # The value of this field is ignored in create operations.
        # Corresponds to the JSON property `clientAccountId`
        # @return [String]
        attr_accessor :client_account_id
      
        # The unique numerical ID of the invitation that is sent to the user.
        # The value of this field is ignored in create operations.
        # Corresponds to the JSON property `invitationId`
        # @return [String]
        attr_accessor :invitation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @invitation_id = args[:invitation_id] if args.key?(:invitation_id)
        end
      end
      
      # 
      class ListClientUserInvitationsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListClientUserInvitationsRequest.pageToken
        # field in the subsequent call to the
        # clients.invitations.list
        # method to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned list of client users.
        # Corresponds to the JSON property `invitations`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation>]
        attr_accessor :invitations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @invitations = args[:invitations] if args.key?(:invitations)
        end
      end
      
      # 
      class ListClientUsersResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of client users.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::ClientUser>]
        attr_accessor :users
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListClientUsersRequest.pageToken
        # field in the subsequent call to the
        # clients.invitations.list
        # method to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @users = args[:users] if args.key?(:users)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A client resource represents a client buyer&mdash;an agency,
      # a brand, or an advertiser customer of the sponsor buyer.
      # Users associated with the client buyer have restricted access to
      # the Ad Exchange Marketplace and certain other sections
      # of the Ad Exchange Buyer UI based on the role
      # granted to the client buyer.
      # All fields are required unless otherwise specified.
      class Client
        include Google::Apis::Core::Hashable
      
        # Whether the client buyer will be visible to sellers.
        # Corresponds to the JSON property `visibleToSeller`
        # @return [Boolean]
        attr_accessor :visible_to_seller
        alias_method :visible_to_seller?, :visible_to_seller
      
        # The status of the client buyer.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The type of the client entity: `ADVERTISER`, `BRAND`, or `AGENCY`.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # The role which is assigned to the client buyer. Each role implies a set of
        # permissions granted to the client. Must be one of `CLIENT_DEAL_VIEWER`,
        # `CLIENT_DEAL_NEGOTIATOR` or `CLIENT_DEAL_APPROVER`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Name used to represent this client to publishers.
        # You may have multiple clients that map to the same entity,
        # but for each client the combination of `clientName` and entity
        # must be unique.
        # You can specify this field as empty.
        # Corresponds to the JSON property `clientName`
        # @return [String]
        attr_accessor :client_name
      
        # The globally-unique numerical ID of the client.
        # The value of this field is ignored in create and update operations.
        # Corresponds to the JSON property `clientAccountId`
        # @return [String]
        attr_accessor :client_account_id
      
        # Numerical identifier of the client entity.
        # The entity can be an advertiser, a brand, or an agency.
        # This identifier is unique among all the entities with the same type.
        # A list of all known advertisers with their identifiers is available in the
        # [advertisers.txt](https://storage.googleapis.com/adx-rtb-dictionaries/
        # advertisers.txt)
        # file.
        # A list of all known brands with their identifiers is available in the
        # [brands.txt](https://storage.googleapis.com/adx-rtb-dictionaries/brands.txt)
        # file.
        # A list of all known agencies with their identifiers is available in the
        # [agencies.txt](https://storage.googleapis.com/adx-rtb-dictionaries/agencies.
        # txt)
        # file.
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        # The name of the entity. This field is automatically fetched based on
        # the type and ID.
        # The value of this field is ignored in create and update operations.
        # Corresponds to the JSON property `entityName`
        # @return [String]
        attr_accessor :entity_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @visible_to_seller = args[:visible_to_seller] if args.key?(:visible_to_seller)
          @status = args[:status] if args.key?(:status)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @role = args[:role] if args.key?(:role)
          @client_name = args[:client_name] if args.key?(:client_name)
          @client_account_id = args[:client_account_id] if args.key?(:client_account_id)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
          @entity_name = args[:entity_name] if args.key?(:entity_name)
        end
      end
      
      # 
      class ListClientsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results.
        # Pass this value in the
        # ListClientsRequest.pageToken
        # field in the subsequent call to the
        # accounts.clients.list method
        # to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned list of clients.
        # Corresponds to the JSON property `clients`
        # @return [Array<Google::Apis::Adexchangebuyer2V2beta1::Client>]
        attr_accessor :clients
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @clients = args[:clients] if args.key?(:clients)
        end
      end
    end
  end
end
