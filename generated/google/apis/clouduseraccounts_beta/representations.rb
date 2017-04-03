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
      
      class AuthorizedKeysView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Group
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupsAddMemberRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupsRemoveMemberRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinuxAccountViews
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinuxGetAuthorizedKeysViewResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinuxGetLinuxAccountViewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinuxGroupView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinuxUserView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Error
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Error
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublicKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizedKeysView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :keys, as: 'keys'
          property :sudoer, as: 'sudoer'
        end
      end
      
      class Group
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          collection :members, as: 'members'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
        end
      end
      
      class GroupList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ClouduseraccountsBeta::Group, decorator: Google::Apis::ClouduseraccountsBeta::Group::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class GroupsAddMemberRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :users, as: 'users'
        end
      end
      
      class GroupsRemoveMemberRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :users, as: 'users'
        end
      end
      
      class LinuxAccountViews
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_views, as: 'groupViews', class: Google::Apis::ClouduseraccountsBeta::LinuxGroupView, decorator: Google::Apis::ClouduseraccountsBeta::LinuxGroupView::Representation
      
          property :kind, as: 'kind'
          collection :user_views, as: 'userViews', class: Google::Apis::ClouduseraccountsBeta::LinuxUserView, decorator: Google::Apis::ClouduseraccountsBeta::LinuxUserView::Representation
      
        end
      end
      
      class LinuxGetAuthorizedKeysViewResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::ClouduseraccountsBeta::AuthorizedKeysView, decorator: Google::Apis::ClouduseraccountsBeta::AuthorizedKeysView::Representation
      
        end
      end
      
      class LinuxGetLinuxAccountViewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::ClouduseraccountsBeta::LinuxAccountViews, decorator: Google::Apis::ClouduseraccountsBeta::LinuxAccountViews::Representation
      
        end
      end
      
      class LinuxGroupView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gid, as: 'gid'
          property :group_name, as: 'groupName'
          collection :members, as: 'members'
        end
      end
      
      class LinuxUserView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gecos, as: 'gecos'
          property :gid, as: 'gid'
          property :home_directory, as: 'homeDirectory'
          property :shell, as: 'shell'
          property :uid, as: 'uid'
          property :username, as: 'username'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_operation_id, as: 'clientOperationId'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::ClouduseraccountsBeta::Operation::Error, decorator: Google::Apis::ClouduseraccountsBeta::Operation::Error::Representation
      
          property :http_error_message, as: 'httpErrorMessage'
          property :http_error_status_code, as: 'httpErrorStatusCode'
          property :id, :numeric_string => true, as: 'id'
          property :insert_time, as: 'insertTime'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :operation_type, as: 'operationType'
          property :progress, as: 'progress'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :target_id, :numeric_string => true, as: 'targetId'
          property :target_link, as: 'targetLink'
          property :user, as: 'user'
          collection :warnings, as: 'warnings', class: Google::Apis::ClouduseraccountsBeta::Operation::Warning, decorator: Google::Apis::ClouduseraccountsBeta::Operation::Warning::Representation
      
          property :zone, as: 'zone'
        end
        
        class Error
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::ClouduseraccountsBeta::Operation::Error::Error, decorator: Google::Apis::ClouduseraccountsBeta::Operation::Error::Error::Representation
        
          end
          
          class Error
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :code, as: 'code'
              property :location, as: 'location'
              property :message, as: 'message'
            end
          end
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ClouduseraccountsBeta::Operation::Warning::Datum, decorator: Google::Apis::ClouduseraccountsBeta::Operation::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class OperationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ClouduseraccountsBeta::Operation, decorator: Google::Apis::ClouduseraccountsBeta::Operation::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
      
      class PublicKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :expiration_timestamp, as: 'expirationTimestamp'
          property :fingerprint, as: 'fingerprint'
          property :key, as: 'key'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          collection :groups, as: 'groups'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :owner, as: 'owner'
          collection :public_keys, as: 'publicKeys', class: Google::Apis::ClouduseraccountsBeta::PublicKey, decorator: Google::Apis::ClouduseraccountsBeta::PublicKey::Representation
      
          property :self_link, as: 'selfLink'
        end
      end
      
      class UserList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ClouduseraccountsBeta::User, decorator: Google::Apis::ClouduseraccountsBeta::User::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
        end
      end
    end
  end
end
