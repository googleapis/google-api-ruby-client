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
    module ClouduseraccountsBeta
      
      # A list of authorized public keys for a user account.
      class AuthorizedKeysView
        include Google::Apis::Core::Hashable
      
        # [Output Only] The list of authorized public keys in SSH format.
        # Corresponds to the JSON property `keys`
        # @return [Array<String>]
        attr_accessor :keys
      
        # [Output Only] Whether the user has the ability to elevate on the instance that
        # requested the authorized keys.
        # Corresponds to the JSON property `sudoer`
        # @return [Boolean]
        attr_accessor :sudoer
        alias_method :sudoer?, :sudoer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] unless args[:keys].nil?
          @sudoer = args[:sudoer] unless args[:sudoer].nil?
        end
      end
      
      # A Group resource.
      class Group
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always clouduseraccounts#group for groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A list of URLs to User resources who belong to the group. Users
        # may only be members of groups in the same project.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Name of the resource; provided by the client when the resource is created.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @members = args[:members] unless args[:members].nil?
          @name = args[:name] unless args[:name].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class GroupList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Group resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ClouduseraccountsBeta::Group>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always clouduseraccounts#groupList for lists
        # of groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class GroupsAddMemberRequest
        include Google::Apis::Core::Hashable
      
        # Fully-qualified URLs of the User resources to add.
        # Corresponds to the JSON property `users`
        # @return [Array<String>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @users = args[:users] unless args[:users].nil?
        end
      end
      
      # 
      class GroupsRemoveMemberRequest
        include Google::Apis::Core::Hashable
      
        # Fully-qualified URLs of the User resources to remove.
        # Corresponds to the JSON property `users`
        # @return [Array<String>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @users = args[:users] unless args[:users].nil?
        end
      end
      
      # A list of all Linux accounts for this project. This API is only used by
      # Compute Engine virtual machines to get information about user accounts for a
      # project or instance. Linux resources are read-only views into users and groups
      # managed by the Compute Engine Accounts API.
      class LinuxAccountViews
        include Google::Apis::Core::Hashable
      
        # [Output Only] A list of all groups within a project.
        # Corresponds to the JSON property `groupViews`
        # @return [Array<Google::Apis::ClouduseraccountsBeta::LinuxGroupView>]
        attr_accessor :group_views
      
        # [Output Only] Type of the resource. Always clouduseraccounts#linuxAccountViews
        # for Linux resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A list of all users within a project.
        # Corresponds to the JSON property `userViews`
        # @return [Array<Google::Apis::ClouduseraccountsBeta::LinuxUserView>]
        attr_accessor :user_views
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_views = args[:group_views] unless args[:group_views].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @user_views = args[:user_views] unless args[:user_views].nil?
        end
      end
      
      # 
      class LinuxGetAuthorizedKeysViewResponse
        include Google::Apis::Core::Hashable
      
        # A list of authorized public keys for a user account.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::ClouduseraccountsBeta::AuthorizedKeysView]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] unless args[:resource].nil?
        end
      end
      
      # 
      class LinuxGetLinuxAccountViewsResponse
        include Google::Apis::Core::Hashable
      
        # A list of all Linux accounts for this project. This API is only used by
        # Compute Engine virtual machines to get information about user accounts for a
        # project or instance. Linux resources are read-only views into users and groups
        # managed by the Compute Engine Accounts API.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::ClouduseraccountsBeta::LinuxAccountViews]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] unless args[:resource].nil?
        end
      end
      
      # A detailed view of a Linux group.
      class LinuxGroupView
        include Google::Apis::Core::Hashable
      
        # [Output Only] The Group ID.
        # Corresponds to the JSON property `gid`
        # @return [Fixnum]
        attr_accessor :gid
      
        # [Output Only] Group name.
        # Corresponds to the JSON property `groupName`
        # @return [String]
        attr_accessor :group_name
      
        # [Output Only] List of user accounts that belong to the group.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gid = args[:gid] unless args[:gid].nil?
          @group_name = args[:group_name] unless args[:group_name].nil?
          @members = args[:members] unless args[:members].nil?
        end
      end
      
      # A detailed view of a Linux user account.
      class LinuxUserView
        include Google::Apis::Core::Hashable
      
        # [Output Only] The GECOS (user information) entry for this account.
        # Corresponds to the JSON property `gecos`
        # @return [String]
        attr_accessor :gecos
      
        # [Output Only] User's default group ID.
        # Corresponds to the JSON property `gid`
        # @return [Fixnum]
        attr_accessor :gid
      
        # [Output Only] The path to the home directory for this account.
        # Corresponds to the JSON property `homeDirectory`
        # @return [String]
        attr_accessor :home_directory
      
        # [Output Only] The path to the login shell for this account.
        # Corresponds to the JSON property `shell`
        # @return [String]
        attr_accessor :shell
      
        # [Output Only] User ID.
        # Corresponds to the JSON property `uid`
        # @return [Fixnum]
        attr_accessor :uid
      
        # [Output Only] The username of the account.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gecos = args[:gecos] unless args[:gecos].nil?
          @gid = args[:gid] unless args[:gid].nil?
          @home_directory = args[:home_directory] unless args[:home_directory].nil?
          @shell = args[:shell] unless args[:shell].nil?
          @uid = args[:uid] unless args[:uid].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # An Operation resource, used to manage asynchronous API requests.
      class Operation
        include Google::Apis::Core::Hashable
      
        # [Output Only] An optional identifier specified by the client when the mutation
        # was initiated. Must be unique for all Operation resources in the project.
        # Corresponds to the JSON property `clientOperationId`
        # @return [String]
        attr_accessor :client_operation_id
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] The time that this operation was completed. This is in RFC3339
        # text format.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # [Output Only] If errors are generated during processing of the operation, this
        # field will be populated.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ClouduseraccountsBeta::Operation::Error]
        attr_accessor :error
      
        # [Output Only] If the operation fails, this field contains the HTTP error
        # message that was returned, such as NOT FOUND.
        # Corresponds to the JSON property `httpErrorMessage`
        # @return [String]
        attr_accessor :http_error_message
      
        # [Output Only] If the operation fails, this field contains the HTTP error
        # message that was returned, such as 404.
        # Corresponds to the JSON property `httpErrorStatusCode`
        # @return [Fixnum]
        attr_accessor :http_error_status_code
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The time that this operation was requested. This is in RFC3339
        # text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # [Output Only] Type of the resource. Always compute#operation for Operation
        # resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Type of the operation, such as insert, compute.instanceGroups.
        # update, or compute.instanceGroups.delete.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # [Output Only] An optional progress indicator that ranges from 0 to 100. There
        # is no requirement that this be linear or support any granularity of operations.
        # This should not be used to guess at when the operation will be complete. This
        # number should monotonically increase as the operation progresses.
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # [Output Only] URL of the region where the operation resides. Only applicable
        # for regional resources.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The time that this operation was started by the server. This is
        # in RFC3339 text format.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # [Output Only] Status of the operation. Can be one of the following: PENDING,
        # RUNNING, or DONE.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] An optional textual description of the current status of the
        # operation.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # [Output Only] Unique target ID which identifies a particular incarnation of
        # the target.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # [Output Only] URL of the resource the operation is mutating.
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        # [Output Only] User who requested the operation, for example: user@example.com.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # [Output Only] If warning messages are generated during processing of the
        # operation, this field will be populated.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ClouduseraccountsBeta::Operation::Warning>]
        attr_accessor :warnings
      
        # [Output Only] URL of the zone where the operation resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_operation_id = args[:client_operation_id] unless args[:client_operation_id].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @error = args[:error] unless args[:error].nil?
          @http_error_message = args[:http_error_message] unless args[:http_error_message].nil?
          @http_error_status_code = args[:http_error_status_code] unless args[:http_error_status_code].nil?
          @id = args[:id] unless args[:id].nil?
          @insert_time = args[:insert_time] unless args[:insert_time].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @operation_type = args[:operation_type] unless args[:operation_type].nil?
          @progress = args[:progress] unless args[:progress].nil?
          @region = args[:region] unless args[:region].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @status = args[:status] unless args[:status].nil?
          @status_message = args[:status_message] unless args[:status_message].nil?
          @target_id = args[:target_id] unless args[:target_id].nil?
          @target_link = args[:target_link] unless args[:target_link].nil?
          @user = args[:user] unless args[:user].nil?
          @warnings = args[:warnings] unless args[:warnings].nil?
          @zone = args[:zone] unless args[:zone].nil?
        end
        
        # [Output Only] If errors are generated during processing of the operation, this
        # field will be populated.
        class Error
          include Google::Apis::Core::Hashable
        
          # [Output Only] The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::ClouduseraccountsBeta::Operation::Error::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] unless args[:errors].nil?
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request which caused the error. This
            # property is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # [Output Only] An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] unless args[:code].nil?
              @location = args[:location] unless args[:location].nil?
              @message = args[:message] unless args[:message].nil?
            end
          end
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ClouduseraccountsBeta::Operation::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # Contains a list of Operation resources.
      class OperationList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The Operation resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ClouduseraccountsBeta::Operation>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#operations for Operations
        # resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncate.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # A public key for authenticating to guests.
      class PublicKey
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional expiration timestamp. If provided, the timestamp must be in RFC3339
        # text format. If not provided, the public key never expires.
        # Corresponds to the JSON property `expirationTimestamp`
        # @return [String]
        attr_accessor :expiration_timestamp
      
        # [Output Only] The fingerprint of the key is defined by RFC4716 to be the MD5
        # digest of the public key.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # Public key text in SSH format, defined by RFC4253 section 6.6.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @expiration_timestamp = args[:expiration_timestamp] unless args[:expiration_timestamp].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @key = args[:key] unless args[:key].nil?
        end
      end
      
      # A User resource.
      class User
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] A list of URLs to Group resources who contain the user. Users
        # are only members of groups in the same project.
        # Corresponds to the JSON property `groups`
        # @return [Array<String>]
        attr_accessor :groups
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always clouduseraccounts#user for users.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Email address of account's owner. This account will be validated to make sure
        # it exists. The email can belong to any domain, but it must be tied to a Google
        # account.
        # Corresponds to the JSON property `owner`
        # @return [String]
        attr_accessor :owner
      
        # [Output Only] Public keys that this user may use to login.
        # Corresponds to the JSON property `publicKeys`
        # @return [Array<Google::Apis::ClouduseraccountsBeta::PublicKey>]
        attr_accessor :public_keys
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @groups = args[:groups] unless args[:groups].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @owner = args[:owner] unless args[:owner].nil?
          @public_keys = args[:public_keys] unless args[:public_keys].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class UserList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of User resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ClouduseraccountsBeta::User>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always clouduseraccounts#userList for lists of
        # users.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
    end
  end
end
