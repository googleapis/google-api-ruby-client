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
    module VaultV1
      
      # The results count for each account.
      class AccountCount
        include Google::Apis::Core::Hashable
      
        # User's information.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::VaultV1::UserInfo]
        attr_accessor :account
      
        # The number of results (messages or files) found for this account.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @count = args[:count] if args.key?(:count)
        end
      end
      
      # An error that occurred when querying a specific account
      class AccountCountError
        include Google::Apis::Core::Hashable
      
        # User's information.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::VaultV1::UserInfo]
        attr_accessor :account
      
        # Account query error.
        # Corresponds to the JSON property `errorType`
        # @return [String]
        attr_accessor :error_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @error_type = args[:error_type] if args.key?(:error_type)
        end
      end
      
      # The accounts to search
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
      
      # The status of each account creation, and the **HeldAccount**, if successful.
      class AddHeldAccountResult
        include Google::Apis::Core::Hashable
      
        # An account covered by a hold. This structure is immutable. It can be an
        # individual account or a Google Group, depending on the service. To work with
        # Vault resources, the account must have the [required Vault privileges] (https:/
        # /support.google.com/vault/answer/2799699) and access to the matter. To access
        # a matter, the account must have created the matter, have the matter shared
        # with them, or have the **View All Matters** privilege.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::VaultV1::HeldAccount]
        attr_accessor :account
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
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
      
        # A comma-separated list of the account IDs of the accounts to add to the hold.
        # Specify either **emails** or **account_ids**, but not both.
        # Corresponds to the JSON property `accountIds`
        # @return [Array<String>]
        attr_accessor :account_ids
      
        # A comma-separated list of the emails of the accounts to add to the hold.
        # Specify either **emails** or **account_ids**, but not both.
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
      
      # Add an account with the permission specified. The role cannot be owner. If an
      # account already has a role in the matter, the existing role is overwritten.
      class AddMatterPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # Only relevant if **sendEmails** is **true**. To CC the requestor in the email
        # message, set to **true**. To not CC requestor, set to **false**.
        # Corresponds to the JSON property `ccMe`
        # @return [Boolean]
        attr_accessor :cc_me
        alias_method :cc_me?, :cc_me
      
        # Users can be matter owners or collaborators. Each matter has only one owner.
        # All others users who can access the matter are collaborators. When an account
        # is purged, its corresponding MatterPermission resources cease to exist.
        # Corresponds to the JSON property `matterPermission`
        # @return [Google::Apis::VaultV1::MatterPermission]
        attr_accessor :matter_permission
      
        # To send a notification email to the added account, set to **true**. To not
        # send a notification email, set to **false**.
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
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
        # Represents a matter. To work with Vault resources, the account must have the [
        # required Vault privileges] (https://support.google.com/vault/answer/2799699)
        # and access to the matter. To access a matter, the account must have created
        # the matter, have the matter shared with them, or have the **View All Matters**
        # privilege.
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
      
      # The export file in Cloud Storage
      class CloudStorageFile
        include Google::Apis::Core::Hashable
      
        # The name of the Cloud Storage bucket for the export file. You can use this
        # value in the [Cloud Storage JSON or XML APIs](https://cloud.google.com/storage/
        # docs/apis), but not to list the bucket contents. Instead, you can [get
        # individual export files](https://cloud.google.com/storage/docs/json_api/v1/
        # objects/get) by object name.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # The md5 hash of the file.
        # Corresponds to the JSON property `md5Hash`
        # @return [String]
        attr_accessor :md5_hash
      
        # The name of the Cloud Storage object for the export file. You can use this
        # value in the [Cloud Storage JSON or XML APIs](https://cloud.google.com/storage/
        # docs/apis).
        # Corresponds to the JSON property `objectName`
        # @return [String]
        attr_accessor :object_name
      
        # The export file size.
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
      
      # Export sink for Cloud Storage files.
      class CloudStorageSink
        include Google::Apis::Core::Hashable
      
        # Output only. The exported files in Cloud Storage.
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
      
      # Service-specific options for holds.
      class CorpusQuery
        include Google::Apis::Core::Hashable
      
        # Options for Drive holds.
        # Corresponds to the JSON property `driveQuery`
        # @return [Google::Apis::VaultV1::HeldDriveQuery]
        attr_accessor :drive_query
      
        # Query options for group holds.
        # Corresponds to the JSON property `groupsQuery`
        # @return [Google::Apis::VaultV1::HeldGroupsQuery]
        attr_accessor :groups_query
      
        # Options for Chat holds.
        # Corresponds to the JSON property `hangoutsChatQuery`
        # @return [Google::Apis::VaultV1::HeldHangoutsChatQuery]
        attr_accessor :hangouts_chat_query
      
        # Query options for Gmail holds.
        # Corresponds to the JSON property `mailQuery`
        # @return [Google::Apis::VaultV1::HeldMailQuery]
        attr_accessor :mail_query
      
        # Options for Voice holds.
        # Corresponds to the JSON property `voiceQuery`
        # @return [Google::Apis::VaultV1::HeldVoiceQuery]
        attr_accessor :voice_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_query = args[:drive_query] if args.key?(:drive_query)
          @groups_query = args[:groups_query] if args.key?(:groups_query)
          @hangouts_chat_query = args[:hangouts_chat_query] if args.key?(:hangouts_chat_query)
          @mail_query = args[:mail_query] if args.key?(:mail_query)
          @voice_query = args[:voice_query] if args.key?(:voice_query)
        end
      end
      
      # Long running operation metadata for CountArtifacts.
      class CountArtifactsMetadata
        include Google::Apis::Core::Hashable
      
        # End time of count operation. Available when operation is done.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The matter ID of the associated matter.
        # Corresponds to the JSON property `matterId`
        # @return [String]
        attr_accessor :matter_id
      
        # The query definition used for search and export.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::VaultV1::Query]
        attr_accessor :query
      
        # Creation time of count operation.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @matter_id = args[:matter_id] if args.key?(:matter_id)
          @query = args[:query] if args.key?(:query)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Count artifacts request.
      class CountArtifactsRequest
        include Google::Apis::Core::Hashable
      
        # The query definition used for search and export.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::VaultV1::Query]
        attr_accessor :query
      
        # Sets the granularity of the count results.
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query = args[:query] if args.key?(:query)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # Definition of the response for method CountArtifacts.
      class CountArtifactsResponse
        include Google::Apis::Core::Hashable
      
        # Groups specific count metrics.
        # Corresponds to the JSON property `groupsCountResult`
        # @return [Google::Apis::VaultV1::GroupsCountResult]
        attr_accessor :groups_count_result
      
        # Gmail and classic Hangouts-specific count metrics.
        # Corresponds to the JSON property `mailCountResult`
        # @return [Google::Apis::VaultV1::MailCountResult]
        attr_accessor :mail_count_result
      
        # Total count of messages.
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @groups_count_result = args[:groups_count_result] if args.key?(:groups_count_result)
          @mail_count_result = args[:mail_count_result] if args.key?(:mail_count_result)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # Options for Drive exports.
      class DriveExportOptions
        include Google::Apis::Core::Hashable
      
        # To include access level information for users with [indirect access](https://
        # support.google.com/vault/answer/6099459#metadata) to files, set to **true**.
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
      
      # Additional options for Drive search
      class DriveOptions
        include Google::Apis::Core::Hashable
      
        # Set whether the results include only content encrypted with [Google Workspace
        # Client-side encryption](https://support.google.com/a?p=cse_ov) content, only
        # unencrypted content, or both. Defaults to both. Currently supported for Drive.
        # Corresponds to the JSON property `clientSideEncryptedOption`
        # @return [String]
        attr_accessor :client_side_encrypted_option
      
        # Set to **true** to include shared drives.
        # Corresponds to the JSON property `includeSharedDrives`
        # @return [Boolean]
        attr_accessor :include_shared_drives
        alias_method :include_shared_drives?, :include_shared_drives
      
        # Set to true to include Team Drive.
        # Corresponds to the JSON property `includeTeamDrives`
        # @return [Boolean]
        attr_accessor :include_team_drives
        alias_method :include_team_drives?, :include_team_drives
      
        # Search the current version of the Drive file, but export the contents of the
        # last version saved before 12:00 AM UTC on the specified date. Enter the date
        # in UTC.
        # Corresponds to the JSON property `versionDate`
        # @return [String]
        attr_accessor :version_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_side_encrypted_option = args[:client_side_encrypted_option] if args.key?(:client_side_encrypted_option)
          @include_shared_drives = args[:include_shared_drives] if args.key?(:include_shared_drives)
          @include_team_drives = args[:include_team_drives] if args.key?(:include_team_drives)
          @version_date = args[:version_date] if args.key?(:version_date)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An export. To work with Vault resources, the account must have the [required
      # Vault privileges](https://support.google.com/vault/answer/2799699) and access
      # to the matter. To access a matter, the account must have created the matter,
      # have the matter shared with them, or have the **View All Matters** privilege.
      class Export
        include Google::Apis::Core::Hashable
      
        # Export sink for Cloud Storage files.
        # Corresponds to the JSON property `cloudStorageSink`
        # @return [Google::Apis::VaultV1::CloudStorageSink]
        attr_accessor :cloud_storage_sink
      
        # Output only. The time when the export was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Additional options for exports
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
      
        # The export name. Don't use special characters (~!$'(),;@:/?) in the name, they
        # can prevent you from downloading exports.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The query definition used for search and export.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::VaultV1::Query]
        attr_accessor :query
      
        # User's information.
        # Corresponds to the JSON property `requester`
        # @return [Google::Apis::VaultV1::UserInfo]
        attr_accessor :requester
      
        # Progress information for an export.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::VaultV1::ExportStats]
        attr_accessor :stats
      
        # Output only. The status of the export.
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
      
      # Additional options for exports
      class ExportOptions
        include Google::Apis::Core::Hashable
      
        # Options for Drive exports.
        # Corresponds to the JSON property `driveOptions`
        # @return [Google::Apis::VaultV1::DriveExportOptions]
        attr_accessor :drive_options
      
        # Options for Groups exports.
        # Corresponds to the JSON property `groupsOptions`
        # @return [Google::Apis::VaultV1::GroupsExportOptions]
        attr_accessor :groups_options
      
        # Options for Chat exports.
        # Corresponds to the JSON property `hangoutsChatOptions`
        # @return [Google::Apis::VaultV1::HangoutsChatExportOptions]
        attr_accessor :hangouts_chat_options
      
        # Options for Gmail exports.
        # Corresponds to the JSON property `mailOptions`
        # @return [Google::Apis::VaultV1::MailExportOptions]
        attr_accessor :mail_options
      
        # The requested data region for the export.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # The options for Voice exports.
        # Corresponds to the JSON property `voiceOptions`
        # @return [Google::Apis::VaultV1::VoiceExportOptions]
        attr_accessor :voice_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_options = args[:drive_options] if args.key?(:drive_options)
          @groups_options = args[:groups_options] if args.key?(:groups_options)
          @hangouts_chat_options = args[:hangouts_chat_options] if args.key?(:hangouts_chat_options)
          @mail_options = args[:mail_options] if args.key?(:mail_options)
          @region = args[:region] if args.key?(:region)
          @voice_options = args[:voice_options] if args.key?(:voice_options)
        end
      end
      
      # Progress information for an export.
      class ExportStats
        include Google::Apis::Core::Hashable
      
        # The number of messages or files already processed for export.
        # Corresponds to the JSON property `exportedArtifactCount`
        # @return [Fixnum]
        attr_accessor :exported_artifact_count
      
        # The size of export in bytes.
        # Corresponds to the JSON property `sizeInBytes`
        # @return [Fixnum]
        attr_accessor :size_in_bytes
      
        # The number of messages or files to be exported.
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
      
      # Groups specific count metrics.
      class GroupsCountResult
        include Google::Apis::Core::Hashable
      
        # Error occurred when querying these accounts.
        # Corresponds to the JSON property `accountCountErrors`
        # @return [Array<Google::Apis::VaultV1::AccountCountError>]
        attr_accessor :account_count_errors
      
        # Subtotal count per matching account that have more than zero messages.
        # Corresponds to the JSON property `accountCounts`
        # @return [Array<Google::Apis::VaultV1::AccountCount>]
        attr_accessor :account_counts
      
        # Total number of accounts that can be queried and have more than zero messages.
        # Corresponds to the JSON property `matchingAccountsCount`
        # @return [Fixnum]
        attr_accessor :matching_accounts_count
      
        # When **DataScope** is **HELD_DATA**, these accounts in the request are not
        # queried because they are not on hold. For other data scope, this field is not
        # set.
        # Corresponds to the JSON property `nonQueryableAccounts`
        # @return [Array<String>]
        attr_accessor :non_queryable_accounts
      
        # Total number of accounts involved in this count operation.
        # Corresponds to the JSON property `queriedAccountsCount`
        # @return [Fixnum]
        attr_accessor :queried_accounts_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_count_errors = args[:account_count_errors] if args.key?(:account_count_errors)
          @account_counts = args[:account_counts] if args.key?(:account_counts)
          @matching_accounts_count = args[:matching_accounts_count] if args.key?(:matching_accounts_count)
          @non_queryable_accounts = args[:non_queryable_accounts] if args.key?(:non_queryable_accounts)
          @queried_accounts_count = args[:queried_accounts_count] if args.key?(:queried_accounts_count)
        end
      end
      
      # Options for Groups exports.
      class GroupsExportOptions
        include Google::Apis::Core::Hashable
      
        # The file format for exported messages.
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
      
      # Options for Chat exports.
      class HangoutsChatExportOptions
        include Google::Apis::Core::Hashable
      
        # The file format for exported messages.
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
      
      # The Chat spaces to search
      class HangoutsChatInfo
        include Google::Apis::Core::Hashable
      
        # A list of Chat spaces IDs, as provided by the [Chat API](https://developers.
        # google.com/chat). There is a limit of exporting from 500 Chat spaces per
        # request.
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
      
      # Additional options for Google Chat search
      class HangoutsChatOptions
        include Google::Apis::Core::Hashable
      
        # For searches by account or organizational unit, set to **true** to include
        # rooms.
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
      
      # An account covered by a hold. This structure is immutable. It can be an
      # individual account or a Google Group, depending on the service. To work with
      # Vault resources, the account must have the [required Vault privileges] (https:/
      # /support.google.com/vault/answer/2799699) and access to the matter. To access
      # a matter, the account must have created the matter, have the matter shared
      # with them, or have the **View All Matters** privilege.
      class HeldAccount
        include Google::Apis::Core::Hashable
      
        # The account ID, as provided by the [Admin SDK](https://developers.google.com/
        # admin-sdk/).
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The primary email address of the account. If used as an input, this takes
        # precedence over **accountId**.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Output only. The first name of the account holder.
        # Corresponds to the JSON property `firstName`
        # @return [String]
        attr_accessor :first_name
      
        # Output only. When the account was put on hold.
        # Corresponds to the JSON property `holdTime`
        # @return [String]
        attr_accessor :hold_time
      
        # Output only. The last name of the account holder.
        # Corresponds to the JSON property `lastName`
        # @return [String]
        attr_accessor :last_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @email = args[:email] if args.key?(:email)
          @first_name = args[:first_name] if args.key?(:first_name)
          @hold_time = args[:hold_time] if args.key?(:hold_time)
          @last_name = args[:last_name] if args.key?(:last_name)
        end
      end
      
      # Options for Drive holds.
      class HeldDriveQuery
        include Google::Apis::Core::Hashable
      
        # To include files in shared drives in the hold, set to **true**.
        # Corresponds to the JSON property `includeSharedDriveFiles`
        # @return [Boolean]
        attr_accessor :include_shared_drive_files
        alias_method :include_shared_drive_files?, :include_shared_drive_files
      
        # To include files in Team Drives in the hold, set to **true**.
        # Corresponds to the JSON property `includeTeamDriveFiles`
        # @return [Boolean]
        attr_accessor :include_team_drive_files
        alias_method :include_team_drive_files?, :include_team_drive_files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_shared_drive_files = args[:include_shared_drive_files] if args.key?(:include_shared_drive_files)
          @include_team_drive_files = args[:include_team_drive_files] if args.key?(:include_team_drive_files)
        end
      end
      
      # Query options for group holds.
      class HeldGroupsQuery
        include Google::Apis::Core::Hashable
      
        # The end time for the query. Specify in GMT. The value is rounded to 12 AM on
        # the specified date.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The start time for the query. Specify in GMT. The value is rounded to 12 AM on
        # the specified date.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The [search operators](https://support.google.com/vault/answer/2474474) used
        # to refine the messages covered by the hold.
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
      
      # Options for Chat holds.
      class HeldHangoutsChatQuery
        include Google::Apis::Core::Hashable
      
        # To include messages in Chat spaces the user was a member of, set to **true**.
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
      
      # Query options for Gmail holds.
      class HeldMailQuery
        include Google::Apis::Core::Hashable
      
        # The end time for the query. Specify in GMT. The value is rounded to 12 AM on
        # the specified date.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The start time for the query. Specify in GMT. The value is rounded to 12 AM on
        # the specified date.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The [search operators](https://support.google.com/vault/answer/2474474) used
        # to refine the messages covered by the hold.
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
      
      # The organizational unit covered by a hold. This structure is immutable.
      class HeldOrgUnit
        include Google::Apis::Core::Hashable
      
        # When the organizational unit was put on hold. This property is immutable.
        # Corresponds to the JSON property `holdTime`
        # @return [String]
        attr_accessor :hold_time
      
        # The organizational unit's immutable ID as provided by the [Admin SDK](https://
        # developers.google.com/admin-sdk/).
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
      
      # Options for Voice holds.
      class HeldVoiceQuery
        include Google::Apis::Core::Hashable
      
        # A list of data types covered by the hold. Should be non-empty. Order does not
        # matter and duplicates are ignored.
        # Corresponds to the JSON property `coveredData`
        # @return [Array<String>]
        attr_accessor :covered_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @covered_data = args[:covered_data] if args.key?(:covered_data)
        end
      end
      
      # A hold. A hold prevents the specified Google Workspace service from purging
      # data for specific accounts or all members of an organizational unit. To work
      # with Vault resources, the account must have the [required Vault privileges] (
      # https://support.google.com/vault/answer/2799699) and access to the matter. To
      # access a matter, the account must have created the matter, have the matter
      # shared with them, or have the **View All Matters** privilege.
      class Hold
        include Google::Apis::Core::Hashable
      
        # If set, the hold applies to the specified accounts and **orgUnit** must be
        # empty.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::VaultV1::HeldAccount>]
        attr_accessor :accounts
      
        # The service to be searched.
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
      
        # The organizational unit covered by a hold. This structure is immutable.
        # Corresponds to the JSON property `orgUnit`
        # @return [Google::Apis::VaultV1::HeldOrgUnit]
        attr_accessor :org_unit
      
        # Service-specific options for holds.
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
      
      # The exports for a matter.
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
      
      # Returns a list of the accounts covered by a hold.
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
      
        # Page token to retrieve the next page of results in the list. If this is empty,
        # then there are no more holds to list.
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
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::VaultV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # Definition of the response for method ListSaveQuery.
      class ListSavedQueriesResponse
        include Google::Apis::Core::Hashable
      
        # Page token to retrieve the next page of results in the list. If this is empty,
        # then there are no more saved queries to list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of saved queries.
        # Corresponds to the JSON property `savedQueries`
        # @return [Array<Google::Apis::VaultV1::SavedQuery>]
        attr_accessor :saved_queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @saved_queries = args[:saved_queries] if args.key?(:saved_queries)
        end
      end
      
      # Gmail and classic Hangouts-specific count metrics.
      class MailCountResult
        include Google::Apis::Core::Hashable
      
        # Errors occurred when querying these accounts.
        # Corresponds to the JSON property `accountCountErrors`
        # @return [Array<Google::Apis::VaultV1::AccountCountError>]
        attr_accessor :account_count_errors
      
        # Subtotal count per matching account that have more than zero messages.
        # Corresponds to the JSON property `accountCounts`
        # @return [Array<Google::Apis::VaultV1::AccountCount>]
        attr_accessor :account_counts
      
        # Total number of accounts that can be queried and have more than zero messages.
        # Corresponds to the JSON property `matchingAccountsCount`
        # @return [Fixnum]
        attr_accessor :matching_accounts_count
      
        # When **DataScope** is **HELD_DATA** and when account emails are passed in
        # explicitly, the list of accounts in the request that are not queried because
        # they are not on hold in the matter. For other data scopes, this field is not
        # set.
        # Corresponds to the JSON property `nonQueryableAccounts`
        # @return [Array<String>]
        attr_accessor :non_queryable_accounts
      
        # Total number of accounts involved in this count operation.
        # Corresponds to the JSON property `queriedAccountsCount`
        # @return [Fixnum]
        attr_accessor :queried_accounts_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_count_errors = args[:account_count_errors] if args.key?(:account_count_errors)
          @account_counts = args[:account_counts] if args.key?(:account_counts)
          @matching_accounts_count = args[:matching_accounts_count] if args.key?(:matching_accounts_count)
          @non_queryable_accounts = args[:non_queryable_accounts] if args.key?(:non_queryable_accounts)
          @queried_accounts_count = args[:queried_accounts_count] if args.key?(:queried_accounts_count)
        end
      end
      
      # Options for Gmail exports.
      class MailExportOptions
        include Google::Apis::Core::Hashable
      
        # The file format for exported messages.
        # Corresponds to the JSON property `exportFormat`
        # @return [String]
        attr_accessor :export_format
      
        # To export confidential mode content, set to **true**.
        # Corresponds to the JSON property `showConfidentialModeContent`
        # @return [Boolean]
        attr_accessor :show_confidential_mode_content
        alias_method :show_confidential_mode_content?, :show_confidential_mode_content
      
        # To use the new export system, set to **true**.
        # Corresponds to the JSON property `useNewExport`
        # @return [Boolean]
        attr_accessor :use_new_export
        alias_method :use_new_export?, :use_new_export
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_format = args[:export_format] if args.key?(:export_format)
          @show_confidential_mode_content = args[:show_confidential_mode_content] if args.key?(:show_confidential_mode_content)
          @use_new_export = args[:use_new_export] if args.key?(:use_new_export)
        end
      end
      
      # Additional options for Gmail search
      class MailOptions
        include Google::Apis::Core::Hashable
      
        # Set to **true** to exclude drafts.
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
      
      # Represents a matter. To work with Vault resources, the account must have the [
      # required Vault privileges] (https://support.google.com/vault/answer/2799699)
      # and access to the matter. To access a matter, the account must have created
      # the matter, have the matter shared with them, or have the **View All Matters**
      # privilege.
      class Matter
        include Google::Apis::Core::Hashable
      
        # An optional description for the matter.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The matter ID, which is generated by the server. Leave blank when creating a
        # matter.
        # Corresponds to the JSON property `matterId`
        # @return [String]
        attr_accessor :matter_id
      
        # Lists the users and their permission for the matter. Currently there is no
        # programmer defined limit on the number of permissions a matter can have.
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
      
      # Users can be matter owners or collaborators. Each matter has only one owner.
      # All others users who can access the matter are collaborators. When an account
      # is purged, its corresponding MatterPermission resources cease to exist.
      class MatterPermission
        include Google::Apis::Core::Hashable
      
        # The account ID, as provided by the [Admin SDK](https://developers.google.com/
        # admin-sdk/).
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The user's role for the matter.
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
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VaultV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # The organizational unit to search
      class OrgUnitInfo
        include Google::Apis::Core::Hashable
      
        # The name of the organizational unit to search, as provided by the [Admin SDK
        # Directory API](https://developers.google.com/admin-sdk/directory/).
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
      
      # The query definition used for search and export.
      class Query
        include Google::Apis::Core::Hashable
      
        # The accounts to search
        # Corresponds to the JSON property `accountInfo`
        # @return [Google::Apis::VaultV1::AccountInfo]
        attr_accessor :account_info
      
        # The Google Workspace service to search.
        # Corresponds to the JSON property `corpus`
        # @return [String]
        attr_accessor :corpus
      
        # The data source to search.
        # Corresponds to the JSON property `dataScope`
        # @return [String]
        attr_accessor :data_scope
      
        # Additional options for Drive search
        # Corresponds to the JSON property `driveOptions`
        # @return [Google::Apis::VaultV1::DriveOptions]
        attr_accessor :drive_options
      
        # The end time for the search query. Specify in GMT. The value is rounded to 12
        # AM on the specified date.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The Chat spaces to search
        # Corresponds to the JSON property `hangoutsChatInfo`
        # @return [Google::Apis::VaultV1::HangoutsChatInfo]
        attr_accessor :hangouts_chat_info
      
        # Additional options for Google Chat search
        # Corresponds to the JSON property `hangoutsChatOptions`
        # @return [Google::Apis::VaultV1::HangoutsChatOptions]
        attr_accessor :hangouts_chat_options
      
        # Additional options for Gmail search
        # Corresponds to the JSON property `mailOptions`
        # @return [Google::Apis::VaultV1::MailOptions]
        attr_accessor :mail_options
      
        # The entity to search. This field replaces **searchMethod** to support shared
        # drives. When **searchMethod** is **TEAM_DRIVE**, the response of this field is
        # **SHARED_DRIVE**.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The organizational unit to search
        # Corresponds to the JSON property `orgUnitInfo`
        # @return [Google::Apis::VaultV1::OrgUnitInfo]
        attr_accessor :org_unit_info
      
        # The search method to use.
        # Corresponds to the JSON property `searchMethod`
        # @return [String]
        attr_accessor :search_method
      
        # The shared drives to search
        # Corresponds to the JSON property `sharedDriveInfo`
        # @return [Google::Apis::VaultV1::SharedDriveInfo]
        attr_accessor :shared_drive_info
      
        # The published site URLs of new Google Sites to search
        # Corresponds to the JSON property `sitesUrlInfo`
        # @return [Google::Apis::VaultV1::SitesUrlInfo]
        attr_accessor :sites_url_info
      
        # The start time for the search query. Specify in GMT. The value is rounded to
        # 12 AM on the specified date.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Team Drives to search
        # Corresponds to the JSON property `teamDriveInfo`
        # @return [Google::Apis::VaultV1::TeamDriveInfo]
        attr_accessor :team_drive_info
      
        # Service-specific [search operators](https://support.google.com/vault/answer/
        # 2474474) to filter search results.
        # Corresponds to the JSON property `terms`
        # @return [String]
        attr_accessor :terms
      
        # The time zone name. It should be an IANA TZ name, such as "America/Los_Angeles"
        # . For a list of time zone names, see [Time Zone](https://en.wikipedia.org/wiki/
        # List_of_tz_database_time_zones). For more information about how Vault uses
        # time zones, see [the Vault help center](https://support.google.com/vault/
        # answer/6092995#time).
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Additional options for Voice search
        # Corresponds to the JSON property `voiceOptions`
        # @return [Google::Apis::VaultV1::VoiceOptions]
        attr_accessor :voice_options
      
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
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @org_unit_info = args[:org_unit_info] if args.key?(:org_unit_info)
          @search_method = args[:search_method] if args.key?(:search_method)
          @shared_drive_info = args[:shared_drive_info] if args.key?(:shared_drive_info)
          @sites_url_info = args[:sites_url_info] if args.key?(:sites_url_info)
          @start_time = args[:start_time] if args.key?(:start_time)
          @team_drive_info = args[:team_drive_info] if args.key?(:team_drive_info)
          @terms = args[:terms] if args.key?(:terms)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @voice_options = args[:voice_options] if args.key?(:voice_options)
        end
      end
      
      # Remove a list of accounts from a hold.
      class RemoveHeldAccountsRequest
        include Google::Apis::Core::Hashable
      
        # The account IDs of the accounts to remove from the hold.
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
      
        # A list of statuses for the deleted accounts. Results have the same order as
        # the request.
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
      
        # Represents a matter. To work with Vault resources, the account must have the [
        # required Vault privileges] (https://support.google.com/vault/answer/2799699)
        # and access to the matter. To access a matter, the account must have created
        # the matter, have the matter shared with them, or have the **View All Matters**
        # privilege.
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
      
      # The definition of a saved query. To work with Vault resources, the account
      # must have the [required Vault privileges](https://support.google.com/vault/
      # answer/2799699) and access to the matter. To access a matter, the account must
      # have created the matter, have the matter shared with them, or have the **View
      # All Matters** privilege.
      class SavedQuery
        include Google::Apis::Core::Hashable
      
        # Output only. The server-generated timestamp when the saved query was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The name of the saved query.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The matter ID of the matter the saved query is saved in. The
        # server does not use this field during create and always uses matter ID in the
        # URL.
        # Corresponds to the JSON property `matterId`
        # @return [String]
        attr_accessor :matter_id
      
        # The query definition used for search and export.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::VaultV1::Query]
        attr_accessor :query
      
        # A unique identifier for the saved query.
        # Corresponds to the JSON property `savedQueryId`
        # @return [String]
        attr_accessor :saved_query_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @matter_id = args[:matter_id] if args.key?(:matter_id)
          @query = args[:query] if args.key?(:query)
          @saved_query_id = args[:saved_query_id] if args.key?(:saved_query_id)
        end
      end
      
      # The shared drives to search
      class SharedDriveInfo
        include Google::Apis::Core::Hashable
      
        # A list of shared drive IDs, as provided by the [Drive API](https://developers.
        # google.com/drive).
        # Corresponds to the JSON property `sharedDriveIds`
        # @return [Array<String>]
        attr_accessor :shared_drive_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shared_drive_ids = args[:shared_drive_ids] if args.key?(:shared_drive_ids)
        end
      end
      
      # The published site URLs of new Google Sites to search
      class SitesUrlInfo
        include Google::Apis::Core::Hashable
      
        # A list of published site URLs.
        # Corresponds to the JSON property `urls`
        # @return [Array<String>]
        attr_accessor :urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @urls = args[:urls] if args.key?(:urls)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
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
      
        # List of Team Drive IDs, as provided by the [Drive API](https://developers.
        # google.com/drive).
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
      
      # The options for Voice exports.
      class VoiceExportOptions
        include Google::Apis::Core::Hashable
      
        # The file format for exported text messages.
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
      
      # Additional options for Voice search
      class VoiceOptions
        include Google::Apis::Core::Hashable
      
        # Datatypes to search
        # Corresponds to the JSON property `coveredData`
        # @return [Array<String>]
        attr_accessor :covered_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @covered_data = args[:covered_data] if args.key?(:covered_data)
        end
      end
    end
  end
end
