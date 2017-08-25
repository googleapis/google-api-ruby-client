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
    module VaultV1
      
      class AddMatterPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloseMatterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloseMatterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CorpusQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HeldAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HeldDriveQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HeldGroupsQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HeldMailQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HeldOrgUnit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hold
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListHeldAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListHoldsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMattersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Matter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MatterPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveMatterPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReopenMatterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReopenMatterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteMatterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddMatterPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cc_me, as: 'ccMe'
          property :matter_permission, as: 'matterPermission', class: Google::Apis::VaultV1::MatterPermission, decorator: Google::Apis::VaultV1::MatterPermission::Representation
      
          property :send_emails, as: 'sendEmails'
        end
      end
      
      class CloseMatterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloseMatterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :matter, as: 'matter', class: Google::Apis::VaultV1::Matter, decorator: Google::Apis::VaultV1::Matter::Representation
      
        end
      end
      
      class CorpusQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_query, as: 'driveQuery', class: Google::Apis::VaultV1::HeldDriveQuery, decorator: Google::Apis::VaultV1::HeldDriveQuery::Representation
      
          property :groups_query, as: 'groupsQuery', class: Google::Apis::VaultV1::HeldGroupsQuery, decorator: Google::Apis::VaultV1::HeldGroupsQuery::Representation
      
          property :mail_query, as: 'mailQuery', class: Google::Apis::VaultV1::HeldMailQuery, decorator: Google::Apis::VaultV1::HeldMailQuery::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class HeldAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :hold_time, as: 'holdTime'
        end
      end
      
      class HeldDriveQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_team_drive_files, as: 'includeTeamDriveFiles'
        end
      end
      
      class HeldGroupsQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :terms, as: 'terms'
        end
      end
      
      class HeldMailQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :terms, as: 'terms'
        end
      end
      
      class HeldOrgUnit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hold_time, as: 'holdTime'
          property :org_unit_id, as: 'orgUnitId'
        end
      end
      
      class Hold
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::VaultV1::HeldAccount, decorator: Google::Apis::VaultV1::HeldAccount::Representation
      
          property :corpus, as: 'corpus'
          property :hold_id, as: 'holdId'
          property :name, as: 'name'
          property :org_unit, as: 'orgUnit', class: Google::Apis::VaultV1::HeldOrgUnit, decorator: Google::Apis::VaultV1::HeldOrgUnit::Representation
      
          property :query, as: 'query', class: Google::Apis::VaultV1::CorpusQuery, decorator: Google::Apis::VaultV1::CorpusQuery::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class ListHeldAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::VaultV1::HeldAccount, decorator: Google::Apis::VaultV1::HeldAccount::Representation
      
        end
      end
      
      class ListHoldsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :holds, as: 'holds', class: Google::Apis::VaultV1::Hold, decorator: Google::Apis::VaultV1::Hold::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMattersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :matters, as: 'matters', class: Google::Apis::VaultV1::Matter, decorator: Google::Apis::VaultV1::Matter::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Matter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :matter_id, as: 'matterId'
          collection :matter_permissions, as: 'matterPermissions', class: Google::Apis::VaultV1::MatterPermission, decorator: Google::Apis::VaultV1::MatterPermission::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class MatterPermission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :role, as: 'role'
        end
      end
      
      class RemoveMatterPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
        end
      end
      
      class ReopenMatterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ReopenMatterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :matter, as: 'matter', class: Google::Apis::VaultV1::Matter, decorator: Google::Apis::VaultV1::Matter::Representation
      
        end
      end
      
      class UndeleteMatterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
