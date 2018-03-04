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
      
      # Add an account with the permission specified. The role cannot be owner.
      # If an account already has a role in the matter, it will be
      # overwritten.
      class AddMatterPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # Only relevant if send_emails is true.
        # True to CC requestor in the email message.
        # False to not CC requestor.
        # Corresponds to the JSON property `ccMe`
        # @return [Boolean]
        attr_accessor :cc_me
        alias_method :cc_me?, :cc_me
      
        # Currently each matter only has one owner, and all others are collaborators.
        # When an account is purged, its corresponding MatterPermission resources
        # cease to exist.
        # Corresponds to the JSON property `matterPermission`
        # @return [Google::Apis::VaultV1::MatterPermission]
        attr_accessor :matter_permission
      
        # True to send notification email to the added account.
        # False to not send notification email.
        # Corresponds to the JSON property `sendEmails`
        # @return [Boolean]
        attr_accessor :send_emails
        alias_method :send_emails?, :send_emails
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cc_me = args[:cc_me] if args.key?(:cc_me)
          @matter_permission = args[:matter_permission] if args.key?(:matter_permission)
          @send_emails = args[:send_emails] if args.key?(:send_emails)
        end
      end
      
      # Close a matter by ID.
      class CloseMatterRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response to a CloseMatterRequest.
      class CloseMatterResponse
        include Google::Apis::Core::Hashable
      
        # Represents a matter.
        # Corresponds to the JSON property `matter`
        # @return [Google::Apis::VaultV1::Matter]
        attr_accessor :matter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @matter = args[:matter] if args.key?(:matter)
        end
      end
      
      # Corpus specific queries.
      class CorpusQuery
        include Google::Apis::Core::Hashable
      
        # Query options for Drive holds.
        # Corresponds to the JSON property `driveQuery`
        # @return [Google::Apis::VaultV1::HeldDriveQuery]
        attr_accessor :drive_query
      
        # Query options for group holds.
        # Corresponds to the JSON property `groupsQuery`
        # @return [Google::Apis::VaultV1::HeldGroupsQuery]
        attr_accessor :groups_query
      
        # Query options for hangouts chat holds.
        # Corresponds to the JSON property `hangoutsChatQuery`
        # @return [Google::Apis::VaultV1::HeldHangoutsChatQuery]
        attr_accessor :hangouts_chat_query
      
        # Query options for mail holds.
        # Corresponds to the JSON property `mailQuery`
        # @return [Google::Apis::VaultV1::HeldMailQuery]
        attr_accessor :mail_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_query = args[:drive_query] if args.key?(:drive_query)
          @groups_query = args[:groups_query] if args.key?(:groups_query)
          @hangouts_chat_query = args[:hangouts_chat_query] if args.key?(:hangouts_chat_query)
          @mail_query = args[:mail_query] if args.key?(:mail_query)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An account being held in a particular hold. This structure is immutable.
      # This can be either a single user or a google group, depending on the corpus.
      class HeldAccount
        include Google::Apis::Core::Hashable
      
        # The account's ID as provided by the
        # <a href="https://developers.google.com/admin-sdk/">Admin SDK</a>.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # When the account was put on hold.
        # Corresponds to the JSON property `holdTime`
        # @return [String]
        attr_accessor :hold_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @hold_time = args[:hold_time] if args.key?(:hold_time)
        end
      end
      
      # Query options for Drive holds.
      class HeldDriveQuery
        include Google::Apis::Core::Hashable
      
        # If true, include files in Team Drives in the hold.
        # Corresponds to the JSON property `includeTeamDriveFiles`
        # @return [Boolean]
        attr_accessor :include_team_drive_files
        alias_method :include_team_drive_files?, :include_team_drive_files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_team_drive_files = args[:include_team_drive_files] if args.key?(:include_team_drive_files)
        end
      end
      
      # Query options for group holds.
      class HeldGroupsQuery
        include Google::Apis::Core::Hashable
      
        # The end time range for the search query. These timestamps are in GMT and
        # rounded down to the start of the given date.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The start time range for the search query. These timestamps are in GMT and
        # rounded down to the start of the given date.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The search terms for the hold.
        # Corresponds to the JSON property `terms`
        # @return [String]
        attr_accessor :terms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @terms = args[:terms] if args.key?(:terms)
        end
      end
      
      # Query options for hangouts chat holds.
      class HeldHangoutsChatQuery
        include Google::Apis::Core::Hashable
      
        # If true, include rooms the user has participated in.
        # Corresponds to the JSON property `includeRooms`
        # @return [Boolean]
        attr_accessor :include_rooms
        alias_method :include_rooms?, :include_rooms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_rooms = args[:include_rooms] if args.key?(:include_rooms)
        end
      end
      
      # Query options for mail holds.
      class HeldMailQuery
        include Google::Apis::Core::Hashable
      
        # The end time range for the search query. These timestamps are in GMT and
        # rounded down to the start of the given date.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The start time range for the search query. These timestamps are in GMT and
        # rounded down to the start of the given date.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The search terms for the hold.
        # Corresponds to the JSON property `terms`
        # @return [String]
        attr_accessor :terms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @terms = args[:terms] if args.key?(:terms)
        end
      end
      
      # A organizational unit being held in a particular hold.
      # This structure is immutable.
      class HeldOrgUnit
        include Google::Apis::Core::Hashable
      
        # When the org unit was put on hold. This property is immutable.
        # Corresponds to the JSON property `holdTime`
        # @return [String]
        attr_accessor :hold_time
      
        # The org unit's immutable ID as provided by the Admin SDK.
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hold_time = args[:hold_time] if args.key?(:hold_time)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
        end
      end
      
      # Represents a hold within Vault. A hold restricts purging of
      # artifacts based on the combination of the query and accounts restrictions.
      # A hold can be configured to either apply to an explicitly configured set
      # of accounts, or can be applied to all members of an organizational unit.
      class Hold
        include Google::Apis::Core::Hashable
      
        # If set, the hold applies to the enumerated accounts and org_unit must be
        # empty.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::VaultV1::HeldAccount>]
        attr_accessor :accounts
      
        # The corpus to be searched.
        # Corresponds to the JSON property `corpus`
        # @return [String]
        attr_accessor :corpus
      
        # The unique immutable ID of the hold. Assigned during creation.
        # Corresponds to the JSON property `holdId`
        # @return [String]
        attr_accessor :hold_id
      
        # The name of the hold.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A organizational unit being held in a particular hold.
        # This structure is immutable.
        # Corresponds to the JSON property `orgUnit`
        # @return [Google::Apis::VaultV1::HeldOrgUnit]
        attr_accessor :org_unit
      
        # Corpus specific queries.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::VaultV1::CorpusQuery]
        attr_accessor :query
      
        # The last time this hold was modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accounts = args[:accounts] if args.key?(:accounts)
          @corpus = args[:corpus] if args.key?(:corpus)
          @hold_id = args[:hold_id] if args.key?(:hold_id)
          @name = args[:name] if args.key?(:name)
          @org_unit = args[:org_unit] if args.key?(:org_unit)
          @query = args[:query] if args.key?(:query)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Returns a list of held accounts for a hold.
      class ListHeldAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The held accounts on a hold.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::VaultV1::HeldAccount>]
        attr_accessor :accounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accounts = args[:accounts] if args.key?(:accounts)
        end
      end
      
      # The holds for a matter.
      class ListHoldsResponse
        include Google::Apis::Core::Hashable
      
        # The list of holds.
        # Corresponds to the JSON property `holds`
        # @return [Array<Google::Apis::VaultV1::Hold>]
        attr_accessor :holds
      
        # Page token to retrieve the next page of results in the list.
        # If this is empty, then there are no more holds to list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @holds = args[:holds] if args.key?(:holds)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Provides the list of matters.
      class ListMattersResponse
        include Google::Apis::Core::Hashable
      
        # List of matters.
        # Corresponds to the JSON property `matters`
        # @return [Array<Google::Apis::VaultV1::Matter>]
        attr_accessor :matters
      
        # Page token to retrieve the next page of results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @matters = args[:matters] if args.key?(:matters)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Represents a matter.
      class Matter
        include Google::Apis::Core::Hashable
      
        # The description of the matter.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The matter ID which is generated by the server.
        # Should be blank when creating a new matter.
        # Corresponds to the JSON property `matterId`
        # @return [String]
        attr_accessor :matter_id
      
        # List of users and access to the matter. Currently there is no programmer
        # defined limit on the number of permissions a matter can have.
        # Corresponds to the JSON property `matterPermissions`
        # @return [Array<Google::Apis::VaultV1::MatterPermission>]
        attr_accessor :matter_permissions
      
        # The name of the matter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The state of the matter.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @matter_id = args[:matter_id] if args.key?(:matter_id)
          @matter_permissions = args[:matter_permissions] if args.key?(:matter_permissions)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Currently each matter only has one owner, and all others are collaborators.
      # When an account is purged, its corresponding MatterPermission resources
      # cease to exist.
      class MatterPermission
        include Google::Apis::Core::Hashable
      
        # The account id, as provided by <a href="https://developers.google.com/admin-
        # sdk/">Admin SDK</a>.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The user's role in this matter.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Remove an account as a matter collaborator.
      class RemoveMatterPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
        end
      end
      
      # Reopen a matter by ID.
      class ReopenMatterRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response to a ReopenMatterRequest.
      class ReopenMatterResponse
        include Google::Apis::Core::Hashable
      
        # Represents a matter.
        # Corresponds to the JSON property `matter`
        # @return [Google::Apis::VaultV1::Matter]
        attr_accessor :matter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @matter = args[:matter] if args.key?(:matter)
        end
      end
      
      # Undelete a matter by ID.
      class UndeleteMatterRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
