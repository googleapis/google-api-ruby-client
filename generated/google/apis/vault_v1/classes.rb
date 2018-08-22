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
      
      # Accounts to search
      class AccountInfo
        include Google::Apis::Core::Hashable
      
        # A set of accounts to search.
        # Corresponds to the JSON property `emails`
        # @return [Array<String>]
        attr_accessor :emails
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @emails = args[:emails] if args.key?(:emails)
        end
      end
      
      # A status detailing the status of each account creation, and the
      # HeldAccount, if successful.
      class AddHeldAccountResult
        include Google::Apis::Core::Hashable
      
        # An account being held in a particular hold. This structure is immutable.
        # This can be either a single user or a google group, depending on the corpus.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::VaultV1::HeldAccount]
        attr_accessor :account
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::VaultV1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Add a list of accounts to a hold.
      class AddHeldAccountsRequest
        include Google::Apis::Core::Hashable
      
        # Account ids to identify which accounts to add. Only account_ids or only
        # emails should be specified, but not both.
        # Corresponds to the JSON property `accountIds`
        # @return [Array<String>]
        attr_accessor :account_ids
      
        # Emails to identify which accounts to add. Only emails or only account_ids
        # should be specified, but not both.
        # Corresponds to the JSON property `emails`
        # @return [Array<String>]
        attr_accessor :emails
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_ids = args[:account_ids] if args.key?(:account_ids)
          @emails = args[:emails] if args.key?(:emails)
        end
      end
      
      # Response for batch create held accounts.
      class AddHeldAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The list of responses, in the same order as the batch request.
        # Corresponds to the JSON property `responses`
        # @return [Array<Google::Apis::VaultV1::AddHeldAccountResult>]
        attr_accessor :responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @responses = args[:responses] if args.key?(:responses)
        end
      end
      
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
      
      # An export file on cloud storage
      class CloudStorageFile
        include Google::Apis::Core::Hashable
      
        # The cloud storage bucket name of this export file.
        # Can be used in cloud storage JSON/XML API.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # The md5 hash of the file.
        # Corresponds to the JSON property `md5Hash`
        # @return [String]
        attr_accessor :md5_hash
      
        # The cloud storage object name of this export file.
        # Can be used in cloud storage JSON/XML API.
        # Corresponds to the JSON property `objectName`
        # @return [String]
        attr_accessor :object_name
      
        # The size of the export file.
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @md5_hash = args[:md5_hash] if args.key?(:md5_hash)
          @object_name = args[:object_name] if args.key?(:object_name)
          @size = args[:size] if args.key?(:size)
        end
      end
      
      # Export sink for cloud storage files.
      class CloudStorageSink
        include Google::Apis::Core::Hashable
      
        # Output only. The exported files on cloud storage.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::VaultV1::CloudStorageFile>]
        attr_accessor :files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @files = args[:files] if args.key?(:files)
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
      
      # The options for Drive export.
      class DriveExportOptions
        include Google::Apis::Core::Hashable
      
        # Set to true to include access level information for users
        # with <a href="https://support.google.com/vault/answer/6099459#metadata">
        # indirect access</a>
        # to files.
        # Corresponds to the JSON property `includeAccessInfo`
        # @return [Boolean]
        attr_accessor :include_access_info
        alias_method :include_access_info?, :include_access_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_access_info = args[:include_access_info] if args.key?(:include_access_info)
        end
      end
      
      # Drive search advanced options
      class DriveOptions
        include Google::Apis::Core::Hashable
      
        # Set to true to include Team Drive.
        # Corresponds to the JSON property `includeTeamDrives`
        # @return [Boolean]
        attr_accessor :include_team_drives
        alias_method :include_team_drives?, :include_team_drives
      
        # Search the versions of the Drive file
        # as of the reference date. These timestamps are in GMT and
        # rounded down to the given date.
        # Corresponds to the JSON property `versionDate`
        # @return [String]
        attr_accessor :version_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_team_drives = args[:include_team_drives] if args.key?(:include_team_drives)
          @version_date = args[:version_date] if args.key?(:version_date)
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
      
      # An export
      class Export
        include Google::Apis::Core::Hashable
      
        # Export sink for cloud storage files.
        # Corresponds to the JSON property `cloudStorageSink`
        # @return [Google::Apis::VaultV1::CloudStorageSink]
        attr_accessor :cloud_storage_sink
      
        # Output only. The time when the export was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Export advanced options
        # Corresponds to the JSON property `exportOptions`
        # @return [Google::Apis::VaultV1::ExportOptions]
        attr_accessor :export_options
      
        # Output only. The generated export ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. The matter ID.
        # Corresponds to the JSON property `matterId`
        # @return [String]
        attr_accessor :matter_id
      
        # The export name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A query definition relevant for search & export.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::VaultV1::Query]
        attr_accessor :query
      
        # User's information.
        # Corresponds to the JSON property `requester`
        # @return [Google::Apis::VaultV1::UserInfo]
        attr_accessor :requester
      
        # Stats of an export.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::VaultV1::ExportStats]
        attr_accessor :stats
      
        # Output only. The export status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_storage_sink = args[:cloud_storage_sink] if args.key?(:cloud_storage_sink)
          @create_time = args[:create_time] if args.key?(:create_time)
          @export_options = args[:export_options] if args.key?(:export_options)
          @id = args[:id] if args.key?(:id)
          @matter_id = args[:matter_id] if args.key?(:matter_id)
          @name = args[:name] if args.key?(:name)
          @query = args[:query] if args.key?(:query)
          @requester = args[:requester] if args.key?(:requester)
          @stats = args[:stats] if args.key?(:stats)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Export advanced options
      class ExportOptions
        include Google::Apis::Core::Hashable
      
        # The options for Drive export.
        # Corresponds to the JSON property `driveOptions`
        # @return [Google::Apis::VaultV1::DriveExportOptions]
        attr_accessor :drive_options
      
        # The options for groups export.
        # Corresponds to the JSON property `groupsOptions`
        # @return [Google::Apis::VaultV1::GroupsExportOptions]
        attr_accessor :groups_options
      
        # The options for hangouts chat export.
        # Corresponds to the JSON property `hangoutsChatOptions`
        # @return [Google::Apis::VaultV1::HangoutsChatExportOptions]
        attr_accessor :hangouts_chat_options
      
        # The options for mail export.
        # Corresponds to the JSON property `mailOptions`
        # @return [Google::Apis::VaultV1::MailExportOptions]
        attr_accessor :mail_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_options = args[:drive_options] if args.key?(:drive_options)
          @groups_options = args[:groups_options] if args.key?(:groups_options)
          @hangouts_chat_options = args[:hangouts_chat_options] if args.key?(:hangouts_chat_options)
          @mail_options = args[:mail_options] if args.key?(:mail_options)
        end
      end
      
      # Stats of an export.
      class ExportStats
        include Google::Apis::Core::Hashable
      
        # The number of documents already processed by the export.
        # Corresponds to the JSON property `exportedArtifactCount`
        # @return [Fixnum]
        attr_accessor :exported_artifact_count
      
        # The size of export in bytes.
        # Corresponds to the JSON property `sizeInBytes`
        # @return [Fixnum]
        attr_accessor :size_in_bytes
      
        # The number of documents to be exported.
        # Corresponds to the JSON property `totalArtifactCount`
        # @return [Fixnum]
        attr_accessor :total_artifact_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exported_artifact_count = args[:exported_artifact_count] if args.key?(:exported_artifact_count)
          @size_in_bytes = args[:size_in_bytes] if args.key?(:size_in_bytes)
          @total_artifact_count = args[:total_artifact_count] if args.key?(:total_artifact_count)
        end
      end
      
      # The options for groups export.
      class GroupsExportOptions
        include Google::Apis::Core::Hashable
      
        # The export format for groups export.
        # Corresponds to the JSON property `exportFormat`
        # @return [String]
        attr_accessor :export_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_format = args[:export_format] if args.key?(:export_format)
        end
      end
      
      # The options for hangouts chat export.
      class HangoutsChatExportOptions
        include Google::Apis::Core::Hashable
      
        # The export format for hangouts chat export.
        # Corresponds to the JSON property `exportFormat`
        # @return [String]
        attr_accessor :export_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_format = args[:export_format] if args.key?(:export_format)
        end
      end
      
      # Accounts to search
      class HangoutsChatInfo
        include Google::Apis::Core::Hashable
      
        # A set of rooms to search.
        # Corresponds to the JSON property `roomId`
        # @return [Array<String>]
        attr_accessor :room_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @room_id = args[:room_id] if args.key?(:room_id)
        end
      end
      
      # Hangouts chat search advanced options
      class HangoutsChatOptions
        include Google::Apis::Core::Hashable
      
        # Set to true to include rooms.
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
      
      # The holds for a matter.
      class ListExportsResponse
        include Google::Apis::Core::Hashable
      
        # The list of exports.
        # Corresponds to the JSON property `exports`
        # @return [Array<Google::Apis::VaultV1::Export>]
        attr_accessor :exports
      
        # Page token to retrieve the next page of results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exports = args[:exports] if args.key?(:exports)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
      
      # The options for mail export.
      class MailExportOptions
        include Google::Apis::Core::Hashable
      
        # The export file format.
        # Corresponds to the JSON property `exportFormat`
        # @return [String]
        attr_accessor :export_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_format = args[:export_format] if args.key?(:export_format)
        end
      end
      
      # Mail search advanced options
      class MailOptions
        include Google::Apis::Core::Hashable
      
        # Set to true to exclude drafts.
        # Corresponds to the JSON property `excludeDrafts`
        # @return [Boolean]
        attr_accessor :exclude_drafts
        alias_method :exclude_drafts?, :exclude_drafts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_drafts = args[:exclude_drafts] if args.key?(:exclude_drafts)
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
      
      # Org Unit to search
      class OrgUnitInfo
        include Google::Apis::Core::Hashable
      
        # Org unit to search, as provided by the
        # <a href="https://developers.google.com/admin-sdk/directory/">Admin SDK
        # Directory API</a>.
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
        end
      end
      
      # A query definition relevant for search & export.
      class Query
        include Google::Apis::Core::Hashable
      
        # Accounts to search
        # Corresponds to the JSON property `accountInfo`
        # @return [Google::Apis::VaultV1::AccountInfo]
        attr_accessor :account_info
      
        # The corpus to search.
        # Corresponds to the JSON property `corpus`
        # @return [String]
        attr_accessor :corpus
      
        # The data source to search from.
        # Corresponds to the JSON property `dataScope`
        # @return [String]
        attr_accessor :data_scope
      
        # Drive search advanced options
        # Corresponds to the JSON property `driveOptions`
        # @return [Google::Apis::VaultV1::DriveOptions]
        attr_accessor :drive_options
      
        # The end time range for the search query. These timestamps are in GMT and
        # rounded down to the start of the given date.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Accounts to search
        # Corresponds to the JSON property `hangoutsChatInfo`
        # @return [Google::Apis::VaultV1::HangoutsChatInfo]
        attr_accessor :hangouts_chat_info
      
        # Hangouts chat search advanced options
        # Corresponds to the JSON property `hangoutsChatOptions`
        # @return [Google::Apis::VaultV1::HangoutsChatOptions]
        attr_accessor :hangouts_chat_options
      
        # Mail search advanced options
        # Corresponds to the JSON property `mailOptions`
        # @return [Google::Apis::VaultV1::MailOptions]
        attr_accessor :mail_options
      
        # Org Unit to search
        # Corresponds to the JSON property `orgUnitInfo`
        # @return [Google::Apis::VaultV1::OrgUnitInfo]
        attr_accessor :org_unit_info
      
        # The search method to use.
        # Corresponds to the JSON property `searchMethod`
        # @return [String]
        attr_accessor :search_method
      
        # The start time range for the search query. These timestamps are in GMT and
        # rounded down to the start of the given date.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Team Drives to search
        # Corresponds to the JSON property `teamDriveInfo`
        # @return [Google::Apis::VaultV1::TeamDriveInfo]
        attr_accessor :team_drive_info
      
        # The corpus-specific
        # <a href="https://support.google.com/vault/answer/2474474">search operators</a>
        # used to generate search results.
        # Corresponds to the JSON property `terms`
        # @return [String]
        attr_accessor :terms
      
        # The time zone name.
        # It should be an IANA TZ name, such as "America/Los_Angeles".
        # For more information, see
        # <a href="https://en.wikipedia.org/wiki/List_of_tz_database_time_zones">Time
        # Zone</a>.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_info = args[:account_info] if args.key?(:account_info)
          @corpus = args[:corpus] if args.key?(:corpus)
          @data_scope = args[:data_scope] if args.key?(:data_scope)
          @drive_options = args[:drive_options] if args.key?(:drive_options)
          @end_time = args[:end_time] if args.key?(:end_time)
          @hangouts_chat_info = args[:hangouts_chat_info] if args.key?(:hangouts_chat_info)
          @hangouts_chat_options = args[:hangouts_chat_options] if args.key?(:hangouts_chat_options)
          @mail_options = args[:mail_options] if args.key?(:mail_options)
          @org_unit_info = args[:org_unit_info] if args.key?(:org_unit_info)
          @search_method = args[:search_method] if args.key?(:search_method)
          @start_time = args[:start_time] if args.key?(:start_time)
          @team_drive_info = args[:team_drive_info] if args.key?(:team_drive_info)
          @terms = args[:terms] if args.key?(:terms)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Remove a list of accounts from a hold.
      class RemoveHeldAccountsRequest
        include Google::Apis::Core::Hashable
      
        # Account ids to identify HeldAccounts to remove.
        # Corresponds to the JSON property `accountIds`
        # @return [Array<String>]
        attr_accessor :account_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_ids = args[:account_ids] if args.key?(:account_ids)
        end
      end
      
      # Response for batch delete held accounts.
      class RemoveHeldAccountsResponse
        include Google::Apis::Core::Hashable
      
        # A list of statuses for deleted accounts. Results have the
        # same order as the request.
        # Corresponds to the JSON property `statuses`
        # @return [Array<Google::Apis::VaultV1::Status>]
        attr_accessor :statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @statuses = args[:statuses] if args.key?(:statuses)
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` that can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Team Drives to search
      class TeamDriveInfo
        include Google::Apis::Core::Hashable
      
        # List of Team Drive ids, as provided by <a
        # href="https://developers.google.com/drive">Drive API</a>.
        # Corresponds to the JSON property `teamDriveIds`
        # @return [Array<String>]
        attr_accessor :team_drive_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @team_drive_ids = args[:team_drive_ids] if args.key?(:team_drive_ids)
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
      
      # User's information.
      class UserInfo
        include Google::Apis::Core::Hashable
      
        # The displayed name of the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email address of the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
        end
      end
    end
  end
end
