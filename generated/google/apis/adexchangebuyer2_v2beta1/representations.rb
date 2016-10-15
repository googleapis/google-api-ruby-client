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
      
      class ClientUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientUserInvitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientUserInvitationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Client
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClientsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :client_account_id, as: 'clientAccountId'
          property :status, as: 'status'
          property :user_id, as: 'userId'
        end
      end
      
      class ClientUserInvitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :client_account_id, as: 'clientAccountId'
          property :invitation_id, as: 'invitationId'
        end
      end
      
      class ListClientUserInvitationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :invitations, as: 'invitations', class: Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation, decorator: Google::Apis::Adexchangebuyer2V2beta1::ClientUserInvitation::Representation
      
        end
      end
      
      class ListClientUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :users, as: 'users', class: Google::Apis::Adexchangebuyer2V2beta1::ClientUser, decorator: Google::Apis::Adexchangebuyer2V2beta1::ClientUser::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Client
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :visible_to_seller, as: 'visibleToSeller'
          property :status, as: 'status'
          property :entity_type, as: 'entityType'
          property :role, as: 'role'
          property :client_name, as: 'clientName'
          property :client_account_id, as: 'clientAccountId'
          property :entity_id, as: 'entityId'
          property :entity_name, as: 'entityName'
        end
      end
      
      class ListClientsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :clients, as: 'clients', class: Google::Apis::Adexchangebuyer2V2beta1::Client, decorator: Google::Apis::Adexchangebuyer2V2beta1::Client::Representation
      
        end
      end
    end
  end
end
